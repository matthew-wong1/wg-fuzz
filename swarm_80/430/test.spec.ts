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
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array0 = new Float32Array([-1.0, 1.0, 0.0, -0.5, 1.0, 0.0, 0.0, 0.75, -0.5, 1.0, -0.5, 1.0, 0.75, -0.75, 0.25, -1.0, -0.75, -1.0, -1.0, 0.0, -0.5, 0.5, 0.0, 0.0, -0.25, -1.0, 0.0, 0.75, -0.25, 0.25, 0.75, 1.0, -0.25, 0.75, 0.75, 1.0, 1.0, 1.0, -1.0, -1.0, 0.25, 0.5, 0.25, 0.5, 0.0, 0.0, 1.0, 0.5, 0.5, -0.75, 0.75, 0.5, 0.0, 0.0, -0.5, -0.5, -0.25, -0.75, 1.0, 0.75, 0.75, -0.75, 0.5, 1.0, 0.5, -0.25, 0.75, -0.25, -0.5, 0.75, 0.25, 0.5, -0.75, 0.75, 0.5, 1.0, -0.25, -1.0, -1.0, 0.0, 1.0, 1.0, 1.0, -0.75, -1.0, 0.5, -0.75, 0.5, -0.25, 0.25, 0.5, -0.25, 0.75, 1.0, 0.0, -0.75, 0.5, 0.75, -0.75, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-0.5, 0.5, 0.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.25, 0.5, -0.25, -1.0, -0.75, 1.0, 1.0, -0.75, 0.25, 0.5, 0.0, -0.25, 0.0, 0.0, 0.5, 0.5, 0.75, 0.0, 0.0, -1.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.0, -0.75, 1.0, -0.75, -1.0, 0.5, 0.25, -1.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.5, -0.25, 0.25, -0.5, 0.75, 0.0, 0.5, 0.75, -0.75, -0.25, 0.5, -0.25, 1.0, 0.5, 0.75, -0.75, 0.75, -0.75, 0.0, 1.0, -0.25, 0.5, 1.0, -0.25, 0.75, -0.5, 0.0, -1.0, -0.25, -0.75, -0.75, 0.25, 0.75, -0.75, 1.0, 1.0, -0.75, -0.75, 0.25, 1.0, -0.5, -0.25, 0.75, 0.0, 0.5, -0.25, 1.0, 0.75, 0.25, -1.0, ]);
    const array2 = new Float32Array([0.5, 0.75, 0.5, 0.25, 0.5, 0.25, 1.0, 1.0, 0.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.25, -0.5, 0.25, 0.75, -0.5, -1.0, -1.0, 0.5, -0.75, 0.5, 1.0, 0.5, -0.75, 0.75, 0.0, -0.25, 0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 0.0, 1.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.0, -1.0, -0.25, -0.5, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.75, 0.25, 0.0, -0.75, 0.75, -0.5, 0.25, -1.0, 0.75, -1.0, 0.25, 1.0, 0.75, 0.0, -0.75, -0.25, 0.25, -0.5, 1.0, 1.0, -0.5, -0.5, -0.5, -0.25, -0.75, 0.75, 0.5, 0.5, 0.0, -0.5, -0.75, -0.75, 1.0, -1.0, 0.25, 0.25, 0.0, 0.5, 0.5, -0.75, 1.0, 0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([-0.5, -0.25, 0.0, 1.0, 0.0, 0.0, 0.0, -0.5, -0.25, 0.5, -0.75, 1.0, 1.0, 0.5, 0.75, 0.75, -1.0, 0.0, -0.25, -0.5, 0.75, -0.5, 0.0, 0.25, 0.75, 0.5, -0.75, 0.25, 0.25, 1.0, 0.0, 0.0, -1.0, 0.5, 0.75, 0.0, -0.75, -0.75, 0.25, 0.75, 0.5, 0.5, 0.5, 1.0, 0.0, -0.75, -0.25, -0.75, -0.25, 0.5, -0.25, 0.25, 0.75, 0.0, -0.5, -0.75, 0.0, 0.25, -0.25, 0.5, 0.25, -0.25, 1.0, 0.75, -0.25, 0.5, -0.5, -0.5, -0.75, 0.75, 0.0, -0.5, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.5, -0.75, -1.0, -0.75, -0.75, 0.25, 0.5, -0.25, 1.0, -0.25, -0.75, -0.75, 0.75, -0.75, -1.0, -0.75, 0.0, 0.75, 0.75, 0.5, 0.5, -1.0, ]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.5, 0.0, 0.0, -0.75, -1.0, 0.5, -0.75, -0.5, 0.5, 0.5, 0.5, 0.75, 0.75, 0.75, 0.5, -0.75, -0.5, -0.75, 0.5, -1.0, 0.75, -0.5, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, -1.0, 0.5, -0.5, 0.75, 0.75, 0.5, 0.75, -0.25, -0.5, 0.25, -0.5, -1.0, -1.0, -1.0, -0.75, 0.75, -0.25, -1.0, -0.25, -0.5, 1.0, 1.0, -1.0, 0.5, 0.0, 0.0, 0.75, 0.25, 0.75, -0.75, 0.0, 0.25, 0.5, 0.75, 0.5, -0.25, 0.75, 0.0, 1.0, 0.75, 0.0, -1.0, -1.0, 0.5, -0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 0.75, 0.25, -0.75, -0.5, 0.75, 0.5, -0.25, -0.75, -0.75, 0.5, 0.75, -1.0, -0.75, -0.5, -0.5, 0.5, 0.5, 1.0, -0.25, -0.25, -0.75, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.destroy();
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    buffer200.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    device60.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder402.insertDebugMarker("mymarker");
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    buffer700.destroy()
    const command_buffer401 = command_encoder401.finish();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query900.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    buffer402.destroy()
    buffer403.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder403.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer404.destroy()
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const command_buffer700 = command_encoder700.finish();
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    buffer400.destroy()
    device40.pushErrorScope("validation");
    
    query200.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device70.queue.writeBuffer(buffer703, 0, array3, 0, array3.length);
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    const array5 = new Float32Array([-0.25, -0.25, -0.25, 0.0, 1.0, 0.0, -0.5, 0.5, -1.0, -1.0, 0.75, 0.5, -0.5, 1.0, 0.0, 0.0, -0.25, 0.25, -0.25, 0.75, 0.75, 0.0, 0.0, 0.25, 0.25, 0.25, 0.25, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, -1.0, -0.25, -0.75, 0.25, 0.0, -1.0, -0.75, 0.75, 0.0, 1.0, 0.5, -0.75, -0.25, -0.75, 0.5, -0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, 0.75, 1.0, -0.5, -0.25, -0.5, -0.25, 0.5, 0.25, -0.25, 0.75, -0.25, -1.0, -0.25, 0.75, 1.0, -0.75, -0.25, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, 0.5, -1.0, -1.0, -1.0, -1.0, -1.0, -0.75, -0.5, 0.5, 0.25, -0.5, -0.75, 0.25, -0.25, -0.5, 0.0, 0.75, -0.5, -1.0, 0.0, 0.5, 0.5, ]);
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    buffer201.destroy()
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.pushErrorScope("out-of-memory");
    const texture_view9001 = texture900.createView({ label: "texture_view9001" });
    const array6 = new Float32Array([0.75, 1.0, -0.5, -1.0, 0.75, 0.75, 0.25, 0.5, 0.25, 0.75, -1.0, 1.0, -0.5, 1.0, -0.75, -0.25, 0.5, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, 0.75, -0.25, -0.5, 0.25, 0.25, -0.25, -0.75, -0.75, 0.25, 0.75, 0.0, 0.0, 0.75, -0.75, -1.0, 0.5, 0.0, 1.0, -1.0, 0.75, 0.5, 0.25, 0.25, 0.75, -0.25, 0.5, -0.25, 0.0, -0.5, 0.0, -0.75, 0.5, 0.5, 1.0, 0.75, 0.5, -0.25, -0.5, 0.0, 0.5, 0.25, -0.5, 0.0, -0.25, -1.0, 1.0, 0.75, 0.0, 0.5, 0.75, -0.25, -1.0, 0.0, 0.5, 0.5, 0.75, 1.0, 1.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.25, 0.75, 0.75, 0.0, 0.5, 0.5, 0.0, 0.0, 1.0, -0.5, -0.25, -0.25, 0.5, -0.75, ]);
    query900.destroy()
    
    query401.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query901.destroy()
    
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    device20.pushErrorScope("validation");
    buffer702.destroy()
    
    
    device40.queue.submit([command_buffer401, ]);
    command_encoder403.copyBufferToTexture(
        {
            buffer: buffer401
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device70.queue.writeBuffer(buffer703, 0, array4, 0, array4.length);
    
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder9000.popDebugGroup()
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    query202.destroy()
    
    device40.pushErrorScope("internal");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    command_encoder201.insertDebugMarker("mymarker");
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const command_buffer404 = command_encoder404.finish();
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer401.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query901.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    const texture_view9002 = texture900.createView({ label: "texture_view9002" });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device70.queue.writeBuffer(buffer703, 0, array5, 0, array5.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    query700.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    {
        await buffer703.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer703.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer703.unmap();
        console.log(new Float32Array(data));
    }
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    query403.destroy()
    const command_buffer200 = command_encoder200.finish();
    
    buffer901.destroy()
    command_encoder701.insertDebugMarker("mymarker");
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    buffer703.destroy()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query900.destroy()
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    query403.destroy()
    const texture_view9003 = texture900.createView({ label: "texture_view9003" });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder7010.insertDebugMarker("marker")
    buffer701.destroy()
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    query200.destroy()
    const texture_view9004 = texture900.createView({ label: "texture_view9004" });
    query404.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    command_encoder201.copyBufferToBuffer(
        buffer203,
        0,
        buffer202,
        0,
        400
    );
    
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device40.pushErrorScope("internal");
    buffer203.destroy()
    const command_buffer202 = command_encoder202.finish();
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    query401.destroy()
    query701.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    command_encoder901.insertDebugMarker("mymarker");
    
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    
    command_encoder901.insertDebugMarker("mymarker");
    command_encoder902.insertDebugMarker("mymarker");
    const command_buffer201 = command_encoder201.finish();
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query901.destroy()
    const texture_view9005 = texture900.createView({ label: "texture_view9005" });
    
    query200.destroy()
    
    
    
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    buffer902.destroy()
    query900.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder9020 = command_encoder902.beginComputePass({ label: "compute_pass_encoder9020" });
    device20.pushErrorScope("out-of-memory");
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    query200.destroy()
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    query201.destroy()
    const command_buffer403 = command_encoder403.finish();
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    query403.destroy()
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    compute_pass_encoder9020.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query700.destroy()
    
    
    query202.destroy()
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    query202.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.popDebugGroup()
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9020.insertDebugMarker("marker")
    
    
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder9020.insertDebugMarker("marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view9006 = texture900.createView({ label: "texture_view9006" });
    query402.destroy()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    query404.destroy()
    query702.destroy()
    buffer704.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    compute_pass_encoder9010.insertDebugMarker("marker")
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder9010.insertDebugMarker("marker")
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query404.destroy()
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    
    
    
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    
    const texture_view4042 = texture404.createView({ label: "texture_view4042" });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    device70.queue.submit([command_buffer700, ]);
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    
    
    
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const texture_view4043 = texture404.createView({ label: "texture_view4043" });
    
    
    buffer705.destroy()
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    compute_pass_encoder9020.popDebugGroup()
    const command_buffer407 = command_encoder407.finish();
    const command_buffer405 = command_encoder405.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7010.popDebugGroup()
    const command_buffer406 = command_encoder406.finish();
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer403, command_buffer405, command_buffer407, ]);
    compute_pass_encoder4000.popDebugGroup()
}