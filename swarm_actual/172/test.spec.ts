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
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query002.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.pushErrorScope("validation");
    
    query003.destroy()
    query003.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.pushErrorScope("validation");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    query300.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query001.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    device40.pushErrorScope("out-of-memory");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query001.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query300.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query003.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer400.destroy()
    query004.destroy()
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query002.destroy()
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    query301.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    query300.destroy()
    
    buffer301.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query002.destroy()
    
    
    
    query001.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    buffer202.destroy()
    
    
    query500.destroy()
    buffer201.destroy()
    query004.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    query400.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query002.destroy()
    
    query004.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer300.destroy()
    buffer203.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    query400.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query401.destroy()
    
    device60.pushErrorScope("internal");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    query401.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    buffer204.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    query501.destroy()
    buffer001.destroy()
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer302.destroy()
    query300.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query600.destroy()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query400.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query002.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    buffer303.destroy()
    
    buffer002.destroy()
    query501.destroy()
    buffer304.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query301.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query000.destroy()
    
    query200.destroy()
    query601.destroy()
    query007.destroy()
    query400.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer600.destroy()
    query201.destroy()
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query100.destroy()
    query006.destroy()
    query500.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.pushErrorScope("validation");
    
    device10.pushErrorScope("internal");
    buffer205.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    query300.destroy()
    query007.destroy()
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    query401.destroy()
    query000.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    buffer006.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query603.destroy()
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    query304.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query303.destroy()
    
    query602.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query502.destroy()
    
    
    
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    query603.destroy()
    query502.destroy()
    query501.destroy()
    query305.destroy()
    query301.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer502.destroy()
    
    query304.destroy()
    buffer003.destroy()
    query603.destroy()
    
    
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    query002.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    query002.destroy()
    query002.destroy()
    query008.destroy()
    device20.pushErrorScope("out-of-memory");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query007.destroy()
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    query305.destroy()
    query601.destroy()
    query002.destroy()
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    buffer005.destroy()
    
    buffer004.destroy()
    query600.destroy()
    query002.destroy()
    query305.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query401.destroy()
    
    query502.destroy()
    query501.destroy()
    query302.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    query002.destroy()
    query201.destroy()
    query501.destroy()
    query006.destroy()
    
    query002.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query200.destroy()
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    query007.destroy()
    query003.destroy()
    query601.destroy()
    query202.destroy()
    query200.destroy()
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    query600.destroy()
    query303.destroy()
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query402.destroy()
    query200.destroy()
    
    query304.destroy()
    query305.destroy()
    query102.destroy()
    query303.destroy()
    query307.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    query306.destroy()
    
    
    buffer305.destroy()
    query401.destroy()
    query600.destroy()
    query006.destroy()
    buffer306.destroy()
    query700.destroy()
    
    query001.destroy()
    query007.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query002.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query600.destroy()
    query307.destroy()
    
    query500.destroy()
    
    query201.destroy()
    query002.destroy()
    query006.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query008.destroy()
    buffer401.destroy()
    query700.destroy()
    
    buffer007.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query504.destroy()
    query303.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    query005.destroy()
    query402.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    query402.destroy()
    
    query604.destroy()
    query200.destroy()
    buffer206.destroy()
    query000.destroy()
    buffer503.destroy()
    query101.destroy()
    
    query701.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    query602.destroy()
    query306.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query601.destroy()
    query101.destroy()
    query201.destroy()
    query002.destroy()
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    query006.destroy()
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query601.destroy()
    query302.destroy()
    query601.destroy()
    query401.destroy()
    buffer207.destroy()
    buffer101.destroy()
    query500.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    query100.destroy()
    
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    query001.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query402.destroy()
    query404.destroy()
    query404.destroy()
    query402.destroy()
    query404.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query102.destroy()
    query100.destroy()
    query201.destroy()
    
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    buffer008.destroy()
    query0010.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    
    query202.destroy()
    query603.destroy()
    
    query100.destroy()
    
    
    query501.destroy()
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    query202.destroy()
    query303.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer208.destroy()
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query307.destroy()
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    query0011.destroy()
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    buffer800.destroy()
    
    query009.destroy()
    query401.destroy()
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query102.destroy()
    query007.destroy()
    query006.destroy()
    query502.destroy()
    buffer009.destroy()
    query0010.destroy()
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query302.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query004.destroy()
    
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query301.destroy()
    query304.destroy()
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query700.destroy()
    query100.destroy()
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    query400.destroy()
}