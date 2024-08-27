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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    const array0 = new Float32Array([-1.0, 0.75, 1.0, 1.0, -0.5, -0.75, 0.0, 0.75, -0.5, 0.75, -0.75, 0.5, -0.5, -0.25, -0.75, 0.75, 0.0, -1.0, 0.5, -0.25, 0.5, -0.75, -0.5, 0.75, 1.0, 0.5, 0.5, 0.5, -0.5, -0.75, 0.0, 0.5, -0.25, -0.5, 0.0, 0.5, 0.0, 1.0, 0.75, -1.0, 0.75, -0.75, 0.75, 0.25, 0.75, 0.75, -0.5, 0.75, 1.0, 0.0, 1.0, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.0, 0.75, 0.5, 0.5, 0.25, 0.75, -1.0, 1.0, 0.0, 0.75, -1.0, -0.5, 0.75, 0.5, -1.0, -1.0, -0.5, -0.75, 0.0, -0.5, 0.0, -0.5, 1.0, 0.75, 0.25, 0.75, -0.25, 0.75, 0.5, 0.5, -0.25, 0.5, -0.25, -0.25, -0.25, 0.75, -0.25, 0.5, -0.5, -0.5, 0.0, 0.5, -1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_buffer000 = command_encoder000.finish();
    
    device10.pushErrorScope("out-of-memory");
    
    texture100.destroy();
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    texture100.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const command_buffer102 = command_encoder102.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_buffer100 = command_encoder100.finish();
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
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    texture001.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
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
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device10.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    texture000.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array1 = new Float32Array([-1.0, 1.0, 0.75, 0.0, 0.75, 0.75, 0.75, -0.75, -1.0, 0.25, -0.75, 0.75, 0.75, -0.5, -0.25, -0.5, 0.75, 0.0, -0.5, 0.75, 0.75, 0.5, -0.5, 0.25, 0.0, -0.25, 0.25, 1.0, 0.5, 0.0, 0.0, -0.25, -0.5, 0.25, 1.0, 0.0, 0.25, 0.0, -0.25, 0.0, 0.25, 1.0, -1.0, -0.25, 1.0, 0.25, -0.5, 0.75, -1.0, -0.75, -0.25, -1.0, -0.5, 0.5, -0.5, 0.75, 1.0, 0.0, 0.75, 0.0, -1.0, 0.25, 0.25, -0.25, -0.5, 1.0, 1.0, 0.5, 0.25, -1.0, -0.5, 0.75, 0.75, -1.0, 0.5, -1.0, -1.0, 0.75, -0.5, 1.0, -1.0, -0.5, -1.0, 0.25, -0.25, -0.75, 0.5, 0.75, -0.75, 0.75, -0.75, 1.0, 1.0, 0.0, -0.5, 1.0, -0.75, -0.25, 0.75, -0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
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
    buffer000.destroy()
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    const array2 = new Float32Array([0.5, 0.25, 0.0, -0.75, 0.0, -0.5, 0.5, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, 1.0, 0.25, 1.0, -0.25, -0.25, -0.25, 0.75, -0.75, 0.75, 0.75, 0.75, 0.5, -1.0, 0.0, -1.0, 0.75, -1.0, -0.25, 0.25, 0.0, 0.5, 0.0, 0.0, 0.5, 1.0, 0.75, -0.25, 0.75, -0.25, 1.0, 0.0, 0.75, -0.25, 0.5, 0.0, 0.5, 0.25, -0.25, 0.25, 0.25, 0.0, 0.0, 1.0, 0.0, 0.5, 0.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 0.75, 0.25, -1.0, 0.25, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, 0.25, 0.25, 0.75, -0.5, 0.0, 0.0, -0.25, -1.0, 0.0, -1.0, 0.5, 0.5, -1.0, 1.0, -0.5, -1.0, -0.5, 0.25, 0.75, -0.25, -0.5, 0.0, 0.25, 0.75, 0.5, ]);
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0010.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.75, 0.75, 0.75, -0.25, -0.25, 0.0, 0.0, 0.25, 0.75, -0.25, -0.25, 0.0, 0.5, -0.25, -1.0, 0.0, -0.75, -1.0, 1.0, -0.5, 1.0, -1.0, 1.0, 0.5, -0.5, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 0.5, 0.75, -0.5, -0.5, 0.25, 0.0, -0.5, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.5, 1.0, 0.0, 0.25, 0.0, 0.5, 0.5, 1.0, 1.0, 0.0, -0.25, -0.5, -1.0, -0.25, -0.25, 0.25, 0.75, 0.0, -1.0, -0.25, 0.25, 1.0, 0.0, 0.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.25, 1.0, 0.75, -1.0, -0.25, 0.25, -0.5, 1.0, -1.0, 1.0, 0.5, 0.5, 0.75, -0.5, -0.75, -0.75, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 1.0, -0.75, 0.25, 0.0, -0.75, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder300.insertDebugMarker("mymarker");
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    const command_buffer002 = command_encoder002.finish();
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder0020.popDebugGroup();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const array4 = new Float32Array([-0.5, -1.0, 0.5, -1.0, 0.75, -1.0, -0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 0.75, -1.0, 0.0, 0.75, 0.0, -0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 0.25, 1.0, 0.0, 0.75, 0.75, 0.25, -1.0, 1.0, -1.0, -0.5, 0.75, 1.0, 0.25, -0.5, -0.5, 0.25, 0.75, 1.0, 0.5, -1.0, 0.25, 0.75, -1.0, 0.75, 0.5, -0.75, -0.75, 0.75, -0.75, 0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.5, 0.0, -1.0, -1.0, 0.5, 1.0, -0.75, -1.0, 1.0, 0.0, -0.5, 1.0, 0.5, -0.75, 0.75, -0.75, 0.25, 0.0, -0.25, -0.5, 1.0, 0.5, 1.0, 1.0, 0.75, 0.25, 0.0, -0.5, -1.0, 0.5, -0.5, -0.5, 0.0, -0.25, 0.25, 0.25, 0.0, 1.0, -0.25, 1.0, 1.0, -0.25, ]);
    render_pass_encoder0020.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_pass_encoder0020.beginOcclusionQuery(0)
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query000.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer001.destroy()
    command_encoder300.pushDebugGroup("mygroupmarker")
    texture003.destroy();
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder300.insertDebugMarker("marker");
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
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder000.setPipeline(render_pipeline001);
    texture300.destroy();
    device10.queue.submit([command_buffer102, ]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    const array5 = new Float32Array([-0.5, 0.0, -0.75, 0.5, -0.25, -1.0, -1.0, 1.0, 0.75, 0.75, -0.5, 0.75, -0.25, 0.5, 0.0, 0.75, 0.5, -0.75, -0.25, 0.0, 0.0, 0.5, -0.25, 0.25, 0.5, 0.75, 0.0, 0.75, 0.75, 1.0, 1.0, 0.0, -1.0, -1.0, -0.75, 0.0, -0.5, -0.25, -1.0, 0.5, 0.5, 0.75, 0.75, 0.5, -0.75, 0.75, -0.25, 0.0, 0.0, -0.5, -0.5, -0.75, 0.25, -0.75, -1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -0.75, 0.0, 0.75, -1.0, 1.0, 1.0, 0.25, 0.25, 1.0, 0.75, 0.5, -0.75, -0.5, -0.25, -1.0, 0.5, 0.25, -0.25, -0.5, -0.25, 0.75, 0.75, 0.0, 0.25, 0.5, -0.25, 0.25, 0.75, 0.75, -0.75, -0.75, 0.75, 0.5, -0.75, 1.0, 1.0, 0.25, 0.75, 0.25, 0.75, ]);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    texture301.destroy();
    render_pass_encoder0020.setPipeline(render_pipeline000);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    texture004.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0020.setStencilReference(1);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    texture200.destroy();
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.setStencilReference(1);
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline003);
    
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
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
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    texture302.destroy();
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_pass_encoder0030.beginOcclusionQuery(0)
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query000.destroy()
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0011.executeBundles([])
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder300.popDebugGroup()
    device00.pushErrorScope("validation");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    command_encoder004.clearBuffer(buffer002);
    buffer300.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer302 = command_encoder302.finish();
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0031.setPipeline(render_pipeline003);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array6 = new Float32Array([0.0, 0.75, 0.75, 0.75, 1.0, 0.75, 0.5, 0.25, -0.25, 0.5, 0.75, -0.5, 1.0, -0.25, 1.0, 0.5, 0.25, -1.0, 0.25, -0.5, 0.5, 0.5, -1.0, -0.5, 0.5, 0.0, 0.5, 0.0, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, -0.25, -1.0, -0.25, 0.75, -0.5, -1.0, -1.0, 0.25, -0.5, 0.0, 1.0, 0.5, 1.0, 0.5, -0.25, -0.5, -1.0, -1.0, -1.0, 0.75, 0.0, 0.75, -0.5, -0.75, -0.5, 1.0, 0.75, -0.5, -0.25, 0.25, 1.0, -0.5, -1.0, -0.25, 0.5, -0.25, -0.25, 0.5, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 0.0, -1.0, -0.25, 0.75, -0.5, -0.25, 0.75, 1.0, -0.75, -0.25, -0.5, 0.5, -1.0, 1.0, 0.0, 0.25, -0.25, 0.25, 0.25, -0.5, -0.5, -0.75, ]);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    command_encoder300.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    
    render_pass_encoder0040.setPipeline(render_pipeline002);
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0011.setPipeline(render_pipeline003);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer301.destroy()
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture004.destroy();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.executeBundles([])
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0011.popDebugGroup();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0010.popDebugGroup();
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
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3000.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    buffer006.destroy()
    render_pass_encoder0031.beginOcclusionQuery(0)
    render_pass_encoder0020.pushDebugGroup("group_marker");
    texture303.destroy();
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture301.destroy();
    device30.queue.submit([command_buffer302, ]);
    
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group003);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setStencilReference(1);
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder300.copyTextureToTexture(
        {
            texture: texture304
        },
        {
            texture: texture304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer200.destroy()
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setVertexBuffer(0, buffer005);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.end();
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setVertexBuffer(0, buffer001);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device20.destroy();
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.executeBundles([])
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.endOcclusionQuery()
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.draw(3);
    render_pass_encoder3000.setPipeline(render_pipeline301);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    
    
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0030.setPipeline(compute_pipeline0024);
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder001.copyBufferToBuffer(
        buffer007,
        0,
        buffer004,
        0,
        400
    );
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer000, 0);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0032.setPipeline(render_pipeline003);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0030.popDebugGroup();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0011.end();
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0032.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group005);
    render_pass_encoder0011.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    command_encoder301.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder3010.end();
    render_pass_encoder3000.setVertexBuffer(0, buffer307);
    render_pass_encoder0010.setVertexBuffer(0, buffer0015);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder3000.draw(3);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer308, 0);
    command_encoder101.popDebugGroup()
    render_pass_encoder0010.end();
    const command_buffer301 = command_encoder301.finish();
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder0030.endOcclusionQuery()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0032.setVertexBuffer(0, buffer001);
    render_pass_encoder0032.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0032.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0040.setVertexBuffer(0, buffer0013);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder0040.draw(3);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    device30.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group008);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group009);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder3000.end();
    device10.queue.submit([]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    command_encoder001.popDebugGroup()
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0032.setIndexBuffer(buffer000, "uint16");
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0025, 0);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder0031.setVertexBuffer(0, buffer000);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder0030.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0032.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0032.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0032.popDebugGroup();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    device30.queue.submit([command_buffer301, ]);
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0011);
    render_pass_encoder3000.end();
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    device00.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0032.end();
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    render_pass_encoder0032.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder3000.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0030, 0);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0012);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0018, 0);
    device00.queue.submit([]);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    device00.queue.submit([]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0032.end();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0030.end();
    render_pass_encoder0030.end();
    render_pass_encoder0010.end();
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group306);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0032.popDebugGroup();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group307);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.end();
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    device00.queue.submit([]);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0032.drawIndirect(buffer0024, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0032.drawIndirect(buffer0011, 0);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0013);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0032.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3000.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0030, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0032.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndirect(buffer0018, 0);
    compute_pass_encoder0030.popDebugGroup()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3021, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3022, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3022, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.draw(3);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0032.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.end();
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0015);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0025, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3017, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0030, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndirect(buffer007, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group309);
    render_pass_encoder3000.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer0024, 0);
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0040.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder3010.end();
    device00.queue.submit([command_buffer003, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3025, 0);
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder0031.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder3000.drawIndirect(buffer3025, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    render_pass_encoder0032.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0024, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0016);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3000.end();
    render_pass_encoder0032.drawIndirect(buffer0030, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer002, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline0024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
}