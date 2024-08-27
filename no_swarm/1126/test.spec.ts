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
    const array0 = new Float32Array([0.75, 0.0, -0.75, 0.75, -0.25, -0.25, 1.0, -0.5, -1.0, 0.25, 0.75, -1.0, 0.25, -0.75, 1.0, -0.25, -0.5, 0.0, -0.75, -0.25, -1.0, -1.0, -0.75, 0.75, -1.0, -0.5, 0.5, 0.0, -1.0, 0.0, -0.5, 0.75, 0.5, -0.5, -1.0, 0.5, -0.5, -0.5, -0.25, 0.75, -1.0, 1.0, 0.0, 0.5, -1.0, -1.0, 0.0, 1.0, -1.0, -0.75, 0.0, 0.75, 0.75, -0.25, 0.0, -1.0, -1.0, -0.5, 0.25, 0.75, 0.5, 1.0, 0.25, -0.25, 0.5, 1.0, -0.5, 0.25, 0.25, 0.0, -0.25, 0.0, 0.25, 0.75, 0.75, -0.75, 1.0, 0.0, -0.5, -0.5, 0.25, 1.0, -0.75, 0.0, 0.75, -0.75, 0.25, 1.0, 1.0, -0.5, -0.5, 0.25, 0.5, 0.5, 0.25, -1.0, -1.0, 0.0, 1.0, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array1 = new Float32Array([-1.0, -0.5, 0.0, 0.75, 0.25, 0.75, 0.0, -1.0, -0.5, 0.0, 0.5, 0.25, 1.0, 1.0, 1.0, -0.75, 0.25, 1.0, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, 0.5, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, 0.5, 0.75, 0.25, -0.25, 0.5, -0.5, 0.5, 0.25, -0.5, 0.0, 0.5, -1.0, 0.5, 0.0, -0.25, 0.5, -0.75, 1.0, 0.25, -0.75, -0.25, 0.75, -0.5, -0.5, -0.5, 0.75, 0.0, 1.0, -0.25, 0.5, -0.25, 0.0, -0.75, -0.5, 1.0, -0.75, 0.0, 0.5, -0.5, 0.5, 0.75, 0.0, 0.0, 0.25, 0.25, 0.5, 0.5, -1.0, -0.25, 0.5, -0.5, 0.25, 0.5, -0.5, 0.5, 1.0, -0.25, 0.75, 0.5, 0.5, -0.25, -0.75, -0.75, 1.0, -0.25, -1.0, -0.75, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array2 = new Float32Array([-1.0, 1.0, 0.75, -0.5, 0.75, -0.25, -0.5, -0.5, -0.5, 1.0, -0.5, -0.75, 0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 0.0, -0.5, -0.25, 0.75, 0.75, 0.5, -0.75, -0.25, 0.5, -1.0, -0.5, -0.5, -0.25, 1.0, -0.25, 1.0, 0.25, -1.0, -1.0, 0.5, -0.75, 1.0, 0.0, -0.25, 0.0, 0.25, 0.0, -0.25, 0.0, -0.75, 0.75, -0.75, -0.5, 0.0, -1.0, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, -1.0, -0.25, -0.5, 1.0, 0.5, -0.75, -0.75, -0.5, 1.0, 0.25, 0.75, 0.5, -0.25, -0.5, -0.75, -0.75, 0.25, -0.75, 0.75, 0.5, -0.25, 0.25, -0.75, 1.0, 0.5, 0.5, 1.0, 1.0, 0.25, -0.25, 1.0, -0.25, 0.25, 1.0, 0.0, -0.5, -0.25, -0.25, 0.25, -0.25, -1.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    device20.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const command_buffer000 = command_encoder000.finish();
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.pushErrorScope("internal");
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder400.popDebugGroup();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder002.popDebugGroup();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const array3 = new Float32Array([0.75, -1.0, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, 0.5, -0.25, -0.75, -1.0, 1.0, 0.75, 0.25, 0.5, -0.5, 0.0, 1.0, -1.0, 0.75, 0.75, 0.75, 0.75, 0.0, 0.75, 0.75, 0.0, 0.5, 0.75, 1.0, 0.75, -1.0, 0.5, -0.75, -0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 0.75, 0.5, 0.5, 1.0, 0.75, -1.0, 0.5, -1.0, -0.75, 0.75, -0.5, -0.25, 1.0, -0.75, -0.5, 0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -1.0, -0.75, -0.25, -0.75, 0.0, -0.25, -0.5, -0.75, -0.5, 0.5, -1.0, 0.75, 1.0, -0.5, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, 0.25, 0.5, -1.0, 0.0, 0.75, -0.5, -0.5, 0.25, -0.5, 0.75, -0.25, 1.0, 0.25, -0.25, 0.75, 0.0, 0.25, 0.25, ]);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder000.popDebugGroup();
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_buffer200 = command_encoder200.finish();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    texture000.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    buffer401.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder400.popDebugGroup();
    const array4 = new Float32Array([0.5, -1.0, -0.5, 0.75, 0.25, 1.0, 0.75, 0.25, 0.0, -0.5, -0.5, -0.75, -0.5, -0.5, -0.5, -1.0, 0.25, 0.75, 1.0, 0.75, -0.25, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.25, -0.25, 1.0, 0.0, 1.0, -1.0, 1.0, 0.25, 0.25, 0.5, -0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.0, -0.5, 1.0, 0.0, 0.5, -0.75, 0.0, 0.25, -1.0, -0.5, 1.0, -0.5, 0.0, -0.25, -0.25, 0.25, 0.0, 0.5, -1.0, 0.5, 0.25, 0.75, 0.5, -0.75, 1.0, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, 0.25, 1.0, 0.25, -0.5, 0.0, -0.5, 0.0, -0.25, -0.25, -0.75, 0.75, -0.5, -0.5, -0.25, 0.25, 1.0, -0.5, -0.25, -0.5, 0.75, 0.25, -0.5, 0.0, -0.5, -1.0, -1.0, ]);
    buffer402.destroy()
    device30.queue.submit([]);
    query400.destroy()
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
    device30.destroy();
    
    
    device00.queue.submit([command_buffer000, ]);
    const command_buffer100 = command_encoder100.finish();
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    render_bundle_encoder402.setPipeline(render_pipeline400);
    render_bundle_encoder401.popDebugGroup();
    command_encoder402.insertDebugMarker("mymarker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    compute_pass_encoder4020.insertDebugMarker("marker")
    command_encoder401.insertDebugMarker("mymarker");
    
    texture002.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    command_encoder403.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder4020.insertDebugMarker("marker")
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    texture000.destroy();
    query401.destroy()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
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
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_bundle_encoder400.setVertexBuffer(0, buffer401);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer405,
        0
    )
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    command_encoder401.insertDebugMarker("mymarker");
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder4020.setPipeline(compute_pipeline402);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder400.drawIndirect(buffer406, 0);
    command_encoder403.pushDebugGroup("mygroupmarker")
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer403,
        0
    )
    query401.destroy()
    
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    command_encoder401.popDebugGroup()
    
    query400.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer406.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    buffer405.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder401.pushDebugGroup("mygroupmarker")
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    buffer000.destroy()
    
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture001.destroy();
    device00.pushErrorScope("internal");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder400.draw(3);
    render_bundle_encoder001.popDebugGroup();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_buffer402 = command_encoder402.finish();
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
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
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.pushErrorScope("internal");
    
    query000.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer408,
        0
    )
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    command_encoder401.popDebugGroup()
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    query401.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer401 = command_encoder401.finish();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder000.popDebugGroup();
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    compute_pass_encoder4030.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    query001.destroy()
    buffer408.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer402,
        0
    )
    
    
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder100.popDebugGroup();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder402.insertDebugMarker("marker");
    {
        await buffer404.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer404.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer404.unmap();
        console.log(new Float32Array(data));
    }
    
    texture003.destroy();
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    query001.destroy()
    const array5 = new Float32Array([-0.5, -0.5, 0.5, -0.75, 0.25, -0.25, 0.5, 0.5, 0.0, 0.75, 0.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.0, -0.25, -0.25, 1.0, -0.75, -0.5, 0.0, -0.5, -0.5, -1.0, 0.25, -0.25, 0.25, 0.5, -1.0, 0.0, 0.5, -0.5, -0.5, 1.0, 1.0, 1.0, -0.75, 1.0, 0.0, -0.75, 0.25, 0.0, -0.5, 0.5, -1.0, 0.25, 0.75, -0.5, -1.0, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, -0.25, 1.0, 0.5, -0.25, 0.0, -0.25, 0.5, -1.0, 0.75, -0.25, 0.5, -0.75, 0.25, -0.5, 0.75, 0.25, -0.25, -0.5, 0.75, 0.25, -0.5, -0.5, 0.25, 0.5, -0.25, 0.75, 0.0, -1.0, -0.5, 0.25, -1.0, -1.0, 0.0, 0.25, 0.25, 0.25, 0.25, -1.0, 0.75, 1.0, 0.0, -0.5, ]);
    query402.destroy()
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder401.setPipeline(render_pipeline401);
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    
    
    query004.destroy()
    compute_pass_encoder4030.setPipeline(compute_pipeline404);
    render_bundle_encoder401.popDebugGroup();
    buffer403.destroy()
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    device40.queue.writeBuffer(buffer407, 0, array3, 0, array3.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer406,
        0
    )
    
    
    query004.destroy()
    
    
    render_bundle_encoder003.setPipeline(render_pipeline001);
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer408,
        0
    )
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder400.setIndexBuffer(buffer400, "uint16");
    
    
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
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    device00.destroy();
    const array6 = new Float32Array([-0.75, -1.0, 0.25, 1.0, 1.0, 0.5, -1.0, 0.75, -0.5, 0.25, 0.0, -0.25, 0.5, 0.25, -0.25, 0.75, -0.5, -0.75, -0.25, 0.5, -0.5, 0.25, -0.25, 0.75, 0.0, -0.5, 0.75, 0.5, -1.0, 0.0, 0.5, 1.0, -1.0, 0.5, -0.75, 0.25, 0.75, -0.25, -0.5, -1.0, 1.0, 0.75, 0.0, 0.75, -0.25, -0.75, 0.25, 0.25, -1.0, -0.5, -0.75, -0.75, -0.25, -0.75, -0.25, -0.75, -0.5, 0.0, 0.0, 1.0, -0.75, 0.75, -0.25, -0.25, -0.5, 0.25, 0.5, 1.0, 0.25, -0.75, 0.5, 0.25, 1.0, 0.25, 0.0, 0.25, -0.5, 0.5, 0.75, -0.75, 0.25, 1.0, 0.5, 1.0, -0.5, -0.5, -1.0, 0.0, 0.5, 0.5, -0.25, 0.25, 0.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.25, -0.25, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4040.insertDebugMarker("marker")
    
    buffer407.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device60.pushErrorScope("out-of-memory");
    texture400.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    texture600.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer408,
        0
    )
    command_encoder403.resolveQuerySet(
        query402,
        0,
        32,
        buffer405,
        0
    )
    command_encoder600.insertDebugMarker("mymarker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.popDebugGroup();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder4040.setPipeline(compute_pipeline400);
    command_encoder400.insertDebugMarker("mymarker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    {
        await buffer409.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer409.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer409.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    command_encoder405.insertDebugMarker("mymarker");
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    command_encoder405.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
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
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group404);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    command_encoder400.clearBuffer(buffer405);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.setVertexBuffer(0, buffer4010);
    
    buffer600.destroy()
    
    buffer4012.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer405, 0, array6, 0, array6.length);
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
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
    device10.queue.submit([command_buffer100, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture101.destroy();
    
    const array7 = new Float32Array([0.0, -0.25, -0.25, 0.0, 0.0, 0.75, 0.0, 0.0, -0.25, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, -0.5, 0.75, 0.25, 0.25, 0.25, -0.75, -1.0, 1.0, -0.25, 0.5, 0.75, -0.5, 0.25, -0.25, -0.5, -0.25, 1.0, -0.5, -0.75, 0.75, -0.75, -0.25, 0.0, 0.0, -1.0, 1.0, -0.25, -0.5, 0.5, -1.0, 0.75, -0.25, 0.75, -0.25, 1.0, 0.25, 1.0, 0.75, -1.0, 0.75, -1.0, 0.0, -0.5, 0.0, 0.25, 0.75, -1.0, -1.0, -0.75, 1.0, -0.5, 0.75, -1.0, 0.0, 0.25, 1.0, -1.0, -0.5, 0.25, -1.0, 0.75, -0.75, -0.25, -0.5, -0.75, 0.25, 0.75, 0.75, 0.75, 0.0, -0.25, -1.0, -0.5, -0.5, -0.75, 0.5, 0.5, -0.25, 1.0, 0.0, 0.25, 1.0, -0.75, 0.5, 1.0, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    query600.destroy()
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.popDebugGroup();
    command_encoder405.pushDebugGroup("mygroupmarker")
    
    texture800.destroy();
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device80.destroy();
    render_bundle_encoder402.setIndexBuffer(buffer406, "uint16");
    const array8 = new Float32Array([-1.0, -0.25, 0.5, 0.25, 0.25, 1.0, 0.75, -0.25, -0.25, -1.0, -0.25, 0.5, -0.25, 0.25, -1.0, -0.5, 0.25, -0.75, -0.75, 0.25, 0.0, 0.75, -1.0, 0.75, 0.25, 0.25, 1.0, 0.5, 0.5, 0.0, -1.0, 1.0, 0.75, -1.0, 0.5, 0.25, 1.0, 0.25, 0.75, -0.25, -1.0, -0.5, 0.0, 0.75, -0.25, -0.25, -0.75, 1.0, -0.5, 0.75, -0.75, -0.75, 0.25, 0.5, -1.0, 0.5, 0.75, 1.0, 0.25, -0.5, 0.75, -0.5, -1.0, -0.75, -0.75, -0.75, -0.5, -0.75, -0.25, -0.25, 0.75, 1.0, 0.5, 1.0, 0.25, 0.5, -0.75, -0.25, 0.5, -0.5, 0.5, 0.75, -0.5, 1.0, -0.5, 0.5, -0.25, -0.5, 0.5, -0.25, 0.5, 0.25, 0.75, -0.25, -0.75, 0.5, 0.25, 1.0, 0.5, 1.0, ]);
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder405.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    
    
    query600.destroy()
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder405.copyBufferToTexture(
        {
            buffer: buffer407
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder4020.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer600 = command_encoder600.finish();
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
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group405);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group406);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4017, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4017, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.end();
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
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline402.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
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
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
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

    compute_pass_encoder4040.setBindGroup(0, bind_group408);
    device20.queue.submit([command_buffer200, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4022, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4022, 0);
    command_encoder405.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4020.end();
    command_encoder400.popDebugGroup()
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
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
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group409);
    const command_buffer405 = command_encoder405.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4025, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4025, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4010);
    compute_pass_encoder4020.end();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4040.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder4030.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder6000.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
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
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    command_encoder403.popDebugGroup()
    const command_buffer403 = command_encoder403.finish();
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
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
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4012);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4032, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4032, 0);
    device10.queue.submit([command_buffer100, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4030.end();
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
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
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline402.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4013);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device80.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
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
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer403, command_buffer405, ]);
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
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
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

    compute_pass_encoder4030.setBindGroup(0, bind_group4015);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4039, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4039, 0);
    compute_pass_encoder4040.end();
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder6000.popDebugGroup()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4041,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4016);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4000.end();
    compute_pass_encoder4040.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4042, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4042, 0);
    compute_pass_encoder4030.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device10.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4043, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4043, 0);
    device60.queue.submit([]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4045,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4017);
    compute_pass_encoder4020.end();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4030.popDebugGroup()
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
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4018);
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder0010.end();
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer405, ]);
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
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4019);
    compute_pass_encoder4030.popDebugGroup()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4050, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4050, 0);
    compute_pass_encoder4020.end();
    device40.queue.submit([command_buffer403, command_buffer404, command_buffer405, ]);
    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4052,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4020);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
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
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4040.setBindGroup(0, bind_group4021);
    compute_pass_encoder4020.end();
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
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
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4022);
    compute_pass_encoder0010.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer005, 0);
    compute_pass_encoder6000.popDebugGroup()
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
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4023);
    compute_pass_encoder4020.end();
    compute_pass_encoder4040.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4059, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4059, 0);
    device40.queue.submit([command_buffer404, ]);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4060, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4060, 0);
    device40.queue.submit([command_buffer402, ]);
    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4062,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4024);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4000.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4063, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4063, 0);
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer405, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4020.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer403, ]);
}