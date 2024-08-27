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
    const array0 = new Float32Array([0.25, 0.25, -1.0, -1.0, 1.0, 1.0, 0.5, 0.25, -1.0, 0.5, -0.75, -0.25, 1.0, -1.0, -1.0, 0.0, -1.0, 0.5, -0.75, 0.75, -0.75, 0.25, -0.5, -1.0, 0.5, 0.0, -1.0, -0.5, 0.75, 1.0, -0.5, 0.5, -1.0, -0.5, 0.5, 0.75, 0.5, -0.5, 0.5, 0.75, 0.0, 0.5, -1.0, 0.25, 0.0, -1.0, 0.75, -0.75, -0.5, -0.75, 1.0, -1.0, 0.75, 0.5, 0.25, 0.25, -0.25, 0.25, -1.0, 0.75, 0.75, -0.75, 0.0, 0.5, -1.0, 0.0, -1.0, 0.75, 0.0, -1.0, 1.0, 0.5, -0.25, 0.5, 0.25, -1.0, -0.25, -0.75, 1.0, 0.75, -0.5, -0.25, -0.25, -0.5, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, 0.75, -0.5, -1.0, 0.5, 0.75, 0.0, -1.0, -1.0, 1.0, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer000.destroy()
    const command_buffer000 = command_encoder000.finish();
    
    device00.pushErrorScope("internal");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-0.25, 1.0, -0.75, 0.0, -0.75, 0.0, -0.25, 0.0, -1.0, -0.75, -0.75, -0.25, -0.5, 0.0, 0.75, 0.25, 1.0, 0.0, 0.25, 1.0, -0.25, -0.75, 1.0, -0.25, 0.25, -1.0, -0.25, 0.75, 0.25, 0.75, 0.75, 0.25, -1.0, 0.5, 0.75, 0.25, 0.0, 0.25, 0.25, 1.0, 0.0, 0.5, -0.75, 0.5, 1.0, 0.0, -0.5, 0.5, -0.75, 0.25, 0.75, -0.75, -0.5, -0.75, 0.25, -1.0, -0.75, -1.0, 0.25, -1.0, -0.25, 0.75, -0.25, 0.0, 0.5, 0.75, 0.25, -1.0, 0.25, -0.5, -0.75, 0.0, 0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.75, -0.5, -0.75, -0.25, 0.75, -1.0, -0.75, -0.25, 0.75, 0.0, -0.5, 1.0, 0.25, 0.25, 0.0, -0.5, -1.0, -0.25, 0.75, -0.75, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("internal");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array2 = new Float32Array([0.25, 0.75, 0.75, 0.0, 1.0, 1.0, -0.75, -0.75, -0.25, 0.5, 0.5, -0.25, 0.25, 0.25, -1.0, 0.5, 0.5, 0.75, -0.25, -1.0, -0.75, -0.75, -0.25, 0.0, 0.25, 0.0, -0.5, -1.0, 0.75, -0.75, -0.25, -1.0, 0.0, 0.25, -1.0, -0.75, 0.75, -0.5, 1.0, 0.75, -0.5, -0.75, -0.5, 0.25, -0.5, -0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 0.0, 0.0, -0.75, 0.25, 0.0, 0.0, 0.0, -0.5, 0.0, 0.75, 0.0, 0.25, 0.5, 0.75, 0.0, 0.25, -1.0, 0.75, -0.25, -0.25, 0.25, 0.0, -0.5, 0.5, -0.25, 0.25, 1.0, -0.5, 1.0, -1.0, 0.75, 0.0, -0.75, -0.25, 1.0, 0.25, -0.75, -1.0, 0.75, -0.5, 0.25, -0.25, 0.0, 0.5, -0.5, 0.0, -0.25, -1.0, 0.25, ]);
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.75, 0.25, -0.25, 0.5, 0.5, 0.0, 0.75, 0.0, 0.0, 1.0, 1.0, -0.75, -0.75, -0.75, -1.0, 0.5, -0.75, -1.0, 0.5, 1.0, -0.5, 0.5, 0.0, 0.75, 0.25, -0.75, 1.0, -0.25, -0.25, 0.5, -0.25, 0.0, 0.75, 0.75, 0.75, 0.5, -0.5, 0.75, 1.0, 0.75, 0.0, -0.75, 0.5, -0.5, 0.0, 0.25, 0.5, -0.25, -0.5, 1.0, -1.0, 0.25, 0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.0, 0.75, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.5, 0.0, 0.75, -0.25, -0.5, 0.5, 0.5, 0.25, 0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 0.0, -0.75, -0.25, -0.5, -0.5, 0.75, 0.5, 0.75, 0.25, -0.75, -1.0, 0.25, 1.0, -0.25, 0.5, 0.0, -1.0, 1.0, 1.0, 0.5, ]);
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device10.pushErrorScope("out-of-memory");
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
    
    device40.destroy();
    device20.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.destroy();
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
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
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    command_encoder600.insertDebugMarker("mymarker");
    query600.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    query100.destroy()
    
    command_encoder601.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    query600.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    query603.destroy()
    
    
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
    const command_buffer601 = command_encoder601.finish();
    const command_buffer602 = command_encoder602.finish();
    const array4 = new Float32Array([0.25, -0.5, 0.0, -0.25, -0.25, 0.75, -0.75, -0.25, -1.0, 0.25, -0.25, 0.25, -1.0, 0.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.0, -0.75, -1.0, 0.0, 1.0, 0.25, 0.0, -0.25, 1.0, 0.0, -0.75, -0.75, -0.75, 0.5, 0.5, -0.5, 0.75, -1.0, 0.5, -0.75, -0.25, 0.25, 0.75, 0.5, 1.0, 1.0, -1.0, 0.5, -0.25, 0.75, -0.75, 0.25, -0.75, 0.75, 0.25, -0.5, 0.75, -0.5, 0.0, -0.5, -0.75, 0.25, 0.75, 0.75, -0.5, 0.0, -0.25, 0.75, 1.0, -0.75, -1.0, 0.0, -0.5, 0.25, 0.0, -0.25, 0.75, -0.5, 1.0, -1.0, -0.5, 0.75, -0.5, -0.5, -0.25, -0.75, 0.75, 1.0, -0.25, -1.0, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 0.5, 0.0, 0.75, 0.75, -1.0, ]);
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    device40.destroy();
    command_encoder600.pushDebugGroup("mygroupmarker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query600.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder600.popDebugGroup()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    query300.destroy()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    query700.destroy()
    
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
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6000.popDebugGroup()
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query601.destroy()
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
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
    texture800.destroy();
    device60.pushErrorScope("internal");
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    query604.destroy()
    query604.destroy()
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder9000.insertDebugMarker("marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query604.destroy()
    query602.destroy()
    
    
    device90.queue.submit([]);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pass_encoder6001 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6001" });
    query604.destroy()
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
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device70.pushErrorScope("internal");
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    compute_pass_encoder6030.popDebugGroup()
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder901.insertDebugMarker("marker");
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    compute_pass_encoder9000.insertDebugMarker("marker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const array5 = new Float32Array([-0.25, 0.75, 1.0, -0.5, 0.25, 0.5, -0.5, 0.5, 1.0, 0.5, -1.0, -0.25, 1.0, 1.0, -0.25, -0.25, 0.25, -0.5, 0.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.5, -0.5, -1.0, 0.75, -0.5, -0.5, 0.25, 0.0, -1.0, -0.75, -0.25, 0.0, -0.5, -0.25, 0.0, 0.0, -0.5, 1.0, 0.25, -1.0, 0.0, -0.5, 0.0, 0.25, -0.5, 0.0, 0.25, -1.0, 0.75, -1.0, -1.0, -0.5, -1.0, 0.25, -0.25, 0.0, -0.5, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, 0.0, 0.75, 0.75, -0.75, 1.0, 1.0, -1.0, -0.5, 0.25, 0.5, 0.75, -1.0, 1.0, 0.75, 1.0, -0.25, 0.5, 0.75, 0.5, 0.0, -0.5, 0.0, 0.5, -1.0, -0.75, 0.75, -0.75, -1.0, -0.25, -0.5, 0.0, -1.0, 0.25, ]);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_bundle_encoder800.pushDebugGroup("group_marker");
    buffer800.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_bundle_encoder900.setPipeline(render_pipeline900);
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    compute_pass_encoder9000.insertDebugMarker("marker")
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    render_bundle_encoder902.insertDebugMarker("marker");
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder6001.setPipeline(compute_pipeline600);
    query603.destroy()
    buffer601.destroy()
    
    
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    render_bundle_encoder902.insertDebugMarker("marker");
    compute_pass_encoder6030.setPipeline(compute_pipeline600);
    device80.pushErrorScope("validation");
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group601);
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder9010.insertDebugMarker("marker")
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query604
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout802]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    const command_buffer600 = command_encoder600.finish();
    
    
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    
    compute_pass_encoder6001.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder902.setPipeline(render_pipeline901);
    render_bundle_encoder601.popDebugGroup();
    
    render_bundle_encoder800.popDebugGroup();
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_pass_encoder6040.setPipeline(render_pipeline600);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    buffer604.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_pass_encoder6041 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer900,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer901,
                },
            },
        ],
    });

    render_bundle_encoder900.setBindGroup(0, bind_group900);
    render_bundle_encoder602.setPipeline(render_pipeline601);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    query603.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder6042 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query601
    });
    compute_pass_encoder6030.insertDebugMarker("marker")
    
    render_pass_encoder6040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer606, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer606, 0);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_pass_encoder6042.setPipeline(render_pipeline600);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6001.setBindGroup(0, bind_group602);
    buffer602.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder6001.insertDebugMarker("marker")
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_pass_encoder6041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer605.destroy()
    buffer800.destroy()
    device90.queue.writeBuffer(buffer901, 0, array4, 0, array4.length);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder6041.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    buffer601.destroy()
    compute_pass_encoder6001.dispatchWorkgroups(100);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    query702.destroy()
    
    const render_pass_encoder6043 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6043",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query601
    });
    buffer900.destroy()
    
    query602.destroy()
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    render_pass_encoder6042.setStencilReference(1);
    render_pass_encoder6041.insertDebugMarker("marker");
    query900.destroy()
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group603);
    const command_buffer1100 = command_encoder1100.finish();
    render_bundle_encoder600.setVertexBuffer(0, buffer6010);
    render_bundle_encoder602.insertDebugMarker("marker");
    render_pass_encoder6043.setPipeline(render_pipeline600);
    device90.pushErrorScope("validation");
    compute_pass_encoder9000.insertDebugMarker("marker")
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    render_bundle_encoder600.insertDebugMarker("marker");
    const array6 = new Float32Array([1.0, 0.25, 0.25, -1.0, 0.5, 1.0, -0.75, 0.5, -0.5, 0.0, -0.75, -0.5, 0.75, 0.0, -0.75, 0.5, -0.5, 0.0, -0.25, -0.75, -0.5, -0.75, 0.75, -1.0, -0.75, -1.0, -0.25, -0.75, 1.0, 0.5, 0.0, -0.75, 0.75, -0.75, 0.75, 0.0, 0.5, 0.0, 1.0, 0.75, 0.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.75, -0.5, -0.75, 0.25, 0.5, -0.75, -0.5, -1.0, -0.5, -0.75, -0.25, -0.5, -0.25, -0.75, 0.5, -0.75, 0.5, -0.25, 0.25, 0.25, -0.25, -0.5, -0.75, 0.0, -0.75, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, -1.0, 0.75, -0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 1.0, 1.0, -0.5, -0.75, 0.75, 0.25, -0.25, 0.75, 0.0, -0.75, -0.75, -0.25, -0.75, -1.0, 0.5, ]);
    command_encoder604.resolveQuerySet(
        query601,
        0,
        32,
        buffer600,
        0
    )
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    
    
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.submit([command_buffer800, ]);
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder601.insertDebugMarker("marker");
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout802]
    });
    render_pass_encoder6043.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder701.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer606, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder6043.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder800.insertDebugMarker("marker");
    buffer801.destroy()
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    buffer609.destroy()
    render_pass_encoder6043.insertDebugMarker("marker");
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer606, 0, array1, 0, array1.length);
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    query600.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query604
    });
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
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_pass_encoder6043.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    render_bundle_encoder600.setIndexBuffer(buffer608, "uint16");
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_pass_encoder6040.setStencilReference(1);
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6040.pushDebugGroup("group_marker");
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    render_pass_encoder6043.setBindGroup(0, bind_group604);
    
    query600.destroy()
    device60.queue.writeBuffer(buffer606, 0, array0, 0, array0.length);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    query601.destroy()
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder6043.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder6041.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    render_bundle_encoder602.setVertexBuffer(0, buffer603);
    compute_pass_encoder6000.setPipeline(compute_pipeline606);
    
    render_pass_encoder6030.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    command_encoder604.resolveQuerySet(
        query603,
        0,
        32,
        buffer602,
        0
    )
    compute_pass_encoder6030.popDebugGroup()
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder901.insertDebugMarker("marker");
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group605);
    
    
    render_pass_encoder6043.setStencilReference(1);
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    render_bundle_encoder700.popDebugGroup();
    render_pass_encoder6042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    buffer700.destroy()
    render_pass_encoder6041.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    buffer901.destroy()
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    render_bundle_encoder601.setPipeline(render_pipeline601);
    device90.queue.writeBuffer(buffer902, 0, array2, 0, array2.length);
    compute_pass_encoder9010.popDebugGroup()
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    render_pass_encoder6040.setBindGroup(0, bind_group606);
    render_pass_encoder6030.setPipeline(render_pipeline601);
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    render_pass_encoder6042.setBindGroup(0, bind_group607);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6030.end();
    render_pass_encoder6041.setPipeline(render_pipeline600);
    const command_buffer700 = command_encoder700.finish();
    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6020,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group608);
    compute_pass_encoder9000.popDebugGroup()
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    render_pass_encoder6041.setBindGroup(0, bind_group609);
    render_pass_encoder6043.setVertexBuffer(0, buffer605);
    render_pass_encoder6043.drawIndirect(buffer606, 0);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder6001.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6041.setVertexBuffer(0, buffer6013);
    render_pass_encoder6042.setVertexBuffer(0, buffer6012);
    render_pass_encoder6041.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder6040.popDebugGroup();
    render_pass_encoder6041.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder6042.setIndexBuffer(buffer609, "uint16");
    render_pass_encoder6041.drawIndexedIndirect(buffer606, 0);
    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6024,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6010);
    render_pass_encoder6042.drawIndirect(buffer6010, 0);
    render_pass_encoder6042.drawIndirect(buffer609, 0);
    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6011 = device60.createBindGroup({
        label: "bind_group6011",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6026,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6011);
    compute_pass_encoder6001.end();
    render_pass_encoder6040.setVertexBuffer(0, buffer6014);
    render_pass_encoder6040.setIndexBuffer(buffer6025, "uint16");
    render_pass_encoder6040.drawIndirect(buffer6022, 0);
    render_pass_encoder6043.endOcclusionQuery()
    render_pass_encoder6041.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6027 = device60.createBuffer({
        label: "buffer6027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6027, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6027, 0);
    const buffer6028 = device60.createBuffer({
        label: "buffer6028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6029 = device60.createBuffer({
        label: "buffer6029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group6012 = device60.createBindGroup({
        label: "bind_group6012",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6029,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group6012);
    render_pass_encoder6043.end();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6040.end();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6030 = device60.createBuffer({
        label: "buffer6030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6030, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6030, 0);
    render_pass_encoder6030.setVertexBuffer(0, buffer603);
    compute_pass_encoder9000.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder6041.drawIndirect(buffer6018, 0);
    render_pass_encoder6042.end();
    render_pass_encoder6041.drawIndirect(buffer6026, 0);
    render_pass_encoder6030.drawIndirect(buffer606, 0);
    render_pass_encoder6030.end();
    const command_buffer603 = command_encoder603.finish();
    render_pass_encoder6041.end();
    render_pass_encoder6042.drawIndexedIndirect(buffer6020, 0);
    compute_pass_encoder6001.popDebugGroup()
    const command_buffer1101 = command_encoder1101.finish();
    const command_buffer701 = command_encoder701.finish();
    device110.queue.submit([command_buffer1101, ]);
    compute_pass_encoder6000.end();
    device90.queue.submit([command_buffer900, ]);
    const buffer6031 = device60.createBuffer({
        label: "buffer6031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6032 = device60.createBuffer({
        label: "buffer6032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6013 = device60.createBindGroup({
        label: "bind_group6013",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6032,
                },
            },
        ],
    });

    compute_pass_encoder6001.setBindGroup(0, bind_group6013);
    device60.queue.submit([command_buffer603, ]);
    const command_buffer604 = command_encoder604.finish();
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder7010.popDebugGroup()
    const buffer6033 = device60.createBuffer({
        label: "buffer6033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6034 = device60.createBuffer({
        label: "buffer6034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6014 = device60.createBindGroup({
        label: "bind_group6014",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6034,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6014);
    render_pass_encoder6041.endOcclusionQuery()
    render_pass_encoder6040.setIndexBuffer(buffer6026, "uint16");
    render_pass_encoder6042.setIndexBuffer(buffer606, "uint16");
    render_pass_encoder6041.drawIndirect(buffer603, 0);
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder6000.end();
    render_pass_encoder6041.setIndexBuffer(buffer6023, "uint16");
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder6043.drawIndirect(buffer6027, 0);
    compute_pass_encoder6000.end();
    render_pass_encoder6043.end();
    const buffer6035 = device60.createBuffer({
        label: "buffer6035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6036 = device60.createBuffer({
        label: "buffer6036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6015 = device60.createBindGroup({
        label: "bind_group6015",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6036,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6015);
    render_pass_encoder6042.end();
    const uint32_6001 = new Uint32Array(3);

    uint32_6001[0] = 100;
    uint32_6001[1] = 1;
    uint32_6001[2] = 1;

    const buffer6037 = device60.createBuffer({
        label: "buffer6037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6037, 0, uint32_6001, 0, uint32_6001.length);

    compute_pass_encoder6001.dispatchWorkgroupsIndirect(buffer6037, 0);
    compute_pass_encoder6001.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer600, ]);
    const buffer6038 = device60.createBuffer({
        label: "buffer6038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6039 = device60.createBuffer({
        label: "buffer6039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6016 = device60.createBindGroup({
        label: "bind_group6016",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6039,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6016);
    render_pass_encoder6030.setIndexBuffer(buffer6017, "uint16");
    compute_pass_encoder6030.end();
    render_pass_encoder6043.end();
    render_pass_encoder6030.popDebugGroup();
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder6030.drawIndexedIndirect(buffer606, 0);
    device90.queue.submit([]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder6040.drawIndirect(buffer6017, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer6039, 0);
    render_pass_encoder6041.drawIndirect(buffer6033, 0);
    const buffer6040 = device60.createBuffer({
        label: "buffer6040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6041 = device60.createBuffer({
        label: "buffer6041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6017 = device60.createBindGroup({
        label: "bind_group6017",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6041,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6017);
    render_pass_encoder6040.end();
    device60.queue.submit([command_buffer601, ]);
    device110.queue.submit([command_buffer1100, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6030.endOcclusionQuery()
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    const command_buffer901 = command_encoder901.finish();
    render_pass_encoder6041.drawIndirect(buffer6027, 0);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder6042.drawIndexed(3);
    render_pass_encoder6043.end();
    render_pass_encoder6040.drawIndexedIndirect(buffer6027, 0);
    compute_pass_encoder6030.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device70.queue.submit([]);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6030.setIndexBuffer(buffer6024, "uint16");
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder6043.drawIndirect(buffer6037, 0);
    render_pass_encoder6041.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6041.end();
    render_pass_encoder6040.drawIndexedIndirect(buffer6025, 0);
    render_pass_encoder6030.drawIndirect(buffer6030, 0);
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder6042.end();
    compute_pass_encoder6001.popDebugGroup()
    const uint32_6001 = new Uint32Array(3);

    uint32_6001[0] = 100;
    uint32_6001[1] = 1;
    uint32_6001[2] = 1;

    const buffer6042 = device60.createBuffer({
        label: "buffer6042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6042, 0, uint32_6001, 0, uint32_6001.length);

    compute_pass_encoder6001.dispatchWorkgroupsIndirect(buffer6042, 0);
    render_pass_encoder6041.drawIndexedIndirect(buffer6027, 0);
    render_pass_encoder6043.drawIndirect(buffer6017, 0);
    render_pass_encoder6041.drawIndirect(buffer607, 0);
    render_pass_encoder6042.drawIndexedIndirect(buffer6034, 0);
    render_pass_encoder6043.popDebugGroup();
    compute_pass_encoder9010.popDebugGroup()
    compute_pass_encoder6001.end();
    device60.queue.submit([]);
    render_pass_encoder6030.setIndexBuffer(buffer603, "uint16");
    compute_pass_encoder6001.dispatchWorkgroups(100);
    render_pass_encoder6042.setIndexBuffer(buffer6039, "uint16");
    render_pass_encoder6041.drawIndirect(buffer6011, 0);
    render_pass_encoder6041.drawIndirect(buffer6037, 0);
    device90.queue.submit([command_buffer901, ]);
    device110.queue.submit([]);
    render_pass_encoder6043.drawIndirect(buffer6016, 0);
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6041.end();
    device110.queue.submit([command_buffer1101, ]);
    render_pass_encoder6042.end();
    render_pass_encoder6040.drawIndexedIndirect(buffer6031, 0);
    render_pass_encoder6042.drawIndexedIndirect(buffer6018, 0);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder6030.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6040.drawIndirect(buffer6022, 0);
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6042.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder6040.drawIndexedIndirect(buffer6024, 0);
    render_pass_encoder6040.popDebugGroup();
    render_pass_encoder6042.end();
    device110.queue.submit([]);
    device90.queue.submit([]);
    render_pass_encoder6042.end();
    render_pass_encoder6030.end();
    render_pass_encoder6040.drawIndirect(buffer604, 0);
    render_pass_encoder6040.end();
    render_pass_encoder6041.drawIndexedIndirect(buffer6030, 0);
    render_pass_encoder6043.drawIndirect(buffer6037, 0);
    render_pass_encoder6042.drawIndirect(buffer606, 0);
    device70.queue.submit([]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder6040.drawIndexedIndirect(buffer6030, 0);
    render_pass_encoder6042.setIndexBuffer(buffer609, "uint16");
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder6042.drawIndexedIndirect(buffer6014, 0);
    render_pass_encoder6043.drawIndirect(buffer606, 0);
    render_pass_encoder6041.end();
    device70.queue.submit([command_buffer701, ]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder6040.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder6042.setIndexBuffer(buffer6019, "uint16");
    device110.queue.submit([]);
    device70.queue.submit([]);
    render_pass_encoder6040.popDebugGroup();
    render_pass_encoder6041.popDebugGroup();
    render_pass_encoder6043.drawIndirect(buffer6027, 0);
    render_pass_encoder6041.drawIndirect(buffer6037, 0);
    render_pass_encoder6041.setIndexBuffer(buffer6021, "uint16");
    render_pass_encoder6042.setIndexBuffer(buffer6018, "uint16");
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6042.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder6043.drawIndirect(buffer6030, 0);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6042.end();
    device80.queue.submit([]);
    device110.queue.submit([command_buffer1100, command_buffer1101, ]);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder6040.setIndexBuffer(buffer6029, "uint16");
    render_pass_encoder6041.drawIndexedIndirect(buffer6030, 0);
    render_pass_encoder6042.drawIndirect(buffer607, 0);
    device110.queue.submit([command_buffer1100, ]);
    device60.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6042.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder6040.popDebugGroup();
    render_pass_encoder6041.drawIndirect(buffer6027, 0);
    render_pass_encoder6041.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder6041.drawIndexedIndirect(buffer6030, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer6025, 0);
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder9010.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6043.end();
    render_pass_encoder6041.drawIndexedIndirect(buffer6010, 0);
    device120.queue.submit([]);
    render_pass_encoder6030.endOcclusionQuery()
    render_pass_encoder6040.drawIndexed(3);
    device80.queue.submit([command_buffer800, ]);
    const command_buffer100 = command_encoder100.finish();
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder6041.drawIndirect(buffer6027, 0);
    render_pass_encoder6030.popDebugGroup();
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6040.drawIndirect(buffer6033, 0);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device120.queue.submit([]);
    render_pass_encoder6042.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6042, 0);
    render_pass_encoder6043.drawIndirect(buffer6042, 0);
    render_pass_encoder6042.drawIndexedIndirect(buffer6015, 0);
    compute_pass_encoder6001.dispatchWorkgroups(100);
    device110.queue.submit([command_buffer1101, ]);
    render_pass_encoder6040.setIndexBuffer(buffer6030, "uint16");
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6042.drawIndirect(buffer6037, 0);
    render_pass_encoder6041.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    compute_pass_encoder6000.end();
    render_pass_encoder6040.popDebugGroup();
    device90.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6040.drawIndirect(buffer6030, 0);
    render_pass_encoder6041.drawIndirect(buffer607, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer6026, 0);
    render_pass_encoder6040.drawIndirect(buffer6028, 0);
    render_pass_encoder6043.setIndexBuffer(buffer6033, "uint16");
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6040.drawIndexedIndirect(buffer6042, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder6042.drawIndexedIndirect(buffer6027, 0);
    render_pass_encoder6041.drawIndirect(buffer6027, 0);
    device110.queue.submit([]);
    render_pass_encoder6030.drawIndexedIndirect(buffer6039, 0);
    render_pass_encoder6041.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6042.popDebugGroup();
    render_pass_encoder6043.popDebugGroup();
    render_pass_encoder6030.drawIndexed(3);
    device60.queue.submit([command_buffer602, command_buffer603, ]);
    compute_pass_encoder6001.dispatchWorkgroups(100);
    render_pass_encoder6030.drawIndexedIndirect(buffer6034, 0);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder6042.drawIndexedIndirect(buffer6037, 0);
    render_pass_encoder6041.popDebugGroup();
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder6030.drawIndexed(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6043.setIndexBuffer(buffer6012, "uint16");
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6041.draw(3);
    render_pass_encoder6030.setIndexBuffer(buffer6038, "uint16");
    render_pass_encoder6041.drawIndirect(buffer6042, 0);
    compute_pass_encoder6000.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder6030.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6030.drawIndexedIndirect(buffer605, 0);
    compute_pass_encoder6001.dispatchWorkgroups(100);
    render_pass_encoder6040.drawIndexedIndirect(buffer6035, 0);
    const uint32_6001 = new Uint32Array(3);

    uint32_6001[0] = 100;
    uint32_6001[1] = 1;
    uint32_6001[2] = 1;

    const buffer6043 = device60.createBuffer({
        label: "buffer6043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6043, 0, uint32_6001, 0, uint32_6001.length);

    compute_pass_encoder6001.dispatchWorkgroupsIndirect(buffer6043, 0);
    device110.queue.submit([command_buffer1101, ]);
    render_pass_encoder6041.drawIndirect(buffer6027, 0);
    render_pass_encoder6042.drawIndexedIndirect(buffer6042, 0);
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder6030.drawIndexedIndirect(buffer6037, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder6041.drawIndirect(buffer6039, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6035, 0);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6044 = device60.createBuffer({
        label: "buffer6044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6044, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6044, 0);
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder6041.drawIndexed(3);
    device110.queue.submit([command_buffer1100, command_buffer1101, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6040.drawIndexedIndirect(buffer6041, 0);
    render_pass_encoder6041.drawIndirect(buffer6023, 0);
    render_pass_encoder6030.setIndexBuffer(buffer6038, "uint16");
    render_pass_encoder6030.end();
    render_pass_encoder6041.drawIndirect(buffer6014, 0);
    render_pass_encoder6041.drawIndirect(buffer6043, 0);
    render_pass_encoder6041.drawIndexedIndirect(buffer6044, 0);
    render_pass_encoder6040.drawIndirect(buffer606, 0);
    compute_pass_encoder6001.popDebugGroup()
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6045 = device60.createBuffer({
        label: "buffer6045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6045, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6045, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6015, 0);
    render_pass_encoder6043.end();
    render_pass_encoder6040.drawIndexedIndirect(buffer6042, 0);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder6040.drawIndirect(buffer604, 0);
    render_pass_encoder6041.drawIndirect(buffer6040, 0);
    render_pass_encoder6043.drawIndirect(buffer6035, 0);
    render_pass_encoder6043.setIndexBuffer(buffer604, "uint16");
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder6040.drawIndirect(buffer6045, 0);
    render_pass_encoder6041.setIndexBuffer(buffer6036, "uint16");
    render_pass_encoder6042.drawIndexed(3);
    render_pass_encoder6041.drawIndirect(buffer6044, 0);
    compute_pass_encoder6030.end();
    render_pass_encoder6042.drawIndirect(buffer604, 0);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6042.drawIndexedIndirect(buffer6043, 0);
    render_pass_encoder6030.drawIndirect(buffer6043, 0);
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder6001.end();
    compute_pass_encoder6001.end();
    render_pass_encoder6040.drawIndirect(buffer6037, 0);
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6041.popDebugGroup();
    device70.queue.submit([]);
    device110.queue.submit([command_buffer1100, ]);
    render_pass_encoder6041.drawIndirect(buffer6027, 0);
    const buffer6046 = device60.createBuffer({
        label: "buffer6046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6047 = device60.createBuffer({
        label: "buffer6047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6018 = device60.createBindGroup({
        label: "bind_group6018",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6047,
                },
            },
        ],
    });

    compute_pass_encoder6001.setBindGroup(0, bind_group6018);
    render_pass_encoder6040.drawIndexedIndirect(buffer6044, 0);
    render_pass_encoder6040.drawIndirect(buffer604, 0);
    render_pass_encoder6042.popDebugGroup();
    render_pass_encoder6043.drawIndexedIndirect(buffer6045, 0);
    render_pass_encoder6041.drawIndirect(buffer6037, 0);
    device20.queue.submit([]);
    render_pass_encoder6042.endOcclusionQuery()
    render_pass_encoder6042.drawIndexedIndirect(buffer603, 0);
    render_pass_encoder6041.popDebugGroup();
    render_pass_encoder6040.setIndexBuffer(buffer6021, "uint16");
    compute_pass_encoder9000.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder6042.drawIndexedIndirect(buffer6037, 0);
    render_pass_encoder6043.drawIndexedIndirect(buffer6045, 0);
    render_pass_encoder6041.drawIndirect(buffer6019, 0);
    device80.queue.submit([]);
    device110.queue.submit([command_buffer1100, ]);
    render_pass_encoder6043.setIndexBuffer(buffer608, "uint16");
    render_pass_encoder6043.drawIndexedIndirect(buffer604, 0);
    device110.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6043.drawIndirect(buffer6043, 0);
    render_pass_encoder6042.drawIndirect(buffer609, 0);
    render_pass_encoder6043.popDebugGroup();
    compute_pass_encoder6000.end();
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6048 = device60.createBuffer({
        label: "buffer6048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6048, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6048, 0);
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder6041.drawIndexed(3);
    render_pass_encoder6040.drawIndirect(buffer607, 0);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder6030.drawIndexedIndirect(buffer6034, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder6041.drawIndirect(buffer6047, 0);
    render_pass_encoder6043.drawIndexedIndirect(buffer6037, 0);
    render_pass_encoder6040.popDebugGroup();
    device110.queue.submit([]);
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder6041.end();
    render_pass_encoder6040.drawIndirect(buffer6030, 0);
    compute_pass_encoder6001.dispatchWorkgroups(100);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder6041.drawIndirect(buffer6044, 0);
    device110.queue.submit([command_buffer1100, command_buffer1101, ]);
    render_pass_encoder6030.drawIndexedIndirect(buffer6044, 0);
    render_pass_encoder6043.drawIndirect(buffer6043, 0);
    render_pass_encoder6042.popDebugGroup();
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6042.drawIndexedIndirect(buffer6026, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer6023, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6013, 0);
    render_pass_encoder6030.end();
    render_pass_encoder6041.drawIndirect(buffer6042, 0);
    render_pass_encoder6030.drawIndirect(buffer6043, 0);
    render_pass_encoder6041.drawIndirect(buffer6045, 0);
    render_pass_encoder6030.end();
    render_pass_encoder6040.end();
    render_pass_encoder6040.drawIndirect(buffer6030, 0);
    render_pass_encoder6040.drawIndirect(buffer6044, 0);
    render_pass_encoder6043.setIndexBuffer(buffer6039, "uint16");
    compute_pass_encoder6000.end();
    render_pass_encoder6040.popDebugGroup();
    device110.queue.submit([command_buffer1100, ]);
    device80.queue.submit([]);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6043.drawIndirect(buffer6030, 0);
    render_pass_encoder6041.drawIndirect(buffer6045, 0);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    compute_pass_encoder6001.dispatchWorkgroups(100);
    render_pass_encoder6041.drawIndexedIndirect(buffer606, 0);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder6042.popDebugGroup();
    render_pass_encoder6030.drawIndirect(buffer6043, 0);
    render_pass_encoder6040.drawIndirect(buffer6042, 0);
    render_pass_encoder6030.setIndexBuffer(buffer6044, "uint16");
    device110.queue.submit([]);
    const buffer6049 = device60.createBuffer({
        label: "buffer6049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6050 = device60.createBuffer({
        label: "buffer6050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6019 = device60.createBindGroup({
        label: "bind_group6019",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6050,
                },
            },
        ],
    });

    compute_pass_encoder6001.setBindGroup(0, bind_group6019);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    render_pass_encoder6041.drawIndirect(buffer6033, 0);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6051 = device60.createBuffer({
        label: "buffer6051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6051, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6051, 0);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder6030.popDebugGroup();
    device70.queue.submit([command_buffer701, ]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6043.drawIndexedIndirect(buffer6022, 0);
    render_pass_encoder6041.drawIndirect(buffer606, 0);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder6042.drawIndirect(buffer6051, 0);
    render_pass_encoder6030.drawIndirect(buffer6051, 0);
    render_pass_encoder6041.drawIndexedIndirect(buffer6042, 0);
    render_pass_encoder6042.end();
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder6001.end();
    render_pass_encoder6043.end();
    const buffer6052 = device60.createBuffer({
        label: "buffer6052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6053 = device60.createBuffer({
        label: "buffer6053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6020 = device60.createBindGroup({
        label: "bind_group6020",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6053,
                },
            },
        ],
    });

    compute_pass_encoder6001.setBindGroup(0, bind_group6020);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder6041.drawIndexedIndirect(buffer6044, 0);
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6042.drawIndirect(buffer6046, 0);
    render_pass_encoder6042.drawIndirect(buffer6045, 0);
    render_pass_encoder6043.drawIndirect(buffer6051, 0);
    const buffer6054 = device60.createBuffer({
        label: "buffer6054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6055 = device60.createBuffer({
        label: "buffer6055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6021 = device60.createBindGroup({
        label: "bind_group6021",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6055,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6021);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6030.setIndexBuffer(buffer608, "uint16");
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder6040.setIndexBuffer(buffer6025, "uint16");
    device70.queue.submit([command_buffer701, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder6000.end();
    render_pass_encoder6030.drawIndirect(buffer606, 0);
    render_pass_encoder6043.drawIndirect(buffer6027, 0);
    render_pass_encoder6043.drawIndexedIndirect(buffer6043, 0);
    render_pass_encoder6043.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6043.popDebugGroup();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6056 = device60.createBuffer({
        label: "buffer6056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6056, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6056, 0);
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    device70.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder6042.setIndexBuffer(buffer6023, "uint16");
    render_pass_encoder6041.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6030.drawIndexedIndirect(buffer6056, 0);
    render_pass_encoder6030.drawIndirect(buffer6027, 0);
    render_pass_encoder6041.drawIndirect(buffer6051, 0);
    const buffer6057 = device60.createBuffer({
        label: "buffer6057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6058 = device60.createBuffer({
        label: "buffer6058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6022 = device60.createBindGroup({
        label: "bind_group6022",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6058,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6022);
    render_pass_encoder6042.drawIndexedIndirect(buffer6040, 0);
    render_pass_encoder6042.setIndexBuffer(buffer6056, "uint16");
    render_pass_encoder6043.drawIndirect(buffer6056, 0);
    compute_pass_encoder6001.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder6042.setIndexBuffer(buffer604, "uint16");
    render_pass_encoder6042.drawIndirect(buffer6044, 0);
    render_pass_encoder6040.end();
    render_pass_encoder6041.drawIndexedIndirect(buffer6045, 0);
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6040.drawIndirect(buffer6030, 0);
    const buffer6059 = device60.createBuffer({
        label: "buffer6059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6060 = device60.createBuffer({
        label: "buffer6060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6023 = device60.createBindGroup({
        label: "bind_group6023",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6060,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6023);
    render_pass_encoder6040.popDebugGroup();
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder6041.drawIndirect(buffer6045, 0);
    render_pass_encoder6041.end();
    render_pass_encoder6041.drawIndirect(buffer606, 0);
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder6040.drawIndexed(3);
    render_pass_encoder6042.drawIndirect(buffer6027, 0);
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6043.drawIndirect(buffer606, 0);
    device70.queue.submit([]);
    render_pass_encoder6040.drawIndirect(buffer6044, 0);
    const buffer6061 = device60.createBuffer({
        label: "buffer6061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6062 = device60.createBuffer({
        label: "buffer6062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6024 = device60.createBindGroup({
        label: "bind_group6024",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6062,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6024);
    compute_pass_encoder7000.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder6040.drawIndirect(buffer6039, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6040.drawIndirect(buffer6026, 0);
    render_pass_encoder6040.drawIndirect(buffer6043, 0);
    render_pass_encoder6041.end();
    compute_pass_encoder6030.end();
    render_pass_encoder6043.popDebugGroup();
    render_pass_encoder6030.drawIndexedIndirect(buffer6043, 0);
    compute_pass_encoder6030.end();
    render_pass_encoder6040.drawIndirect(buffer6049, 0);
    compute_pass_encoder6001.end();
    render_pass_encoder6042.drawIndexedIndirect(buffer6027, 0);
    const buffer6063 = device60.createBuffer({
        label: "buffer6063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6064 = device60.createBuffer({
        label: "buffer6064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6025 = device60.createBindGroup({
        label: "bind_group6025",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6064,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6025);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6040.drawIndirect(buffer6023, 0);
    render_pass_encoder6041.drawIndirect(buffer6048, 0);
    device120.queue.submit([]);
    render_pass_encoder6040.setIndexBuffer(buffer6022, "uint16");
    compute_pass_encoder6001.end();
    render_pass_encoder6043.drawIndirect(buffer606, 0);
    const buffer6065 = device60.createBuffer({
        label: "buffer6065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6066 = device60.createBuffer({
        label: "buffer6066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6026 = device60.createBindGroup({
        label: "bind_group6026",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6066,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6026);
    render_pass_encoder6041.drawIndirect(buffer6030, 0);
    render_pass_encoder6030.end();
    render_pass_encoder6041.popDebugGroup();
    device70.queue.submit([]);
    compute_pass_encoder6001.dispatchWorkgroups(100);
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder7000.popDebugGroup()
    device90.queue.submit([command_buffer900, ]);
    device120.queue.submit([]);
    device30.queue.submit([]);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6067 = device60.createBuffer({
        label: "buffer6067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6067, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6067, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6067, 0);
    render_pass_encoder6040.drawIndirect(buffer606, 0);
    compute_pass_encoder6030.end();
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder6000.end();
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder6030.end();
    render_pass_encoder6042.drawIndirect(buffer6056, 0);
    device20.queue.submit([]);
    compute_pass_encoder6001.end();
    render_pass_encoder6042.drawIndexedIndirect(buffer6044, 0);
    render_pass_encoder6041.setIndexBuffer(buffer6050, "uint16");
    compute_pass_encoder7010.popDebugGroup()
    device110.queue.submit([]);
    device120.queue.submit([]);
    render_pass_encoder6042.drawIndexedIndirect(buffer6032, 0);
    device90.queue.submit([command_buffer901, ]);
    device60.queue.submit([command_buffer600, command_buffer604, ]);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    compute_pass_encoder6030.end();
    render_pass_encoder6042.drawIndirect(buffer6056, 0);
    const buffer6068 = device60.createBuffer({
        label: "buffer6068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6069 = device60.createBuffer({
        label: "buffer6069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6027 = device60.createBindGroup({
        label: "bind_group6027",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6069,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6027);
    const buffer6070 = device60.createBuffer({
        label: "buffer6070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6071 = device60.createBuffer({
        label: "buffer6071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6028 = device60.createBindGroup({
        label: "bind_group6028",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6071,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6028);
    render_pass_encoder6030.end();
    render_pass_encoder6030.drawIndirect(buffer6044, 0);
    render_pass_encoder6041.drawIndexedIndirect(buffer6036, 0);
    render_pass_encoder6041.end();
    device80.queue.submit([command_buffer800, ]);
    const buffer6072 = device60.createBuffer({
        label: "buffer6072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6073 = device60.createBuffer({
        label: "buffer6073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6029 = device60.createBindGroup({
        label: "bind_group6029",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6073,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6029);
    device110.queue.submit([command_buffer1100, command_buffer1101, ]);
    render_pass_encoder6041.drawIndirect(buffer6027, 0);
    compute_pass_encoder9010.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder6043.drawIndexedIndirect(buffer6051, 0);
    render_pass_encoder6042.drawIndirect(buffer6042, 0);
    device110.queue.submit([]);
    render_pass_encoder6042.drawIndexedIndirect(buffer6060, 0);
    render_pass_encoder6043.end();
    render_pass_encoder6043.drawIndirect(buffer6044, 0);
    render_pass_encoder6042.drawIndexedIndirect(buffer6045, 0);
    render_pass_encoder6043.drawIndexedIndirect(buffer6037, 0);
    render_pass_encoder6043.drawIndirect(buffer6067, 0);
    compute_pass_encoder6001.end();
    render_pass_encoder6043.popDebugGroup();
    render_pass_encoder6040.drawIndexedIndirect(buffer6045, 0);
    render_pass_encoder6042.drawIndexedIndirect(buffer6054, 0);
    render_pass_encoder6030.draw(3);
    const buffer6074 = device60.createBuffer({
        label: "buffer6074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6075 = device60.createBuffer({
        label: "buffer6075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6030 = device60.createBindGroup({
        label: "bind_group6030",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6075,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6030);
    device90.queue.submit([]);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder6030.drawIndexedIndirect(buffer6037, 0);
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder6040.end();
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder6030.drawIndexedIndirect(buffer6037, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer609, 0);
    compute_pass_encoder6000.end();
    device00.queue.submit([]);
    render_pass_encoder6041.drawIndirect(buffer6035, 0);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    render_pass_encoder6043.draw(3);
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder6041.drawIndexedIndirect(buffer6016, 0);
    const buffer6076 = device60.createBuffer({
        label: "buffer6076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6077 = device60.createBuffer({
        label: "buffer6077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6031 = device60.createBindGroup({
        label: "bind_group6031",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6077,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6031);
    device120.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder6040.drawIndexedIndirect(buffer6048, 0);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder6042.popDebugGroup();
    render_pass_encoder6040.drawIndirect(buffer6070, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer6042, 0);
    compute_pass_encoder6001.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder6043.drawIndexedIndirect(buffer6013, 0);
    render_pass_encoder6041.drawIndirect(buffer6037, 0);
    render_pass_encoder6043.drawIndirect(buffer6048, 0);
    render_pass_encoder6043.end();
    render_pass_encoder6030.draw(3);
    render_pass_encoder6030.drawIndexedIndirect(buffer6042, 0);
    const buffer6078 = device60.createBuffer({
        label: "buffer6078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6079 = device60.createBuffer({
        label: "buffer6079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6032 = device60.createBindGroup({
        label: "bind_group6032",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6079,
                },
            },
        ],
    });

    compute_pass_encoder6001.setBindGroup(0, bind_group6032);
    device110.queue.submit([]);
    compute_pass_encoder6000.end();
    device110.queue.submit([]);
    render_pass_encoder6043.drawIndexedIndirect(buffer6042, 0);
    render_pass_encoder6042.drawIndexedIndirect(buffer6044, 0);
    device60.queue.submit([command_buffer602, ]);
    device120.queue.submit([]);
    render_pass_encoder6030.popDebugGroup();
    const uint32_6001 = new Uint32Array(3);

    uint32_6001[0] = 100;
    uint32_6001[1] = 1;
    uint32_6001[2] = 1;

    const buffer6080 = device60.createBuffer({
        label: "buffer6080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6080, 0, uint32_6001, 0, uint32_6001.length);

    compute_pass_encoder6001.dispatchWorkgroupsIndirect(buffer6080, 0);
    device120.queue.submit([]);
    render_pass_encoder6040.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder6042.drawIndirect(buffer6043, 0);
    render_pass_encoder6040.drawIndexed(3);
    device40.queue.submit([]);
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder6041.end();
    render_pass_encoder6043.drawIndirect(buffer6056, 0);
    render_pass_encoder6041.drawIndexedIndirect(buffer6043, 0);
    device70.queue.submit([]);
    render_pass_encoder6041.drawIndirect(buffer6067, 0);
    render_pass_encoder6041.setIndexBuffer(buffer602, "uint16");
    device110.queue.submit([command_buffer1101, ]);
    render_pass_encoder6030.setIndexBuffer(buffer606, "uint16");
    compute_pass_encoder6001.end();
    render_pass_encoder6043.drawIndirect(buffer6067, 0);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder6043.drawIndexedIndirect(buffer6037, 0);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder6040.drawIndexedIndirect(buffer6030, 0);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6030.drawIndirect(buffer6067, 0);
    render_pass_encoder6042.drawIndirect(buffer6058, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6042, 0);
    device110.queue.submit([command_buffer1100, ]);
    device60.queue.submit([command_buffer603, command_buffer604, ]);
    compute_pass_encoder6001.popDebugGroup()
    render_pass_encoder6042.drawIndirect(buffer606, 0);
    render_pass_encoder6043.popDebugGroup();
    render_pass_encoder6043.drawIndexedIndirect(buffer6027, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6040.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder6042.drawIndirect(buffer6056, 0);
    const uint32_6001 = new Uint32Array(3);

    uint32_6001[0] = 100;
    uint32_6001[1] = 1;
    uint32_6001[2] = 1;

    const buffer6081 = device60.createBuffer({
        label: "buffer6081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6081, 0, uint32_6001, 0, uint32_6001.length);

    compute_pass_encoder6001.dispatchWorkgroupsIndirect(buffer6081, 0);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    compute_pass_encoder6001.end();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6082 = device60.createBuffer({
        label: "buffer6082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6082, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6082, 0);
    render_pass_encoder6043.popDebugGroup();
    render_pass_encoder6042.popDebugGroup();
    const buffer6083 = device60.createBuffer({
        label: "buffer6083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6084 = device60.createBuffer({
        label: "buffer6084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6033 = device60.createBindGroup({
        label: "bind_group6033",
        layout: compute_pipeline606.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6084,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6033);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    render_pass_encoder6041.drawIndirect(buffer6081, 0);
}