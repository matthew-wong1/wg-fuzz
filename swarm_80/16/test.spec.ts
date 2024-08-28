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
    const array0 = new Float32Array([-1.0, -0.5, 1.0, 0.75, 0.75, -1.0, 0.75, 0.5, -0.75, 1.0, -0.75, 0.25, -1.0, 0.75, -0.25, -0.75, 1.0, 1.0, -1.0, 0.25, 0.5, 0.25, -0.75, 0.0, -0.25, 1.0, -0.25, -1.0, 0.0, -0.5, 0.0, -0.25, 1.0, 0.75, 0.75, 0.75, -0.75, 0.75, 1.0, 0.0, 0.25, 1.0, 0.0, 0.25, 0.0, 0.0, -0.75, 0.5, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, -0.5, 0.25, 0.75, -0.5, -0.5, 0.75, 0.25, -0.25, -1.0, -0.75, 1.0, 1.0, 0.25, -0.25, 0.5, 1.0, 1.0, 0.25, -0.75, -0.25, -0.75, -0.5, 0.5, 0.25, -0.25, 0.75, 0.75, 0.5, 1.0, -0.5, 0.25, -1.0, -0.25, -0.25, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 1.0, -1.0, -0.5, 1.0, 1.0, 1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    buffer001.destroy()
    
    buffer000.destroy()
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    buffer002.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.pushErrorScope("internal");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder000.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    query201.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array1 = new Float32Array([-0.5, 1.0, 0.75, -0.75, 1.0, -1.0, 0.25, 0.5, 0.0, 1.0, 0.75, 1.0, 0.5, -1.0, -0.5, -1.0, 0.0, -1.0, 0.5, -1.0, 0.5, 1.0, 0.0, 0.25, -0.75, 0.0, 0.75, 0.5, 1.0, 1.0, 0.25, -0.5, -1.0, -0.5, 0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 0.0, -0.5, 1.0, 0.75, 1.0, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, 0.25, -0.75, -0.5, -0.75, -1.0, -1.0, 0.5, 0.25, 1.0, 0.25, -0.25, -1.0, -0.25, 0.5, -0.25, 0.75, 0.0, 1.0, 0.25, 0.75, -1.0, -0.5, -0.5, 1.0, -0.5, 0.25, -0.75, 1.0, 0.25, -1.0, -0.75, -0.75, 0.0, 0.0, 0.25, 0.0, 0.25, -1.0, -0.25, -0.5, 0.25, 0.75, -1.0, -0.25, 0.0, ]);
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    
    query400.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    query400.destroy()
    const array2 = new Float32Array([0.25, -0.25, 0.5, 0.0, -0.5, -0.5, 1.0, -0.25, 0.25, 0.75, -0.5, 0.25, 1.0, 0.0, 0.25, 0.5, 1.0, 0.75, 0.75, -1.0, 0.75, -0.5, 0.25, 0.0, -0.25, 0.25, 0.75, 0.25, 1.0, -0.5, 0.5, -0.75, 0.5, -0.25, -0.75, 0.0, 0.75, 0.5, -0.75, -0.25, 0.5, 0.0, -0.5, -0.75, 1.0, 0.25, -0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 1.0, -0.25, -0.25, -0.5, 0.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.25, 1.0, 1.0, -0.5, 0.0, -0.75, 0.75, 1.0, 0.5, -0.5, 1.0, 1.0, -1.0, -0.25, 0.25, -0.5, -0.5, -0.75, -0.5, 1.0, 0.75, -0.5, 0.5, 1.0, -0.25, -1.0, -0.75, 0.5, -0.5, 0.75, 0.5, -0.75, -0.75, 0.75, -0.5, 1.0, 0.25, -1.0, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device20.pushErrorScope("out-of-memory");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    buffer401.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device30.pushErrorScope("internal");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    query200.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder202.popDebugGroup();
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    query402.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    render_bundle_encoder201.popDebugGroup();
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query002.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    command_encoder300.clearBuffer(buffer300);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query402.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query400.destroy()
    query401.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    device00.pushErrorScope("out-of-memory");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    command_encoder300.insertDebugMarker("mymarker");
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    query002.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder201.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query003.destroy()
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    
    buffer200.destroy()
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    command_encoder300.clearBuffer(buffer300);
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    query302.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder0010.executeBundles([])
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    query403.destroy()
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    const array3 = new Float32Array([0.0, -1.0, 0.0, 0.25, 0.25, 0.0, 0.0, -0.25, -0.25, -0.5, 0.25, -0.5, 1.0, -0.5, 0.75, 0.5, 0.0, 0.5, -0.75, 1.0, 0.75, -0.75, -0.5, 0.5, -0.25, 0.5, -0.5, 0.75, 1.0, -0.75, 0.0, 0.0, -0.5, -0.75, -0.25, 0.5, 0.25, 0.5, 0.25, -0.75, 0.75, 1.0, 0.5, 0.5, -0.5, -1.0, -0.75, 0.0, -0.75, 1.0, 0.0, -0.5, 0.25, -0.5, -0.75, 0.75, -0.5, 0.75, -1.0, 0.75, -0.25, 0.25, 1.0, 0.5, 0.5, 1.0, 0.25, 0.25, -1.0, 0.0, -0.25, 0.5, 0.0, 0.5, 0.25, -0.5, 0.75, 0.25, -0.75, -0.75, -0.75, -0.5, 0.25, 0.75, 0.5, 0.25, 0.75, -1.0, -0.25, 0.75, 0.0, -1.0, 0.0, 0.75, 0.0, -0.75, 0.5, 0.25, 0.75, -0.5, ]);
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer403.destroy()
    query002.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    query302.destroy()
    buffer301.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    command_encoder301.clearBuffer(buffer300);
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    
    query301.destroy()
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device40.pushErrorScope("internal");
    query302.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    query405.destroy()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("validation");
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    
    
    device10.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    buffer402.destroy()
    query001.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    query202.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    query003.destroy()
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    query301.destroy()
    command_encoder301.clearBuffer(buffer300);
    query200.destroy()
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    device50.pushErrorScope("out-of-memory");
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.popDebugGroup();
    
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query402
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder4030.popDebugGroup();
    buffer400.destroy()
    
    query200.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder202.popDebugGroup();
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder600.insertDebugMarker("marker");
    query301.destroy()
    buffer404.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    query300.destroy()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0010.setStencilReference(1);
    const array4 = new Float32Array([-1.0, -1.0, 0.25, 0.5, 1.0, -0.5, -1.0, -1.0, 1.0, -1.0, -0.25, -1.0, 0.25, -0.5, 0.25, 0.5, -1.0, 1.0, -1.0, 1.0, 0.75, 1.0, 0.0, -0.75, 0.75, -0.5, 0.0, 0.5, 0.0, 0.5, -0.25, -0.25, 0.25, 0.0, 0.75, -0.25, 1.0, -0.75, -1.0, 1.0, 1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, -0.75, -0.25, 1.0, 0.5, -0.75, 0.5, -0.5, 0.25, 0.5, 0.0, 0.75, -1.0, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 1.0, -0.75, -0.75, 1.0, -0.25, 0.5, 0.5, 0.75, -0.5, 0.75, 0.75, 1.0, -0.75, 1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.0, 1.0, 1.0, 1.0, 0.5, 0.25, -0.25, 0.75, 0.75, -1.0, 0.75, 0.25, 0.5, ]);
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    query404.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.insertDebugMarker("marker");
    
    
    query402.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}