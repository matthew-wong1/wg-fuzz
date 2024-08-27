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
    device00.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    buffer000.destroy()
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device00.destroy();
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array0 = new Float32Array([0.75, 0.5, -0.75, -1.0, 0.75, 0.0, -0.5, 0.5, 0.0, 0.25, -0.5, -0.75, -1.0, 0.75, 0.75, 0.5, -0.75, -0.5, 0.0, -0.5, 0.5, -1.0, -0.5, 0.75, -0.5, 0.25, 0.5, -0.25, 0.5, -0.25, 0.75, -0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 0.25, -1.0, 0.25, 0.0, -1.0, -1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.0, 1.0, -1.0, 0.5, -1.0, -0.75, -0.25, 0.5, 0.25, -0.25, -0.5, 0.5, 0.75, -1.0, 0.25, -1.0, 0.0, 0.5, 0.75, 0.0, 0.25, -0.25, 0.75, -0.25, -1.0, 1.0, -0.5, 1.0, 1.0, -0.25, -0.5, 0.75, 0.25, 0.5, 1.0, 1.0, 0.75, 0.0, -1.0, 0.25, -1.0, 0.5, 0.0, 0.75, 0.0, 0.0, -0.25, 0.5, 0.5, -0.75, 0.0, -1.0, ]);
    
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device30.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array1 = new Float32Array([1.0, 0.5, -0.75, -0.5, 0.75, 0.5, 0.25, 0.25, 0.5, -0.5, 1.0, -1.0, 1.0, 1.0, 0.75, -1.0, -0.25, 0.0, 0.5, 0.75, -1.0, 0.25, -1.0, -0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -0.75, -1.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.75, 0.75, -0.5, 0.5, -0.25, -1.0, -0.75, 1.0, 0.0, 0.0, 0.25, -1.0, 1.0, 1.0, -0.75, 1.0, -0.5, 0.75, 0.75, 0.5, 0.25, 0.25, 0.25, 1.0, 0.5, 1.0, 0.75, -1.0, 0.25, 0.75, 0.0, 0.0, 0.25, 0.0, -0.5, 0.25, -0.75, 0.0, 0.75, 0.25, -0.5, 1.0, -0.25, 0.75, -1.0, -0.5, 0.0, -0.25, -0.5, 0.75, -0.25, 0.75, 0.0, 0.5, 0.25, -0.25, 0.5, 1.0, 1.0, -0.5, 0.0, 0.0, 0.75, 0.25, ]);
    
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder100.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    
    
    device40.pushErrorScope("validation");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array2 = new Float32Array([0.0, 0.5, -0.75, 0.25, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.25, 0.5, 0.0, 0.75, 0.5, 0.5, 1.0, 0.5, -0.25, 1.0, 0.75, -0.5, 0.75, 1.0, 0.5, 0.25, 0.25, 1.0, 0.0, -0.5, -0.75, -0.75, 0.75, -0.25, 0.5, -0.25, -1.0, -0.25, 0.0, -0.25, 0.0, 0.25, 0.0, 0.0, 0.0, 1.0, 1.0, -0.75, 0.75, 0.0, -0.25, 0.25, -0.25, 0.25, -0.25, -0.5, -0.25, 0.75, -0.75, 0.5, 0.25, 0.25, 0.0, 0.5, -0.75, 1.0, -0.75, 0.5, -0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -1.0, -0.5, 0.5, 0.5, -0.25, 0.0, 0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.75, 0.0, -0.5, -0.5, 0.75, -0.5, 1.0, 1.0, 0.75, -0.5, 1.0, 0.75, -0.75, -1.0, ]);
    
    
    
    
    
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
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    
    buffer100.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture100.destroy();
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    
    
    
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
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer401.destroy()
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    buffer101.destroy()
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder1001.setPipeline(render_pipeline100);
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device10.queue.submit([]);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    texture402.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer102.destroy()
    render_pass_encoder1001.insertDebugMarker("marker");
    texture401.destroy();
    buffer402.destroy()
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
    
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1001.popDebugGroup();
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    texture101.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1001.setStencilReference(1);
    command_encoder400.insertDebugMarker("mymarker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.clearBuffer(buffer401);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    device40.pushErrorScope("out-of-memory");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
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
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device50.pushErrorScope("out-of-memory");
    texture403.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([-0.5, 0.0, 1.0, 0.0, 0.25, -0.25, 0.5, 1.0, 0.25, 0.75, -1.0, 1.0, -0.75, 0.0, 0.0, 1.0, 0.25, 0.0, -0.75, -0.5, 0.25, -0.75, 0.75, -0.25, 0.5, -0.5, -0.25, -0.25, 0.5, 0.0, -1.0, 1.0, 1.0, 1.0, -0.25, 0.75, 0.25, -0.25, -1.0, -0.75, -1.0, 0.0, 0.5, -0.75, 0.25, 0.5, 0.5, -0.25, -1.0, 1.0, 0.5, -1.0, -1.0, 0.5, -0.25, 1.0, 0.25, -0.75, -1.0, 0.0, -0.25, -0.75, -0.25, 0.0, -1.0, -1.0, -0.5, -0.25, -0.5, -1.0, 0.5, -1.0, 0.25, 0.75, 0.75, 0.0, 0.0, 0.75, 0.25, -1.0, 0.25, 0.0, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.25, 0.0, -0.5, 1.0, -0.75, -0.75, 0.75, 0.0, 0.25, -1.0, -0.75, 0.5, ]);
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    buffer103.destroy()
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1010.popDebugGroup();
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    
    device70.pushErrorScope("out-of-memory");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1011.setPipeline(render_pipeline100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    texture500.destroy();
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    device30.pushErrorScope("internal");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    buffer105.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    buffer106.destroy()
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    command_encoder102.clearBuffer(buffer105);
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
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
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_pass_encoder1010.setStencilReference(1);
    const array4 = new Float32Array([-0.75, -1.0, 0.5, -0.75, 0.5, 1.0, -0.5, -0.25, 0.25, 0.0, -1.0, 1.0, 1.0, -0.25, -0.5, -0.5, 0.5, -0.25, -1.0, 0.5, 1.0, -0.5, 0.0, 0.75, -0.25, -0.75, 1.0, -0.5, 0.5, 1.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, -1.0, -0.5, -0.75, 0.0, -0.5, -0.25, 1.0, 1.0, -1.0, 0.5, 0.25, 0.75, 1.0, 1.0, 1.0, -0.25, -0.75, 0.25, -1.0, 0.5, 1.0, 0.5, 0.5, -0.5, -0.5, 0.75, 1.0, -0.75, 0.25, 1.0, 0.5, -1.0, -0.25, 0.75, -0.5, -0.5, 0.25, 0.75, -0.5, 1.0, 0.0, 0.0, 0.5, 0.25, 0.75, 0.75, -0.5, 0.0, 0.75, -0.5, 0.0, -1.0, 1.0, 0.75, 1.0, -0.75, 0.5, 0.75, 1.0, ]);
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group101);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    texture501.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
        occlusionQuerySet: undefined
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device80.pushErrorScope("out-of-memory");
    render_pass_encoder4000.setPipeline(render_pipeline400);
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    command_encoder102.clearBuffer(buffer106);
    
    buffer501.destroy()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    device40.queue.submit([]);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_pass_encoder4001.setPipeline(render_pipeline400);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    texture400.destroy();
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    
    device40.pushErrorScope("internal");
    
    
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const array5 = new Float32Array([-0.5, 0.5, 0.5, 0.0, 0.5, -0.75, -0.5, -0.75, 1.0, 0.25, 0.25, -0.5, 0.25, 1.0, -0.5, 0.25, 1.0, 1.0, 1.0, -1.0, 0.0, 0.25, 0.5, 1.0, 0.5, -0.5, -0.75, -0.25, 0.25, -0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 0.0, -0.75, 0.75, 0.25, 0.0, -0.75, -1.0, -0.75, -0.25, -0.75, 1.0, -0.25, -0.25, 0.0, 0.0, -0.5, -1.0, 1.0, -0.25, 0.0, 0.75, 1.0, -0.75, 0.5, -1.0, 0.0, -1.0, -0.75, -0.25, 0.25, -1.0, 1.0, 1.0, 0.0, -0.5, 0.5, -0.75, -1.0, -1.0, 0.75, 0.75, 0.75, 1.0, -0.25, 1.0, -0.75, -0.5, 0.75, -0.5, -0.75, 0.75, 0.0, 0.0, 0.5, 0.75, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, -0.25, 0.0, 1.0, -1.0, ]);
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder1011.setStencilReference(1);
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1001.insertDebugMarker("marker")
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1001.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder1011.setVertexBuffer(0, buffer104);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder4000.setVertexBuffer(0, buffer403);
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
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1030.executeBundles([])
    
    render_pass_encoder4001.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4001.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device70.destroy();
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer404.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device40.queue.writeBuffer(buffer406, 0, array0, 0, array0.length);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    compute_pass_encoder1001.insertDebugMarker("marker")
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    buffer403.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    
    render_pass_encoder1010.setStencilReference(1);
    
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    
    render_pass_encoder1010.popDebugGroup();
    device80.pushErrorScope("out-of-memory");
    
    render_pass_encoder1020.setStencilReference(1);
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    buffer107.destroy()
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder4000.setIndexBuffer(buffer403, "uint16");
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_pass_encoder1001.setStencilReference(1);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    render_pass_encoder4001.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder4000.setStencilReference(1);
    buffer108.destroy()
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.insertDebugMarker("mymarker");
    
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    render_pass_encoder4001.setStencilReference(1);
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder4001.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer103, 0);
    
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder8000.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder8000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    render_pass_encoder1000.setVertexBuffer(0, buffer103);
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    buffer1011.destroy()
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder4020.setPipeline(render_pipeline404);
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    render_pass_encoder1010.setVertexBuffer(0, buffer1012);
    render_pass_encoder1030.popDebugGroup();
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1000.draw(3);
    device40.queue.submit([]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder4000.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.setVertexBuffer(0, buffer1012);
    render_pass_encoder1010.end();
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4001.setBindGroup(0, bind_group401);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder4001.setVertexBuffer(0, buffer404);
    render_pass_encoder1030.setVertexBuffer(0, buffer103);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder4001.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder4001.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder4000.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4000.end();
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline404.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder1020.end();
    render_pass_encoder4020.setVertexBuffer(0, buffer403);
    render_pass_encoder4020.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1030.end();
    render_pass_encoder4020.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4001.draw(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder4001.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4000.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    device80.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4020.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder4020.end();
    device90.queue.submit([]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder4001.end();
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder1000.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4020.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder4001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder8000.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder4000.draw(3);
    render_pass_encoder4020.drawIndexed(3);
    compute_pass_encoder5000.popDebugGroup()
}