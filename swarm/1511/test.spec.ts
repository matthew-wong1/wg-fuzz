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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([0.5, -0.75, 0.5, -0.25, 0.5, -0.75, 0.75, -0.75, 0.5, -0.5, 0.5, 0.5, -1.0, 0.5, 0.75, -0.25, 0.5, -0.5, -0.75, -0.75, 0.75, 0.5, -0.75, -1.0, -1.0, 0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.25, -0.75, -0.5, -0.25, -0.25, -0.5, -0.75, -0.25, -0.25, -1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 1.0, -1.0, -0.5, 0.75, -0.25, 0.5, -0.5, -1.0, -1.0, 0.75, -0.75, -0.25, -0.5, -0.25, 0.5, 0.5, 0.25, 0.25, 1.0, -0.5, 0.5, -0.75, -0.5, -1.0, 0.0, 0.0, -0.75, -1.0, 0.75, 1.0, -0.5, 0.0, -0.25, 1.0, -0.5, 0.75, -0.5, 1.0, 0.75, -1.0, -0.75, -0.75, -0.5, 1.0, -0.25, 1.0, 0.5, 0.25, -1.0, 0.5, -0.25, 0.25, -1.0, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array1 = new Float32Array([-1.0, 0.75, -0.75, -0.75, 0.25, -0.25, -0.5, -0.25, -1.0, 0.75, -0.5, 1.0, -1.0, 0.25, -0.5, 0.5, -0.75, 1.0, -0.25, 1.0, 0.75, 0.75, -0.5, 0.25, 0.75, 0.0, 0.0, 0.75, 0.0, 0.5, 0.75, -0.5, -1.0, -0.75, 1.0, -0.5, 0.25, -1.0, 0.75, -0.75, 1.0, -0.75, 0.75, 0.75, -1.0, -1.0, -0.75, -0.75, -0.75, 0.75, -1.0, -0.25, 0.0, 0.75, 0.5, 1.0, 0.25, -0.5, -0.25, 1.0, 0.75, 0.25, 1.0, -0.25, -1.0, 0.5, 0.75, 1.0, 0.5, 0.25, 0.5, -1.0, -0.25, 1.0, -0.25, 1.0, -1.0, -0.75, -0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.0, -0.75, 0.75, 0.5, -0.25, 0.5, 1.0, 0.5, -0.75, 0.5, 0.0, 1.0, 0.75, 0.5, 0.75, 0.25, ]);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.0, -1.0, 0.0, 0.5, 0.0, 0.75, 0.75, -0.25, -0.25, 1.0, -0.5, 0.0, 1.0, -0.5, -0.25, -0.25, -1.0, -1.0, -0.75, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, 1.0, 0.5, -0.75, -0.75, 0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 0.25, -0.75, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, -0.75, 1.0, 0.75, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, -0.5, 0.75, 0.75, 0.0, 0.25, 0.0, 0.0, 0.75, 0.0, 0.75, 0.5, 0.25, -0.25, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 1.0, -0.25, -1.0, -0.25, -0.5, -0.75, 0.25, -0.75, -0.75, -0.25, -0.75, -0.25, -0.75, 0.0, 0.0, -0.25, -0.5, -0.75, -1.0, -1.0, 1.0, -0.5, -0.25, -0.75, -0.25, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device10.pushErrorScope("internal");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    device40.pushErrorScope("out-of-memory");
    command_encoder101.insertDebugMarker("mymarker");
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
    device20.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder101.insertDebugMarker("mymarker");
    device10.pushErrorScope("validation");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder101.insertDebugMarker("mymarker");
    
    compute_pass_encoder1000.popDebugGroup()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const array3 = new Float32Array([-0.75, 0.0, 0.0, -0.75, 0.75, -0.75, 0.75, -0.75, -0.75, 0.75, 0.0, 0.5, -1.0, 1.0, 1.0, 0.0, 0.25, -0.5, 1.0, 0.5, -0.5, 0.0, -0.5, -0.5, -1.0, 0.75, 0.0, -0.5, -0.25, 0.0, 0.75, 0.5, -0.5, 1.0, -1.0, 1.0, 0.25, 0.25, 0.75, -1.0, -0.25, 0.0, 0.75, -1.0, -0.25, 0.75, 0.75, 0.75, -0.25, 0.0, -1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -0.75, 0.25, -0.5, 0.0, 0.75, -0.75, -0.25, 0.0, -0.75, -0.75, -0.5, 1.0, 0.75, 0.75, 0.0, -0.75, 0.0, 0.0, -0.5, -0.75, -1.0, 0.0, 0.0, -0.25, -0.25, 0.0, 0.0, -1.0, 0.0, -0.75, -0.25, 0.5, 0.5, 0.0, -1.0, 0.25, -0.25, -0.75, -0.5, 0.75, -0.75, -0.25, 0.0, -1.0, ]);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    texture101.destroy();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    const command_buffer104 = command_encoder104.finish();
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_pass_encoder1030.popDebugGroup();
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    device10.pushErrorScope("out-of-memory");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1030.executeBundles([])
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture400.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture100.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_pass_encoder1030.insertDebugMarker("marker");
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
    
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder3020.insertDebugMarker("marker")
    device00.pushErrorScope("out-of-memory");
    device40.queue.submit([command_buffer400, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device50.destroy();
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    device30.queue.submit([]);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer104, ]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const array4 = new Float32Array([-0.75, -1.0, 0.0, 0.5, -1.0, 0.75, -0.5, -1.0, 0.25, -0.25, 0.25, 0.75, 0.75, -1.0, -0.5, 0.5, -0.75, -0.5, -0.25, -0.75, 1.0, 0.0, -0.25, 0.75, -0.75, 0.25, 1.0, 0.0, 0.25, 1.0, 0.25, 0.25, -0.5, 0.0, -0.25, 1.0, -0.75, 0.75, 1.0, 0.5, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, -1.0, -0.75, 0.75, -0.5, 0.75, 0.5, -0.5, -0.25, 0.75, 0.25, 0.0, 1.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.75, 1.0, 0.25, -0.25, 0.75, -1.0, 0.5, -1.0, -1.0, -0.5, 0.5, -0.75, -1.0, 0.75, 0.25, 0.75, 0.75, 0.25, 0.5, 1.0, -1.0, -0.75, -0.75, -0.25, -0.25, -0.5, 0.25, -1.0, 0.25, 0.25, -0.75, -0.75, -0.25, -0.5, 0.25, 0.25, -0.25, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device50.destroy();
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    device30.queue.submit([command_buffer301, ]);
    
    
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
    render_pass_encoder1010.popDebugGroup();
    
    device10.destroy();
    
    device40.pushErrorScope("validation");
    
    const command_buffer303 = command_encoder303.finish();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
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
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder304.copyBufferToBuffer(
        buffer301,
        0,
        buffer301,
        0,
        400
    );
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
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device60.pushErrorScope("validation");
    
    
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
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
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    
    const array5 = new Float32Array([0.0, -0.25, 1.0, -0.25, 0.25, -0.5, -0.75, -0.75, -0.25, 1.0, -0.5, -1.0, 0.5, -0.25, -1.0, -0.5, 0.0, -1.0, 1.0, -0.25, -0.5, 0.25, 1.0, -0.25, 0.0, 0.25, -0.5, 1.0, -1.0, 0.75, -0.5, -0.5, 0.75, 0.75, 1.0, 1.0, 0.75, -0.75, 0.0, 1.0, -0.5, -0.5, 1.0, -0.75, 1.0, 0.25, -0.5, 0.25, -1.0, -0.5, -0.75, -0.25, -1.0, 0.75, 0.75, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, -0.75, -0.25, 0.5, 0.75, 0.5, 0.25, 0.5, -0.75, -0.25, -0.5, 1.0, 0.5, -1.0, 0.75, 0.0, 1.0, -1.0, 1.0, 0.25, 0.5, 0.0, -1.0, 0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -0.25, 0.5, 0.5, 0.75, -1.0, 0.0, 1.0, 0.5, 0.75, -0.5, 0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device40.queue.submit([]);
    const array6 = new Float32Array([-0.5, -1.0, -0.75, -1.0, 1.0, -1.0, -1.0, 0.0, 0.0, 1.0, 0.5, 0.0, -0.25, 1.0, 0.75, -0.25, -0.25, -0.5, -0.75, 0.75, 0.75, 0.5, -0.25, 0.25, -1.0, 1.0, 1.0, 0.75, 0.5, 0.75, 0.0, -0.25, -0.5, -0.5, -1.0, -1.0, 0.25, -0.75, 0.75, 1.0, -0.5, 1.0, -0.5, -1.0, 0.5, 0.75, -0.25, 0.5, -0.25, -1.0, -0.75, 0.75, 0.75, -0.25, 0.25, -1.0, 0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.25, 0.0, -0.5, -0.25, 1.0, 0.0, -0.25, -0.75, 0.5, 0.75, -0.75, -1.0, -0.5, -0.25, 1.0, -0.25, 0.0, -0.75, -1.0, 1.0, -0.25, -0.5, -0.5, -1.0, -0.25, 0.25, 0.0, 0.75, 0.25, -1.0, 0.25, -0.25, 0.0, 0.5, 0.25, -0.75, 0.0, -0.25, ]);
    render_pass_encoder1031.executeBundles([])
    render_pass_encoder3040.pushDebugGroup("group_marker");
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    command_encoder403.clearBuffer(buffer401);
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.destroy();
    
    
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    texture600.destroy();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const command_buffer401 = command_encoder401.finish();
    device40.pushErrorScope("out-of-memory");
    
    
    device00.queue.submit([]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    
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
    command_encoder000.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    command_encoder402.copyBufferToBuffer(
        buffer402,
        0,
        buffer402,
        0,
        400
    );
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture401.destroy();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder4030.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    command_encoder402.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.insertDebugMarker("mymarker");
    const command_buffer001 = command_encoder001.finish();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
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
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    device40.pushErrorScope("out-of-memory");
    const array7 = new Float32Array([-1.0, 0.0, -0.5, 1.0, 1.0, 0.0, -0.25, -0.75, -0.25, -0.5, -0.5, 0.75, -0.75, -1.0, -0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.75, 0.0, -1.0, -0.75, 0.75, 0.0, 0.75, 0.25, 0.25, 0.25, 1.0, 0.0, 0.25, -0.25, 0.5, 0.75, 0.75, 0.0, 0.0, 0.0, -1.0, -0.5, -0.25, 0.75, 0.5, 0.75, -0.5, -0.75, -0.75, 0.25, 1.0, -0.75, -0.75, 1.0, 0.75, 0.25, -1.0, -0.25, -0.75, 0.25, -0.75, -0.25, -0.75, 0.0, -0.5, 0.75, -0.5, -0.5, -0.5, 0.0, -0.5, -0.5, 0.25, 0.75, -1.0, -0.75, -0.5, -0.25, 0.0, 0.75, -0.75, -1.0, -1.0, 0.25, -0.5, 1.0, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 0.75, 0.0, -0.25, 0.75, -1.0, -0.75, 0.25, 0.0, ]);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    texture601.destroy();
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder404.copyBufferToBuffer(
        buffer401,
        0,
        buffer401,
        0,
        400
    );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    command_encoder402.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline402);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.setPipeline(compute_pipeline400);
    device80.pushErrorScope("internal");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    device40.queue.submit([command_buffer401, ]);
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
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder405.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture000.destroy();
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder405.clearBuffer(buffer402);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer001, ]);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([1.0, 0.25, -0.25, 0.75, -0.5, 0.25, 0.75, -0.75, -0.75, -0.75, 1.0, -1.0, 0.25, -0.75, 0.75, 0.25, -0.25, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, 0.5, -1.0, -0.5, 1.0, 1.0, -0.5, -1.0, 0.5, 1.0, 0.25, -0.75, -1.0, 0.25, 0.5, 0.25, 0.25, 0.75, 0.25, -0.5, 0.0, 0.5, -0.75, 0.75, -1.0, -0.75, 0.5, 0.0, 1.0, -0.75, -0.5, -1.0, -0.25, 0.0, 0.5, 0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -1.0, 0.0, 0.5, 0.5, -1.0, -0.25, 0.0, 0.25, 0.5, -0.25, 0.0, 0.75, 0.5, -0.75, 0.5, 0.5, -0.25, -0.75, 0.25, -0.5, -0.25, -0.5, 0.5, 0.0, 1.0, -0.75, 0.5, -0.75, 1.0, 0.75, -1.0, 0.75, -0.75, 0.0, -0.5, -1.0, 0.25, ]);
    command_encoder404.insertDebugMarker("mymarker");
    command_encoder405.copyBufferToBuffer(
        buffer402,
        0,
        buffer404,
        0,
        400
    );
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
    command_encoder404.copyBufferToBuffer(
        buffer402,
        0,
        buffer402,
        0,
        400
    );
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device10.pushErrorScope("internal");
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture601.destroy();
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    command_encoder404.clearBuffer(buffer404);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    command_encoder403.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    
    command_encoder404.clearBuffer(buffer402);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1031.setStencilReference(1);
    device00.pushErrorScope("internal");
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    device80.destroy();
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
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
    
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    texture001.destroy();
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    command_encoder601.copyBufferToBuffer(
        buffer601,
        0,
        buffer602,
        0,
        400
    );
    
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder6020.setPipeline(compute_pipeline600);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    command_encoder404.copyBufferToBuffer(
        buffer402,
        0,
        buffer402,
        0,
        400
    );
    
    
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const command_buffer405 = command_encoder405.finish();
    compute_pass_encoder4020.popDebugGroup()
    device00.queue.submit([]);
    device90.queue.submit([]);
    const command_buffer404 = command_encoder404.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6020.popDebugGroup()
    device00.queue.submit([]);
    device40.queue.submit([command_buffer400, command_buffer404, command_buffer405, ]);
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer602, ]);
}