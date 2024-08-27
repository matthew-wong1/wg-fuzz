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
    
    const array0 = new Float32Array([-1.0, 0.25, 1.0, 0.0, 0.75, -0.5, -0.25, 0.5, -0.25, 1.0, -0.25, 0.5, -0.5, 0.5, 0.0, -0.5, -1.0, 0.75, -0.5, 0.25, -0.25, 0.25, 1.0, 1.0, 1.0, 0.25, 0.0, -0.75, 0.5, -0.5, 0.75, 0.5, -0.75, 0.0, -0.75, -1.0, 0.5, -1.0, 1.0, 0.25, 0.5, -0.75, 0.5, -0.5, 0.75, 0.5, -0.75, -0.25, 0.75, -0.25, -0.75, 1.0, -1.0, 0.5, -0.25, 0.25, -0.5, 1.0, 0.25, -0.75, -1.0, 0.5, -0.75, -0.25, -0.75, 1.0, -1.0, 0.5, -0.5, 0.5, 0.75, 1.0, 0.0, -0.25, 0.0, -0.25, -0.25, -0.25, -1.0, 0.5, 0.0, 0.5, -0.25, -1.0, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, 0.5, -1.0, -1.0, -1.0, 0.25, 0.25, 0.5, 0.75, 0.5, -0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([1.0, 0.25, -0.75, 0.5, 0.0, 1.0, 1.0, -0.5, -0.5, 1.0, 0.5, -0.25, -0.5, 0.75, 0.5, 0.75, -1.0, -0.5, 0.25, -1.0, -0.25, 0.75, -0.75, -0.25, 0.0, -0.5, 1.0, -1.0, -1.0, -0.25, -1.0, -0.5, 1.0, 0.0, -1.0, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, 0.0, -0.25, -1.0, 0.25, 1.0, 0.75, 0.25, -0.75, 0.0, -1.0, -0.75, -0.25, 1.0, 1.0, -0.75, -0.75, 0.75, 0.5, -0.25, -0.25, 0.25, 0.5, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.25, -1.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.5, -1.0, -0.5, 0.75, -0.25, 0.0, 1.0, -0.75, -0.5, -0.75, 0.0, -1.0, 1.0, 1.0, -1.0, -1.0, 1.0, -0.75, 1.0, 0.25, -0.75, 0.75, -0.25, -0.75, ]);
    device00.destroy();
    
    
    const array2 = new Float32Array([0.0, -0.25, 0.0, 0.5, 0.5, -0.5, 0.25, -0.75, -0.25, -0.75, -0.5, -0.25, 1.0, 0.25, 0.0, 0.0, -1.0, 1.0, -0.5, 0.75, -0.75, 0.75, -0.5, 0.0, 0.75, 1.0, 0.5, 0.0, 0.0, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 1.0, 0.25, -0.75, -1.0, -0.5, 0.0, 0.25, 0.5, 0.75, 0.75, -0.75, 0.0, -0.25, 0.5, 0.75, -0.5, -0.25, 0.0, -0.5, -0.75, -0.5, 0.75, 0.25, 1.0, -0.75, -0.5, -0.25, 0.0, 0.75, 0.25, -0.5, -0.75, 0.5, 0.75, 0.0, 0.0, -0.25, 1.0, 1.0, -0.75, 0.0, 0.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.25, 0.0, -0.5, -1.0, 1.0, -0.25, -1.0, 1.0, -0.25, -0.25, 1.0, -0.75, 0.0, -1.0, 0.75, 0.5, -0.25, 0.75, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    
    
    
    
    const array3 = new Float32Array([-0.25, -0.5, -0.5, 0.75, 0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 0.5, -1.0, -0.25, 0.5, 0.75, 0.0, -0.5, -0.75, -1.0, -0.25, -1.0, 1.0, -0.5, 0.5, -0.5, -0.75, -0.5, 1.0, 0.5, -0.75, -0.25, 0.75, -0.25, 1.0, -1.0, 0.75, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -0.25, 1.0, 0.75, 1.0, -0.25, -0.25, 0.0, 0.5, 0.75, 0.5, 0.75, -0.5, -1.0, 0.0, 0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -1.0, -0.75, -0.75, 0.75, -1.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.0, 1.0, -0.75, 0.25, 0.75, 0.75, 0.25, -0.25, 1.0, -0.25, 0.25, 0.0, -0.75, 0.5, 1.0, 0.5, -1.0, 0.25, 0.0, 0.25, -0.5, 0.75, 1.0, 1.0, ]);
    
    const array4 = new Float32Array([-0.25, 0.0, -1.0, 0.25, 0.75, 0.75, 0.25, -0.75, 1.0, -1.0, 1.0, 1.0, -0.75, -0.75, -0.5, -0.25, -0.75, -1.0, -0.5, 0.75, -0.5, -0.75, 0.75, -1.0, 0.0, 0.0, -1.0, 1.0, -0.25, 0.25, 0.5, -0.5, -0.5, -0.25, -0.5, 0.75, -0.5, 0.75, 0.5, 0.75, -0.75, -0.5, 0.5, -0.5, -0.75, 0.5, -0.5, -1.0, -1.0, 0.25, -1.0, -1.0, 0.5, 0.75, 0.75, -1.0, -0.75, -0.75, 0.75, -0.25, -0.25, -1.0, -0.5, 0.0, 0.25, 0.0, -0.75, -1.0, -0.75, 0.0, 0.5, -0.75, 0.0, 0.25, -1.0, 0.25, 0.75, 0.5, 0.0, 1.0, -0.75, 0.25, -1.0, -0.5, -0.75, 0.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.25, 0.25, 1.0, 0.0, 0.0, -0.5, 0.25, -0.5, -0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.destroy();
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_buffer200 = command_encoder200.finish();
    query200.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_buffer201 = command_encoder201.finish();
    device20.pushErrorScope("out-of-memory");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const array5 = new Float32Array([-0.75, 0.25, -1.0, 0.75, 0.75, -0.25, -0.25, 0.75, -0.5, 0.5, -1.0, 0.5, 0.0, 1.0, -0.5, -0.75, 1.0, 0.75, -0.25, 0.25, 1.0, 1.0, -0.75, -0.5, 0.75, 0.25, 0.75, -0.5, -0.25, -0.25, -0.75, 0.25, -0.25, -0.25, 1.0, 0.25, -0.75, -0.5, -0.5, 0.5, -1.0, -0.25, -0.5, -1.0, -1.0, -0.5, 0.5, -0.5, 1.0, -0.5, 1.0, 0.25, -1.0, -0.75, 0.75, -1.0, 0.75, -0.75, -0.25, 0.5, -0.25, 0.5, 0.25, 1.0, 0.0, -1.0, -0.25, 0.5, -0.75, -1.0, 0.25, 0.0, -0.75, -0.75, 0.25, 0.75, 0.25, 1.0, -0.5, 0.5, -0.5, -0.5, -0.75, 0.75, -0.25, -0.75, 0.75, 0.0, -0.75, 0.5, 1.0, -0.25, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, 0.0, 0.75, ]);
    
    
    
    
    command_encoder202.clearBuffer(buffer201);
    
    query201.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer203 = command_encoder203.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    command_encoder202.clearBuffer(buffer201);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("out-of-memory");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder202.insertDebugMarker("mymarker");
    
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer200.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array6 = new Float32Array([0.75, -1.0, -0.5, 0.75, -0.5, -0.25, -0.75, 0.0, 0.5, -1.0, 0.25, -0.25, -0.25, -0.5, -0.75, -0.25, -0.25, 1.0, 0.75, -1.0, -0.5, 0.75, -0.75, 1.0, 0.75, 0.0, 0.25, 1.0, -0.75, -0.5, 0.0, -0.25, -0.75, 0.25, 0.75, -1.0, 1.0, -0.75, -0.25, -1.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, -0.75, -0.5, 0.75, 0.0, 0.0, 0.0, -0.75, 0.75, 0.25, 0.25, -1.0, 1.0, 1.0, -0.75, 0.75, 0.5, 1.0, -0.25, -0.25, 0.0, 0.0, 0.5, 1.0, -0.25, 0.5, -0.25, -0.75, -0.5, -1.0, 0.5, 0.25, 0.25, 0.25, 0.75, 1.0, 1.0, 1.0, -0.5, 0.75, 0.25, -1.0, -0.5, 0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 0.25, -0.25, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
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
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.queue.submit([command_buffer203, ]);
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    command_encoder500.popDebugGroup()
    
    query200.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query200.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const array7 = new Float32Array([-0.5, 0.0, 1.0, -0.75, -0.25, 0.25, 0.0, 0.5, -0.75, -0.25, -0.75, 0.75, 1.0, -0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 1.0, -1.0, -0.75, 0.5, -0.25, -0.5, 1.0, -0.75, -1.0, -0.75, 1.0, 0.75, 1.0, 0.75, -0.25, 0.25, 0.5, 0.75, 1.0, 1.0, 1.0, 0.5, 0.75, 0.5, -0.75, -1.0, -0.25, 0.0, 0.25, 1.0, 0.0, 0.25, 0.0, 0.0, 0.25, -1.0, 1.0, -1.0, -0.25, 0.75, 0.5, 0.5, 0.25, 0.0, 0.25, -0.75, -1.0, -1.0, -1.0, 0.0, 0.5, 0.0, 0.75, -0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.75, 0.0, -1.0, -0.5, 1.0, -0.75, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, 0.25, -0.75, 0.0, 0.0, -1.0, -0.5, 0.75, -1.0, -0.25, -0.5, ]);
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_buffer500 = command_encoder500.finish();
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    query201.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device40.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.pushErrorScope("validation");
    
    buffer201.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    query201.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    compute_pass_encoder2020.popDebugGroup()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query201.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture500.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    query400.destroy()
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.setPipeline(render_pipeline200);
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setStencilReference(1);
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    query201.destroy()
    texture200.destroy();
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    buffer205.destroy()
    command_encoder204.copyBufferToBuffer(
        buffer205,
        0,
        buffer203,
        0,
        400
    );
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query202.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
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
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    buffer500.destroy()
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    compute_pass_encoder2020.popDebugGroup()
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2020.setPipeline(render_pipeline202);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query200.destroy()
    buffer202.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_pass_encoder2040.setStencilReference(1);
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
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    command_encoder400.popDebugGroup()
    query203.destroy()
    buffer204.destroy()
    compute_pass_encoder2040.insertDebugMarker("marker")
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    render_pass_encoder2020.setStencilReference(1);
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query201
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    query200.destroy()
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_bundle_encoder501.setPipeline(render_pipeline501);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder2021.pushDebugGroup("group_marker");
    query400.destroy()
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder502.setPipeline(render_pipeline500);
    
    
    
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    render_pass_encoder2041.setStencilReference(1);
    render_pass_encoder2041.setStencilReference(1);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    render_pass_encoder2021.setPipeline(render_pipeline201);
    
    
    const command_buffer700 = command_encoder700.finish();
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4010.popDebugGroup()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder501.resolveQuerySet(
        query502,
        0,
        32,
        buffer502,
        0
    )
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer206.destroy()
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder2041.setPipeline(render_pipeline200);
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder502.clearBuffer(buffer500);
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    texture501.destroy();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group202);
    render_bundle_encoder502.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    query400.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.clearBuffer(buffer501);
    query202.destroy()
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    query203.destroy()
    
    render_pass_encoder5010.executeBundles([])
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_pass_encoder2041.pushDebugGroup("group_marker");
    texture400.destroy();
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer502,
        0
    )
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer200);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture502.destroy();
    render_bundle_encoder503.insertDebugMarker("marker");
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2041.popDebugGroup();
    buffer203.destroy()
    render_pass_encoder2020.draw(3);
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    command_encoder400.insertDebugMarker("mymarker");
    device50.queue.submit([command_buffer500, ]);
    
    {
        await buffer2010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2010.unmap();
        console.log(new Float32Array(data));
    }
    buffer2010.destroy()
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder5010.executeBundles([])
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    buffer502.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5010.insertDebugMarker("marker");
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    query201.destroy()
    
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2021.insertDebugMarker("marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device50.pushErrorScope("validation");
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_pass_encoder5020.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer2010,
        0
    )
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder2041.setStencilReference(1);
    query503.destroy()
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer208,
        0
    )
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    buffer207.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder205.clearBuffer(buffer204);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    
    
    
    
    texture500.destroy();
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
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
    
    render_bundle_encoder501.popDebugGroup();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.executeBundles([render_bundle_encoder501, ])
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    query504.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
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
    device40.queue.submit([]);
    render_pass_encoder2050.setPipeline(render_pipeline203);
    render_pass_encoder4020.setPipeline(render_pipeline406);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder4000.setPipeline(render_pipeline402);
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder5010.setPipeline(render_pipeline500);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const command_buffer000 = command_encoder000.finish();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group203);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group501);
    render_pass_encoder2021.setVertexBuffer(0, buffer205);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2021.end();
    render_pass_encoder2040.popDebugGroup();
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group204);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    render_pass_encoder5010.setVertexBuffer(0, buffer501);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer405, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer405, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder5010.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder5010.drawIndirect(buffer503, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder5010.end();
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2041.endOcclusionQuery()
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
        layout: render_pipeline406.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder5020.setVertexBuffer(0, buffer502);
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder4000.setVertexBuffer(0, buffer406);
    const command_buffer400 = command_encoder400.finish();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2040.setVertexBuffer(0, buffer2011);
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2040.end();
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4000.drawIndexedIndirect(buffer405, 0);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.end();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group205);
    render_pass_encoder2041.setVertexBuffer(0, buffer206);
    render_pass_encoder2050.setVertexBuffer(0, buffer206);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2041.end();
    render_pass_encoder2050.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2040.drawIndirect(buffer2014, 0);
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2040.drawIndirect(buffer2014, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5010.end();
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder4020.setVertexBuffer(0, buffer409);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer504, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5020.end();
    render_pass_encoder2040.end();
    device70.queue.submit([]);
    render_pass_encoder4020.draw(3);
    render_pass_encoder4020.end();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder5020.draw(3);
    device20.queue.submit([command_buffer203, command_buffer204, command_buffer205, ]);
    render_pass_encoder5020.draw(3);
    render_pass_encoder2050.end();
    device00.queue.submit([command_buffer000, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.draw(3);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2041.draw(3);
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder4020.setIndexBuffer(buffer405, "uint16");
    device70.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4000.drawIndirect(buffer405, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2040.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer409, 0);
    render_pass_encoder2020.end();
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer405, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2050.end();
    render_pass_encoder2050.draw(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder2041.draw(3);
    render_pass_encoder4020.drawIndirect(buffer409, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer206, 0);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder2040.drawIndexed(3);
    compute_pass_encoder4010.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    command_encoder202.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder2021.draw(3);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder5020.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer2010, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder4000.drawIndexed(3);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5020.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group404);
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2040.end();
    render_pass_encoder5020.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([]);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder4010.end();
    render_pass_encoder2041.drawIndirect(buffer201, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder5020.drawIndirect(buffer506, 0);
    render_pass_encoder5010.draw(3);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2050.end();
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder4020.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder5010.drawIndirect(buffer501, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2050.end();
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder2021.end();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder5010.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder2041.draw(3);
    device70.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2041.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder4020.drawIndirect(buffer401, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4014, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4015, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2050.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2041.end();
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    render_pass_encoder4000.end();
    render_pass_encoder4020.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder2020.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4016, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4016, 0);
    device30.queue.submit([]);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2021.end();
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group406);
    render_pass_encoder4020.end();
    render_pass_encoder4020.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2021.end();
    render_pass_encoder5020.draw(3);
    device30.queue.submit([]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder5010.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder4000.end();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder4000.drawIndirect(buffer4015, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder5010.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder4000.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder5020.drawIndirect(buffer508, 0);
    render_pass_encoder4000.drawIndirect(buffer405, 0);
    render_pass_encoder2040.end();
    render_pass_encoder4020.end();
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4000.end();
    render_pass_encoder2040.end();
    render_pass_encoder2040.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4019, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2021.end();
    render_pass_encoder4000.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder5010.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4015, 0);
    render_pass_encoder4020.drawIndirect(buffer406, 0);
    render_pass_encoder2020.end();
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
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group407);
    render_pass_encoder4020.drawIndirect(buffer4021, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer4015, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder4000.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder4000.end();
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2041.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5010.draw(3);
    render_pass_encoder4000.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer204, ]);
    render_pass_encoder4020.end();
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer4019, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4020.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder4000.end();
    render_pass_encoder4000.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder4000.end();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder5010.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4015, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2040.popDebugGroup();
    device00.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder2050.end();
    render_pass_encoder5020.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder4000.end();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4019, 0);
    render_pass_encoder5020.draw(3);
    device20.queue.submit([]);
    render_pass_encoder2050.end();
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder4020.drawIndexedIndirect(buffer4015, 0);
    render_pass_encoder2020.end();
    render_pass_encoder4020.drawIndirect(buffer4016, 0);
    render_pass_encoder5010.end();
    render_pass_encoder2021.draw(3);
    compute_pass_encoder5020.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2040.draw(3);
    render_pass_encoder4020.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder4000.draw(3);
    render_pass_encoder4000.drawIndexedIndirect(buffer402, 0);
    device30.queue.submit([]);
    render_pass_encoder5020.drawIndexedIndirect(buffer503, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder5010.end();
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder2041.draw(3);
    render_pass_encoder4000.setIndexBuffer(buffer4012, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder5020.end();
    device40.queue.submit([]);
    render_pass_encoder5010.draw(3);
    render_pass_encoder2050.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2050.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4020.end();
    render_pass_encoder2040.draw(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2050.endOcclusionQuery()
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder4020.end();
    render_pass_encoder5020.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder2020.end();
}