{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.Sum
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.Sum where

import           Network.AWS.Prelude

data ActivityTaskTimeoutType
    = ATTTHeartbeat
    | ATTTScheduleToClose
    | ATTTScheduleToStart
    | ATTTStartToClose
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ActivityTaskTimeoutType where
    parser = takeLowerText >>= \case
        "heartbeat" -> pure ATTTHeartbeat
        "schedule_to_close" -> pure ATTTScheduleToClose
        "schedule_to_start" -> pure ATTTScheduleToStart
        "start_to_close" -> pure ATTTStartToClose
        e -> fromTextError $ "Failure parsing ActivityTaskTimeoutType from value: '" <> e
           <> "'. Accepted values: heartbeat, schedule_to_close, schedule_to_start, start_to_close"

instance ToText ActivityTaskTimeoutType where
    toText = \case
        ATTTHeartbeat -> "heartbeat"
        ATTTScheduleToClose -> "schedule_to_close"
        ATTTScheduleToStart -> "schedule_to_start"
        ATTTStartToClose -> "start_to_close"

instance Hashable     ActivityTaskTimeoutType
instance ToByteString ActivityTaskTimeoutType
instance ToQuery      ActivityTaskTimeoutType
instance ToHeader     ActivityTaskTimeoutType

instance FromJSON ActivityTaskTimeoutType where
    parseJSON = parseJSONText "ActivityTaskTimeoutType"

data CancelTimerFailedCause
    = CTFCOperationNotPermitted
    | CTFCTimerIdUnknown
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText CancelTimerFailedCause where
    parser = takeLowerText >>= \case
        "operation_not_permitted" -> pure CTFCOperationNotPermitted
        "timer_id_unknown" -> pure CTFCTimerIdUnknown
        e -> fromTextError $ "Failure parsing CancelTimerFailedCause from value: '" <> e
           <> "'. Accepted values: operation_not_permitted, timer_id_unknown"

instance ToText CancelTimerFailedCause where
    toText = \case
        CTFCOperationNotPermitted -> "operation_not_permitted"
        CTFCTimerIdUnknown -> "timer_id_unknown"

instance Hashable     CancelTimerFailedCause
instance ToByteString CancelTimerFailedCause
instance ToQuery      CancelTimerFailedCause
instance ToHeader     CancelTimerFailedCause

instance FromJSON CancelTimerFailedCause where
    parseJSON = parseJSONText "CancelTimerFailedCause"

data CancelWorkflowExecutionFailedCause
    = COperationNotPermitted
    | CUnhandledDecision
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText CancelWorkflowExecutionFailedCause where
    parser = takeLowerText >>= \case
        "operation_not_permitted" -> pure COperationNotPermitted
        "unhandled_decision" -> pure CUnhandledDecision
        e -> fromTextError $ "Failure parsing CancelWorkflowExecutionFailedCause from value: '" <> e
           <> "'. Accepted values: operation_not_permitted, unhandled_decision"

instance ToText CancelWorkflowExecutionFailedCause where
    toText = \case
        COperationNotPermitted -> "operation_not_permitted"
        CUnhandledDecision -> "unhandled_decision"

instance Hashable     CancelWorkflowExecutionFailedCause
instance ToByteString CancelWorkflowExecutionFailedCause
instance ToQuery      CancelWorkflowExecutionFailedCause
instance ToHeader     CancelWorkflowExecutionFailedCause

instance FromJSON CancelWorkflowExecutionFailedCause where
    parseJSON = parseJSONText "CancelWorkflowExecutionFailedCause"

data ChildPolicy
    = Abandon
    | RequestCancel
    | Terminate
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ChildPolicy where
    parser = takeLowerText >>= \case
        "abandon" -> pure Abandon
        "request_cancel" -> pure RequestCancel
        "terminate" -> pure Terminate
        e -> fromTextError $ "Failure parsing ChildPolicy from value: '" <> e
           <> "'. Accepted values: abandon, request_cancel, terminate"

instance ToText ChildPolicy where
    toText = \case
        Abandon -> "abandon"
        RequestCancel -> "request_cancel"
        Terminate -> "terminate"

instance Hashable     ChildPolicy
instance ToByteString ChildPolicy
instance ToQuery      ChildPolicy
instance ToHeader     ChildPolicy

instance ToJSON ChildPolicy where
    toJSON = toJSONText

instance FromJSON ChildPolicy where
    parseJSON = parseJSONText "ChildPolicy"

data CloseStatus
    = Canceled
    | Completed
    | ContinuedAsNew
    | Failed
    | Terminated
    | TimedOut
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText CloseStatus where
    parser = takeLowerText >>= \case
        "canceled" -> pure Canceled
        "completed" -> pure Completed
        "continued_as_new" -> pure ContinuedAsNew
        "failed" -> pure Failed
        "terminated" -> pure Terminated
        "timed_out" -> pure TimedOut
        e -> fromTextError $ "Failure parsing CloseStatus from value: '" <> e
           <> "'. Accepted values: canceled, completed, continued_as_new, failed, terminated, timed_out"

instance ToText CloseStatus where
    toText = \case
        Canceled -> "canceled"
        Completed -> "completed"
        ContinuedAsNew -> "continued_as_new"
        Failed -> "failed"
        Terminated -> "terminated"
        TimedOut -> "timed_out"

instance Hashable     CloseStatus
instance ToByteString CloseStatus
instance ToQuery      CloseStatus
instance ToHeader     CloseStatus

instance ToJSON CloseStatus where
    toJSON = toJSONText

instance FromJSON CloseStatus where
    parseJSON = parseJSONText "CloseStatus"

data CompleteWorkflowExecutionFailedCause
    = CWEFCOperationNotPermitted
    | CWEFCUnhandledDecision
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText CompleteWorkflowExecutionFailedCause where
    parser = takeLowerText >>= \case
        "operation_not_permitted" -> pure CWEFCOperationNotPermitted
        "unhandled_decision" -> pure CWEFCUnhandledDecision
        e -> fromTextError $ "Failure parsing CompleteWorkflowExecutionFailedCause from value: '" <> e
           <> "'. Accepted values: operation_not_permitted, unhandled_decision"

instance ToText CompleteWorkflowExecutionFailedCause where
    toText = \case
        CWEFCOperationNotPermitted -> "operation_not_permitted"
        CWEFCUnhandledDecision -> "unhandled_decision"

instance Hashable     CompleteWorkflowExecutionFailedCause
instance ToByteString CompleteWorkflowExecutionFailedCause
instance ToQuery      CompleteWorkflowExecutionFailedCause
instance ToHeader     CompleteWorkflowExecutionFailedCause

instance FromJSON CompleteWorkflowExecutionFailedCause where
    parseJSON = parseJSONText "CompleteWorkflowExecutionFailedCause"

data ContinueAsNewWorkflowExecutionFailedCause
    = CANWEFCContinueAsNewWorkflowExecutionRateExceeded
    | CANWEFCDefaultChildPolicyUndefined
    | CANWEFCDefaultExecutionStartToCloseTimeoutUndefined
    | CANWEFCDefaultTaskListUndefined
    | CANWEFCDefaultTaskStartToCloseTimeoutUndefined
    | CANWEFCOperationNotPermitted
    | CANWEFCUnhandledDecision
    | CANWEFCWorkflowTypeDeprecated
    | CANWEFCWorkflowTypeDoesNotExist
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ContinueAsNewWorkflowExecutionFailedCause where
    parser = takeLowerText >>= \case
        "continue_as_new_workflow_execution_rate_exceeded" -> pure CANWEFCContinueAsNewWorkflowExecutionRateExceeded
        "default_child_policy_undefined" -> pure CANWEFCDefaultChildPolicyUndefined
        "default_execution_start_to_close_timeout_undefined" -> pure CANWEFCDefaultExecutionStartToCloseTimeoutUndefined
        "default_task_list_undefined" -> pure CANWEFCDefaultTaskListUndefined
        "default_task_start_to_close_timeout_undefined" -> pure CANWEFCDefaultTaskStartToCloseTimeoutUndefined
        "operation_not_permitted" -> pure CANWEFCOperationNotPermitted
        "unhandled_decision" -> pure CANWEFCUnhandledDecision
        "workflow_type_deprecated" -> pure CANWEFCWorkflowTypeDeprecated
        "workflow_type_does_not_exist" -> pure CANWEFCWorkflowTypeDoesNotExist
        e -> fromTextError $ "Failure parsing ContinueAsNewWorkflowExecutionFailedCause from value: '" <> e
           <> "'. Accepted values: continue_as_new_workflow_execution_rate_exceeded, default_child_policy_undefined, default_execution_start_to_close_timeout_undefined, default_task_list_undefined, default_task_start_to_close_timeout_undefined, operation_not_permitted, unhandled_decision, workflow_type_deprecated, workflow_type_does_not_exist"

instance ToText ContinueAsNewWorkflowExecutionFailedCause where
    toText = \case
        CANWEFCContinueAsNewWorkflowExecutionRateExceeded -> "continue_as_new_workflow_execution_rate_exceeded"
        CANWEFCDefaultChildPolicyUndefined -> "default_child_policy_undefined"
        CANWEFCDefaultExecutionStartToCloseTimeoutUndefined -> "default_execution_start_to_close_timeout_undefined"
        CANWEFCDefaultTaskListUndefined -> "default_task_list_undefined"
        CANWEFCDefaultTaskStartToCloseTimeoutUndefined -> "default_task_start_to_close_timeout_undefined"
        CANWEFCOperationNotPermitted -> "operation_not_permitted"
        CANWEFCUnhandledDecision -> "unhandled_decision"
        CANWEFCWorkflowTypeDeprecated -> "workflow_type_deprecated"
        CANWEFCWorkflowTypeDoesNotExist -> "workflow_type_does_not_exist"

instance Hashable     ContinueAsNewWorkflowExecutionFailedCause
instance ToByteString ContinueAsNewWorkflowExecutionFailedCause
instance ToQuery      ContinueAsNewWorkflowExecutionFailedCause
instance ToHeader     ContinueAsNewWorkflowExecutionFailedCause

instance FromJSON ContinueAsNewWorkflowExecutionFailedCause where
    parseJSON = parseJSONText "ContinueAsNewWorkflowExecutionFailedCause"

data DecisionTaskTimeoutType =
    StartToClose
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText DecisionTaskTimeoutType where
    parser = takeLowerText >>= \case
        "start_to_close" -> pure StartToClose
        e -> fromTextError $ "Failure parsing DecisionTaskTimeoutType from value: '" <> e
           <> "'. Accepted values: start_to_close"

instance ToText DecisionTaskTimeoutType where
    toText = \case
        StartToClose -> "start_to_close"

instance Hashable     DecisionTaskTimeoutType
instance ToByteString DecisionTaskTimeoutType
instance ToQuery      DecisionTaskTimeoutType
instance ToHeader     DecisionTaskTimeoutType

instance FromJSON DecisionTaskTimeoutType where
    parseJSON = parseJSONText "DecisionTaskTimeoutType"

data DecisionType
    = CancelTimer
    | CancelWorkflowExecution
    | CompleteWorkflowExecution
    | ContinueAsNewWorkflowExecution
    | FailWorkflowExecution
    | RecordMarker
    | RequestCancelActivityTask
    | RequestCancelExternalWorkflowExecution
    | ScheduleActivityTask
    | ScheduleLambdaFunction
    | SignalExternalWorkflowExecution
    | StartChildWorkflowExecution
    | StartTimer
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText DecisionType where
    parser = takeLowerText >>= \case
        "canceltimer" -> pure CancelTimer
        "cancelworkflowexecution" -> pure CancelWorkflowExecution
        "completeworkflowexecution" -> pure CompleteWorkflowExecution
        "continueasnewworkflowexecution" -> pure ContinueAsNewWorkflowExecution
        "failworkflowexecution" -> pure FailWorkflowExecution
        "recordmarker" -> pure RecordMarker
        "requestcancelactivitytask" -> pure RequestCancelActivityTask
        "requestcancelexternalworkflowexecution" -> pure RequestCancelExternalWorkflowExecution
        "scheduleactivitytask" -> pure ScheduleActivityTask
        "schedulelambdafunction" -> pure ScheduleLambdaFunction
        "signalexternalworkflowexecution" -> pure SignalExternalWorkflowExecution
        "startchildworkflowexecution" -> pure StartChildWorkflowExecution
        "starttimer" -> pure StartTimer
        e -> fromTextError $ "Failure parsing DecisionType from value: '" <> e
           <> "'. Accepted values: canceltimer, cancelworkflowexecution, completeworkflowexecution, continueasnewworkflowexecution, failworkflowexecution, recordmarker, requestcancelactivitytask, requestcancelexternalworkflowexecution, scheduleactivitytask, schedulelambdafunction, signalexternalworkflowexecution, startchildworkflowexecution, starttimer"

instance ToText DecisionType where
    toText = \case
        CancelTimer -> "canceltimer"
        CancelWorkflowExecution -> "cancelworkflowexecution"
        CompleteWorkflowExecution -> "completeworkflowexecution"
        ContinueAsNewWorkflowExecution -> "continueasnewworkflowexecution"
        FailWorkflowExecution -> "failworkflowexecution"
        RecordMarker -> "recordmarker"
        RequestCancelActivityTask -> "requestcancelactivitytask"
        RequestCancelExternalWorkflowExecution -> "requestcancelexternalworkflowexecution"
        ScheduleActivityTask -> "scheduleactivitytask"
        ScheduleLambdaFunction -> "schedulelambdafunction"
        SignalExternalWorkflowExecution -> "signalexternalworkflowexecution"
        StartChildWorkflowExecution -> "startchildworkflowexecution"
        StartTimer -> "starttimer"

instance Hashable     DecisionType
instance ToByteString DecisionType
instance ToQuery      DecisionType
instance ToHeader     DecisionType

instance ToJSON DecisionType where
    toJSON = toJSONText

data EventType
    = ActivityTaskCancelRequested
    | ActivityTaskCanceled
    | ActivityTaskCompleted
    | ActivityTaskFailed
    | ActivityTaskScheduled
    | ActivityTaskStarted
    | ActivityTaskTimedOut
    | CancelTimerFailed
    | CancelWorkflowExecutionFailed
    | ChildWorkflowExecutionCanceled
    | ChildWorkflowExecutionCompleted
    | ChildWorkflowExecutionFailed
    | ChildWorkflowExecutionStarted
    | ChildWorkflowExecutionTerminated
    | ChildWorkflowExecutionTimedOut
    | CompleteWorkflowExecutionFailed
    | ContinueAsNewWorkflowExecutionFailed
    | DecisionTaskCompleted
    | DecisionTaskScheduled
    | DecisionTaskStarted
    | DecisionTaskTimedOut
    | ExternalWorkflowExecutionCancelRequested
    | ExternalWorkflowExecutionSignaled
    | FailWorkflowExecutionFailed
    | LambdaFunctionCompleted
    | LambdaFunctionFailed
    | LambdaFunctionScheduled
    | LambdaFunctionStarted
    | LambdaFunctionTimedOut
    | MarkerRecorded
    | RecordMarkerFailed
    | RequestCancelActivityTaskFailed
    | RequestCancelExternalWorkflowExecutionFailed
    | RequestCancelExternalWorkflowExecutionInitiated
    | ScheduleActivityTaskFailed
    | ScheduleLambdaFunctionFailed
    | SignalExternalWorkflowExecutionFailed
    | SignalExternalWorkflowExecutionInitiated
    | StartChildWorkflowExecutionFailed
    | StartChildWorkflowExecutionInitiated
    | StartLambdaFunctionFailed
    | StartTimerFailed
    | TimerCanceled
    | TimerFired
    | TimerStarted
    | WorkflowExecutionCancelRequested
    | WorkflowExecutionCanceled
    | WorkflowExecutionCompleted
    | WorkflowExecutionContinuedAsNew
    | WorkflowExecutionFailed
    | WorkflowExecutionSignaled
    | WorkflowExecutionStarted
    | WorkflowExecutionTerminated
    | WorkflowExecutionTimedOut
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText EventType where
    parser = takeLowerText >>= \case
        "activitytaskcancelrequested" -> pure ActivityTaskCancelRequested
        "activitytaskcanceled" -> pure ActivityTaskCanceled
        "activitytaskcompleted" -> pure ActivityTaskCompleted
        "activitytaskfailed" -> pure ActivityTaskFailed
        "activitytaskscheduled" -> pure ActivityTaskScheduled
        "activitytaskstarted" -> pure ActivityTaskStarted
        "activitytasktimedout" -> pure ActivityTaskTimedOut
        "canceltimerfailed" -> pure CancelTimerFailed
        "cancelworkflowexecutionfailed" -> pure CancelWorkflowExecutionFailed
        "childworkflowexecutioncanceled" -> pure ChildWorkflowExecutionCanceled
        "childworkflowexecutioncompleted" -> pure ChildWorkflowExecutionCompleted
        "childworkflowexecutionfailed" -> pure ChildWorkflowExecutionFailed
        "childworkflowexecutionstarted" -> pure ChildWorkflowExecutionStarted
        "childworkflowexecutionterminated" -> pure ChildWorkflowExecutionTerminated
        "childworkflowexecutiontimedout" -> pure ChildWorkflowExecutionTimedOut
        "completeworkflowexecutionfailed" -> pure CompleteWorkflowExecutionFailed
        "continueasnewworkflowexecutionfailed" -> pure ContinueAsNewWorkflowExecutionFailed
        "decisiontaskcompleted" -> pure DecisionTaskCompleted
        "decisiontaskscheduled" -> pure DecisionTaskScheduled
        "decisiontaskstarted" -> pure DecisionTaskStarted
        "decisiontasktimedout" -> pure DecisionTaskTimedOut
        "externalworkflowexecutioncancelrequested" -> pure ExternalWorkflowExecutionCancelRequested
        "externalworkflowexecutionsignaled" -> pure ExternalWorkflowExecutionSignaled
        "failworkflowexecutionfailed" -> pure FailWorkflowExecutionFailed
        "lambdafunctioncompleted" -> pure LambdaFunctionCompleted
        "lambdafunctionfailed" -> pure LambdaFunctionFailed
        "lambdafunctionscheduled" -> pure LambdaFunctionScheduled
        "lambdafunctionstarted" -> pure LambdaFunctionStarted
        "lambdafunctiontimedout" -> pure LambdaFunctionTimedOut
        "markerrecorded" -> pure MarkerRecorded
        "recordmarkerfailed" -> pure RecordMarkerFailed
        "requestcancelactivitytaskfailed" -> pure RequestCancelActivityTaskFailed
        "requestcancelexternalworkflowexecutionfailed" -> pure RequestCancelExternalWorkflowExecutionFailed
        "requestcancelexternalworkflowexecutioninitiated" -> pure RequestCancelExternalWorkflowExecutionInitiated
        "scheduleactivitytaskfailed" -> pure ScheduleActivityTaskFailed
        "schedulelambdafunctionfailed" -> pure ScheduleLambdaFunctionFailed
        "signalexternalworkflowexecutionfailed" -> pure SignalExternalWorkflowExecutionFailed
        "signalexternalworkflowexecutioninitiated" -> pure SignalExternalWorkflowExecutionInitiated
        "startchildworkflowexecutionfailed" -> pure StartChildWorkflowExecutionFailed
        "startchildworkflowexecutioninitiated" -> pure StartChildWorkflowExecutionInitiated
        "startlambdafunctionfailed" -> pure StartLambdaFunctionFailed
        "starttimerfailed" -> pure StartTimerFailed
        "timercanceled" -> pure TimerCanceled
        "timerfired" -> pure TimerFired
        "timerstarted" -> pure TimerStarted
        "workflowexecutioncancelrequested" -> pure WorkflowExecutionCancelRequested
        "workflowexecutioncanceled" -> pure WorkflowExecutionCanceled
        "workflowexecutioncompleted" -> pure WorkflowExecutionCompleted
        "workflowexecutioncontinuedasnew" -> pure WorkflowExecutionContinuedAsNew
        "workflowexecutionfailed" -> pure WorkflowExecutionFailed
        "workflowexecutionsignaled" -> pure WorkflowExecutionSignaled
        "workflowexecutionstarted" -> pure WorkflowExecutionStarted
        "workflowexecutionterminated" -> pure WorkflowExecutionTerminated
        "workflowexecutiontimedout" -> pure WorkflowExecutionTimedOut
        e -> fromTextError $ "Failure parsing EventType from value: '" <> e
           <> "'. Accepted values: activitytaskcancelrequested, activitytaskcanceled, activitytaskcompleted, activitytaskfailed, activitytaskscheduled, activitytaskstarted, activitytasktimedout, canceltimerfailed, cancelworkflowexecutionfailed, childworkflowexecutioncanceled, childworkflowexecutioncompleted, childworkflowexecutionfailed, childworkflowexecutionstarted, childworkflowexecutionterminated, childworkflowexecutiontimedout, completeworkflowexecutionfailed, continueasnewworkflowexecutionfailed, decisiontaskcompleted, decisiontaskscheduled, decisiontaskstarted, decisiontasktimedout, externalworkflowexecutioncancelrequested, externalworkflowexecutionsignaled, failworkflowexecutionfailed, lambdafunctioncompleted, lambdafunctionfailed, lambdafunctionscheduled, lambdafunctionstarted, lambdafunctiontimedout, markerrecorded, recordmarkerfailed, requestcancelactivitytaskfailed, requestcancelexternalworkflowexecutionfailed, requestcancelexternalworkflowexecutioninitiated, scheduleactivitytaskfailed, schedulelambdafunctionfailed, signalexternalworkflowexecutionfailed, signalexternalworkflowexecutioninitiated, startchildworkflowexecutionfailed, startchildworkflowexecutioninitiated, startlambdafunctionfailed, starttimerfailed, timercanceled, timerfired, timerstarted, workflowexecutioncancelrequested, workflowexecutioncanceled, workflowexecutioncompleted, workflowexecutioncontinuedasnew, workflowexecutionfailed, workflowexecutionsignaled, workflowexecutionstarted, workflowexecutionterminated, workflowexecutiontimedout"

instance ToText EventType where
    toText = \case
        ActivityTaskCancelRequested -> "activitytaskcancelrequested"
        ActivityTaskCanceled -> "activitytaskcanceled"
        ActivityTaskCompleted -> "activitytaskcompleted"
        ActivityTaskFailed -> "activitytaskfailed"
        ActivityTaskScheduled -> "activitytaskscheduled"
        ActivityTaskStarted -> "activitytaskstarted"
        ActivityTaskTimedOut -> "activitytasktimedout"
        CancelTimerFailed -> "canceltimerfailed"
        CancelWorkflowExecutionFailed -> "cancelworkflowexecutionfailed"
        ChildWorkflowExecutionCanceled -> "childworkflowexecutioncanceled"
        ChildWorkflowExecutionCompleted -> "childworkflowexecutioncompleted"
        ChildWorkflowExecutionFailed -> "childworkflowexecutionfailed"
        ChildWorkflowExecutionStarted -> "childworkflowexecutionstarted"
        ChildWorkflowExecutionTerminated -> "childworkflowexecutionterminated"
        ChildWorkflowExecutionTimedOut -> "childworkflowexecutiontimedout"
        CompleteWorkflowExecutionFailed -> "completeworkflowexecutionfailed"
        ContinueAsNewWorkflowExecutionFailed -> "continueasnewworkflowexecutionfailed"
        DecisionTaskCompleted -> "decisiontaskcompleted"
        DecisionTaskScheduled -> "decisiontaskscheduled"
        DecisionTaskStarted -> "decisiontaskstarted"
        DecisionTaskTimedOut -> "decisiontasktimedout"
        ExternalWorkflowExecutionCancelRequested -> "externalworkflowexecutioncancelrequested"
        ExternalWorkflowExecutionSignaled -> "externalworkflowexecutionsignaled"
        FailWorkflowExecutionFailed -> "failworkflowexecutionfailed"
        LambdaFunctionCompleted -> "lambdafunctioncompleted"
        LambdaFunctionFailed -> "lambdafunctionfailed"
        LambdaFunctionScheduled -> "lambdafunctionscheduled"
        LambdaFunctionStarted -> "lambdafunctionstarted"
        LambdaFunctionTimedOut -> "lambdafunctiontimedout"
        MarkerRecorded -> "markerrecorded"
        RecordMarkerFailed -> "recordmarkerfailed"
        RequestCancelActivityTaskFailed -> "requestcancelactivitytaskfailed"
        RequestCancelExternalWorkflowExecutionFailed -> "requestcancelexternalworkflowexecutionfailed"
        RequestCancelExternalWorkflowExecutionInitiated -> "requestcancelexternalworkflowexecutioninitiated"
        ScheduleActivityTaskFailed -> "scheduleactivitytaskfailed"
        ScheduleLambdaFunctionFailed -> "schedulelambdafunctionfailed"
        SignalExternalWorkflowExecutionFailed -> "signalexternalworkflowexecutionfailed"
        SignalExternalWorkflowExecutionInitiated -> "signalexternalworkflowexecutioninitiated"
        StartChildWorkflowExecutionFailed -> "startchildworkflowexecutionfailed"
        StartChildWorkflowExecutionInitiated -> "startchildworkflowexecutioninitiated"
        StartLambdaFunctionFailed -> "startlambdafunctionfailed"
        StartTimerFailed -> "starttimerfailed"
        TimerCanceled -> "timercanceled"
        TimerFired -> "timerfired"
        TimerStarted -> "timerstarted"
        WorkflowExecutionCancelRequested -> "workflowexecutioncancelrequested"
        WorkflowExecutionCanceled -> "workflowexecutioncanceled"
        WorkflowExecutionCompleted -> "workflowexecutioncompleted"
        WorkflowExecutionContinuedAsNew -> "workflowexecutioncontinuedasnew"
        WorkflowExecutionFailed -> "workflowexecutionfailed"
        WorkflowExecutionSignaled -> "workflowexecutionsignaled"
        WorkflowExecutionStarted -> "workflowexecutionstarted"
        WorkflowExecutionTerminated -> "workflowexecutionterminated"
        WorkflowExecutionTimedOut -> "workflowexecutiontimedout"

instance Hashable     EventType
instance ToByteString EventType
instance ToQuery      EventType
instance ToHeader     EventType

instance FromJSON EventType where
    parseJSON = parseJSONText "EventType"

data ExecutionStatus
    = Closed
    | Open
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ExecutionStatus where
    parser = takeLowerText >>= \case
        "closed" -> pure Closed
        "open" -> pure Open
        e -> fromTextError $ "Failure parsing ExecutionStatus from value: '" <> e
           <> "'. Accepted values: closed, open"

instance ToText ExecutionStatus where
    toText = \case
        Closed -> "closed"
        Open -> "open"

instance Hashable     ExecutionStatus
instance ToByteString ExecutionStatus
instance ToQuery      ExecutionStatus
instance ToHeader     ExecutionStatus

instance FromJSON ExecutionStatus where
    parseJSON = parseJSONText "ExecutionStatus"

data FailWorkflowExecutionFailedCause
    = FWEFCOperationNotPermitted
    | FWEFCUnhandledDecision
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText FailWorkflowExecutionFailedCause where
    parser = takeLowerText >>= \case
        "operation_not_permitted" -> pure FWEFCOperationNotPermitted
        "unhandled_decision" -> pure FWEFCUnhandledDecision
        e -> fromTextError $ "Failure parsing FailWorkflowExecutionFailedCause from value: '" <> e
           <> "'. Accepted values: operation_not_permitted, unhandled_decision"

instance ToText FailWorkflowExecutionFailedCause where
    toText = \case
        FWEFCOperationNotPermitted -> "operation_not_permitted"
        FWEFCUnhandledDecision -> "unhandled_decision"

instance Hashable     FailWorkflowExecutionFailedCause
instance ToByteString FailWorkflowExecutionFailedCause
instance ToQuery      FailWorkflowExecutionFailedCause
instance ToHeader     FailWorkflowExecutionFailedCause

instance FromJSON FailWorkflowExecutionFailedCause where
    parseJSON = parseJSONText "FailWorkflowExecutionFailedCause"

data LambdaFunctionTimeoutType =
    LFTTStartToClose
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText LambdaFunctionTimeoutType where
    parser = takeLowerText >>= \case
        "start_to_close" -> pure LFTTStartToClose
        e -> fromTextError $ "Failure parsing LambdaFunctionTimeoutType from value: '" <> e
           <> "'. Accepted values: start_to_close"

instance ToText LambdaFunctionTimeoutType where
    toText = \case
        LFTTStartToClose -> "start_to_close"

instance Hashable     LambdaFunctionTimeoutType
instance ToByteString LambdaFunctionTimeoutType
instance ToQuery      LambdaFunctionTimeoutType
instance ToHeader     LambdaFunctionTimeoutType

instance FromJSON LambdaFunctionTimeoutType where
    parseJSON = parseJSONText "LambdaFunctionTimeoutType"

data RecordMarkerFailedCause =
    RMFCOperationNotPermitted
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText RecordMarkerFailedCause where
    parser = takeLowerText >>= \case
        "operation_not_permitted" -> pure RMFCOperationNotPermitted
        e -> fromTextError $ "Failure parsing RecordMarkerFailedCause from value: '" <> e
           <> "'. Accepted values: operation_not_permitted"

instance ToText RecordMarkerFailedCause where
    toText = \case
        RMFCOperationNotPermitted -> "operation_not_permitted"

instance Hashable     RecordMarkerFailedCause
instance ToByteString RecordMarkerFailedCause
instance ToQuery      RecordMarkerFailedCause
instance ToHeader     RecordMarkerFailedCause

instance FromJSON RecordMarkerFailedCause where
    parseJSON = parseJSONText "RecordMarkerFailedCause"

data RegistrationStatus
    = Deprecated
    | Registered
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText RegistrationStatus where
    parser = takeLowerText >>= \case
        "deprecated" -> pure Deprecated
        "registered" -> pure Registered
        e -> fromTextError $ "Failure parsing RegistrationStatus from value: '" <> e
           <> "'. Accepted values: deprecated, registered"

instance ToText RegistrationStatus where
    toText = \case
        Deprecated -> "deprecated"
        Registered -> "registered"

instance Hashable     RegistrationStatus
instance ToByteString RegistrationStatus
instance ToQuery      RegistrationStatus
instance ToHeader     RegistrationStatus

instance ToJSON RegistrationStatus where
    toJSON = toJSONText

instance FromJSON RegistrationStatus where
    parseJSON = parseJSONText "RegistrationStatus"

data RequestCancelActivityTaskFailedCause
    = RCATFCActivityIdUnknown
    | RCATFCOperationNotPermitted
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText RequestCancelActivityTaskFailedCause where
    parser = takeLowerText >>= \case
        "activity_id_unknown" -> pure RCATFCActivityIdUnknown
        "operation_not_permitted" -> pure RCATFCOperationNotPermitted
        e -> fromTextError $ "Failure parsing RequestCancelActivityTaskFailedCause from value: '" <> e
           <> "'. Accepted values: activity_id_unknown, operation_not_permitted"

instance ToText RequestCancelActivityTaskFailedCause where
    toText = \case
        RCATFCActivityIdUnknown -> "activity_id_unknown"
        RCATFCOperationNotPermitted -> "operation_not_permitted"

instance Hashable     RequestCancelActivityTaskFailedCause
instance ToByteString RequestCancelActivityTaskFailedCause
instance ToQuery      RequestCancelActivityTaskFailedCause
instance ToHeader     RequestCancelActivityTaskFailedCause

instance FromJSON RequestCancelActivityTaskFailedCause where
    parseJSON = parseJSONText "RequestCancelActivityTaskFailedCause"

data RequestCancelExternalWorkflowExecutionFailedCause
    = RCEWEFCOperationNotPermitted
    | RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded
    | RCEWEFCUnknownExternalWorkflowExecution
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText RequestCancelExternalWorkflowExecutionFailedCause where
    parser = takeLowerText >>= \case
        "operation_not_permitted" -> pure RCEWEFCOperationNotPermitted
        "request_cancel_external_workflow_execution_rate_exceeded" -> pure RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded
        "unknown_external_workflow_execution" -> pure RCEWEFCUnknownExternalWorkflowExecution
        e -> fromTextError $ "Failure parsing RequestCancelExternalWorkflowExecutionFailedCause from value: '" <> e
           <> "'. Accepted values: operation_not_permitted, request_cancel_external_workflow_execution_rate_exceeded, unknown_external_workflow_execution"

instance ToText RequestCancelExternalWorkflowExecutionFailedCause where
    toText = \case
        RCEWEFCOperationNotPermitted -> "operation_not_permitted"
        RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded -> "request_cancel_external_workflow_execution_rate_exceeded"
        RCEWEFCUnknownExternalWorkflowExecution -> "unknown_external_workflow_execution"

instance Hashable     RequestCancelExternalWorkflowExecutionFailedCause
instance ToByteString RequestCancelExternalWorkflowExecutionFailedCause
instance ToQuery      RequestCancelExternalWorkflowExecutionFailedCause
instance ToHeader     RequestCancelExternalWorkflowExecutionFailedCause

instance FromJSON RequestCancelExternalWorkflowExecutionFailedCause where
    parseJSON = parseJSONText "RequestCancelExternalWorkflowExecutionFailedCause"

data ScheduleActivityTaskFailedCause
    = SATFCActivityCreationRateExceeded
    | SATFCActivityIdAlreadyInUse
    | SATFCActivityTypeDeprecated
    | SATFCActivityTypeDoesNotExist
    | SATFCDefaultHeartbeatTimeoutUndefined
    | SATFCDefaultScheduleToCloseTimeoutUndefined
    | SATFCDefaultScheduleToStartTimeoutUndefined
    | SATFCDefaultStartToCloseTimeoutUndefined
    | SATFCDefaultTaskListUndefined
    | SATFCOpenActivitiesLimitExceeded
    | SATFCOperationNotPermitted
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ScheduleActivityTaskFailedCause where
    parser = takeLowerText >>= \case
        "activity_creation_rate_exceeded" -> pure SATFCActivityCreationRateExceeded
        "activity_id_already_in_use" -> pure SATFCActivityIdAlreadyInUse
        "activity_type_deprecated" -> pure SATFCActivityTypeDeprecated
        "activity_type_does_not_exist" -> pure SATFCActivityTypeDoesNotExist
        "default_heartbeat_timeout_undefined" -> pure SATFCDefaultHeartbeatTimeoutUndefined
        "default_schedule_to_close_timeout_undefined" -> pure SATFCDefaultScheduleToCloseTimeoutUndefined
        "default_schedule_to_start_timeout_undefined" -> pure SATFCDefaultScheduleToStartTimeoutUndefined
        "default_start_to_close_timeout_undefined" -> pure SATFCDefaultStartToCloseTimeoutUndefined
        "default_task_list_undefined" -> pure SATFCDefaultTaskListUndefined
        "open_activities_limit_exceeded" -> pure SATFCOpenActivitiesLimitExceeded
        "operation_not_permitted" -> pure SATFCOperationNotPermitted
        e -> fromTextError $ "Failure parsing ScheduleActivityTaskFailedCause from value: '" <> e
           <> "'. Accepted values: activity_creation_rate_exceeded, activity_id_already_in_use, activity_type_deprecated, activity_type_does_not_exist, default_heartbeat_timeout_undefined, default_schedule_to_close_timeout_undefined, default_schedule_to_start_timeout_undefined, default_start_to_close_timeout_undefined, default_task_list_undefined, open_activities_limit_exceeded, operation_not_permitted"

instance ToText ScheduleActivityTaskFailedCause where
    toText = \case
        SATFCActivityCreationRateExceeded -> "activity_creation_rate_exceeded"
        SATFCActivityIdAlreadyInUse -> "activity_id_already_in_use"
        SATFCActivityTypeDeprecated -> "activity_type_deprecated"
        SATFCActivityTypeDoesNotExist -> "activity_type_does_not_exist"
        SATFCDefaultHeartbeatTimeoutUndefined -> "default_heartbeat_timeout_undefined"
        SATFCDefaultScheduleToCloseTimeoutUndefined -> "default_schedule_to_close_timeout_undefined"
        SATFCDefaultScheduleToStartTimeoutUndefined -> "default_schedule_to_start_timeout_undefined"
        SATFCDefaultStartToCloseTimeoutUndefined -> "default_start_to_close_timeout_undefined"
        SATFCDefaultTaskListUndefined -> "default_task_list_undefined"
        SATFCOpenActivitiesLimitExceeded -> "open_activities_limit_exceeded"
        SATFCOperationNotPermitted -> "operation_not_permitted"

instance Hashable     ScheduleActivityTaskFailedCause
instance ToByteString ScheduleActivityTaskFailedCause
instance ToQuery      ScheduleActivityTaskFailedCause
instance ToHeader     ScheduleActivityTaskFailedCause

instance FromJSON ScheduleActivityTaskFailedCause where
    parseJSON = parseJSONText "ScheduleActivityTaskFailedCause"

data ScheduleLambdaFunctionFailedCause
    = IdAlreadyInUse
    | LambdaFunctionCreationRateExceeded
    | LambdaServiceNotAvailableInRegion
    | OpenLambdaFunctionsLimitExceeded
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText ScheduleLambdaFunctionFailedCause where
    parser = takeLowerText >>= \case
        "id_already_in_use" -> pure IdAlreadyInUse
        "lambda_function_creation_rate_exceeded" -> pure LambdaFunctionCreationRateExceeded
        "lambda_service_not_available_in_region" -> pure LambdaServiceNotAvailableInRegion
        "open_lambda_functions_limit_exceeded" -> pure OpenLambdaFunctionsLimitExceeded
        e -> fromTextError $ "Failure parsing ScheduleLambdaFunctionFailedCause from value: '" <> e
           <> "'. Accepted values: id_already_in_use, lambda_function_creation_rate_exceeded, lambda_service_not_available_in_region, open_lambda_functions_limit_exceeded"

instance ToText ScheduleLambdaFunctionFailedCause where
    toText = \case
        IdAlreadyInUse -> "id_already_in_use"
        LambdaFunctionCreationRateExceeded -> "lambda_function_creation_rate_exceeded"
        LambdaServiceNotAvailableInRegion -> "lambda_service_not_available_in_region"
        OpenLambdaFunctionsLimitExceeded -> "open_lambda_functions_limit_exceeded"

instance Hashable     ScheduleLambdaFunctionFailedCause
instance ToByteString ScheduleLambdaFunctionFailedCause
instance ToQuery      ScheduleLambdaFunctionFailedCause
instance ToHeader     ScheduleLambdaFunctionFailedCause

instance FromJSON ScheduleLambdaFunctionFailedCause where
    parseJSON = parseJSONText "ScheduleLambdaFunctionFailedCause"

data SignalExternalWorkflowExecutionFailedCause
    = SEWEFCOperationNotPermitted
    | SEWEFCSignalExternalWorkflowExecutionRateExceeded
    | SEWEFCUnknownExternalWorkflowExecution
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText SignalExternalWorkflowExecutionFailedCause where
    parser = takeLowerText >>= \case
        "operation_not_permitted" -> pure SEWEFCOperationNotPermitted
        "signal_external_workflow_execution_rate_exceeded" -> pure SEWEFCSignalExternalWorkflowExecutionRateExceeded
        "unknown_external_workflow_execution" -> pure SEWEFCUnknownExternalWorkflowExecution
        e -> fromTextError $ "Failure parsing SignalExternalWorkflowExecutionFailedCause from value: '" <> e
           <> "'. Accepted values: operation_not_permitted, signal_external_workflow_execution_rate_exceeded, unknown_external_workflow_execution"

instance ToText SignalExternalWorkflowExecutionFailedCause where
    toText = \case
        SEWEFCOperationNotPermitted -> "operation_not_permitted"
        SEWEFCSignalExternalWorkflowExecutionRateExceeded -> "signal_external_workflow_execution_rate_exceeded"
        SEWEFCUnknownExternalWorkflowExecution -> "unknown_external_workflow_execution"

instance Hashable     SignalExternalWorkflowExecutionFailedCause
instance ToByteString SignalExternalWorkflowExecutionFailedCause
instance ToQuery      SignalExternalWorkflowExecutionFailedCause
instance ToHeader     SignalExternalWorkflowExecutionFailedCause

instance FromJSON SignalExternalWorkflowExecutionFailedCause where
    parseJSON = parseJSONText "SignalExternalWorkflowExecutionFailedCause"

data StartChildWorkflowExecutionFailedCause
    = SCWEFCChildCreationRateExceeded
    | SCWEFCDefaultChildPolicyUndefined
    | SCWEFCDefaultExecutionStartToCloseTimeoutUndefined
    | SCWEFCDefaultTaskListUndefined
    | SCWEFCDefaultTaskStartToCloseTimeoutUndefined
    | SCWEFCOpenChildrenLimitExceeded
    | SCWEFCOpenWorkflowsLimitExceeded
    | SCWEFCOperationNotPermitted
    | SCWEFCWorkflowAlreadyRunning
    | SCWEFCWorkflowTypeDeprecated
    | SCWEFCWorkflowTypeDoesNotExist
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText StartChildWorkflowExecutionFailedCause where
    parser = takeLowerText >>= \case
        "child_creation_rate_exceeded" -> pure SCWEFCChildCreationRateExceeded
        "default_child_policy_undefined" -> pure SCWEFCDefaultChildPolicyUndefined
        "default_execution_start_to_close_timeout_undefined" -> pure SCWEFCDefaultExecutionStartToCloseTimeoutUndefined
        "default_task_list_undefined" -> pure SCWEFCDefaultTaskListUndefined
        "default_task_start_to_close_timeout_undefined" -> pure SCWEFCDefaultTaskStartToCloseTimeoutUndefined
        "open_children_limit_exceeded" -> pure SCWEFCOpenChildrenLimitExceeded
        "open_workflows_limit_exceeded" -> pure SCWEFCOpenWorkflowsLimitExceeded
        "operation_not_permitted" -> pure SCWEFCOperationNotPermitted
        "workflow_already_running" -> pure SCWEFCWorkflowAlreadyRunning
        "workflow_type_deprecated" -> pure SCWEFCWorkflowTypeDeprecated
        "workflow_type_does_not_exist" -> pure SCWEFCWorkflowTypeDoesNotExist
        e -> fromTextError $ "Failure parsing StartChildWorkflowExecutionFailedCause from value: '" <> e
           <> "'. Accepted values: child_creation_rate_exceeded, default_child_policy_undefined, default_execution_start_to_close_timeout_undefined, default_task_list_undefined, default_task_start_to_close_timeout_undefined, open_children_limit_exceeded, open_workflows_limit_exceeded, operation_not_permitted, workflow_already_running, workflow_type_deprecated, workflow_type_does_not_exist"

instance ToText StartChildWorkflowExecutionFailedCause where
    toText = \case
        SCWEFCChildCreationRateExceeded -> "child_creation_rate_exceeded"
        SCWEFCDefaultChildPolicyUndefined -> "default_child_policy_undefined"
        SCWEFCDefaultExecutionStartToCloseTimeoutUndefined -> "default_execution_start_to_close_timeout_undefined"
        SCWEFCDefaultTaskListUndefined -> "default_task_list_undefined"
        SCWEFCDefaultTaskStartToCloseTimeoutUndefined -> "default_task_start_to_close_timeout_undefined"
        SCWEFCOpenChildrenLimitExceeded -> "open_children_limit_exceeded"
        SCWEFCOpenWorkflowsLimitExceeded -> "open_workflows_limit_exceeded"
        SCWEFCOperationNotPermitted -> "operation_not_permitted"
        SCWEFCWorkflowAlreadyRunning -> "workflow_already_running"
        SCWEFCWorkflowTypeDeprecated -> "workflow_type_deprecated"
        SCWEFCWorkflowTypeDoesNotExist -> "workflow_type_does_not_exist"

instance Hashable     StartChildWorkflowExecutionFailedCause
instance ToByteString StartChildWorkflowExecutionFailedCause
instance ToQuery      StartChildWorkflowExecutionFailedCause
instance ToHeader     StartChildWorkflowExecutionFailedCause

instance FromJSON StartChildWorkflowExecutionFailedCause where
    parseJSON = parseJSONText "StartChildWorkflowExecutionFailedCause"

data StartLambdaFunctionFailedCause =
    AssumeRoleFailed
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText StartLambdaFunctionFailedCause where
    parser = takeLowerText >>= \case
        "assume_role_failed" -> pure AssumeRoleFailed
        e -> fromTextError $ "Failure parsing StartLambdaFunctionFailedCause from value: '" <> e
           <> "'. Accepted values: assume_role_failed"

instance ToText StartLambdaFunctionFailedCause where
    toText = \case
        AssumeRoleFailed -> "assume_role_failed"

instance Hashable     StartLambdaFunctionFailedCause
instance ToByteString StartLambdaFunctionFailedCause
instance ToQuery      StartLambdaFunctionFailedCause
instance ToHeader     StartLambdaFunctionFailedCause

instance FromJSON StartLambdaFunctionFailedCause where
    parseJSON = parseJSONText "StartLambdaFunctionFailedCause"

data StartTimerFailedCause
    = OpenTimersLimitExceeded
    | OperationNotPermitted
    | TimerCreationRateExceeded
    | TimerIdAlreadyInUse
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText StartTimerFailedCause where
    parser = takeLowerText >>= \case
        "open_timers_limit_exceeded" -> pure OpenTimersLimitExceeded
        "operation_not_permitted" -> pure OperationNotPermitted
        "timer_creation_rate_exceeded" -> pure TimerCreationRateExceeded
        "timer_id_already_in_use" -> pure TimerIdAlreadyInUse
        e -> fromTextError $ "Failure parsing StartTimerFailedCause from value: '" <> e
           <> "'. Accepted values: open_timers_limit_exceeded, operation_not_permitted, timer_creation_rate_exceeded, timer_id_already_in_use"

instance ToText StartTimerFailedCause where
    toText = \case
        OpenTimersLimitExceeded -> "open_timers_limit_exceeded"
        OperationNotPermitted -> "operation_not_permitted"
        TimerCreationRateExceeded -> "timer_creation_rate_exceeded"
        TimerIdAlreadyInUse -> "timer_id_already_in_use"

instance Hashable     StartTimerFailedCause
instance ToByteString StartTimerFailedCause
instance ToQuery      StartTimerFailedCause
instance ToHeader     StartTimerFailedCause

instance FromJSON StartTimerFailedCause where
    parseJSON = parseJSONText "StartTimerFailedCause"

data WorkflowExecutionCancelRequestedCause =
    ChildPolicyApplied
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText WorkflowExecutionCancelRequestedCause where
    parser = takeLowerText >>= \case
        "child_policy_applied" -> pure ChildPolicyApplied
        e -> fromTextError $ "Failure parsing WorkflowExecutionCancelRequestedCause from value: '" <> e
           <> "'. Accepted values: child_policy_applied"

instance ToText WorkflowExecutionCancelRequestedCause where
    toText = \case
        ChildPolicyApplied -> "child_policy_applied"

instance Hashable     WorkflowExecutionCancelRequestedCause
instance ToByteString WorkflowExecutionCancelRequestedCause
instance ToQuery      WorkflowExecutionCancelRequestedCause
instance ToHeader     WorkflowExecutionCancelRequestedCause

instance FromJSON WorkflowExecutionCancelRequestedCause where
    parseJSON = parseJSONText "WorkflowExecutionCancelRequestedCause"

data WorkflowExecutionTerminatedCause
    = WETCChildPolicyApplied
    | WETCEventLimitExceeded
    | WETCOperatorInitiated
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText WorkflowExecutionTerminatedCause where
    parser = takeLowerText >>= \case
        "child_policy_applied" -> pure WETCChildPolicyApplied
        "event_limit_exceeded" -> pure WETCEventLimitExceeded
        "operator_initiated" -> pure WETCOperatorInitiated
        e -> fromTextError $ "Failure parsing WorkflowExecutionTerminatedCause from value: '" <> e
           <> "'. Accepted values: child_policy_applied, event_limit_exceeded, operator_initiated"

instance ToText WorkflowExecutionTerminatedCause where
    toText = \case
        WETCChildPolicyApplied -> "child_policy_applied"
        WETCEventLimitExceeded -> "event_limit_exceeded"
        WETCOperatorInitiated -> "operator_initiated"

instance Hashable     WorkflowExecutionTerminatedCause
instance ToByteString WorkflowExecutionTerminatedCause
instance ToQuery      WorkflowExecutionTerminatedCause
instance ToHeader     WorkflowExecutionTerminatedCause

instance FromJSON WorkflowExecutionTerminatedCause where
    parseJSON = parseJSONText "WorkflowExecutionTerminatedCause"

data WorkflowExecutionTimeoutType =
    WETTStartToClose
    deriving (Eq,Ord,Read,Show,Enum,Data,Typeable,Generic)

instance FromText WorkflowExecutionTimeoutType where
    parser = takeLowerText >>= \case
        "start_to_close" -> pure WETTStartToClose
        e -> fromTextError $ "Failure parsing WorkflowExecutionTimeoutType from value: '" <> e
           <> "'. Accepted values: start_to_close"

instance ToText WorkflowExecutionTimeoutType where
    toText = \case
        WETTStartToClose -> "start_to_close"

instance Hashable     WorkflowExecutionTimeoutType
instance ToByteString WorkflowExecutionTimeoutType
instance ToQuery      WorkflowExecutionTimeoutType
instance ToHeader     WorkflowExecutionTimeoutType

instance FromJSON WorkflowExecutionTimeoutType where
    parseJSON = parseJSONText "WorkflowExecutionTimeoutType"
