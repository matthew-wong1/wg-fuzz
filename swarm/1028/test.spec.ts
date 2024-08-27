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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.pushErrorScope("out-of-memory");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer001.destroy()
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
    device10.pushErrorScope("out-of-memory");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array0 = new Float32Array([0.0, -0.25, 0.75, -1.0, 1.0, -0.75, -0.25, 0.75, -1.0, 0.75, 0.25, 0.25, 0.5, -0.75, 0.75, 0.0, 1.0, 0.25, -0.5, -0.5, -0.75, -0.25, -0.25, 1.0, 0.5, 0.5, 0.25, 1.0, 0.25, 1.0, -0.5, 1.0, 0.25, 0.5, 0.0, -0.75, 0.5, -0.25, -1.0, 0.75, 0.25, 0.5, 0.75, 0.0, 0.0, 0.75, -1.0, 0.25, -0.5, -0.5, -1.0, 0.75, 0.25, 0.0, 0.0, 0.5, -0.75, -0.75, -0.5, 0.5, -0.5, 0.0, -1.0, 1.0, -0.75, -0.25, 0.25, -0.75, -0.25, 1.0, -0.25, -0.5, 0.75, -0.25, 0.25, 0.5, 0.5, -0.5, 0.0, -0.75, 0.25, 0.25, 0.0, 0.0, 0.5, -0.25, 0.25, -0.75, 0.25, 0.75, -0.25, 0.25, -0.5, 0.75, 0.25, -1.0, -1.0, 1.0, 1.0, -0.5, ]);
    const command_buffer000 = command_encoder000.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer100 = command_encoder100.finish();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    device00.queue.submit([command_buffer000, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    buffer000.destroy()
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
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
    buffer103.destroy()
    
    const array1 = new Float32Array([-0.25, -0.5, -0.75, -0.25, 0.5, 0.0, 0.75, -0.75, -0.5, 0.0, 0.25, 0.25, -0.75, 0.5, -0.75, -0.75, 1.0, 0.5, 1.0, -0.75, 1.0, -1.0, 0.25, 0.5, 0.25, -0.75, -0.75, 0.0, 0.0, -0.25, -1.0, 0.5, -1.0, 0.5, -1.0, 0.5, -0.5, -0.25, 0.5, 0.75, -0.5, -0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, -0.75, -1.0, 0.5, 0.0, 0.5, -0.25, -1.0, -1.0, 0.0, 0.0, 1.0, 1.0, 0.5, 0.5, 0.75, 0.0, -0.25, -1.0, 0.5, -1.0, 0.0, -0.75, 0.5, 1.0, -0.5, -0.25, 0.5, -1.0, 0.75, 0.75, -1.0, 0.75, -0.75, 1.0, 1.0, 0.75, 1.0, -0.25, 0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 0.25, 0.5, -0.5, 0.0, 0.25, 0.5, 0.0, -0.75, ]);
    texture000.destroy();
    buffer101.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    texture001.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
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
    buffer000.destroy()
    
    device10.queue.submit([command_buffer100, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    buffer102.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer002.destroy()
    
    device20.pushErrorScope("out-of-memory");
    device00.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture100.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer200 = command_encoder200.finish();
    buffer200.destroy()
    
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    texture101.destroy();
    buffer100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder102.popDebugGroup();
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_buffer203 = command_encoder203.finish();
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer201.destroy()
    
    device20.pushErrorScope("validation");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.25, 0.25, -1.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, 0.75, 1.0, -0.25, -0.75, -0.5, 0.5, -0.75, 0.5, 0.5, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.5, -0.5, -0.5, 0.25, -0.75, 0.25, 0.25, 0.5, 0.75, 0.0, -1.0, -1.0, 0.0, 0.25, 0.5, 0.25, -0.25, -0.25, -0.25, 1.0, -0.25, 1.0, 0.5, 1.0, 0.75, 1.0, 0.5, -0.75, 0.0, -0.25, 0.0, 0.0, 0.75, 0.75, -1.0, 0.0, 0.0, 0.25, 0.75, 0.5, 0.0, 0.75, 0.0, 0.5, 0.5, 0.5, -0.75, 0.0, -1.0, -0.75, 0.0, -0.25, -1.0, -0.75, 0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -0.5, 0.0, 0.75, 0.75, 0.75, 1.0, 0.25, 0.0, 0.25, 0.25, 0.0, -1.0, -0.25, -0.5, -1.0, ]);
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array3 = new Float32Array([1.0, 0.0, 0.5, -0.75, -0.25, 0.75, 0.5, -0.25, -0.75, 0.75, 1.0, 0.75, 0.5, -0.5, 1.0, 1.0, -1.0, 0.25, 0.0, 0.5, -0.75, -0.25, -0.5, 0.75, 0.75, -1.0, 1.0, 0.5, -0.75, -0.75, 0.25, 0.25, -1.0, -0.75, 0.5, -0.75, -1.0, -0.75, 0.25, -0.5, 0.0, -0.75, -0.5, -1.0, 0.0, -0.75, 0.25, 0.25, 0.0, -0.75, 1.0, -0.75, 0.75, -0.25, -0.75, -0.25, 0.75, 0.0, -1.0, -0.25, -0.25, 0.0, 0.25, 0.0, 0.75, -0.5, 0.75, 1.0, 0.25, 0.75, -0.25, -0.75, -0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -0.75, 0.0, 0.5, -0.25, 0.5, -0.5, 0.0, 1.0, 1.0, 0.25, -0.25, 0.5, -0.5, 0.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.75, 0.25, 1.0, ]);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder201.popDebugGroup();
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.queue.submit([command_buffer200, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder103.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    texture300.destroy();
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
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
    const command_buffer300 = command_encoder300.finish();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device30.pushErrorScope("validation");
    buffer300.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.pushErrorScope("out-of-memory");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder201.clearBuffer(buffer201);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
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
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder000.popDebugGroup();
    device50.pushErrorScope("validation");
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    texture300.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    command_encoder101.popDebugGroup()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer400.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.pushErrorScope("internal");
    device30.destroy();
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    buffer500.destroy()
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    
    
    buffer501.destroy()
    device50.pushErrorScope("internal");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder500.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    render_bundle_encoder103.popDebugGroup();
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
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
    buffer700.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder500.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array4 = new Float32Array([-1.0, -0.25, -0.5, 1.0, -0.5, 0.0, -1.0, -0.25, 1.0, 0.5, 0.5, 1.0, 1.0, 0.75, 0.5, 0.75, 0.5, 0.0, 0.75, 0.5, -1.0, 0.0, 0.75, -0.75, 0.5, 1.0, -0.75, -0.75, -1.0, 0.5, 0.75, -0.25, 1.0, -0.25, -0.75, 0.5, 1.0, 0.0, -0.75, -0.5, 0.5, 1.0, 0.25, -0.5, 0.75, 0.0, 0.75, -0.25, 0.25, -1.0, 0.0, -0.5, -1.0, -0.5, 0.25, -0.5, 0.5, 0.75, -0.25, -0.25, -0.25, 0.0, 0.75, 0.25, 1.0, 0.5, -0.25, 0.25, -0.25, 0.5, 0.25, -0.75, 0.75, 0.0, -0.25, 1.0, -1.0, 0.5, -0.25, 0.5, 0.75, -0.5, 0.75, 0.75, 1.0, -0.75, 0.75, -0.75, 1.0, 0.5, 0.25, -1.0, -0.5, -0.75, 0.0, -1.0, 0.5, -0.25, -0.75, -0.25, ]);
    command_encoder600.insertDebugMarker("mymarker");
    
    
    buffer502.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const command_buffer801 = command_encoder801.finish();
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer503.destroy()
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_buffer600 = command_encoder600.finish();
    const array5 = new Float32Array([1.0, 0.75, -1.0, -0.75, -0.75, -0.5, 0.5, 0.25, -1.0, 0.0, 0.75, 0.25, 0.75, 0.75, 0.0, -0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 1.0, 0.25, -1.0, 1.0, -1.0, 0.0, -0.25, 0.75, -0.75, -0.25, 0.5, -0.5, 1.0, -0.75, 0.25, 0.0, -0.25, 0.0, 0.25, -0.25, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, -0.75, -1.0, 0.25, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 1.0, 0.75, -0.25, 0.25, 0.5, -0.5, 0.0, -0.25, 0.25, -0.5, -1.0, 0.0, -1.0, -0.25, -0.25, 0.75, 0.75, -0.5, -0.75, 0.75, 1.0, 0.5, -0.5, -0.5, -0.5, 0.0, -1.0, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, 0.25, -1.0, 1.0, 0.75, 0.5, -0.25, 0.25, 1.0, -1.0, -0.25, -0.25, ]);
    device20.pushErrorScope("validation");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device60.pushErrorScope("out-of-memory");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture002.destroy();
    compute_pass_encoder5000.insertDebugMarker("marker")
    command_encoder500.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    buffer600.destroy()
    device70.queue.submit([]);
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder800.popDebugGroup();
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer501 = command_encoder501.finish();
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder601.copyBufferToBuffer(
        buffer600,
        0,
        buffer601,
        0,
        400
    );
    device50.queue.submit([command_buffer501, ]);
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    render_bundle_encoder502.popDebugGroup();
    device80.pushErrorScope("out-of-memory");
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    buffer600.destroy()
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    render_bundle_encoder701.insertDebugMarker("marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    device40.destroy();
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    device80.queue.submit([command_buffer801, ]);
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    device70.pushErrorScope("out-of-memory");
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    const command_buffer800 = command_encoder800.finish();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    compute_pass_encoder8000.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder7000.insertDebugMarker("marker")
    const sampler801 = device80.createSampler( { label: "sampler801" } );
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
    texture700.destroy();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    device80.pushErrorScope("out-of-memory");
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.popDebugGroup();
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    render_bundle_encoder600.popDebugGroup();
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder202.popDebugGroup();
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
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
    buffer601.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer800, ]);
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([]);
    command_encoder500.popDebugGroup()
    device50.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device60.queue.submit([command_buffer601, ]);
    device50.queue.submit([command_buffer501, ]);
    device70.queue.submit([]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer101 = command_encoder101.finish();
}