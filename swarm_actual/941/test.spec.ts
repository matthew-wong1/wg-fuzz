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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("out-of-memory");
    buffer000.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer000 = command_encoder000.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    buffer002.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer003.destroy()
    buffer004.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.insertDebugMarker("mymarker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.popDebugGroup()
    command_encoder002.insertDebugMarker("mymarker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer200 = command_encoder200.finish();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer200.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_buffer004 = command_encoder004.finish();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    device30.destroy();
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    buffer201.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    compute_pass_encoder0010.popDebugGroup()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0050.popDebugGroup()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer400.destroy()
    device40.pushErrorScope("internal");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    buffer202.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    buffer401.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.popDebugGroup()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder0030.popDebugGroup()
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder201.clearBuffer(buffer203);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    command_encoder201.insertDebugMarker("mymarker");
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    command_encoder006.insertDebugMarker("mymarker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    buffer005.destroy()
    command_encoder006.insertDebugMarker("mymarker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.insertDebugMarker("mymarker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const command_buffer501 = command_encoder501.finish();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0020.popDebugGroup()
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.destroy();
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0010.popDebugGroup()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder4000.popDebugGroup()
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    const command_buffer202 = command_encoder202.finish();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer006 = command_encoder006.finish();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer203.destroy()
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer0010.destroy()
    buffer006.destroy()
    compute_pass_encoder2010.popDebugGroup()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    const command_buffer203 = command_encoder203.finish();
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer402.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_buffer008 = command_encoder008.finish();
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    command_encoder503.insertDebugMarker("mymarker");
    const command_buffer502 = command_encoder502.finish();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer008.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    buffer204.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const sampler2011 = device20.createSampler( { label: "sampler2011" } );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    buffer403.destroy()
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder5000.popDebugGroup()
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    buffer0011.destroy()
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const sampler2012 = device20.createSampler( { label: "sampler2012" } );
    const command_buffer402 = command_encoder402.finish();
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    device70.destroy();
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    buffer009.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer404.destroy()
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const command_buffer504 = command_encoder504.finish();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    compute_pass_encoder0030.popDebugGroup()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.popDebugGroup()
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query507 = device50.createQuerySet({
        label: "query507",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const sampler408 = device40.createSampler( { label: "sampler408" } );
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    buffer206.destroy()
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    const command_buffer505 = command_encoder505.finish();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const command_buffer204 = command_encoder204.finish();
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0020.popDebugGroup()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query508 = device50.createQuerySet({
        label: "query508",
        type: "occlusion",
        count: 32,
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query2013 = device20.createQuerySet({
        label: "query2013",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder0070.popDebugGroup()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    buffer405.destroy()
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder206.insertDebugMarker("mymarker");
    compute_pass_encoder4000.popDebugGroup()
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    command_encoder206.insertDebugMarker("mymarker");
    const query2014 = device20.createQuerySet({
        label: "query2014",
        type: "occlusion",
        count: 32,
    });
    const command_buffer506 = command_encoder506.finish();
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    compute_pass_encoder0030.popDebugGroup()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer206 = command_encoder206.finish();
    buffer209.destroy()
    const sampler2013 = device20.createSampler( { label: "sampler2013" } );
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    buffer207.destroy()
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    command_encoder408.insertDebugMarker("mymarker");
    const compute_pass_encoder4070 = command_encoder407.beginComputePass({ label: "compute_pass_encoder4070" });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    const sampler409 = device40.createSampler( { label: "sampler409" } );
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    compute_pass_encoder5000.popDebugGroup()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    buffer007.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder507.insertDebugMarker("mymarker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_buffer406 = command_encoder406.finish();
    compute_pass_encoder5030.popDebugGroup()
    command_encoder507.insertDebugMarker("mymarker");
    device80.destroy();
    compute_pass_encoder2050.popDebugGroup()
    buffer502.destroy()
    compute_pass_encoder0020.popDebugGroup()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const command_encoder409 = device40.createCommandEncoder({ label: "command_encoder409" });
    const query0012 = device00.createQuerySet({
        label: "query0012",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4050.pushDebugGroup("group_marker")
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const query509 = device50.createQuerySet({
        label: "query509",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    buffer501.destroy()
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    const sampler4010 = device40.createSampler( { label: "sampler4010" } );
    const sampler4011 = device40.createSampler( { label: "sampler4011" } );
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder4050.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    buffer406.destroy()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder4000.popDebugGroup()
    const query2015 = device20.createQuerySet({
        label: "query2015",
        type: "occlusion",
        count: 32,
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    command_encoder409.insertDebugMarker("mymarker");
    buffer503.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.destroy();
    buffer208.destroy()
    const compute_pass_encoder5070 = command_encoder507.beginComputePass({ label: "compute_pass_encoder5070" });
    const command_buffer1000 = command_encoder1000.finish();
    const sampler4012 = device40.createSampler( { label: "sampler4012" } );
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler2014 = device20.createSampler( { label: "sampler2014" } );
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    compute_pass_encoder4070.pushDebugGroup("group_marker")
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device100.pushErrorScope("validation");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2010.popDebugGroup()
    buffer504.destroy()
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder009.insertDebugMarker("mymarker");
    command_encoder1001.clearBuffer(buffer1000);
    const compute_pass_encoder4090 = command_encoder409.beginComputePass({ label: "compute_pass_encoder4090" });
    buffer205.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder4010 = device40.createCommandEncoder({ label: "command_encoder4010" });
    compute_pass_encoder5000.popDebugGroup()
    command_encoder009.insertDebugMarker("mymarker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const sampler4013 = device40.createSampler( { label: "sampler4013" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder4070.popDebugGroup()
    command_encoder900.insertDebugMarker("mymarker");
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    const command_buffer408 = command_encoder408.finish();
    compute_pass_encoder0070.popDebugGroup()
    command_encoder009.insertDebugMarker("mymarker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer1002 = command_encoder1002.finish();
    compute_pass_encoder4090.pushDebugGroup("group_marker")
    command_encoder1001.clearBuffer(buffer1000);
    command_encoder1001.copyBufferToBuffer(
        buffer1001,
        0,
        buffer1000,
        0,
        400
    );
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const command_buffer009 = command_encoder009.finish();
    compute_pass_encoder4030.popDebugGroup()
    device90.pushErrorScope("internal");
    command_encoder4010.insertDebugMarker("mymarker");
    buffer0012.destroy()
    buffer407.destroy()
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder1003 = device100.createCommandEncoder({ label: "command_encoder1003" });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder10010 = command_encoder1001.beginComputePass({ label: "compute_pass_encoder10010" });
    const command_buffer900 = command_encoder900.finish();
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query0013 = device00.createQuerySet({
        label: "query0013",
        type: "occlusion",
        count: 32,
    });
    buffer2010.destroy()
    buffer409.destroy()
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer0015.destroy()
    const sampler2015 = device20.createSampler( { label: "sampler2015" } );
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const sampler4014 = device40.createSampler( { label: "sampler4014" } );
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder508 = device50.createCommandEncoder({ label: "command_encoder508" });
    buffer0014.destroy()
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer1003 = command_encoder1003.finish();
    command_encoder508.clearBuffer(buffer506);
    compute_pass_encoder0010.popDebugGroup()
    buffer0013.destroy()
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const compute_pass_encoder00100 = command_encoder0010.beginComputePass({ label: "compute_pass_encoder00100" });
    buffer506.destroy()
    compute_pass_encoder4090.popDebugGroup()
    command_encoder508.clearBuffer(buffer505);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer408.destroy()
    compute_pass_encoder0020.popDebugGroup()
    buffer1000.destroy()
    const compute_pass_encoder5080 = command_encoder508.beginComputePass({ label: "compute_pass_encoder5080" });
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    buffer4010.destroy()
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    compute_pass_encoder0070.popDebugGroup()
    const command_buffer207 = command_encoder207.finish();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const command_encoder509 = device50.createCommandEncoder({ label: "command_encoder509" });
    compute_pass_encoder10010.pushDebugGroup("group_marker")
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler4015 = device40.createSampler( { label: "sampler4015" } );
    const compute_pass_encoder40100 = command_encoder4010.beginComputePass({ label: "compute_pass_encoder40100" });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const sampler2016 = device20.createSampler( { label: "sampler2016" } );
    const sampler2017 = device20.createSampler( { label: "sampler2017" } );
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler2018 = device20.createSampler( { label: "sampler2018" } );
    const sampler2019 = device20.createSampler( { label: "sampler2019" } );
    buffer0016.destroy()
    const command_buffer509 = command_encoder509.finish();
    const command_encoder4011 = device40.createCommandEncoder({ label: "command_encoder4011" });
    device130.destroy();
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder10010.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    const command_buffer4011 = command_encoder4011.finish();
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    const command_buffer1200 = command_encoder1200.finish();
    const command_buffer208 = command_encoder208.finish();
    compute_pass_encoder0050.popDebugGroup()
}