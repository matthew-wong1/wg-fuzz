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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer101.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer200.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query400.destroy()
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    buffer102.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query000.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer300.destroy()
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    query200.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query401.destroy()
    query200.destroy()
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer302.destroy()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    buffer301.destroy()
    query400.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    buffer103.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query301.destroy()
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    
    query301.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    buffer104.destroy()
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer202.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    buffer201.destroy()
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    buffer303.destroy()
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    query201.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    buffer401.destroy()
    query000.destroy()
    query300.destroy()
    query401.destroy()
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    query100.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query200.destroy()
    query103.destroy()
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    query001.destroy()
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query002.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query300.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    query100.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0044 = texture004.createView({ label: "texture_view0044" });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query003.destroy()
    
    query004.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query003.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    
    query102.destroy()
    query403.destroy()
    query000.destroy()
    const texture_view00110 = texture0011.createView({ label: "texture_view00110" });
    const texture0012 = device00.createTexture({
        label: "texture0012",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    buffer105.destroy()
    
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const texture_view0081 = texture008.createView({ label: "texture_view0081" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    query301.destroy()
    
    buffer002.destroy()
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query401.destroy()
    query003.destroy()
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query002.destroy()
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    query003.destroy()
    query401.destroy()
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const texture_view2006 = texture200.createView({ label: "texture_view2006" });
    buffer203.destroy()
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    query102.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer400.destroy()
    buffer500.destroy()
    buffer304.destroy()
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const texture0013 = device00.createTexture({
        label: "texture0013",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer003.destroy()
    query302.destroy()
    
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view4060 = texture406.createView({ label: "texture_view4060" });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const texture_view00130 = texture0013.createView({ label: "texture_view00130" });
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    const texture_view0072 = texture007.createView({ label: "texture_view0072" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture_view0073 = texture007.createView({ label: "texture_view0073" });
    
    query200.destroy()
    query500.destroy()
    const texture0014 = device00.createTexture({
        label: "texture0014",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query404.destroy()
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    query400.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture_view00140 = texture0014.createView({ label: "texture_view00140" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const texture_view1034 = texture103.createView({ label: "texture_view1034" });
    query300.destroy()
    query500.destroy()
    const texture_view0074 = texture007.createView({ label: "texture_view0074" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view0082 = texture008.createView({ label: "texture_view0082" });
    query401.destroy()
    query600.destroy()
    query002.destroy()
    buffer402.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view0025 = texture002.createView({ label: "texture_view0025" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    query202.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    query401.destroy()
    
    const texture_view00111 = texture0011.createView({ label: "texture_view00111" });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const texture_view1035 = texture103.createView({ label: "texture_view1035" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query202.destroy()
    const texture_view00100 = texture0010.createView({ label: "texture_view00100" });
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer106.destroy()
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    buffer004.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query103.destroy()
    
    
    const texture0015 = device00.createTexture({
        label: "texture0015",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const texture_view0045 = texture004.createView({ label: "texture_view0045" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    query000.destroy()
    const texture_view0026 = texture002.createView({ label: "texture_view0026" });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view00101 = texture0010.createView({ label: "texture_view00101" });
    const texture_view4070 = texture407.createView({ label: "texture_view4070" });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const texture408 = device40.createTexture({
        label: "texture408",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    const texture_view0062 = texture006.createView({ label: "texture_view0062" });
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    const texture_view00112 = texture0011.createView({ label: "texture_view00112" });
    const texture_view4061 = texture406.createView({ label: "texture_view4061" });
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const texture_view0090 = texture009.createView({ label: "texture_view0090" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    query202.destroy()
    const texture_view00150 = texture0015.createView({ label: "texture_view00150" });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const texture_view4051 = texture405.createView({ label: "texture_view4051" });
    const texture_view00120 = texture0012.createView({ label: "texture_view00120" });
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    buffer305.destroy()
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture_view00131 = texture0013.createView({ label: "texture_view00131" });
    buffer204.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const texture_view0083 = texture008.createView({ label: "texture_view0083" });
    const texture_view00121 = texture0012.createView({ label: "texture_view00121" });
    query000.destroy()
    query404.destroy()
    const texture_view0063 = texture006.createView({ label: "texture_view0063" });
    buffer403.destroy()
    const texture0016 = device00.createTexture({
        label: "texture0016",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0084 = texture008.createView({ label: "texture_view0084" });
    
    query103.destroy()
    query402.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    const texture_view0027 = texture002.createView({ label: "texture_view0027" });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    query003.destroy()
    query301.destroy()
    
    
    const texture409 = device40.createTexture({
        label: "texture409",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture_view3015 = texture301.createView({ label: "texture_view3015" });
    
    buffer206.destroy()
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query003.destroy()
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const texture_view0046 = texture004.createView({ label: "texture_view0046" });
    query201.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const texture_view4006 = texture400.createView({ label: "texture_view4006" });
    query600.destroy()
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const texture_view4080 = texture408.createView({ label: "texture_view4080" });
    const texture_view4071 = texture407.createView({ label: "texture_view4071" });
    query200.destroy()
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture_view4052 = texture405.createView({ label: "texture_view4052" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    query700.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view4062 = texture406.createView({ label: "texture_view4062" });
    const texture_view0075 = texture007.createView({ label: "texture_view0075" });
    query304.destroy()
    query500.destroy()
    query302.destroy()
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    query302.destroy()
    query401.destroy()
    
    query005.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const texture_view0028 = texture002.createView({ label: "texture_view0028" });
    
    query402.destroy()
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    query304.destroy()
    query203.destroy()
    query101.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const texture_view5004 = texture500.createView({ label: "texture_view5004" });
    buffer001.destroy()
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const texture_view00151 = texture0015.createView({ label: "texture_view00151" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query302.destroy()
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    const texture_view3033 = texture303.createView({ label: "texture_view3033" });
    query202.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    query301.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    query600.destroy()
    const texture_view2007 = texture200.createView({ label: "texture_view2007" });
    query501.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query402.destroy()
}