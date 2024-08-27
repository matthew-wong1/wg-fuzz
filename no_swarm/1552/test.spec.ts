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
    const array0 = new Float32Array([-0.25, -1.0, -0.5, 0.75, 1.0, 0.75, 0.5, 1.0, 0.5, 0.75, -0.5, -0.75, 0.0, 0.0, 0.25, -0.5, 1.0, 0.25, 0.0, -0.75, -0.75, -1.0, -0.25, 0.75, -0.25, -0.75, 0.25, -0.25, -0.5, 0.0, 0.25, -0.25, 0.25, 0.0, -0.25, -1.0, -0.25, -1.0, -0.5, 1.0, -0.25, -0.5, 0.75, -0.75, -0.75, -0.25, 1.0, 0.25, -0.5, -1.0, -1.0, 0.0, -0.75, -0.25, 0.75, 0.75, -0.75, -0.5, 0.0, 0.75, 0.25, 0.5, 0.75, -0.75, 0.5, 0.25, -0.25, 0.75, 0.25, 1.0, -0.5, 0.0, 0.75, 0.25, 0.0, 0.5, 0.75, 0.75, -0.5, -0.25, -0.75, 0.25, 1.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.5, -0.75, 0.75, -0.5, -0.5, 1.0, 1.0, -0.5, -1.0, 0.75, -1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([1.0, 0.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.5, 0.25, -0.25, 0.5, -0.5, 0.5, -1.0, 0.5, -0.75, -0.75, -0.5, 0.25, 0.5, 0.0, -0.75, 0.0, -0.75, 0.5, 0.25, 0.75, 0.5, 1.0, -0.75, 0.0, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, -0.5, 0.0, 0.5, -0.75, 0.25, 1.0, 0.25, -0.5, 0.25, 0.75, 0.25, -0.75, 0.0, 0.0, -1.0, 0.75, -0.5, -0.25, 0.0, -1.0, 0.0, 1.0, 0.0, 0.5, 0.0, -0.5, 0.75, -0.5, -1.0, -0.25, 0.0, 0.25, 0.5, 0.5, -0.75, -0.5, 1.0, 0.0, 0.5, 0.75, 0.25, -0.5, -0.25, 0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 0.5, -0.75, 0.75, -0.75, -0.25, 0.25, -0.5, 0.5, -0.75, -0.25, 1.0, -1.0, 0.25, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
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
    
    const array2 = new Float32Array([0.25, -0.25, -0.25, 1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.5, -0.5, -0.5, 0.25, 0.0, -0.5, 0.25, -0.25, 0.25, 0.5, -0.5, -0.5, 0.25, 0.0, 0.75, -0.5, 0.75, 0.5, -1.0, 0.0, -0.5, -0.25, 0.0, 0.5, -0.75, 1.0, -1.0, -0.5, 0.0, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, -0.25, -1.0, 0.0, -0.5, 0.0, -0.5, 0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, 0.75, 0.25, 0.25, -1.0, -1.0, 1.0, -0.25, 0.0, 0.0, -1.0, 0.0, -0.75, 0.5, -0.75, 1.0, 0.0, 0.5, 0.25, -1.0, 1.0, -0.75, -0.5, 0.0, 0.75, 0.25, 0.0, 0.75, 0.75, 0.25, -0.75, 0.0, -0.75, 0.0, -1.0, 0.5, 0.0, 0.5, -0.75, -0.5, -1.0, -0.25, 0.5, -0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer000.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer001 = command_encoder001.finish();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    command_encoder000.popDebugGroup()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.submit([command_buffer001, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder000.clearBuffer(buffer000);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const command_buffer003 = command_encoder003.finish();
    buffer001.destroy()
    command_encoder002.insertDebugMarker("mymarker");
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
    texture000.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.25, 0.0, 0.25, 0.75, -0.5, -1.0, -0.25, -0.25, -1.0, 1.0, -0.5, -0.25, 1.0, 0.75, -0.75, -1.0, -0.75, -0.25, 1.0, -0.5, 0.25, -0.5, -1.0, 1.0, -0.5, -0.75, 0.75, -1.0, -1.0, 1.0, -0.5, 0.5, -0.25, 0.5, -0.75, -0.25, -0.75, 0.75, 0.0, -0.75, 0.5, -0.5, 1.0, 0.0, 0.25, -0.25, 0.25, -0.5, -0.25, -0.5, 1.0, 1.0, -0.25, 1.0, 1.0, 0.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.0, -0.25, -0.25, 0.25, 0.5, 0.25, 0.5, 0.0, -0.75, -1.0, -0.25, -1.0, -1.0, 0.5, -0.25, 0.75, 0.75, 0.25, -1.0, 0.5, -0.5, -0.25, -0.5, 1.0, 0.5, -0.5, 1.0, -0.75, -1.0, 0.0, -0.75, 0.75, -0.5, 0.75, 0.5, 0.5, -0.5, -1.0, -0.75, ]);
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder001.popDebugGroup();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("internal");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.submit([]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    device00.pushErrorScope("internal");
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
    command_encoder000.clearBuffer(buffer001);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder0020.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    buffer300.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    command_encoder000.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("out-of-memory");
    device40.destroy();
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    
    texture301.destroy();
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder001.popDebugGroup();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    device20.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const array4 = new Float32Array([-0.5, 0.0, 1.0, 0.25, 0.25, 1.0, 0.5, 0.75, 1.0, -1.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.25, -0.5, 0.0, 1.0, 0.0, -1.0, 0.75, 0.25, 0.25, -0.75, 0.25, -0.75, -1.0, -1.0, 0.25, 0.0, -1.0, 1.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.75, -1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 0.25, 0.5, -1.0, -0.25, 0.5, 0.5, 0.5, 0.0, 1.0, -0.75, -0.75, -0.5, -1.0, -0.5, -0.25, -0.25, 0.25, -1.0, 0.5, -0.5, 0.25, -0.5, 0.0, 0.25, -0.5, 0.0, 0.25, -0.5, 1.0, -1.0, 0.5, 1.0, 0.25, 0.5, -0.5, -0.75, -1.0, -0.75, -0.75, -0.25, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 0.0, 1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.5, -0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device10.pushErrorScope("validation");
    
    command_encoder000.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    buffer003.destroy()
    render_pass_encoder3000.executeBundles([])
    command_encoder000.popDebugGroup()
    render_bundle_encoder002.popDebugGroup();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture201.destroy();
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    render_bundle_encoder002.popDebugGroup();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer301
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_buffer302 = command_encoder302.finish();
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    device50.destroy();
    buffer302.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3010.executeBundles([])
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder001.setIndexBuffer(buffer000, "uint16");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer001.destroy()
    
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder001.drawIndirect(buffer003, 0);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder002.copyBufferToBuffer(
        buffer003,
        0,
        buffer005,
        0,
        400
    );
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    command_encoder303.clearBuffer(buffer301);
    render_pass_encoder3010.executeBundles([])
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    query000.destroy()
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3030.setStencilReference(1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    
    
    
    
    buffer005.destroy()
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
    render_pass_encoder3010.insertDebugMarker("marker");
    
    render_pass_encoder3000.popDebugGroup();
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    texture001.destroy();
    
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3031.setStencilReference(1);
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    const array5 = new Float32Array([0.0, 0.25, 0.5, -0.5, 1.0, -0.75, -0.75, 0.25, -0.75, 1.0, -0.75, 0.0, 0.5, 0.5, 0.5, -0.75, 0.0, 1.0, -1.0, 0.5, 0.75, -1.0, -0.5, -1.0, 0.25, 0.75, 0.5, 0.5, -0.5, 0.25, -0.5, 0.5, -0.75, -0.5, -1.0, -0.25, 0.0, 0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.75, 0.5, -0.25, 1.0, -0.75, -0.25, -0.5, 0.5, -1.0, 0.75, 1.0, -1.0, -0.75, -0.25, 0.5, 0.0, 1.0, -1.0, 0.25, 0.0, -0.5, 1.0, -0.25, -0.75, -0.5, 0.5, -0.75, -0.25, 0.5, -1.0, -0.75, -0.75, 0.75, 0.0, 0.0, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, -0.75, -0.5, -0.5, -0.75, -0.5, 0.0, 0.0, -0.25, 1.0, 0.0, -0.5, -0.75, -1.0, 0.75, 0.0, 0.25, ]);
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
    
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3031.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    buffer001.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.executeBundles([])
    
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer302.destroy()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    
    render_pass_encoder3040.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder3000.setStencilReference(1);
    const array6 = new Float32Array([-1.0, -1.0, 0.0, 0.75, -0.5, -0.75, -0.25, 0.25, 0.5, 0.25, 0.25, 1.0, 0.25, 0.5, 0.5, 0.75, 0.5, 1.0, 0.0, 0.25, 0.75, -0.5, -0.25, 0.75, 0.25, -0.5, 1.0, 0.25, 1.0, -0.75, 0.25, -0.25, -0.5, -0.5, -1.0, 0.0, 0.25, -0.5, -0.5, -0.25, -0.25, -0.25, 0.5, -0.25, 0.75, 0.25, -1.0, -0.75, -0.25, 0.5, -0.25, 0.0, -0.25, 0.5, -0.5, -1.0, 0.25, 0.5, -0.25, -0.25, 0.75, -0.5, 0.25, 0.75, -0.5, -0.5, -0.75, 0.25, 1.0, 0.0, -0.5, 0.25, 1.0, -1.0, -0.75, 0.75, 0.75, 1.0, -0.5, 1.0, 1.0, -1.0, 0.0, -0.25, 1.0, -0.75, 0.0, 0.5, -1.0, -0.25, 0.5, 0.5, 1.0, 0.0, -0.5, -0.5, -0.5, 0.5, 0.0, 0.5, ]);
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3031.setPipeline(render_pipeline300);
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    compute_pass_encoder0000.popDebugGroup()
    
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer303.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    compute_pass_encoder0040.setPipeline(compute_pipeline004);
    
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    compute_pass_encoder0040.insertDebugMarker("marker")
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3050.insertDebugMarker("marker");
    command_encoder306.copyTextureToTexture(
        {
            texture: texture304
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder306.pushDebugGroup("mygroupmarker")
    render_pass_encoder3050.insertDebugMarker("marker");
    command_encoder306.insertDebugMarker("mymarker");
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query301
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3000.setPipeline(render_pipeline300);
    device30.queue.submit([command_buffer302, ]);
    
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.popDebugGroup();
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3050.insertDebugMarker("marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_pass_encoder3010.setPipeline(render_pipeline300);
    render_pass_encoder3031.insertDebugMarker("marker");
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    const render_pass_encoder3061 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder3050.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    query301.destroy()
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_pass_encoder3061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    texture500.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3061.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder3040.executeBundles([])
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group001);
    render_bundle_encoder001.popDebugGroup();
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    buffer304.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3060.setStencilReference(1);
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3050.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder3031.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_bundle_encoder001.finish();
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    buffer800.destroy()
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer008.destroy()
    render_pass_encoder3060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder3050.setPipeline(render_pipeline301);
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder3060.executeBundles([])
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder300.copyBufferToBuffer(
        buffer303,
        0,
        buffer300,
        0,
        400
    );
    device30.queue.writeTexture({ texture: texture304 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_pass_encoder3030.popDebugGroup();
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3001.executeBundles([])
    buffer007.destroy()
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    texture001.destroy();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3041.setPipeline(render_pipeline301);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group004);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3061.setPipeline(render_pipeline300);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3041.setBindGroup(0, bind_group301);
    render_pass_encoder3001.setPipeline(render_pipeline300);
    compute_pass_encoder0040.end();
    render_pass_encoder3050.popDebugGroup();
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3040.setPipeline(render_pipeline300);
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3031.setBindGroup(0, bind_group302);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3031.setVertexBuffer(0, buffer305);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3060.setPipeline(render_pipeline302);
    render_pass_encoder3010.setVertexBuffer(0, buffer306);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    render_pass_encoder3010.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder3061.popDebugGroup();
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3060.setBindGroup(0, bind_group303);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3050.setBindGroup(0, bind_group304);
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3061.setBindGroup(0, bind_group305);
    render_pass_encoder3060.setVertexBuffer(0, buffer306);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    render_pass_encoder3041.setVertexBuffer(0, buffer304);
    render_pass_encoder3050.setVertexBuffer(0, buffer3013);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3041.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3060.draw(3);
    render_pass_encoder3041.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3050.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3030.popDebugGroup();
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3001.setBindGroup(0, bind_group306);
    render_pass_encoder3001.setVertexBuffer(0, buffer302);
    render_pass_encoder3050.drawIndexed(3);
    render_pass_encoder3041.end();
    render_pass_encoder3060.end();
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group307);
    device30.queue.submit([command_buffer300, ]);
    const command_buffer304 = command_encoder304.finish();
    const command_buffer004 = command_encoder004.finish();
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group308);
    render_pass_encoder3050.end();
    render_pass_encoder3001.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder3030.setVertexBuffer(0, buffer3014);
    render_pass_encoder3061.setVertexBuffer(0, buffer3017);
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    render_pass_encoder3061.draw(3);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3000.setVertexBuffer(0, buffer3022);
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3001.end();
    render_pass_encoder3060.drawIndirect(buffer301, 0);
    render_pass_encoder3061.end();
    render_pass_encoder3031.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3060.end();
    render_pass_encoder3000.end();
    const command_buffer306 = command_encoder306.finish();
    compute_pass_encoder0020.end();
    device50.queue.submit([]);
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group309);
    compute_pass_encoder0040.popDebugGroup()
    device90.queue.submit([]);
    command_encoder002.popDebugGroup()
    compute_pass_encoder0000.end();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder3030.end();
    render_pass_encoder3041.setIndexBuffer(buffer3020, "uint16");
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3040.setVertexBuffer(0, buffer3023);
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3040.draw(3);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder3060.drawIndirect(buffer3018, 0);
    render_pass_encoder3041.draw(3);
    render_pass_encoder3060.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder3061.drawIndirect(buffer3013, 0);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3040.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3050.drawIndexed(3);
    render_pass_encoder3031.end();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3060.drawIndirect(buffer306, 0);
    render_pass_encoder3040.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3050.drawIndexed(3);
    device30.queue.submit([command_buffer303, command_buffer306, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer3020, 0);
    render_pass_encoder3061.end();
    render_pass_encoder3060.endOcclusionQuery()
    render_pass_encoder3001.drawIndirect(buffer3010, 0);
    device30.queue.submit([command_buffer306, ]);
    device80.queue.submit([]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0018, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndirect(buffer3018, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder3060.end();
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder3000.end();
    render_pass_encoder3040.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder3061.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3041.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3040.draw(3);
    render_pass_encoder3041.drawIndexed(3);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3018, "uint16");
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder3001.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3060.drawIndirect(buffer3017, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    render_pass_encoder3041.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3031.draw(3);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer3010, 0);
    device40.queue.submit([]);
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3050.end();
    render_pass_encoder3050.drawIndirect(buffer3014, 0);
    render_pass_encoder3001.drawIndirect(buffer3018, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3060.drawIndirect(buffer3018, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3019, 0);
    render_pass_encoder3041.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0020, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0020, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3061.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3061.drawIndexed(3);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group006);
    render_pass_encoder3041.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3010.drawIndirect(buffer3016, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder3050.drawIndirect(buffer3020, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder3060.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3050.drawIndexed(3);
    render_pass_encoder3061.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer302, command_buffer305, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3050.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3050.draw(3);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3001.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3060.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3050.drawIndirect(buffer3022, 0);
    render_pass_encoder3061.setIndexBuffer(buffer3013, "uint16");
    device90.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder3030.draw(3);
    render_pass_encoder3040.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3040.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3041.drawIndirect(buffer305, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3041.drawIndirect(buffer303, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3060.drawIndirect(buffer3024, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3060.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3050.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3041.end();
    render_pass_encoder3061.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder3031.popDebugGroup();
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3050.drawIndexedIndirect(buffer3011, 0);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3041.setIndexBuffer(buffer305, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3031.end();
    render_pass_encoder3061.end();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3061.popDebugGroup();
    render_pass_encoder3040.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3040.drawIndirect(buffer307, 0);
    render_pass_encoder3060.drawIndexed(3);
    device90.queue.submit([]);
    render_pass_encoder3050.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3060.drawIndirect(buffer302, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3001.end();
    compute_pass_encoder0040.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3041.draw(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3050.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder3000.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3041.drawIndirect(buffer3024, 0);
    compute_pass_encoder0040.popDebugGroup()
    device90.queue.submit([]);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3061.drawIndexed(3);
    render_pass_encoder3040.drawIndirect(buffer3017, 0);
    render_pass_encoder3060.end();
    device00.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    render_pass_encoder3041.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3050.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3031.drawIndexedIndirect(buffer3024, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3040.setIndexBuffer(buffer301, "uint16");
    device00.queue.submit([]);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3050.drawIndirect(buffer3012, 0);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3023, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder3041.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3040.drawIndirect(buffer306, 0);
    device90.queue.submit([]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder3000.drawIndirect(buffer309, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3050.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3040.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3031.drawIndirect(buffer303, 0);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group009);
    render_pass_encoder3060.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3060.draw(3);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0010);
    render_pass_encoder3061.draw(3);
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([]);
    render_pass_encoder3061.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer306, 0);
    device90.queue.submit([]);
    render_pass_encoder3010.setIndexBuffer(buffer3020, "uint16");
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    compute_pass_encoder0040.end();
    device90.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer303, command_buffer304, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3001.end();
    compute_pass_encoder0040.end();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3041.drawIndirect(buffer309, 0);
    device00.queue.submit([]);
    device90.queue.submit([]);
    render_pass_encoder3000.end();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder3060.end();
    compute_pass_encoder0000.end();
    render_pass_encoder3050.draw(3);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3019, "uint16");
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder3060.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3031.draw(3);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3041.end();
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3060.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3061.drawIndirect(buffer3015, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0034, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3040.end();
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder3060.drawIndirect(buffer3022, 0);
}