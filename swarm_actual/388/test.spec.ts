export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.pushErrorScope("out-of-memory");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.popDebugGroup()
    command_encoder300.pushDebugGroup("mygroupmarker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder300.insertDebugMarker("mymarker");
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    device00.pushErrorScope("validation");
    command_encoder302.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    command_encoder302.popDebugGroup()
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_buffer400 = command_encoder400.finish();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device20.pushErrorScope("out-of-memory");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder002.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device20.pushErrorScope("internal");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    command_encoder303.pushDebugGroup("mygroupmarker")
    const command_buffer003 = command_encoder003.finish();
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device20.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder302.insertDebugMarker("mymarker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    
    device40.pushErrorScope("validation");
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder002.popDebugGroup()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer306 = command_encoder306.finish();
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    device20.pushErrorScope("internal");
    compute_pass_encoder3040.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_buffer002 = command_encoder002.finish();
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder005.clearBuffer(buffer003);
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    device50.pushErrorScope("internal");
    compute_pass_encoder3040.insertDebugMarker("marker")
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder005.insertDebugMarker("mymarker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device20.pushErrorScope("internal");
    command_encoder307.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    command_encoder401.pushDebugGroup("mygroupmarker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder307.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder3050.insertDebugMarker("marker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_buffer500 = command_encoder500.finish();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("internal");
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    command_encoder307.resolveQuerySet(
        query305,
        0,
        32,
        buffer300,
        0
    )
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder307.resolveQuerySet(
        query305,
        0,
        32,
        buffer300,
        0
    )
    command_encoder201.insertDebugMarker("mymarker");
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder307.resolveQuerySet(
        query304,
        0,
        32,
        buffer300,
        0
    )
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder005.clearBuffer(buffer003);
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder307.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_buffer005 = command_encoder005.finish();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pass_encoder3070 = command_encoder307.beginComputePass({ label: "compute_pass_encoder3070" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder006.insertDebugMarker("mymarker");
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device20.pushErrorScope("validation");
    
    device30.pushErrorScope("validation");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    command_encoder700.insertDebugMarker("mymarker");
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder3050.insertDebugMarker("marker")
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    compute_pass_encoder7000.insertDebugMarker("marker")
    compute_pass_encoder3070.insertDebugMarker("marker")
    device60.pushErrorScope("validation");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5020.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    compute_pass_encoder3040.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder5010.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    command_encoder006.clearBuffer(buffer003);
    
    
    
    
    command_encoder007.clearBuffer(buffer003);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    command_encoder006.popDebugGroup()
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder007.clearBuffer(buffer003);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    device50.pushErrorScope("internal");
    compute_pass_encoder7000.insertDebugMarker("marker")
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder006.insertDebugMarker("mymarker");
    device20.pushErrorScope("validation");
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    command_encoder702.pushDebugGroup("mygroupmarker")
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const command_buffer201 = command_encoder201.finish();
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const command_buffer701 = command_encoder701.finish();
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder006.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    compute_pass_encoder5020.insertDebugMarker("marker")
    command_encoder006.clearBuffer(buffer003);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    command_encoder601.insertDebugMarker("mymarker");
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer308 = command_encoder308.finish();
    compute_pass_encoder8000.insertDebugMarker("marker")
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    command_encoder601.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder3020.insertDebugMarker("marker")
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device00.pushErrorScope("validation");
    command_encoder900.insertDebugMarker("mymarker");
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    command_encoder007.insertDebugMarker("mymarker");
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    command_encoder007.clearBuffer(buffer003);
    const command_buffer900 = command_encoder900.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder503.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder3050.insertDebugMarker("marker")
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder3040.insertDebugMarker("marker")
    device40.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device70.pushErrorScope("internal");
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_buffer602 = command_encoder602.finish();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder503.insertDebugMarker("mymarker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device90.pushErrorScope("validation");
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const query309 = device30.createQuerySet({
        label: "query309",
        type: "occlusion",
        count: 32,
    });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder503.insertDebugMarker("mymarker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    const command_encoder309 = device30.createCommandEncoder({ label: "command_encoder309" });
    
    const command_buffer100 = command_encoder100.finish();
    
    const command_buffer309 = command_encoder309.finish();
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder5030.insertDebugMarker("marker")
    compute_pass_encoder8000.insertDebugMarker("marker")
    command_encoder403.resolveQuerySet(
        query403,
        0,
        32,
        buffer402,
        0
    )
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const command_buffer901 = command_encoder901.finish();
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    command_encoder203.clearBuffer(buffer200);
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const command_buffer403 = command_encoder403.finish();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer007 = command_encoder007.finish();
    const command_buffer1000 = command_encoder1000.finish();
    command_encoder601.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer203 = command_encoder203.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
}