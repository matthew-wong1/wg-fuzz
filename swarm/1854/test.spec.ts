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
    
    
    const array0 = new Float32Array([-1.0, 0.5, 0.0, 0.5, -0.5, -1.0, 1.0, 0.75, 0.75, 0.25, 0.5, -0.5, -1.0, -0.75, -0.25, -0.5, -0.5, 0.75, -1.0, 1.0, 0.25, 0.0, -0.75, -0.5, 1.0, 0.75, -0.25, 0.25, 0.5, -0.75, 0.75, -0.75, 0.25, 0.0, 0.5, 0.75, 0.0, -0.5, -0.25, 0.75, 0.75, 1.0, -1.0, 0.25, 0.0, -1.0, 1.0, 0.75, -0.75, -0.75, -0.25, -1.0, 1.0, 0.5, 0.75, -1.0, 0.5, -0.75, -1.0, 0.5, -1.0, 1.0, -1.0, -0.75, 0.75, 1.0, 0.25, -1.0, 0.25, 0.75, -0.5, -0.25, 0.25, 0.25, -1.0, 0.75, 0.5, 0.0, -0.5, 0.75, 0.0, 0.5, 0.75, -0.25, 0.5, 1.0, -0.5, 0.5, -0.25, 0.75, 0.0, 0.75, 0.0, 0.25, -0.5, 0.25, 0.5, -0.75, -0.5, 0.75, ]);
    const array1 = new Float32Array([-0.5, 0.0, 0.0, -0.5, -1.0, -1.0, 0.25, -0.25, -1.0, -0.25, 1.0, -0.25, 0.75, -0.5, 0.75, 0.75, -0.25, -1.0, -0.5, 0.0, -0.5, 0.0, -1.0, 0.5, 0.75, -1.0, 0.75, 1.0, -0.75, 0.25, 0.75, 0.0, 0.0, 0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.75, -1.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.5, -1.0, 1.0, -0.5, -1.0, 0.5, 0.25, 0.75, 0.25, -0.5, -0.75, 1.0, 1.0, 1.0, -0.5, 0.75, 0.75, 0.75, -0.5, -0.75, 0.25, -1.0, 0.75, -1.0, 0.0, 1.0, 1.0, 0.75, 0.0, -0.75, 0.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.75, 0.75, 1.0, 1.0, 0.0, 0.0, -1.0, 0.5, -0.75, -0.75, -0.5, -0.5, -0.75, 0.0, 0.75, -0.5, 0.5, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.queue.submit([]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    texture000.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.pushErrorScope("validation");
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array2 = new Float32Array([0.5, 0.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.0, 0.25, -0.5, 1.0, 0.5, -0.75, -1.0, -0.5, 0.25, 1.0, -0.75, -0.5, 0.25, -0.75, -0.25, -0.5, -0.75, -0.5, -1.0, 1.0, 0.5, -0.25, -0.75, 1.0, -0.75, 0.5, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, -0.75, 0.0, -0.5, 1.0, 0.5, 0.25, 0.5, -0.5, -1.0, 0.5, -1.0, -0.75, -0.75, 0.25, -1.0, 0.5, -0.25, -0.75, -1.0, 1.0, 0.5, 0.25, -0.5, 0.25, -0.25, -0.5, 0.75, -0.25, 0.5, -0.75, -0.25, 0.25, -1.0, 0.5, 1.0, -0.25, 1.0, 0.75, 0.5, -1.0, 1.0, 1.0, 0.5, 1.0, 0.5, 1.0, 0.5, -0.5, -1.0, -0.75, 0.5, 0.0, 0.5, -0.25, 0.75, 1.0, 0.5, 1.0, 0.25, 0.25, -0.75, ]);
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture001.destroy();
    device10.queue.submit([]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder001.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("validation");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array3 = new Float32Array([-0.75, 0.0, 0.5, 0.25, 0.75, 1.0, 0.5, 1.0, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.0, -1.0, 1.0, 0.0, -0.25, 0.75, 1.0, -0.5, -1.0, 0.0, 0.75, 1.0, 0.0, -1.0, 0.25, -0.75, -0.5, 0.5, 0.5, -0.25, -0.5, -0.75, 0.75, 0.5, 1.0, 0.25, 1.0, 0.75, -0.75, -0.25, -1.0, 0.75, 0.25, -0.25, 0.25, -0.75, 0.25, 0.0, -0.5, 0.25, 0.25, 0.5, -0.75, -0.5, 0.5, 0.25, -0.25, 0.25, 0.25, 1.0, -1.0, -0.5, 0.75, 0.25, 1.0, 0.5, 0.75, -0.25, -1.0, -0.25, 1.0, 1.0, 0.75, 0.75, 0.25, -1.0, -0.75, 1.0, -0.5, 0.0, -0.75, -0.5, -0.25, 1.0, 1.0, 1.0, 0.5, 0.25, 0.0, 1.0, 0.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_buffer001 = command_encoder001.finish();
    device20.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer200.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.submit([command_buffer001, ]);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    buffer000.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    command_encoder200.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    query101.destroy()
    
    buffer100.destroy()
    command_encoder200.copyBufferToBuffer(
        buffer200,
        0,
        buffer200,
        0,
        400
    );
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder002.pushDebugGroup("mygroupmarker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture100.destroy();
    query103.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    buffer200.destroy()
    texture000.destroy();
    device10.pushErrorScope("out-of-memory");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    texture101.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder002.popDebugGroup()
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_buffer200 = command_encoder200.finish();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query000.destroy()
    
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    query001.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0000.popDebugGroup()
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder401.clearBuffer(buffer400);
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    texture200.destroy();
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    
    
    query201.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module001,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const array4 = new Float32Array([-1.0, 0.75, 0.75, 1.0, -0.25, -0.25, -0.5, -1.0, 0.75, -0.5, 0.0, 1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 1.0, 0.5, 0.5, -1.0, 0.25, -0.75, 1.0, -0.5, 0.5, 0.0, -0.5, -0.5, 0.5, -0.75, -0.25, 0.0, -0.5, 0.5, 0.75, -0.5, -0.5, -1.0, 0.25, 0.0, -0.5, -0.75, -0.75, -0.25, -0.75, -0.25, 1.0, -1.0, 0.75, 0.5, 0.25, 0.0, 0.25, -0.5, 1.0, 1.0, -0.75, -0.5, 0.5, -1.0, -1.0, 1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.5, -0.25, -0.25, -0.25, 0.75, 0.5, 0.5, -0.25, 0.25, -0.75, -0.25, -0.5, 0.75, 1.0, -0.5, -0.25, -1.0, -0.75, 1.0, -0.5, 1.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.0, 0.25, 0.75, -0.5, 0.25, -0.25, ]);
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    buffer201.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    query104.destroy()
    
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture400.destroy();
    device00.pushErrorScope("internal");
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder4000.setStencilReference(1);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture401.destroy();
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device20.queue.submit([]);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module003,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder4020.setStencilReference(1);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer100.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    query000.destroy()
    query000.destroy()
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4000.setPipeline(render_pipeline400);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder4001.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device20.pushErrorScope("out-of-memory");
    command_encoder403.insertDebugMarker("mymarker");
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4001.executeBundles([])
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.submit([command_buffer200, ]);
    
    query201.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder4001.setStencilReference(1);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder4010.executeBundles([])
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_pass_encoder4001.setStencilReference(1);
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.setPipeline(render_pipeline006);
    render_pass_encoder4001.setStencilReference(1);
    device00.queue.submit([]);
    
    
    compute_pass_encoder0000.popDebugGroup()
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module004,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module004,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_pass_encoder4001.executeBundles([])
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture201.destroy();
    query000.destroy()
    query102.destroy()
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4001.insertDebugMarker("marker");
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    query003.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder4020.setPipeline(render_pipeline400);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const array5 = new Float32Array([0.75, -0.75, 1.0, 0.75, 0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 1.0, -0.5, -0.75, 0.0, 0.5, -0.25, -0.25, -0.5, 1.0, -0.75, 0.25, -0.25, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.75, -0.5, 1.0, 0.25, 1.0, 0.75, -0.5, 0.5, -0.25, 1.0, 1.0, -0.75, 0.5, 0.75, -1.0, -0.25, 0.0, -0.25, 0.75, -0.75, -0.25, -0.75, -1.0, 0.75, -0.75, -0.75, 0.75, 0.0, -0.5, -0.25, 0.25, 0.75, 0.75, -0.5, -0.75, 0.0, 0.75, 0.25, -1.0, -0.25, 0.0, 0.25, 0.0, 0.5, 1.0, 0.5, -1.0, -0.75, 0.25, -0.5, 0.0, 0.75, 0.0, -0.5, 0.0, 0.5, -1.0, -0.25, 0.25, -0.75, 0.0, 1.0, 0.5, 0.75, -0.75, -0.75, 0.0, 0.0, 0.25, ]);
    
    render_pass_encoder2010.setStencilReference(1);
    query400.destroy()
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0001.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0001.setPipeline(render_pipeline006);
    const array6 = new Float32Array([1.0, -0.5, 0.25, -0.5, -0.5, -1.0, -0.25, 0.75, 1.0, -0.75, -0.25, -0.75, -1.0, -0.25, 0.25, -0.75, -1.0, 0.0, -0.5, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.0, -1.0, 0.75, 0.0, -0.5, -0.5, -0.25, 1.0, 1.0, 0.75, 1.0, -0.25, -1.0, -1.0, -0.5, -1.0, 0.75, 0.0, -0.5, 1.0, 0.25, 0.5, -0.75, 0.75, 0.5, 0.25, -0.75, 1.0, 1.0, 0.25, 0.75, 0.25, 1.0, -0.5, 0.5, -0.25, 1.0, -1.0, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, 0.25, 1.0, 0.0, -0.5, -0.5, -0.5, -1.0, 0.75, -0.25, -1.0, 0.75, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, -0.5, -1.0, 0.5, 1.0, 0.5, 1.0, -0.75, 0.0, -0.75, -1.0, -1.0, -0.5, 0.0, ]);
    query102.destroy()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setStencilReference(1);
    query002.destroy()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder404.clearBuffer(buffer401);
    
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.executeBundles([])
    
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    command_encoder404.insertDebugMarker("mymarker");
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder4011.insertDebugMarker("marker");
    buffer401.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group001);
    query002.destroy()
    render_pass_encoder4021.setPipeline(render_pipeline400);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module004,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module004,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder0030.setPipeline(render_pipeline007);
    query104.destroy()
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder4020.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.setStencilReference(1);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4011.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder4000.setStencilReference(1);
    const array7 = new Float32Array([0.25, -0.25, 0.75, -0.5, 0.75, 0.0, -0.75, -0.25, 1.0, -0.5, -1.0, -0.25, 1.0, 0.25, 0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 0.25, -1.0, -0.25, 0.0, -0.5, 0.0, -1.0, 0.75, -0.75, -1.0, 0.75, 0.5, 0.0, -0.25, 0.25, 0.0, 0.5, -0.25, 0.5, 0.25, -1.0, 0.0, -0.5, -0.75, 0.5, -0.75, -0.75, 0.0, 0.25, -1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.5, -0.75, 1.0, 0.75, -0.25, 0.75, -0.5, 0.75, 0.75, 0.0, 0.0, -0.25, 0.25, -1.0, 0.0, 0.75, 0.0, -1.0, 0.75, 1.0, 0.25, -0.75, 0.5, 0.25, -0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 1.0, -0.25, -0.75, 0.25, 0.0, 0.75, -1.0, 1.0, -0.75, 0.5, 0.75, 0.5, 0.0, -0.5, -1.0, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query201.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder4040.setStencilReference(1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    render_pass_encoder0000.setVertexBuffer(0, buffer000);
    command_encoder004.pushDebugGroup("mygroupmarker")
    query401.destroy()
    render_pass_encoder2011.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4030.setPipeline(render_pipeline400);
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setStencilReference(1);
    command_encoder004.popDebugGroup()
    render_pass_encoder4040.setStencilReference(1);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module205,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module205,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder4011.setPipeline(render_pipeline400);
    command_encoder403.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4031.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    texture002.destroy();
    command_encoder100.popDebugGroup()
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module002,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module002,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_pass_encoder4030.setStencilReference(1);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4001.setPipeline(render_pipeline400);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_pass_encoder4022 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4031.pushDebugGroup("group_marker");
    texture102.destroy();
    texture402.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder0001.popDebugGroup();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    query401.destroy()
    device40.pushErrorScope("validation");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder0001.setVertexBuffer(0, buffer001);
    
    render_pass_encoder4021.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4031.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4001.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder2010.setStencilReference(1);
    query101.destroy()
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    render_pass_encoder4001.setStencilReference(1);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module206,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module206,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4040.setStencilReference(1);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const command_buffer004 = command_encoder004.finish();
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_pass_encoder4022.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module206,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module206,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer002.destroy()
    
    
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder4010.setPipeline(render_pipeline401);
    texture200.destroy();
    render_pass_encoder0030.setStencilReference(1);
    query100.destroy()
    
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4031.beginOcclusionQuery(0)
    render_pass_encoder4022.insertDebugMarker("marker");
    
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4031.endOcclusionQuery()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4040.setPipeline(render_pipeline401);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group401);
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder4022.setPipeline(render_pipeline401);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group402);
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder4021.setVertexBuffer(0, buffer404);
    render_pass_encoder4031.setPipeline(render_pipeline400);
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const command_buffer403 = command_encoder403.finish();
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder2011.setPipeline(render_pipeline201);
    device00.queue.submit([command_buffer004, ]);
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_pass_encoder4022.setBindGroup(0, bind_group404);
    render_pass_encoder4030.popDebugGroup();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group200);
    render_pass_encoder4022.setVertexBuffer(0, buffer4010);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4021.drawIndirect(buffer409, 0);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group405);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4022.setIndexBuffer(buffer404, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder4040.setVertexBuffer(0, buffer409);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4020.setVertexBuffer(0, buffer404);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4040.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4010.setVertexBuffer(0, buffer4011);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.setVertexBuffer(0, buffer4011);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4020.setIndexBuffer(buffer4012, "uint16");
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group406);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group407);
    render_pass_encoder4022.drawIndirect(buffer4014, 0);
    render_pass_encoder4001.setVertexBuffer(0, buffer408);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4040.drawIndirect(buffer4011, 0);
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder4010.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4020.drawIndirect(buffer403, 0);
    render_pass_encoder4001.drawIndirect(buffer4017, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer408, 0);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4030.setVertexBuffer(0, buffer400);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4010.drawIndirect(buffer403, 0);
    render_pass_encoder4030.endOcclusionQuery()
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    render_pass_encoder4031.setBindGroup(0, bind_group408);
    device00.queue.submit([command_buffer004, ]);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4030.drawIndexed(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder4040.endOcclusionQuery()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.drawIndirect(buffer4017, 0);
    render_pass_encoder4022.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4031.setVertexBuffer(0, buffer4014);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4031.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4031.drawIndirect(buffer4016, 0);
    render_pass_encoder4001.setIndexBuffer(buffer403, "uint16");
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    render_pass_encoder4011.setBindGroup(0, bind_group409);
    render_pass_encoder4011.setVertexBuffer(0, buffer4018);
    command_encoder000.popDebugGroup()
    render_pass_encoder4040.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder4040.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4011.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4011.setIndexBuffer(buffer4013, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4011.drawIndirect(buffer4012, 0);
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    render_pass_encoder4040.drawIndirect(buffer4021, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4040.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4030.drawIndirect(buffer4011, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder4011.drawIndirect(buffer4015, 0);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder4000.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4030.drawIndirect(buffer403, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4011.drawIndirect(buffer4017, 0);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder2011.setVertexBuffer(0, buffer203);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4011.drawIndirect(buffer4019, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder4000.drawIndirect(buffer407, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4001.drawIndirect(buffer407, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4040.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4031.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    render_pass_encoder4000.setIndexBuffer(buffer408, "uint16");
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4031.drawIndirect(buffer4012, 0);
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4022.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4019, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4021.drawIndirect(buffer407, 0);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4000.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4031.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4030.drawIndirect(buffer405, 0);
    render_pass_encoder4011.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder4020.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4022.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer4020, 0);
    render_pass_encoder4040.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4010.drawIndirect(buffer4016, 0);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4030.setIndexBuffer(buffer409, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4001.drawIndexed(3);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4022.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4030.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder4040.drawIndirect(buffer4010, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4014, "uint16");
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder4030.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([]);
    render_pass_encoder4001.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4030.drawIndirect(buffer405, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4031.drawIndirect(buffer4016, 0);
    render_pass_encoder4021.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4000.drawIndirect(buffer401, 0);
    command_encoder400.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer409, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4020, 0);
    render_pass_encoder4040.setIndexBuffer(buffer403, "uint16");
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4031.drawIndirect(buffer406, 0);
    render_pass_encoder4001.endOcclusionQuery()
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder4001.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder4031.drawIndirect(buffer4014, 0);
    device00.queue.submit([]);
    render_pass_encoder4021.setIndexBuffer(buffer4010, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4031.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4011.setIndexBuffer(buffer4010, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4021.setIndexBuffer(buffer4018, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4022.drawIndirect(buffer402, 0);
    render_pass_encoder4001.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4016, 0);
    render_pass_encoder4001.drawIndirect(buffer401, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4001.drawIndirect(buffer405, 0);
    render_pass_encoder4020.drawIndirect(buffer4016, 0);
    render_pass_encoder4010.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder4021.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4022.setIndexBuffer(buffer4017, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4021.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer4021, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([]);
    render_pass_encoder4011.drawIndirect(buffer4014, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer4021, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4031.setIndexBuffer(buffer400, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder4022.drawIndirect(buffer4021, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4010.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4022.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4021.drawIndirect(buffer403, 0);
    render_pass_encoder4030.drawIndirect(buffer4019, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4031.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer405, 0);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4022.drawIndirect(buffer4014, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer4016, 0);
    render_pass_encoder4010.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4021.drawIndirect(buffer4015, 0);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer4013, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder4011.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4040.drawIndirect(buffer402, 0);
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4011.drawIndirect(buffer4012, 0);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4031.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder4010.drawIndirect(buffer402, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    device20.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder4010.drawIndirect(buffer404, 0);
    render_pass_encoder4011.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4030.drawIndirect(buffer403, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4010.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder4001.drawIndirect(buffer408, 0);
    render_pass_encoder4021.drawIndirect(buffer402, 0);
    render_pass_encoder4030.drawIndirect(buffer409, 0);
    render_pass_encoder4010.drawIndirect(buffer4017, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4030.drawIndirect(buffer408, 0);
    render_pass_encoder4010.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4040.drawIndirect(buffer406, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4030.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4031.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0001.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder4000.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4000.drawIndirect(buffer403, 0);
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    render_pass_encoder4040.drawIndirect(buffer407, 0);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer4021, 0);
    render_pass_encoder4010.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4040.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4040.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4040.setIndexBuffer(buffer408, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder4011.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4001.drawIndirect(buffer4011, 0);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4000.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder4010.setIndexBuffer(buffer408, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4021.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4030.drawIndexed(3);
    device20.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4031.setIndexBuffer(buffer4017, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([]);
    render_pass_encoder4031.drawIndirect(buffer4015, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4010.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4031.setIndexBuffer(buffer4017, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4030.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4010.setIndexBuffer(buffer4021, "uint16");
    device30.queue.submit([]);
    render_pass_encoder4000.drawIndirect(buffer403, 0);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4022.drawIndirect(buffer401, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4013, 0);
    render_pass_encoder4022.setIndexBuffer(buffer402, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4021.drawIndirect(buffer4017, 0);
    device00.queue.submit([command_buffer000, ]);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer407, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer4016, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4021.drawIndirect(buffer4014, 0);
    render_pass_encoder4040.drawIndirect(buffer406, 0);
    render_pass_encoder4010.drawIndirect(buffer4014, 0);
    render_pass_encoder4021.drawIndirect(buffer4015, 0);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    device10.queue.submit([]);
    render_pass_encoder4022.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4001.drawIndirect(buffer405, 0);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer405, 0);
    device40.queue.submit([command_buffer403, ]);
    device20.queue.submit([]);
    render_pass_encoder4001.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder4020.drawIndirect(buffer408, 0);
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4011.drawIndirect(buffer4020, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0020.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4021.drawIndirect(buffer4014, 0);
    render_pass_encoder4000.drawIndirect(buffer4011, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer4011, 0);
    device50.queue.submit([]);
    render_pass_encoder4011.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4020.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4031.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4010.drawIndirect(buffer4013, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4031.drawIndirect(buffer400, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder4011.setIndexBuffer(buffer401, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4040.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    device40.queue.submit([]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4030.drawIndirect(buffer406, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4040.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4010.drawIndirect(buffer407, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4020.drawIndirect(buffer405, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder4010.drawIndirect(buffer409, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer400, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer4014, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4010.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer4017, "uint16");
    device40.queue.submit([]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4022.drawIndirect(buffer4013, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4001.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer4017, 0);
    render_pass_encoder4011.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder4022.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder4011.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4030.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4020.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4040.drawIndirect(buffer4010, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer4017, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4011.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer4013, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder4021.drawIndirect(buffer407, 0);
    render_pass_encoder4030.drawIndirect(buffer408, 0);
    render_pass_encoder4000.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4022.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer404, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4021, 0);
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder4020.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder4011.drawIndexed(3);
    device50.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder4020.drawIndirect(buffer404, 0);
    render_pass_encoder4010.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer4017, 0);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4010.endOcclusionQuery()
    device40.queue.submit([]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer4021, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4021.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4014, "uint16");
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4022.drawIndexed(3);
    device40.queue.submit([]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4031.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder4030.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4040.drawIndirect(buffer402, 0);
    render_pass_encoder4021.drawIndirect(buffer4014, 0);
    render_pass_encoder4011.setIndexBuffer(buffer4020, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder2011.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4020.drawIndirect(buffer400, 0);
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    render_pass_encoder4022.drawIndirect(buffer403, 0);
    render_pass_encoder4040.drawIndirect(buffer4016, 0);
    render_pass_encoder4010.drawIndirect(buffer4012, 0);
    render_pass_encoder4022.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    render_pass_encoder4022.drawIndirect(buffer4013, 0);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4021.drawIndirect(buffer4015, 0);
    render_pass_encoder4001.drawIndirect(buffer409, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4011.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer4020, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder4040.drawIndirect(buffer408, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([command_buffer001, ]);
    device50.queue.submit([]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4013, 0);
    render_pass_encoder4022.drawIndirect(buffer401, 0);
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4011.drawIndirect(buffer4017, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer408, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2010.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder4011.drawIndirect(buffer4017, 0);
    render_pass_encoder4021.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder4030.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4016, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4022.drawIndirect(buffer400, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4022.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4010.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4011.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4010.drawIndirect(buffer403, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device50.queue.submit([]);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder4020.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4021.drawIndirect(buffer409, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4014, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4040.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4030.drawIndirect(buffer408, 0);
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4022.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4010.drawIndirect(buffer4019, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4011.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4031.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder4011.drawIndirect(buffer4015, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4030.drawIndexed(3);
    device40.queue.submit([]);
    render_pass_encoder4020.drawIndirect(buffer4016, 0);
    render_pass_encoder4010.drawIndirect(buffer4021, 0);
    render_pass_encoder4000.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder4022.drawIndirect(buffer4010, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.drawIndirect(buffer4021, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4030.drawIndirect(buffer4013, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder4031.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4020.drawIndirect(buffer4018, 0);
    render_pass_encoder4040.drawIndirect(buffer407, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4040.setIndexBuffer(buffer408, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4022.drawIndirect(buffer4018, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4022.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4010, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4010.drawIndirect(buffer406, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4010.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4001.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder4031.drawIndirect(buffer4016, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4011.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4022.setIndexBuffer(buffer403, "uint16");
    device40.queue.submit([command_buffer404, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4022.drawIndirect(buffer4021, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4011.drawIndirect(buffer4012, 0);
    render_pass_encoder4020.drawIndirect(buffer4019, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer404, 0);
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([]);
    render_pass_encoder4001.drawIndirect(buffer4018, 0);
    render_pass_encoder4030.drawIndirect(buffer4021, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer400, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4022.setIndexBuffer(buffer403, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4001.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4010.popDebugGroup();
    device20.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    device10.queue.submit([]);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4040.popDebugGroup();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer408, 0);
    render_pass_encoder4020.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4022.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4020.drawIndirect(buffer4014, 0);
    render_pass_encoder4011.drawIndirect(buffer409, 0);
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4001.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4022.drawIndirect(buffer401, 0);
    render_pass_encoder4001.drawIndirect(buffer405, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4040.drawIndirect(buffer400, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4040.setIndexBuffer(buffer4011, "uint16");
    device00.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4010.drawIndexed(3);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4001.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4022.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4031.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4001.drawIndirect(buffer4018, 0);
    render_pass_encoder4030.drawIndirect(buffer4011, 0);
    render_pass_encoder4011.drawIndirect(buffer403, 0);
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    render_pass_encoder4010.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder4000.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder4031.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4001.drawIndirect(buffer4020, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer4016, 0);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder4020.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder1010.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder4021.drawIndirect(buffer405, 0);
    render_pass_encoder4020.drawIndirect(buffer4018, 0);
    render_pass_encoder0030.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4040.drawIndirect(buffer4013, 0);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer401, 0);
    device00.queue.submit([]);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4001.drawIndirect(buffer4016, 0);
    render_pass_encoder4010.drawIndirect(buffer407, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder4010.drawIndirect(buffer4020, 0);
    render_pass_encoder4030.drawIndirect(buffer406, 0);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4001.drawIndirect(buffer402, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer408, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer4011, 0);
    render_pass_encoder4010.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    device40.queue.submit([]);
    render_pass_encoder4021.drawIndirect(buffer4017, 0);
    render_pass_encoder0000.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer408, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4011.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder2010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4022.drawIndirect(buffer4011, 0);
    render_pass_encoder4021.drawIndirect(buffer4011, 0);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer4013, 0);
    device40.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4021.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4020.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4011.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4011.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4031.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4016, 0);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4010.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4031.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4040.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer4021, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer406, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4040.setIndexBuffer(buffer4019, "uint16");
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer4012, "uint16");
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4001.endOcclusionQuery()
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4030.setIndexBuffer(buffer409, "uint16");
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4010.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4011.drawIndirect(buffer402, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4040.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4031.drawIndirect(buffer4014, 0);
    render_pass_encoder4031.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4001.drawIndirect(buffer409, 0);
    render_pass_encoder4030.setIndexBuffer(buffer403, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4040.setIndexBuffer(buffer4020, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4030.drawIndirect(buffer4015, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4020.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4022.drawIndirect(buffer400, 0);
    render_pass_encoder4011.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4030.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4022.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4020.popDebugGroup();
    device50.queue.submit([]);
    device50.queue.submit([]);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer400, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4021.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer4018, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer4014, 0);
    device20.queue.submit([]);
    render_pass_encoder4011.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4000.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder4022.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4013, 0);
    render_pass_encoder4010.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4010.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4022.setIndexBuffer(buffer4015, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4019, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer408, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4010.drawIndexed(3);
    device40.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4010.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4011.drawIndirect(buffer4017, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer402, 0);
    render_pass_encoder4001.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4011.drawIndirect(buffer4018, 0);
    render_pass_encoder4030.drawIndirect(buffer4017, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4010.drawIndirect(buffer406, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer4018, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4010.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4031.setIndexBuffer(buffer407, "uint16");
    device20.queue.submit([]);
    render_pass_encoder4001.setIndexBuffer(buffer407, "uint16");
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([]);
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder4030.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4000.drawIndexed(3);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4011.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4022.setIndexBuffer(buffer4012, "uint16");
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder2011.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4020.drawIndexed(3);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4022.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([]);
    render_pass_encoder4001.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder2010.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4021.drawIndexed(3);
    device40.queue.submit([]);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder0030.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder4001.drawIndirect(buffer4011, 0);
    render_pass_encoder4031.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4030.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4031.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4031.drawIndirect(buffer409, 0);
    render_pass_encoder4021.drawIndirect(buffer4012, 0);
    render_pass_encoder4030.drawIndirect(buffer404, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4021.drawIndirect(buffer4013, 0);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0000.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4040.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4030.drawIndirect(buffer401, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4001.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4031.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4011.drawIndirect(buffer4019, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4000.setIndexBuffer(buffer4016, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder4011.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4010.drawIndirect(buffer4016, 0);
    render_pass_encoder4020.drawIndirect(buffer4018, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer001, 0);
    render_pass_encoder4011.drawIndirect(buffer406, 0);
    render_pass_encoder4040.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4031.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder4030.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
    render_pass_encoder4022.drawIndirect(buffer4010, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4022.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4031.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer403, 0);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer4016, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder4001.drawIndirect(buffer4012, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4030.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4022.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer402, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4011.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4000.drawIndirect(buffer404, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4011.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4031.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4011.drawIndirect(buffer4011, 0);
    render_pass_encoder4020.drawIndirect(buffer404, 0);
    render_pass_encoder1010.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4031.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4022.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4040.setIndexBuffer(buffer408, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer4017, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4022.drawIndirect(buffer403, 0);
    render_pass_encoder4020.drawIndirect(buffer4018, 0);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    device50.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4022.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4020.drawIndirect(buffer408, 0);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4010.drawIndirect(buffer4020, 0);
    render_pass_encoder4011.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4001.setIndexBuffer(buffer403, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder4040.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4040.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4000.drawIndexed(3);
    device40.queue.submit([command_buffer404, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder0030.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4010.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4015, "uint16");
    device40.queue.submit([command_buffer404, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4022.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4022.drawIndirect(buffer4010, 0);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4030.drawIndirect(buffer4014, 0);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4030.drawIndirect(buffer408, 0);
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    render_pass_encoder4011.setIndexBuffer(buffer4012, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4040.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4021.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4030.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder4020.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4040.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4040.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4030.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder4011.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4030.drawIndirect(buffer4020, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4021.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4010.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4030.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4021.drawIndirect(buffer404, 0);
    render_pass_encoder4021.drawIndirect(buffer4018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4010.drawIndirect(buffer4017, 0);
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    render_pass_encoder4001.drawIndirect(buffer407, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4022.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer4019, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4010.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4031.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4031.setIndexBuffer(buffer405, "uint16");
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4001.setIndexBuffer(buffer4017, "uint16");
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4031.drawIndirect(buffer4017, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4018, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4021.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4021, 0);
    render_pass_encoder4010.drawIndirect(buffer4012, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer4015, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.drawIndexed(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder4010.drawIndirect(buffer4010, 0);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4000.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder4001.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer4013, "uint16");
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([]);
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4022.setIndexBuffer(buffer4016, "uint16");
    device00.queue.submit([]);
    render_pass_encoder4030.setIndexBuffer(buffer4012, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4010.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer408, 0);
    render_pass_encoder4031.setIndexBuffer(buffer4015, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4040.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4010.setIndexBuffer(buffer406, "uint16");
    device40.queue.submit([command_buffer402, ]);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder4001.setIndexBuffer(buffer407, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4031.setIndexBuffer(buffer407, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4030.drawIndirect(buffer403, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4030.drawIndirect(buffer402, 0);
    compute_pass_encoder0000.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4000.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder2011.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.setIndexBuffer(buffer403, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4022.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4001.setIndexBuffer(buffer409, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([]);
    render_pass_encoder0000.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4022.drawIndirect(buffer400, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4022.setIndexBuffer(buffer406, "uint16");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4010.drawIndexed(3);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer408, 0);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    device20.queue.submit([]);
    render_pass_encoder4011.drawIndirect(buffer402, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4001.drawIndirect(buffer4020, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4010.drawIndirect(buffer404, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4022.drawIndirect(buffer407, 0);
    render_pass_encoder4010.drawIndirect(buffer4015, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer408, "uint16");
    device10.queue.submit([]);
    render_pass_encoder4021.setIndexBuffer(buffer408, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer404, 0);
    render_pass_encoder4001.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4011.drawIndirect(buffer4012, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4000.drawIndirect(buffer403, 0);
    render_pass_encoder1010.endOcclusionQuery()
    device40.queue.submit([]);
    render_pass_encoder4031.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4022.setIndexBuffer(buffer406, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4010.drawIndirect(buffer407, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4010.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4010.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4011.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4017, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder4040.drawIndirect(buffer4016, 0);
    render_pass_encoder4001.drawIndirect(buffer402, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4031.drawIndirect(buffer4013, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4022.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4000.setIndexBuffer(buffer409, "uint16");
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4011.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4021.drawIndirect(buffer405, 0);
    render_pass_encoder4031.drawIndirect(buffer405, 0);
    render_pass_encoder4011.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer400, 0);
    render_pass_encoder4010.drawIndirect(buffer402, 0);
    render_pass_encoder4031.drawIndirect(buffer4016, 0);
    render_pass_encoder0001.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4010, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4010.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    render_pass_encoder4010.drawIndirect(buffer409, 0);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4031.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4030.drawIndirect(buffer4012, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4031.drawIndirect(buffer4013, 0);
    render_pass_encoder4031.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder4022.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer4015, 0);
    render_pass_encoder4010.drawIndirect(buffer404, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4031.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer4016, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4040.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer400, "uint16");
    device30.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder4021.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4030.drawIndirect(buffer4018, 0);
    render_pass_encoder0001.drawIndirect(buffer003, 0);
    render_pass_encoder4011.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4022.drawIndirect(buffer4010, 0);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4011.drawIndirect(buffer4020, 0);
    render_pass_encoder4022.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4021.drawIndirect(buffer404, 0);
    render_pass_encoder1010.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4031.drawIndirect(buffer404, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4020.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder4030.drawIndirect(buffer4021, 0);
    render_pass_encoder4022.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device50.queue.submit([]);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder4011.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer405, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder4030.drawIndirect(buffer400, 0);
    render_pass_encoder4001.drawIndirect(buffer404, 0);
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4040.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4022.drawIndirect(buffer409, 0);
    render_pass_encoder4040.drawIndirect(buffer4013, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4020.setIndexBuffer(buffer404, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder4030.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder4021.drawIndirect(buffer407, 0);
    render_pass_encoder4001.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4031.drawIndirect(buffer401, 0);
    render_pass_encoder4021.drawIndirect(buffer405, 0);
    render_pass_encoder4010.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder4010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4022.drawIndirect(buffer4014, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4030.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4010.setIndexBuffer(buffer4012, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer401, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4030.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder4030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4040.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4011.drawIndirect(buffer406, 0);
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4022.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder0001.popDebugGroup();
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4001.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer405, 0);
    render_pass_encoder4021.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4010, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.drawIndirect(buffer4015, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4022.drawIndirect(buffer4020, 0);
    render_pass_encoder4031.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4011.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4022.drawIndirect(buffer407, 0);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder4000.drawIndirect(buffer4021, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder4000.setIndexBuffer(buffer4012, "uint16");
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4000.drawIndirect(buffer4011, 0);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4001.drawIndirect(buffer4016, 0);
    render_pass_encoder4040.drawIndirect(buffer4013, 0);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4030.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder4031.drawIndirect(buffer408, 0);
    render_pass_encoder2011.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer402, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4001.drawIndirect(buffer405, 0);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4022.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4010.setIndexBuffer(buffer4016, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4031.setIndexBuffer(buffer407, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder4030.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder4001.setIndexBuffer(buffer409, "uint16");
    device10.queue.submit([]);
    render_pass_encoder4020.drawIndirect(buffer4021, 0);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4040.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer404, 0);
    device20.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4022.drawIndirect(buffer4010, 0);
    render_pass_encoder4022.drawIndirect(buffer4018, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4030.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer404, 0);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder4040.drawIndirect(buffer4019, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4021.drawIndirect(buffer400, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer401, 0);
    device10.queue.submit([]);
    render_pass_encoder4011.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder4000.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4031.drawIndirect(buffer4013, 0);
    render_pass_encoder4040.drawIndirect(buffer404, 0);
    device50.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder4000.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder4031.drawIndirect(buffer4013, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder4001.setIndexBuffer(buffer406, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder4022.drawIndirect(buffer406, 0);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4040.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder4020.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4014, 0);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder4031.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer4021, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4031.endOcclusionQuery()
    device50.queue.submit([]);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4021.drawIndirect(buffer4021, 0);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4030.drawIndirect(buffer4011, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder4021.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4040.drawIndirect(buffer4019, 0);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4000.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4022.drawIndirect(buffer4010, 0);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer4012, 0);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4010, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4015, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder4040.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4031.drawIndexed(3);
    device40.queue.submit([command_buffer404, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4040.endOcclusionQuery()
    render_pass_encoder4021.setIndexBuffer(buffer4020, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4001.drawIndirect(buffer408, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    device40.queue.submit([]);
    device40.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4001.drawIndirect(buffer4020, 0);
    device40.queue.submit([command_buffer403, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer405, 0);
    render_pass_encoder4020.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder4001.drawIndirect(buffer4011, 0);
    render_pass_encoder4030.drawIndirect(buffer4013, 0);
    device50.queue.submit([]);
    render_pass_encoder4010.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4022.drawIndirect(buffer4014, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, ]);
    render_pass_encoder4010.endOcclusionQuery()
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4010.drawIndirect(buffer405, 0);
    render_pass_encoder4010.drawIndirect(buffer4013, 0);
    render_pass_encoder4040.drawIndirect(buffer408, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder4022.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer405, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder4030.drawIndirect(buffer409, 0);
    device10.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4011.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder0030.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4030.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer4013, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder4010.setIndexBuffer(buffer4014, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4040.drawIndirect(buffer403, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4040.setIndexBuffer(buffer401, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4031.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4010.drawIndirect(buffer401, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder4031.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer4014, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder4022.drawIndexed(3);
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4021, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer001, ]);
    device40.queue.submit([command_buffer401, command_buffer402, command_buffer404, ]);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4031.endOcclusionQuery()
    render_pass_encoder4021.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4021.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4021.drawIndirect(buffer405, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4022.popDebugGroup();
    render_pass_encoder4040.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4040.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4021.drawIndirect(buffer4016, 0);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    render_pass_encoder4022.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4040.endOcclusionQuery()
}