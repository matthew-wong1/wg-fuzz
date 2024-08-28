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
    const array0 = new Float32Array([0.0, -0.75, 0.75, 0.0, 0.75, -0.75, -0.5, 0.5, 0.25, 0.75, -0.25, -0.5, 0.75, 0.0, 0.5, 0.0, -0.25, 0.75, -0.5, -0.25, -0.25, 1.0, 0.5, 0.25, -1.0, 1.0, -1.0, 0.0, 1.0, -1.0, -0.75, -0.25, 0.0, -1.0, 0.75, -1.0, -0.25, 0.75, 0.75, 0.0, 0.0, -0.5, 0.25, -0.25, 1.0, 0.25, -0.25, 0.75, 0.25, -1.0, -1.0, -0.5, 0.25, 0.25, 0.25, 0.25, 0.75, -0.5, 0.75, -0.25, 0.0, 0.0, 0.25, -0.75, 0.5, -0.25, -0.25, -0.75, 1.0, 0.5, 0.75, 0.5, 0.25, 0.75, -1.0, -0.5, 0.75, 1.0, 0.5, -0.75, -0.5, -0.75, 0.75, -0.75, -0.5, 0.0, -0.5, 0.0, -0.5, -0.5, 0.75, -0.25, 0.25, 0.75, 0.75, -1.0, -0.5, -1.0, 0.0, -0.5, ]);
    
    const array1 = new Float32Array([0.75, 0.75, 0.75, 0.5, 0.25, 0.0, 0.25, 0.5, 0.0, -0.75, -0.25, -0.75, 0.75, 1.0, 1.0, 0.75, -1.0, -1.0, 0.0, -0.25, 0.75, 0.25, 1.0, 0.5, 0.0, 0.25, 0.5, -1.0, -0.5, 0.75, -0.5, -0.25, 0.75, 0.25, -0.5, 0.25, 0.75, -0.5, 1.0, -0.75, -0.5, -0.75, 0.0, 0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -1.0, -1.0, -1.0, 1.0, 1.0, -1.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.0, 0.5, -0.75, -0.75, -0.75, 0.75, -1.0, -1.0, 0.0, -1.0, 0.5, -0.75, 1.0, -0.5, 0.75, -0.25, 0.75, 0.5, 0.5, -1.0, 0.5, -0.25, -0.75, -0.75, -0.75, -0.75, -0.25, 0.5, 0.75, 0.75, -0.25, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, 0.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([0.0, -0.5, -0.5, -0.75, -0.75, 0.5, -0.25, -1.0, -1.0, -0.5, 1.0, -1.0, -0.5, 0.25, 1.0, -1.0, 0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 0.5, 0.0, -0.5, -0.75, 0.25, 0.0, 1.0, -0.25, -1.0, -0.25, -0.25, -0.75, -1.0, 0.5, -0.75, -1.0, -0.75, 1.0, -0.25, 0.75, 0.75, 0.0, 0.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.5, -1.0, 1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.0, -1.0, 0.0, -0.5, 0.25, -1.0, -0.25, 0.25, 0.5, 0.75, -0.25, -0.5, 0.5, -0.5, 0.75, 0.0, 0.5, 0.5, 1.0, -0.75, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.0, 1.0, -0.75, 0.25, 0.5, 0.0, -0.5, -1.0, -0.5, -0.5, 0.0, 1.0, -1.0, -0.75, 1.0, ]);
    
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    command_encoder000.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const array3 = new Float32Array([-0.5, -0.5, 0.0, 1.0, -0.25, -0.5, -0.25, 0.25, 0.75, 0.25, 0.75, 0.5, 0.25, -1.0, 0.25, 0.5, 1.0, 0.0, 0.5, -0.25, -0.75, 1.0, 0.75, 1.0, 0.25, 0.75, -0.25, -1.0, 0.75, 1.0, 0.25, 0.5, -0.25, 0.75, -0.75, -1.0, -0.5, 0.25, 0.25, -1.0, 1.0, -1.0, 1.0, 0.25, 0.5, 0.5, 1.0, 0.75, 1.0, -0.5, 1.0, -0.25, 0.25, -0.75, -0.75, 0.75, -0.25, 1.0, 0.75, -0.25, -1.0, 0.0, 0.25, 0.25, 0.25, -1.0, 0.5, -0.75, 0.75, -0.75, -0.25, -0.25, 1.0, 0.75, 0.25, -0.25, -0.5, -0.5, -0.75, -0.5, 0.5, -0.5, -0.75, 0.25, 0.5, -0.75, 0.0, 0.25, -1.0, -0.25, -0.5, 0.0, -0.25, -0.25, 0.5, 0.5, 0.5, 0.25, 0.75, -1.0, ]);
    command_encoder101.clearBuffer(buffer100);
    const command_buffer101 = command_encoder101.finish();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const command_buffer103 = command_encoder103.finish();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_buffer001 = command_encoder001.finish();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
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
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const array4 = new Float32Array([-0.75, -0.25, -0.75, -0.25, -0.75, -0.75, -0.25, 1.0, 1.0, -0.25, -1.0, 0.75, 0.75, -0.75, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, 1.0, 0.0, 0.5, 1.0, 0.0, 1.0, 0.5, -0.25, 0.75, 0.75, 0.75, 0.25, -1.0, 0.25, 0.5, 0.0, 0.0, 0.25, -0.25, 0.75, 0.0, 0.5, 0.75, -0.25, 0.5, -1.0, -0.75, -0.5, 0.25, 0.0, 0.75, -1.0, 0.25, -0.75, -0.5, -0.25, -1.0, -1.0, 0.0, -0.25, 0.75, 1.0, 0.25, 1.0, -0.25, -0.75, -0.75, -0.5, 0.25, -0.25, 0.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.75, 0.25, -0.5, 0.5, -0.75, -0.5, -0.5, -0.5, -1.0, 1.0, 0.5, -0.25, -0.75, -0.5, -0.75, -0.5, -0.75, 0.25, 1.0, -0.25, -0.75, -0.5, -0.5, 0.75, ]);
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
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
    command_encoder105.insertDebugMarker("mymarker");
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, ]);
    const array5 = new Float32Array([0.5, -0.75, 1.0, 1.0, 0.0, -1.0, 0.25, 1.0, -1.0, 0.0, 0.0, -0.75, -1.0, -0.75, -0.5, 0.0, -0.5, -0.5, -0.5, 0.5, -0.5, -0.25, -1.0, -0.5, 0.75, 0.75, 1.0, -0.25, 0.0, 0.25, 0.0, -0.25, -0.75, -0.25, -0.75, -0.5, -0.5, 1.0, -1.0, 0.75, -0.5, -0.25, 0.5, -0.5, 1.0, -1.0, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 0.25, -0.25, 0.5, 0.5, 0.0, 1.0, 0.75, 0.75, 0.75, 0.5, -0.25, 0.5, 1.0, -1.0, 1.0, 0.25, -1.0, -0.5, 0.5, 0.75, -0.75, 0.75, -1.0, 1.0, -1.0, -1.0, 0.25, 0.5, 0.5, -1.0, 0.0, -0.25, -1.0, 0.0, 1.0, 1.0, 0.25, 0.5, 0.75, 0.25, 1.0, -1.0, -0.5, 1.0, 0.0, 0.75, 0.0, -1.0, ]);
    
    
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
    compute_pass_encoder0000.popDebugGroup()
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder105.clearBuffer(buffer102);
    command_encoder105.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder106.pushDebugGroup("mygroupmarker")
    
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder200.insertDebugMarker("mymarker");
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder105.clearBuffer(buffer102);
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const array6 = new Float32Array([-1.0, 0.25, -0.25, 0.75, -1.0, -0.75, -1.0, 0.0, 0.5, 0.0, 0.25, 0.75, -0.75, -1.0, 0.25, 0.0, -0.75, -0.5, 0.25, 0.25, -0.5, -1.0, 0.5, 0.0, -0.25, -0.75, 0.75, -0.75, 0.5, -0.25, -0.75, 0.5, -0.5, 1.0, 0.5, -0.75, 0.25, 0.5, 0.5, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, 0.75, 1.0, -0.5, -0.5, -0.75, -1.0, -0.5, 1.0, 0.5, -0.5, 0.5, 0.25, -0.25, -0.25, -1.0, 0.25, 1.0, -0.5, 0.0, -1.0, 0.0, 0.0, 0.25, 0.0, -0.75, -0.25, -0.75, -0.25, 0.25, -0.75, 0.0, 0.5, 0.75, 0.0, 1.0, -0.25, 0.75, -1.0, -1.0, -0.25, -0.25, -1.0, 0.5, 0.25, -0.75, -1.0, 0.25, -1.0, -0.25, -0.25, -0.25, -0.75, -1.0, -0.5, -0.75, ]);
    command_encoder105.clearBuffer(buffer100);
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
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.popDebugGroup()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder105.clearBuffer(buffer100);
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder105.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder106.clearBuffer(buffer102);
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    command_encoder105.clearBuffer(buffer100);
    compute_pass_encoder0000.popDebugGroup()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder106.popDebugGroup()
    
    command_encoder200.popDebugGroup()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const array7 = new Float32Array([-1.0, 0.25, -0.25, 1.0, -0.25, 0.5, 0.75, -0.75, 0.5, -0.75, 0.25, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, -0.5, -0.75, 0.25, 0.0, -0.5, -0.25, -0.5, 0.25, 0.25, 1.0, 0.0, 1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.75, 1.0, -0.75, 0.25, 0.0, -0.5, 0.25, 0.75, 0.5, -0.75, -1.0, 0.25, -1.0, 0.75, 1.0, -0.5, 0.0, -1.0, 0.25, -0.5, 0.5, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.75, 0.5, 0.0, 0.75, -1.0, 0.25, -0.5, 0.75, 1.0, 0.75, 0.5, -0.5, 0.0, 0.0, -0.25, 0.25, 1.0, -1.0, -1.0, 0.5, 0.5, -0.5, 1.0, -0.25, 0.5, -0.25, 0.75, 0.75, 0.75, -0.5, 0.75, -0.5, 0.75, -0.75, -0.75, -0.5, -0.25, 1.0, 0.75, ]);
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    command_encoder105.popDebugGroup()
    command_encoder108.clearBuffer(buffer100);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_buffer105 = command_encoder105.finish();
    const command_buffer106 = command_encoder106.finish();
    
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
    command_encoder108.pushDebugGroup("mygroupmarker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder108.clearBuffer(buffer100);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    command_encoder200.popDebugGroup()
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
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
    
    const array8 = new Float32Array([-0.5, 0.75, 0.25, 0.5, -0.5, 0.75, 0.0, -0.5, 0.25, 0.75, -0.75, 0.5, 1.0, 0.0, -0.75, -0.75, -0.5, -0.5, -0.5, 0.25, 1.0, 0.5, -0.25, 1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 0.25, -1.0, -1.0, 0.75, -0.75, 0.75, 0.75, 0.75, 0.25, 0.75, 0.5, -0.5, 0.75, 0.5, -0.25, 1.0, 0.25, -1.0, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 0.5, -1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 1.0, -0.25, 0.75, 0.25, 1.0, 0.0, -0.75, -0.5, 1.0, 0.25, -0.25, -0.25, 1.0, 1.0, 0.25, 0.0, 0.25, 0.0, -0.5, 1.0, -1.0, 0.75, 0.5, 0.0, 0.25, 0.75, 0.25, 0.75, 0.0, -1.0, 1.0, -1.0, -1.0, -1.0, ]);
    command_encoder108.popDebugGroup()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder108.clearBuffer(buffer102);
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
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
    command_encoder108.insertDebugMarker("mymarker");
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    
    
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder108.clearBuffer(buffer100);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.popDebugGroup()
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
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder108.pushDebugGroup("mygroupmarker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder108.clearBuffer(buffer100);
    
    
    
    command_encoder108.clearBuffer(buffer102);
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    
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
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const array9 = new Float32Array([-0.25, 1.0, 1.0, -0.5, 0.75, -0.25, 0.5, 0.5, 1.0, -1.0, 0.25, 0.0, 0.25, -0.5, -0.75, -1.0, 0.5, 0.25, -0.75, 0.0, -0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 1.0, 1.0, -0.75, 0.75, -0.25, -0.5, 1.0, 1.0, -0.75, -0.75, -0.5, -0.75, -0.5, -1.0, 1.0, -0.5, 0.0, -0.25, 0.5, -0.25, -0.75, -1.0, -1.0, 0.0, -0.25, 0.75, -0.75, -0.25, -0.5, 0.0, -0.75, 0.0, 0.25, -0.25, 0.75, 0.25, 0.25, 0.75, -0.25, -0.25, -0.75, 0.0, -0.25, 1.0, -0.75, 0.5, 0.25, -0.25, 0.5, -0.5, 1.0, -0.25, 0.25, -0.75, -0.25, 1.0, 0.25, -1.0, -0.25, 0.25, 0.25, -0.75, 0.0, 1.0, -0.25, 0.25, -0.5, 0.5, 0.5, -0.25, 0.75, 0.5, 0.0, 0.0, ]);
    
    
    
    
    
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
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
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    compute_pass_encoder1070.popDebugGroup()
    
    
    
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const bind_group_layout1010 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1010",
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
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder402.insertDebugMarker("mymarker");
    
    
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder4000.popDebugGroup()
    
    
    
    
    
    
    command_encoder003.insertDebugMarker("mymarker");
    
    compute_pass_encoder2000.popDebugGroup()
    
    command_encoder401.insertDebugMarker("mymarker");
    const bind_group_layout1011 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1011",
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
    command_encoder003.insertDebugMarker("mymarker");
    
    
    
    
    command_encoder003.clearBuffer(buffer000);
    compute_pass_encoder0020.popDebugGroup()
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    
    
    command_encoder003.clearBuffer(buffer000);
    
    
    const command_buffer402 = command_encoder402.finish();
    
    
    
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer204 = command_encoder204.finish();
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    command_encoder004.clearBuffer(buffer000);
    
    
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    command_encoder202.insertDebugMarker("mymarker");
    device40.queue.submit([command_buffer402, ]);
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const array10 = new Float32Array([1.0, 1.0, -0.5, 0.0, 0.25, 1.0, 0.25, 0.25, -0.75, 0.75, 0.75, 1.0, -1.0, 0.75, 0.0, 0.75, 0.0, -0.75, 0.25, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, 0.0, 0.75, 1.0, 0.75, -1.0, 0.75, 0.75, -1.0, 0.25, 0.5, -1.0, 0.5, -1.0, -0.5, -0.25, -1.0, -0.75, 0.0, -0.5, 0.5, 0.25, -1.0, 1.0, 0.5, -0.25, -1.0, -0.75, -1.0, -0.25, 0.25, -0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -0.75, -1.0, 0.5, -0.5, -0.75, -0.5, -0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 1.0, 0.75, -0.5, -0.25, -0.25, 0.0, -0.25, -0.25, -0.5, 0.0, -0.75, 0.25, 0.5, -0.25, -1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 0.25, -0.75, -1.0, 0.0, 1.0, -1.0, 0.25, ]);
    
    
    
    command_encoder004.clearBuffer(buffer000);
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder1080.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer005 = command_encoder005.finish();
}