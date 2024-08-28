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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer201.destroy()
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.popDebugGroup();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture200.destroy();
    texture201.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer202.destroy()
    query200.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query200.destroy()
    render_bundle_encoder200.popDebugGroup();
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query201.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    buffer203.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.popDebugGroup();
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    query200.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    query204.destroy()
    buffer204.destroy()
    query205.destroy()
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query202.destroy()
    
    query203.destroy()
    buffer206.destroy()
    
    buffer205.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    device20.pushErrorScope("out-of-memory");
    
    query203.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    query205.destroy()
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query204.destroy()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query205.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    buffer208.destroy()
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query206.destroy()
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    query204.destroy()
    buffer207.destroy()
    query206.destroy()
    query200.destroy()
    
    query202.destroy()
    query205.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    query202.destroy()
    
    query204.destroy()
    query204.destroy()
    query206.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    buffer209.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query200.destroy()
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query204.destroy()
    
    texture203.destroy();
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query200.destroy()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query205.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    query208.destroy()
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.pushErrorScope("internal");
    texture202.destroy();
    render_bundle_encoder201.popDebugGroup();
    query200.destroy()
    query204.destroy()
    
    
    
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query202.destroy()
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    query202.destroy()
    device40.destroy();
    
    query201.destroy()
    query203.destroy()
    query207.destroy()
    buffer2011.destroy()
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    query209.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    query209.destroy()
    texture204.destroy();
    
    device20.pushErrorScope("validation");
    
    query2012.destroy()
    query2012.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query202.destroy()
    query201.destroy()
    
    buffer2010.destroy()
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    
    query205.destroy()
    query202.destroy()
    
    query203.destroy()
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    query208.destroy()
    
    
    query203.destroy()
    query205.destroy()
    
    
    query204.destroy()
    
    query208.destroy()
    
    query208.destroy()
    
    
    
    
    query2010.destroy()
    query202.destroy()
    
    query201.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query209.destroy()
    query2010.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    query208.destroy()
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query201.destroy()
    render_bundle_encoder201.popDebugGroup();
    query2010.destroy()
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture205.destroy();
    query2011.destroy()
    buffer2012.destroy()
    
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query209.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query205.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query2012.destroy()
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query201.destroy()
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    
    query2011.destroy()
    query2011.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    const query2013 = device20.createQuerySet({
        label: "query2013",
        type: "occlusion",
        count: 32,
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    buffer500.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device50.destroy();
    query206.destroy()
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    query2012.destroy()
    
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    
    query209.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query205.destroy()
    
    device80.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    texture206.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query205.destroy()
    query203.destroy()
    query200.destroy()
    query206.destroy()
    
    
    query209.destroy()
    query201.destroy()
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile(__dirname + '/shader_module2013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    
    query206.destroy()
    
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    var shader_module2014_code = "";
    try {
        shader_module2014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2014 = await device20.createShaderModule({ label: "shader_module2014", code: shader_module2014_code })
    query206.destroy()
    
    query2013.destroy()
    query200.destroy()
    query204.destroy()
    const query2014 = device20.createQuerySet({
        label: "query2014",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    query200.destroy()
    
    query204.destroy()
    
    
    query2011.destroy()
    query2010.destroy()
    
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    query205.destroy()
    query2011.destroy()
    render_bundle_encoder201.popDebugGroup();
    
    query207.destroy()
    
    query209.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query209.destroy()
    
    
    query208.destroy()
    
    
    
    render_bundle_encoder202.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    
    
    
    
    render_bundle_encoder200.popDebugGroup();
    
    device20.pushErrorScope("validation");
    
    
    
    query209.destroy()
    query200.destroy()
    
    
    
    query203.destroy()
    
    const sampler2011 = device20.createSampler( { label: "sampler2011" } );
    query206.destroy()
    
    query200.destroy()
    
    
    query207.destroy()
    query203.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query201.destroy()
    var shader_module2015_code = "";
    try {
        shader_module2015_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2015 = await device20.createShaderModule({ label: "shader_module2015", code: shader_module2015_code })
    
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query206.destroy()
    
    query208.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    query206.destroy()
    
    query2011.destroy()
    query201.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query2012.destroy()
    
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler2012 = device20.createSampler( { label: "sampler2012" } );
    render_bundle_encoder202.popDebugGroup();
    query204.destroy()
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    
    query2014.destroy()
    texture700.destroy();
    query202.destroy()
    const texture_view10011 = texture1001.createView({ label: "texture_view10011" });
    device100.pushErrorScope("out-of-memory");
    device70.pushErrorScope("validation");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query203.destroy()
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    query207.destroy()
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    query202.destroy()
    
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    query205.destroy()
    query200.destroy()
    
    render_bundle_encoder201.popDebugGroup();
    query206.destroy()
    query208.destroy()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    query203.destroy()
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.popDebugGroup();
    
    query201.destroy()
    query201.destroy()
    
    query208.destroy()
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query208.destroy()
    
    
    query202.destroy()
    
    buffer700.destroy()
    
    query2011.destroy()
    query2013.destroy()
    query208.destroy()
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query203.destroy()
    query700.destroy()
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device20.destroy();
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}