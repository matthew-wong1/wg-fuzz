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
    
    
    const array0 = new Float32Array([-1.0, 0.25, 0.25, 0.0, -0.75, 0.5, 0.0, 1.0, -0.75, 0.0, -0.5, 0.25, -1.0, 0.75, 0.0, -1.0, 1.0, 0.5, 0.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.25, -0.25, 0.0, 0.75, 0.25, 0.25, -1.0, -0.25, 0.0, 0.5, -0.25, -0.25, 1.0, -0.75, -0.5, 0.75, -0.25, -0.25, 0.5, -1.0, 0.0, -0.25, -1.0, 0.75, -0.75, -0.25, -0.5, -0.25, -0.75, 0.75, -0.5, 0.0, 1.0, 0.5, 0.25, 0.0, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.25, 0.0, 1.0, 0.0, -0.5, 0.25, 0.25, 0.25, -0.75, 0.75, 0.25, -0.5, -1.0, 1.0, 0.0, 0.75, -1.0, 0.5, -0.5, 0.75, 0.5, 0.5, 0.25, -0.25, 0.0, 1.0, 0.0, -0.75, -1.0, -0.5, 0.5, 0.5, 0.0, 1.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, 0.25, -0.25, 0.75, 0.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.75, -0.5, -0.75, 0.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.25, -0.5, 0.5, 0.25, 0.25, 1.0, -1.0, -0.75, -0.75, -0.5, -1.0, -0.75, 1.0, -1.0, 0.25, 0.25, -0.25, 0.75, 0.5, 0.0, 0.5, 0.25, -1.0, -0.25, 0.75, -1.0, -0.75, 0.25, 0.75, -0.75, -0.5, 1.0, -0.75, 0.75, 0.5, -0.25, 0.5, 0.0, 0.25, 1.0, -0.25, 0.0, 0.5, 0.5, 0.25, -0.5, -0.25, 0.0, 0.75, -0.5, -0.25, -0.5, 1.0, -0.25, 0.5, -0.5, -0.5, -0.75, -0.5, -0.5, 0.75, 0.25, 0.75, -0.5, -0.75, 0.75, 0.0, -0.5, -0.5, 0.25, 0.25, 0.25, -0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 0.0, 0.25, -0.5, ]);
    
    const array2 = new Float32Array([0.5, 0.25, 0.0, 0.25, -1.0, 0.5, -0.75, -1.0, -1.0, 1.0, -0.75, 1.0, 0.25, 0.75, 0.5, 0.75, 0.5, -1.0, 0.25, -0.75, -0.25, 1.0, -0.25, 0.5, 0.5, 1.0, 0.25, -0.5, 1.0, -0.5, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, 0.0, 0.25, 0.75, 0.5, -0.75, -1.0, 0.75, 1.0, -1.0, -0.25, 0.25, -1.0, 1.0, -0.75, -0.25, 0.5, 1.0, -0.5, 0.25, 1.0, -1.0, -1.0, 0.75, 0.5, -0.75, -1.0, -0.5, -1.0, 0.25, 0.25, 0.0, 1.0, -0.5, 0.25, 0.75, -0.25, 0.0, -0.5, 0.75, -0.25, 0.25, 1.0, -1.0, -0.5, 1.0, -1.0, -1.0, -1.0, -0.75, -1.0, -0.5, -1.0, 0.75, 1.0, 0.25, -0.25, -0.25, 0.0, -1.0, 1.0, 1.0, 0.25, -1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.queue.submit([]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.5, 0.5, -0.75, 0.0, -1.0, 0.25, 0.25, -0.25, -0.75, 0.0, 0.0, -0.75, 0.75, -0.25, 0.0, 0.0, 0.5, -1.0, -1.0, -0.75, 0.0, -1.0, -0.25, 0.25, -0.25, 0.75, -1.0, -0.5, 0.0, -0.25, -0.75, -1.0, 1.0, -1.0, 0.25, -0.25, 0.0, -1.0, 0.75, -0.5, 0.5, 0.75, -0.75, 0.0, 0.0, -0.75, 0.25, 1.0, -0.25, 0.5, 0.75, -0.75, -1.0, -0.25, -0.5, -1.0, -0.5, 0.25, -1.0, 0.25, -1.0, -1.0, -0.75, -0.75, -0.25, 0.5, -0.5, -1.0, 0.25, 0.25, 1.0, 0.0, -0.5, -0.25, -0.25, 0.25, 0.25, 1.0, 0.5, -0.75, -0.25, 0.25, -0.5, 0.0, 1.0, -0.75, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, -1.0, 1.0, -0.5, 0.0, -0.5, 0.75, -0.25, -1.0, ]);
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.pushErrorScope("out-of-memory");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device30.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device70.destroy();
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer200.destroy()
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
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture200.destroy();
    buffer201.destroy()
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device50.pushErrorScope("validation");
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
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.pushErrorScope("validation");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    buffer202.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    command_encoder201.copyTextureToTexture(
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
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    device90.pushErrorScope("out-of-memory");
    const command_buffer201 = command_encoder201.finish();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    command_encoder800.insertDebugMarker("mymarker");
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    query200.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    command_encoder800.insertDebugMarker("mymarker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    device90.queue.writeTexture({ texture: texture901 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    device20.queue.submit([command_buffer201, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    compute_pass_encoder9000.insertDebugMarker("marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2000.executeBundles([])
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
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
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture901 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
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
    
    texture902.destroy();
    query601.destroy()
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    render_bundle_encoder601.popDebugGroup();
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    compute_pass_encoder2000.popDebugGroup()
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder800.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    buffer000.destroy()
    
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.pushErrorScope("internal");
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device60.destroy();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query502.destroy()
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    query502.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.executeBundles([])
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device80.pushErrorScope("internal");
    const array4 = new Float32Array([-0.5, -0.75, 1.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.5, 1.0, -0.75, -0.75, -0.75, 0.5, -0.5, -0.25, -0.75, -0.25, -1.0, -0.25, -0.25, -1.0, 0.0, 0.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.25, -1.0, -1.0, -0.5, 0.0, -0.75, -1.0, 1.0, 0.0, 0.5, -0.25, 0.0, 0.5, 1.0, -0.5, 0.25, 0.25, 0.0, -1.0, -1.0, -0.75, -0.25, 0.0, 1.0, -0.25, -0.75, -0.25, 0.0, 1.0, 0.0, -0.5, 1.0, -0.5, -0.75, 0.5, 0.0, 0.75, -1.0, 0.75, -0.25, 0.75, -0.5, 1.0, 0.5, 0.75, 1.0, -0.75, 0.0, -0.5, -0.25, -1.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -1.0, 0.75, 0.25, 1.0, 1.0, 1.0, 0.0, 0.5, -1.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeTexture({ texture: texture901 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture901 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder800.insertDebugMarker("marker");
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    device90.queue.writeTexture({ texture: texture901 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device20.pushErrorScope("out-of-memory");
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2020.executeBundles([])
    command_encoder900.copyTextureToTexture(
        {
            texture: texture901
        },
        {
            texture: texture902
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device100.pushErrorScope("out-of-memory");
    
    
    query502.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    
    device100.destroy();
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.pushErrorScope("validation");
    
    query502.destroy()
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    render_bundle_encoder802.insertDebugMarker("marker");
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    buffer203.destroy()
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder901.pushDebugGroup("mygroupmarker")
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder602.setPipeline(render_pipeline600);
    device50.destroy();
    render_bundle_encoder800.insertDebugMarker("marker");
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
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
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.popDebugGroup();
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const render_pass_encoder8000 = command_encoder800.beginRenderPass({
        label: "render_pass_encoder8000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder8000.popDebugGroup();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array5 = new Float32Array([0.75, -0.25, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.25, 0.5, -0.5, 0.5, -0.5, -0.75, 1.0, -0.25, -0.75, -1.0, -1.0, 1.0, -0.25, 1.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.75, -0.5, 0.0, -0.75, 0.75, 0.0, 0.0, -0.25, 0.25, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, -0.5, -0.25, 0.75, -1.0, -1.0, 0.0, 0.5, 0.5, 0.5, -0.5, 0.5, 0.5, 0.0, 1.0, -0.75, -0.25, 1.0, 1.0, 1.0, -0.75, 0.25, 0.75, 1.0, -0.75, -0.25, 0.75, 0.5, -0.75, 0.25, 0.5, -1.0, 1.0, 0.0, -0.75, 0.0, 0.5, 0.5, -1.0, 0.25, 0.0, -0.75, 0.5, 1.0, 0.0, 0.5, 1.0, -1.0, 0.25, 0.25, -0.5, 1.0, 1.0, 0.25, 0.25, 1.0, -0.5, 1.0, 0.75, ]);
    
    render_bundle_encoder800.popDebugGroup();
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2030.setStencilReference(1);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder801.popDebugGroup();
    buffer900.destroy()
    
    
    device90.queue.writeBuffer(buffer901, 0, array4, 0, array4.length);
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder901.copyTextureToBuffer(
        {
            texture: texture902
        },
        {
            buffer: buffer901
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer901.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder802.insertDebugMarker("marker");
    device90.queue.writeTexture({ texture: texture901 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture903.destroy();
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    compute_pass_encoder8000.insertDebugMarker("marker")
    render_pass_encoder8000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder600.popDebugGroup();
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline204);
    render_pass_encoder2020.insertDebugMarker("marker");
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer205
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder8000.pushDebugGroup("group_marker");
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    render_pass_encoder8000.executeBundles([])
    command_encoder901.copyTextureToBuffer(
        {
            texture: texture900
        },
        {
            buffer: buffer901
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    render_pass_encoder8000.insertDebugMarker("marker");
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    device90.queue.writeTexture({ texture: texture901 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    
    render_pass_encoder2020.executeBundles([])
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    device90.queue.writeTexture({ texture: texture901 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder8000.insertDebugMarker("marker");
    render_bundle_encoder802.setPipeline(render_pipeline800);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.popDebugGroup();
    render_pass_encoder8000.insertDebugMarker("marker");
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder901.insertDebugMarker("mymarker");
    
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_pass_encoder9010 = command_encoder901.beginRenderPass({
        label: "render_pass_encoder9010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
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
    
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture901 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder8000.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    buffer204.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder9010.setScissorRect(0, 0, texture901.width / 2, texture901.height / 2);
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder8000.setPipeline(render_pipeline800);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder1101.popDebugGroup();
    const compute_pass_encoder11000 = command_encoder1100.beginComputePass({ label: "compute_pass_encoder11000" });
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    device90.queue.writeTexture({ texture: texture901 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder9010.executeBundles([])
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query601.destroy()
    render_pass_encoder9010.setViewport(0, 0, texture901.width / 2, texture901.height / 2, 0, 1);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    const render_pass_encoder9011 = command_encoder901.beginRenderPass({
        label: "render_pass_encoder9011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9000,
            },
        ],
        occlusionQuerySet: undefined
    });
    query800.destroy()
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    render_pass_encoder2020.insertDebugMarker("marker");
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer800,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer801,
                },
            },
        ],
    });

    render_pass_encoder8000.setBindGroup(0, bind_group800);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder9010.popDebugGroup();
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder8000.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer208, 0);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.end();
    compute_pass_encoder2020.end();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer1100 = command_encoder1100.finish();
    const command_buffer901 = command_encoder901.finish();
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    device90.queue.submit([]);
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([]);
    compute_pass_encoder2000.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([]);
    compute_pass_encoder11000.popDebugGroup()
    render_pass_encoder8000.setVertexBuffer(0, buffer800);
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder11000.popDebugGroup()
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
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
    device20.queue.submit([command_buffer203, ]);
    device80.queue.submit([]);
    render_pass_encoder8000.draw(3);
    compute_pass_encoder2020.end();
    device40.queue.submit([]);
    render_pass_encoder8000.end();
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2011, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder9011.popDebugGroup();
    const command_buffer900 = command_encoder900.finish();
    render_pass_encoder8000.end();
    render_pass_encoder2000.popDebugGroup();
    device80.queue.submit([]);
    render_pass_encoder8000.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder2020.end();
    device90.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder9000.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder9000.popDebugGroup()
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device110.queue.submit([]);
    const command_buffer202 = command_encoder202.finish();
    device40.queue.submit([]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    device110.queue.submit([command_buffer1100, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2016, 0);
    device110.queue.submit([]);
    device110.queue.submit([]);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    render_pass_encoder2000.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2019, 0);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group206);
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder9011.popDebugGroup();
    device90.queue.submit([command_buffer901, ]);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group207);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([]);
    device20.queue.submit([]);
    device10.queue.submit([]);
    const command_buffer200 = command_encoder200.finish();
    device110.queue.submit([command_buffer1100, ]);
    render_pass_encoder9011.popDebugGroup();
    device110.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder8000.popDebugGroup();
    device110.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2020.end();
    render_pass_encoder8000.end();
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device70.queue.submit([]);
    device110.queue.submit([command_buffer1100, ]);
    render_pass_encoder9011.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder9010.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    device90.queue.submit([]);
    compute_pass_encoder8000.popDebugGroup()
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    device90.queue.submit([command_buffer901, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2026, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer201, ]);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([]);
    render_pass_encoder8000.popDebugGroup();
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder9010.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2027, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder9011.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
}