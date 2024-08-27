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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const array0 = new Float32Array([0.0, 0.25, -1.0, -0.75, -1.0, -0.5, -1.0, 0.75, -1.0, 0.5, 0.75, 0.25, 0.25, -0.25, 1.0, 1.0, 0.0, 0.25, 0.75, -0.25, 0.25, 1.0, -0.25, -0.75, 0.25, -0.75, 0.75, 0.75, 0.75, -0.25, 0.0, 0.75, 1.0, -0.5, 0.75, 0.75, 0.0, -1.0, 0.5, 1.0, -0.25, -0.25, 0.75, -0.5, -0.75, 1.0, 0.25, -0.25, -0.75, 0.5, 1.0, -0.75, 0.25, 0.75, 1.0, -0.5, 0.25, -0.75, -1.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.5, 0.75, 0.25, 0.5, -0.5, -1.0, -0.75, 0.75, 0.5, -1.0, -0.5, -0.5, 0.5, -0.25, -0.75, 0.25, 0.75, -1.0, -0.75, -0.75, 0.0, -1.0, -0.5, -0.75, -0.5, 1.0, -0.5, 0.25, 1.0, -1.0, -1.0, 0.5, 0.75, -0.75, -1.0, 1.0, ]);
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    query000.destroy()
    device30.destroy();
    
    
    
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.popDebugGroup();
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array1 = new Float32Array([-1.0, 0.0, 0.5, -1.0, 0.25, -0.25, -1.0, -0.75, 0.25, 0.0, -1.0, -0.5, -0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.25, 0.75, -0.5, -0.75, -1.0, -0.75, 0.25, 1.0, 0.5, 1.0, -0.75, 1.0, -0.25, -1.0, -1.0, 0.75, -0.5, -0.75, -1.0, 0.5, 0.75, -0.75, -0.5, 0.75, 0.25, -1.0, 0.25, -0.25, -0.5, 0.5, -0.75, -0.25, 0.0, 1.0, -0.75, 0.0, 0.25, -1.0, 0.25, 0.0, 0.25, -0.5, 1.0, 1.0, -1.0, 0.75, 0.25, 0.5, -1.0, 0.0, 0.75, 0.0, 0.25, 0.25, 1.0, -0.5, -1.0, -0.25, 0.25, -0.5, -0.75, 0.75, -1.0, -1.0, 0.25, -1.0, -1.0, 0.5, 0.5, -1.0, 0.0, 0.25, -0.75, 0.0, 0.25, 0.0, 1.0, 0.5, -0.5, -1.0, -1.0, -1.0, ]);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer400.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.0, -0.5, 0.0, -0.25, -0.25, 0.25, -0.25, 1.0, -0.75, 1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.0, -0.25, 0.5, -0.5, 0.0, 0.25, 1.0, 1.0, -0.5, 0.75, -0.25, -0.75, -0.5, 0.25, -0.5, -0.75, 0.0, 1.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.75, 0.75, -0.5, 0.75, -1.0, -0.5, 0.0, -0.5, 0.0, -0.25, 0.75, 1.0, 1.0, 0.0, 0.75, -0.5, 0.0, 1.0, -0.5, -0.75, -1.0, 1.0, 0.25, 1.0, 1.0, -0.75, -0.5, 0.75, 0.75, 0.5, -0.5, -0.75, 1.0, 0.75, 1.0, 0.5, 0.5, 0.75, -0.5, 0.75, -1.0, -0.5, -0.25, -1.0, 0.5, 1.0, -0.75, -0.25, 0.75, -0.25, 0.75, -1.0, -0.25, 0.25, 0.5, -1.0, 0.75, -0.75, -0.75, -0.75, -0.5, -0.75, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device60.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    device30.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.pushErrorScope("internal");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.popDebugGroup();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    command_encoder400.insertDebugMarker("mymarker");
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    
    
    const array3 = new Float32Array([-0.75, 0.25, 1.0, 0.5, 0.0, -1.0, -0.75, -0.75, 0.5, -0.25, 0.0, 0.5, -0.25, 0.0, -0.75, -0.5, 0.75, -0.5, -0.25, 0.75, -1.0, -1.0, 0.25, -0.75, -0.5, 0.75, -0.75, -0.5, -0.75, 0.0, -1.0, -0.25, 0.5, 1.0, 0.5, -0.5, 0.5, -0.25, -0.75, -0.25, -0.75, 1.0, 0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 0.5, 0.0, -0.5, -0.5, 1.0, -0.5, 1.0, 0.25, -0.5, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, -0.5, 0.0, -0.25, 0.0, -0.75, 0.0, 0.0, -1.0, -0.25, 0.0, -1.0, -0.25, 1.0, 0.75, 1.0, 0.75, -0.5, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.5, 0.5, -0.25, 1.0, -0.5, 0.0, -0.5, -0.75, 0.25, -0.5, -0.25, -0.75, 0.25, 0.5, ]);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
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
    
    
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer400 = command_encoder400.finish();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query400.destroy()
    query400.destroy()
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    device80.pushErrorScope("validation");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    render_bundle_encoder801.setPipeline(render_pipeline800);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer401.destroy()
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
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
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
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

    render_bundle_encoder801.setBindGroup(0, bind_group800);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query801.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    buffer801.destroy()
    
    render_bundle_encoder400.popDebugGroup();
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    device70.destroy();
    command_encoder802.insertDebugMarker("mymarker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    compute_pass_encoder8010.popDebugGroup()
    render_bundle_encoder500.popDebugGroup();
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_buffer802 = command_encoder802.finish();
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    texture001.destroy();
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    render_bundle_encoder800.setPipeline(render_pipeline801);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout801]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    query401.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    query800.destroy()
    
    const array4 = new Float32Array([1.0, -0.5, 0.75, -0.25, -0.75, 1.0, 0.5, -0.5, 0.0, -1.0, 0.25, -0.5, 0.75, 0.75, 0.5, 0.75, -1.0, 0.75, 0.0, -0.75, -1.0, 0.5, 0.0, 0.75, 1.0, -0.25, 0.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.0, 0.75, 1.0, -0.75, 0.5, 0.0, 1.0, 0.0, -0.25, 0.5, -0.25, 0.5, 0.0, 0.25, -0.75, 1.0, -0.25, 0.5, 0.5, 0.0, -0.25, 1.0, 1.0, 0.0, 0.75, -0.5, -0.25, -0.25, -1.0, -0.5, 0.25, -0.25, 0.5, 0.75, -0.25, -1.0, -0.75, 0.0, 0.25, 0.75, 0.5, 0.25, -0.25, 0.5, 0.25, 0.25, -0.25, -0.25, 1.0, 1.0, 0.5, 0.5, -1.0, 0.5, -0.25, -1.0, 1.0, 1.0, -1.0, -0.25, -0.75, -0.75, 1.0, 0.5, 0.5, -0.25, 1.0, -0.5, ]);
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query801.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer405.destroy()
    device50.pushErrorScope("internal");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    render_bundle_encoder500.popDebugGroup();
    buffer500.destroy()
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    compute_pass_encoder8010.insertDebugMarker("marker")
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder802.popDebugGroup();
    const command_buffer403 = command_encoder403.finish();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder401.popDebugGroup();
    
    render_bundle_encoder802.setPipeline(render_pipeline800);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array5 = new Float32Array([0.75, 0.5, -1.0, -0.25, -0.25, 0.25, 0.75, 0.25, -0.25, -0.75, 0.0, 0.5, 0.0, -0.5, 1.0, -1.0, -0.75, 1.0, 0.25, -0.75, 0.0, 1.0, -1.0, 1.0, 0.75, 0.75, -0.25, 1.0, 0.25, -1.0, 1.0, -0.25, 0.0, 0.25, -0.5, -0.75, -0.75, 0.0, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 0.5, -0.5, -0.5, 1.0, 0.75, -0.75, 1.0, 0.0, 0.0, -1.0, 0.75, -0.75, -0.75, 0.0, 1.0, -0.75, -0.25, -0.25, -0.25, 0.75, 0.0, -0.25, -1.0, -0.5, 0.0, -0.5, 1.0, 0.25, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, -1.0, 0.75, 0.5, 0.75, -0.5, 0.5, 0.0, 1.0, 0.5, -0.5, -1.0, -0.5, -1.0, -0.25, -0.5, -0.5, -1.0, -0.75, -0.25, ]);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query801.destroy()
    compute_pass_encoder4000.popDebugGroup()
    query401.destroy()
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder8000.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    compute_pass_encoder4011.setPipeline(compute_pipeline400);
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
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder803 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder803",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    compute_pass_encoder8010.insertDebugMarker("marker")
    query801.destroy()
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
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
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

    compute_pass_encoder4011.setBindGroup(0, bind_group401);
    const render_pass_encoder8000 = command_encoder800.beginRenderPass({
        label: "render_pass_encoder8000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder8000.setPipeline(render_pipeline802);
    compute_pass_encoder4011.insertDebugMarker("marker")
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder8000.setScissorRect(0, 0, texture801.width / 2, texture801.height / 2);
    render_bundle_encoder801.insertDebugMarker("marker");
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    query800.destroy()
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer409.destroy()
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
    
    device40.queue.submit([command_buffer403, ]);
    device40.queue.writeBuffer(buffer407, 0, array2, 0, array2.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder8010.popDebugGroup()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline404);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer407,
        0
    )
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer802,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer803,
                },
            },
        ],
    });

    render_bundle_encoder802.setBindGroup(0, bind_group801);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder8000.setStencilReference(1);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture200.destroy();
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer408, 0, array2, 0, array2.length);
    render_bundle_encoder801.setVertexBuffer(0, buffer802);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder500.popDebugGroup();
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    compute_pass_encoder4011.dispatchWorkgroups(100);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder801.insertDebugMarker("marker");
    render_pass_encoder8000.setViewport(0, 0, texture801.width / 2, texture801.height / 2, 0, 1);
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder401.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const render_pass_encoder8030 = command_encoder803.beginRenderPass({
        label: "render_pass_encoder8030",
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
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    render_pass_encoder8000.setScissorRect(0, 0, texture801.width / 2, texture801.height / 2);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder8000.pushDebugGroup("group_marker");
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder8030.pushDebugGroup("group_marker");
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: render_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer804,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer805,
                },
            },
        ],
    });

    render_pass_encoder8000.setBindGroup(0, bind_group802);
    command_encoder402.copyBufferToBuffer(
        buffer408,
        0,
        buffer408,
        0,
        400
    );
    const command_buffer803 = command_encoder803.finish();
    render_bundle_encoder402.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    query400.destroy()
    texture800.destroy();
    render_bundle_encoder800.insertDebugMarker("marker");
    query802.destroy()
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder802.setVertexBuffer(0, buffer801);
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const command_buffer502 = command_encoder502.finish();
    buffer404.destroy()
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
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
    render_bundle_encoder802.insertDebugMarker("marker");
    render_bundle_encoder801.draw(3);
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query201.destroy()
    render_pass_encoder8030.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer802.destroy()
    
    render_bundle_encoder802.insertDebugMarker("marker");
    render_bundle_encoder803.setPipeline(render_pipeline804);
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.dispatchWorkgroups(100);
    
    query500.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    const command_buffer503 = command_encoder503.finish();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query801.destroy()
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
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    device80.queue.writeBuffer(buffer805, 0, array5, 0, array5.length);
    device20.pushErrorScope("internal");
    
    render_bundle_encoder800.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    buffer804.destroy()
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_pass_encoder8000.insertDebugMarker("marker");
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8000.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    command_encoder501.popDebugGroup()
    
    command_encoder501.pushDebugGroup("mygroupmarker")
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
    render_pass_encoder8030.setViewport(0, 0, texture800.width / 2, texture800.height / 2, 0, 1);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder8000.setVertexBuffer(0, buffer802);
    
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    compute_pass_encoder5000.popDebugGroup()
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    buffer805.destroy()
    render_pass_encoder8030.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout805,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder8000.popDebugGroup();
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder8000.setPipeline(compute_pipeline801);
    render_pass_encoder8030.setPipeline(render_pipeline801);
    compute_pass_encoder4011.end();
    device10.queue.submit([command_buffer100, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder8010.setPipeline(compute_pipeline801);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder501.popDebugGroup()
    device80.queue.submit([command_buffer803, ]);
    compute_pass_encoder4020.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder8000.draw(3);
    device50.queue.submit([command_buffer503, ]);
    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group803 = device80.createBindGroup({
        label: "bind_group803",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer807,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer808,
                },
            },
        ],
    });

    render_pass_encoder8030.setBindGroup(0, bind_group803);
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder8010.popDebugGroup()
    render_pass_encoder8030.popDebugGroup();
    render_pass_encoder8000.end();
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    compute_pass_encoder4000.end();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    compute_pass_encoder4010.end();
    render_pass_encoder8030.setVertexBuffer(0, buffer802);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer504, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer504, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer505, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4015, 0);
    render_pass_encoder8030.draw(3);
    compute_pass_encoder5000.end();
    const buffer809 = device80.createBuffer({
        label: "buffer809",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8010 = device80.createBuffer({
        label: "buffer8010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group804 = device80.createBindGroup({
        label: "bind_group804",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer809,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8010,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group804);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer500 = command_encoder500.finish();
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
    compute_pass_encoder4020.end();
    const command_buffer402 = command_encoder402.finish();
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8011 = device80.createBuffer({
        label: "buffer8011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8011, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8011, 0);
    render_pass_encoder8030.end();
    render_pass_encoder8000.setIndexBuffer(buffer806, "uint16");
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder8010.end();
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder8000.drawIndexed(3);
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    command_encoder401.popDebugGroup()
    const buffer8012 = device80.createBuffer({
        label: "buffer8012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8013 = device80.createBuffer({
        label: "buffer8013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group805 = device80.createBindGroup({
        label: "bind_group805",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8013,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group805);
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
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group404);
    compute_pass_encoder5000.end();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer402, ]);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder8010.popDebugGroup()
    render_pass_encoder8000.popDebugGroup();
    const buffer8014 = device80.createBuffer({
        label: "buffer8014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8015 = device80.createBuffer({
        label: "buffer8015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group806 = device80.createBindGroup({
        label: "bind_group806",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8015,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group806);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder8000.drawIndexed(3);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8000.dispatchWorkgroups(100);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer506, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer506, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
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
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group405);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4021, 0);
    compute_pass_encoder4010.end();
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group406);
    compute_pass_encoder8010.dispatchWorkgroups(100);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4024, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4024, 0);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    render_pass_encoder8030.setIndexBuffer(buffer803, "uint16");
    compute_pass_encoder8000.end();
    render_pass_encoder8030.end();
    compute_pass_encoder5000.end();
    compute_pass_encoder8010.end();
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder8030.drawIndexedIndirect(buffer8011, 0);
    command_encoder800.popDebugGroup()
    compute_pass_encoder8000.end();
    const command_buffer800 = command_encoder800.finish();
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder8030.popDebugGroup();
    compute_pass_encoder4011.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder8000.drawIndirect(buffer809, 0);
    device80.queue.submit([command_buffer800, command_buffer801, command_buffer803, ]);
    device20.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
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
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group407);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer507, 0);
    compute_pass_encoder8010.end();
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder8000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder8000.end();
    render_pass_encoder8000.draw(3);
    render_pass_encoder8000.setIndexBuffer(buffer808, "uint16");
    compute_pass_encoder4011.end();
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer401, ]);
    const buffer8016 = device80.createBuffer({
        label: "buffer8016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8017 = device80.createBuffer({
        label: "buffer8017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group807 = device80.createBindGroup({
        label: "bind_group807",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8017,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group807);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4027, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4027, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder8030.drawIndirect(buffer8015, 0);
    const buffer8018 = device80.createBuffer({
        label: "buffer8018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8019 = device80.createBuffer({
        label: "buffer8019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group808 = device80.createBindGroup({
        label: "bind_group808",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8019,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group808);
    device40.queue.submit([]);
    render_pass_encoder8030.end();
    device40.queue.submit([]);
    const buffer8020 = device80.createBuffer({
        label: "buffer8020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8021 = device80.createBuffer({
        label: "buffer8021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group809 = device80.createBindGroup({
        label: "bind_group809",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8021,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group809);
    const buffer8022 = device80.createBuffer({
        label: "buffer8022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8023 = device80.createBuffer({
        label: "buffer8023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8010 = device80.createBindGroup({
        label: "bind_group8010",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8023,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8010);
    device80.queue.submit([]);
    device80.queue.submit([]);
    compute_pass_encoder8010.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device30.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    device20.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder8000.popDebugGroup();
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    compute_pass_encoder4020.popDebugGroup()
    device80.queue.submit([command_buffer803, ]);
    render_pass_encoder8030.setIndexBuffer(buffer8010, "uint16");
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4028, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4028, 0);
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group408);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4010.end();
    compute_pass_encoder5000.end();
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group409);
    compute_pass_encoder4011.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder8000.setIndexBuffer(buffer8013, "uint16");
    device80.queue.submit([]);
    render_pass_encoder8030.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4034,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4010);
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    device40.queue.submit([command_buffer402, ]);
    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4036,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    device40.queue.submit([]);
    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4038,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4012);
    render_pass_encoder8030.popDebugGroup();
    compute_pass_encoder8010.popDebugGroup()
    device50.queue.submit([command_buffer503, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5012, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5012, 0);
    compute_pass_encoder8000.end();
    compute_pass_encoder4011.end();
    render_pass_encoder8030.setIndexBuffer(buffer807, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder8030.setIndexBuffer(buffer800, "uint16");
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder8000.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4011.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4039, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4039, 0);
    const buffer8024 = device80.createBuffer({
        label: "buffer8024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8025 = device80.createBuffer({
        label: "buffer8025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8011 = device80.createBindGroup({
        label: "bind_group8011",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8025,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group8011);
    compute_pass_encoder4020.end();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5013, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5013, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder8030.setIndexBuffer(buffer8019, "uint16");
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4011.dispatchWorkgroups(100);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5014, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5014, 0);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device80.queue.submit([command_buffer803, ]);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5015, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5015, 0);
    device80.queue.submit([command_buffer801, ]);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer403, ]);
    device40.queue.submit([command_buffer402, ]);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4040, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4040, 0);
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8026 = device80.createBuffer({
        label: "buffer8026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8026, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8026, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4041, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4041, 0);
    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4043,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4013);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8027 = device80.createBuffer({
        label: "buffer8027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8027, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8027, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder4020.popDebugGroup()
    const buffer8028 = device80.createBuffer({
        label: "buffer8028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8029 = device80.createBuffer({
        label: "buffer8029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8012 = device80.createBindGroup({
        label: "bind_group8012",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8029,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group8012);
    compute_pass_encoder4000.end();
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder4011.popDebugGroup()
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4044, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4044, 0);
    device20.queue.submit([]);
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder8030.drawIndirect(buffer8011, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4045, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4045, 0);
    render_pass_encoder8000.drawIndexedIndirect(buffer8026, 0);
    device20.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder8000.draw(3);
    render_pass_encoder8030.setIndexBuffer(buffer8025, "uint16");
    compute_pass_encoder8000.end();
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder8030.drawIndirect(buffer8016, 0);
    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4047,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4011.end();
    const buffer8030 = device80.createBuffer({
        label: "buffer8030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8031 = device80.createBuffer({
        label: "buffer8031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8013 = device80.createBindGroup({
        label: "bind_group8013",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8031,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8013);
    const buffer8032 = device80.createBuffer({
        label: "buffer8032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8033 = device80.createBuffer({
        label: "buffer8033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8014 = device80.createBindGroup({
        label: "bind_group8014",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8033,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8014);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder8000.end();
    render_pass_encoder8000.drawIndexed(3);
    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4049,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4015);
    compute_pass_encoder4000.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder8000.popDebugGroup();
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8034 = device80.createBuffer({
        label: "buffer8034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8034, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8034, 0);
    compute_pass_encoder5000.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder8010.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder4011.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder8030.end();
    compute_pass_encoder8000.end();
    device20.queue.submit([]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    render_pass_encoder8000.end();
    render_pass_encoder8030.drawIndexedIndirect(buffer8023, 0);
    render_pass_encoder8030.popDebugGroup();
    device50.queue.submit([]);
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4020.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4050, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4050, 0);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder4011.end();
    render_pass_encoder8000.end();
    const buffer8035 = device80.createBuffer({
        label: "buffer8035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8036 = device80.createBuffer({
        label: "buffer8036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8015 = device80.createBindGroup({
        label: "bind_group8015",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8036,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8015);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5016, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5016, 0);
    device50.queue.submit([command_buffer501, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4051, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4051, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder8030.setIndexBuffer(buffer8025, "uint16");
    device40.queue.submit([command_buffer402, ]);
    device80.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder8000.setIndexBuffer(buffer8022, "uint16");
    device50.queue.submit([command_buffer500, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4052, 0);
    compute_pass_encoder8010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer502, ]);
    device80.queue.submit([command_buffer800, command_buffer802, ]);
    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4054,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4016);
    compute_pass_encoder8010.popDebugGroup()
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4017);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device20.queue.submit([]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder8000.drawIndirect(buffer8029, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder5000.end();
    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4058,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4018);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4059, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4059, 0);
    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4061,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4019);
    device40.queue.submit([]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4062, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4062, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4063, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4063, 0);
    render_pass_encoder8030.drawIndexed(3);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer803, ]);
    render_pass_encoder8000.drawIndexedIndirect(buffer8010, 0);
    device40.queue.submit([command_buffer402, ]);
    const buffer4064 = device40.createBuffer({
        label: "buffer4064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4065,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4020);
    device70.queue.submit([]);
    compute_pass_encoder4010.end();
    const buffer4066 = device40.createBuffer({
        label: "buffer4066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4067 = device40.createBuffer({
        label: "buffer4067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4067,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4021);
    const buffer4068 = device40.createBuffer({
        label: "buffer4068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4069,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4022);
    device20.queue.submit([]);
    compute_pass_encoder8010.popDebugGroup()
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4070, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4070, 0);
    const buffer8037 = device80.createBuffer({
        label: "buffer8037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8038 = device80.createBuffer({
        label: "buffer8038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8016 = device80.createBindGroup({
        label: "bind_group8016",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8038,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group8016);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder8000.drawIndexedIndirect(buffer8025, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    device80.queue.submit([command_buffer801, ]);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8039 = device80.createBuffer({
        label: "buffer8039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8039, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8039, 0);
    const buffer4071 = device40.createBuffer({
        label: "buffer4071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4072 = device40.createBuffer({
        label: "buffer4072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4072,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4023);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder8000.drawIndexedIndirect(buffer8030, 0);
    const buffer4073 = device40.createBuffer({
        label: "buffer4073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4074 = device40.createBuffer({
        label: "buffer4074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4074,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4024);
    compute_pass_encoder4011.popDebugGroup()
    const buffer4075 = device40.createBuffer({
        label: "buffer4075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4076 = device40.createBuffer({
        label: "buffer4076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4076,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4025);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([]);
    render_pass_encoder8030.drawIndirect(buffer8023, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder8030.end();
    render_pass_encoder8030.drawIndexedIndirect(buffer8029, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder8030.drawIndexedIndirect(buffer8011, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder8030.end();
    device40.queue.submit([command_buffer403, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder8030.drawIndirect(buffer8032, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const buffer4077 = device40.createBuffer({
        label: "buffer4077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4078 = device40.createBuffer({
        label: "buffer4078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4026 = device40.createBindGroup({
        label: "bind_group4026",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4078,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4026);
    const buffer8040 = device80.createBuffer({
        label: "buffer8040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8041 = device80.createBuffer({
        label: "buffer8041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8017 = device80.createBindGroup({
        label: "bind_group8017",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8041,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8017);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder8030.popDebugGroup();
    device20.queue.submit([]);
    const buffer4079 = device40.createBuffer({
        label: "buffer4079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4080 = device40.createBuffer({
        label: "buffer4080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4027 = device40.createBindGroup({
        label: "bind_group4027",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4080,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4027);
    compute_pass_encoder8000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder8000.setIndexBuffer(buffer8019, "uint16");
    render_pass_encoder8030.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder8000.end();
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder8010.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder8000.end();
    compute_pass_encoder4000.end();
    render_pass_encoder8030.popDebugGroup();
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder8000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8042 = device80.createBuffer({
        label: "buffer8042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8042, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8042, 0);
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8043 = device80.createBuffer({
        label: "buffer8043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8043, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8043, 0);
    render_pass_encoder8030.drawIndexedIndirect(buffer8042, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5017, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5017, 0);
    device40.queue.submit([command_buffer402, ]);
    device80.queue.submit([]);
    render_pass_encoder8000.drawIndexedIndirect(buffer8026, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4081 = device40.createBuffer({
        label: "buffer4081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4081, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4081, 0);
    render_pass_encoder8000.popDebugGroup();
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8044 = device80.createBuffer({
        label: "buffer8044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8044, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8044, 0);
    render_pass_encoder8000.end();
    device40.queue.submit([]);
    render_pass_encoder8000.drawIndirect(buffer8029, 0);
    render_pass_encoder8030.drawIndirect(buffer8039, 0);
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8045 = device80.createBuffer({
        label: "buffer8045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8045, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8045, 0);
    device40.queue.submit([command_buffer400, ]);
    const buffer4082 = device40.createBuffer({
        label: "buffer4082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4083 = device40.createBuffer({
        label: "buffer4083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4028 = device40.createBindGroup({
        label: "bind_group4028",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4083,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4028);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4084 = device40.createBuffer({
        label: "buffer4084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4084, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4084, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4085 = device40.createBuffer({
        label: "buffer4085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4085, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4085, 0);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4011.end();
    compute_pass_encoder8000.end();
    compute_pass_encoder8010.popDebugGroup()
    compute_pass_encoder8000.end();
    compute_pass_encoder4010.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder8030.drawIndirect(buffer8027, 0);
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([command_buffer803, ]);
    device40.queue.submit([]);
    compute_pass_encoder8010.end();
    device50.queue.submit([command_buffer503, ]);
    const buffer4086 = device40.createBuffer({
        label: "buffer4086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4087 = device40.createBuffer({
        label: "buffer4087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4029 = device40.createBindGroup({
        label: "bind_group4029",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4087,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4029);
    compute_pass_encoder5000.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder8030.end();
    render_pass_encoder8030.drawIndirect(buffer8034, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8046 = device80.createBuffer({
        label: "buffer8046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8046, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8046, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder8000.drawIndexedIndirect(buffer8034, 0);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([command_buffer402, ]);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    device40.queue.submit([command_buffer402, ]);
    const buffer4088 = device40.createBuffer({
        label: "buffer4088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4089 = device40.createBuffer({
        label: "buffer4089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4030 = device40.createBindGroup({
        label: "bind_group4030",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4089,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4030);
    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5019,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group503);
    render_pass_encoder8030.popDebugGroup();
    const buffer4090 = device40.createBuffer({
        label: "buffer4090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4091 = device40.createBuffer({
        label: "buffer4091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4031 = device40.createBindGroup({
        label: "bind_group4031",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4091,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4031);
    render_pass_encoder8000.drawIndirect(buffer8044, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5020, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5020, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const buffer4092 = device40.createBuffer({
        label: "buffer4092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4093 = device40.createBuffer({
        label: "buffer4093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4032 = device40.createBindGroup({
        label: "bind_group4032",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4093,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4032);
    device40.queue.submit([]);
    render_pass_encoder8000.drawIndirect(buffer8044, 0);
    render_pass_encoder8000.draw(3);
    const buffer4094 = device40.createBuffer({
        label: "buffer4094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4095 = device40.createBuffer({
        label: "buffer4095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4033 = device40.createBindGroup({
        label: "bind_group4033",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4095,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4033);
    compute_pass_encoder4020.end();
    device40.queue.submit([]);
    compute_pass_encoder8000.end();
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4096 = device40.createBuffer({
        label: "buffer4096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4096, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4096, 0);
    compute_pass_encoder4000.end();
    const buffer4097 = device40.createBuffer({
        label: "buffer4097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4098 = device40.createBuffer({
        label: "buffer4098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4034 = device40.createBindGroup({
        label: "bind_group4034",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4098,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4034);
    render_pass_encoder8030.popDebugGroup();
    compute_pass_encoder4011.end();
    device80.queue.submit([]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder8000.drawIndirect(buffer8038, 0);
    compute_pass_encoder8010.end();
    device80.queue.submit([command_buffer803, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder8000.end();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder8000.end();
    render_pass_encoder8000.drawIndexedIndirect(buffer8039, 0);
    const buffer4099 = device40.createBuffer({
        label: "buffer4099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40100 = device40.createBuffer({
        label: "buffer40100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4035 = device40.createBindGroup({
        label: "bind_group4035",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40100,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4035);
    device20.queue.submit([]);
    render_pass_encoder8000.drawIndexedIndirect(buffer8027, 0);
    device50.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder8030.drawIndirect(buffer8027, 0);
    compute_pass_encoder5000.end();
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    device80.queue.submit([command_buffer803, ]);
    compute_pass_encoder4011.end();
    compute_pass_encoder4011.end();
    device40.queue.submit([command_buffer402, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40101 = device40.createBuffer({
        label: "buffer40101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40101, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40101, 0);
    const buffer8047 = device80.createBuffer({
        label: "buffer8047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8048 = device80.createBuffer({
        label: "buffer8048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8018 = device80.createBindGroup({
        label: "bind_group8018",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8048,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group8018);
    render_pass_encoder8000.popDebugGroup();
    compute_pass_encoder8000.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40102 = device40.createBuffer({
        label: "buffer40102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40102, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40102, 0);
    compute_pass_encoder8000.end();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder8000.dispatchWorkgroups(100);
    compute_pass_encoder8010.end();
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder8030.drawIndirect(buffer8026, 0);
    compute_pass_encoder4000.popDebugGroup()
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8049 = device80.createBuffer({
        label: "buffer8049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8049, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8049, 0);
    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5022,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group504);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder8030.drawIndexedIndirect(buffer8026, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer40103 = device40.createBuffer({
        label: "buffer40103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40103, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer40103, 0);
    render_pass_encoder8000.drawIndirect(buffer8039, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5023, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5023, 0);
    compute_pass_encoder4010.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder8000.end();
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    compute_pass_encoder8010.dispatchWorkgroups(100);
    compute_pass_encoder4011.popDebugGroup()
    device80.queue.submit([command_buffer803, ]);
    const buffer8050 = device80.createBuffer({
        label: "buffer8050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8051 = device80.createBuffer({
        label: "buffer8051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8019 = device80.createBindGroup({
        label: "bind_group8019",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8051,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group8019);
    render_pass_encoder8030.drawIndirect(buffer8016, 0);
    render_pass_encoder8030.drawIndexedIndirect(buffer8034, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40104 = device40.createBuffer({
        label: "buffer40104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40104, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40104, 0);
    render_pass_encoder8000.drawIndexed(3);
    const buffer8052 = device80.createBuffer({
        label: "buffer8052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8053 = device80.createBuffer({
        label: "buffer8053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8020 = device80.createBindGroup({
        label: "bind_group8020",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8053,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8020);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder5000.end();
    render_pass_encoder8030.popDebugGroup();
    render_pass_encoder8030.end();
    const buffer8054 = device80.createBuffer({
        label: "buffer8054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8055 = device80.createBuffer({
        label: "buffer8055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8021 = device80.createBindGroup({
        label: "bind_group8021",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8055,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8021);
    render_pass_encoder8030.popDebugGroup();
    render_pass_encoder8030.drawIndirect(buffer8034, 0);
    compute_pass_encoder4010.end();
    compute_pass_encoder4011.end();
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder8030.end();
    device40.queue.submit([command_buffer402, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5024, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5024, 0);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([]);
    render_pass_encoder8000.end();
    device80.queue.submit([command_buffer802, command_buffer803, ]);
    compute_pass_encoder8000.popDebugGroup()
    const buffer8056 = device80.createBuffer({
        label: "buffer8056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8057 = device80.createBuffer({
        label: "buffer8057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8022 = device80.createBindGroup({
        label: "bind_group8022",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8057,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8022);
    render_pass_encoder8000.drawIndirect(buffer8031, 0);
    device40.queue.submit([]);
    render_pass_encoder8030.drawIndirect(buffer803, 0);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4010.end();
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    render_pass_encoder8000.end();
    device20.queue.submit([]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40105 = device40.createBuffer({
        label: "buffer40105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40105, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40105, 0);
    compute_pass_encoder8010.dispatchWorkgroups(100);
    compute_pass_encoder8010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer502, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40106 = device40.createBuffer({
        label: "buffer40106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40106, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40106, 0);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder4020.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder4020.end();
    render_pass_encoder8030.drawIndirect(buffer8011, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder8030.drawIndexed(3);
    compute_pass_encoder8010.end();
    const buffer40107 = device40.createBuffer({
        label: "buffer40107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40108 = device40.createBuffer({
        label: "buffer40108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4036 = device40.createBindGroup({
        label: "bind_group4036",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40108,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4036);
    render_pass_encoder8030.drawIndirect(buffer8037, 0);
    compute_pass_encoder8010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder8000.popDebugGroup();
    compute_pass_encoder4020.end();
    render_pass_encoder8000.drawIndirect(buffer8049, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40109 = device40.createBuffer({
        label: "buffer40109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40109, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40109, 0);
    render_pass_encoder8030.drawIndirect(buffer8045, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40110 = device40.createBuffer({
        label: "buffer40110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40110, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40110, 0);
    const buffer40111 = device40.createBuffer({
        label: "buffer40111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40112 = device40.createBuffer({
        label: "buffer40112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4037 = device40.createBindGroup({
        label: "bind_group4037",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40112,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4037);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer40113 = device40.createBuffer({
        label: "buffer40113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40113, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer40113, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder8000.dispatchWorkgroups(100);
    const buffer40114 = device40.createBuffer({
        label: "buffer40114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer40115 = device40.createBuffer({
        label: "buffer40115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4038 = device40.createBindGroup({
        label: "bind_group4038",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer40114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer40115,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4038);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder8030.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder8030.drawIndirect(buffer807, 0);
    render_pass_encoder8030.end();
    const buffer8058 = device80.createBuffer({
        label: "buffer8058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8059 = device80.createBuffer({
        label: "buffer8059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group8023 = device80.createBindGroup({
        label: "bind_group8023",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8059,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group8023);
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5025, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5025, 0);
    render_pass_encoder8000.drawIndexedIndirect(buffer8018, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer40116 = device40.createBuffer({
        label: "buffer40116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer40116, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer40116, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
}