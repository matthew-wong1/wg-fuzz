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
    const array0 = new Float32Array([0.0, 0.0, 0.75, -0.25, -0.75, -0.25, 0.25, -1.0, 0.25, -0.75, 0.0, 1.0, -1.0, 0.5, -0.25, 0.0, -0.5, 0.5, 0.25, 0.25, -1.0, 1.0, 0.75, -1.0, -0.5, 1.0, -0.5, -0.25, 0.0, -0.75, 1.0, 0.0, 0.5, 0.0, -0.25, -1.0, 0.25, 1.0, -0.25, -0.5, 1.0, 0.5, -0.75, 0.25, -0.25, 0.25, 1.0, 1.0, -0.75, -0.5, 0.25, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, -1.0, -0.25, -0.75, 0.5, 0.0, 0.75, 0.5, -1.0, -1.0, -0.75, -0.25, -0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 0.0, -0.5, 0.75, -0.5, -1.0, 0.5, 0.0, -0.25, 0.25, -0.5, -1.0, 0.0, 0.25, 0.75, -0.5, -1.0, 0.0, -1.0, 0.25, 0.5, 0.5, -1.0, -0.5, -0.5, -1.0, ]);
    
    
    
    const array1 = new Float32Array([0.25, -0.5, -0.75, 0.5, -0.75, 1.0, -0.75, -0.75, 0.75, 0.0, 0.25, 1.0, -1.0, 0.25, -0.25, -0.5, 0.5, 1.0, -0.25, -0.25, 0.75, 0.0, -0.75, -0.5, -0.75, 0.25, 0.75, -0.5, 1.0, 0.5, 0.75, -0.25, 0.0, 0.25, 0.25, -1.0, -1.0, -0.5, 0.75, -1.0, 1.0, -0.5, -0.25, -0.25, -0.25, 0.75, -0.5, -1.0, 0.75, -0.5, -0.5, 0.75, 0.5, 0.75, -0.5, -0.25, -1.0, 0.5, 0.25, -1.0, 1.0, 0.5, 0.0, 1.0, 1.0, -0.75, 0.75, -0.75, -0.25, 1.0, 0.25, -0.5, -1.0, 0.5, 0.5, -1.0, -0.25, -1.0, -0.75, 0.75, 0.25, -0.75, -1.0, -0.75, -1.0, 0.25, -1.0, -1.0, 0.25, 0.25, 0.25, 0.5, -0.5, 0.75, -0.75, -0.75, 0.75, -1.0, 0.0, -0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.25, -1.0, -0.75, 0.0, 0.75, 0.75, 0.5, -0.25, 0.5, -0.75, 0.25, -1.0, 0.75, -0.75, 0.0, 0.25, 0.0, 1.0, 0.25, 0.5, 1.0, 0.5, 0.0, -0.25, -0.25, -0.5, 1.0, 0.0, 0.5, 0.5, 1.0, 0.75, -0.25, -0.75, -0.5, -0.25, -1.0, 0.5, 1.0, -0.75, -1.0, 0.75, 1.0, 0.25, 0.5, -0.25, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, 0.75, 0.25, -1.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.5, -1.0, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, 0.75, 1.0, -0.75, -0.25, 0.75, 0.75, 0.5, 0.5, 0.25, -0.25, -0.25, -1.0, 1.0, 0.5, -0.25, 0.5, 1.0, 0.25, -1.0, 0.5, -0.5, -0.75, 0.25, -0.5, 0.75, 0.25, 0.5, 0.5, 0.0, -0.5, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
        usage: GPUBufferUsage.VERTEX
    });
    const array3 = new Float32Array([0.0, -0.75, 0.5, -1.0, -0.75, 0.5, 0.0, -1.0, 1.0, -0.75, -0.5, -0.25, 0.5, 0.75, -1.0, 0.25, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, -0.75, -1.0, 1.0, -0.5, -1.0, 0.25, 0.0, 0.5, -0.75, -1.0, 0.5, -0.5, 0.0, 0.75, 0.25, -0.75, 0.5, -0.5, -1.0, 0.25, 0.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.75, 1.0, 0.0, 0.0, 0.5, 0.5, 0.0, 0.0, -0.75, -1.0, 0.75, 0.5, -0.25, 0.0, 0.25, 1.0, -0.75, 0.75, 1.0, 1.0, -0.5, -1.0, -1.0, 0.25, -1.0, -1.0, 0.25, 0.5, 1.0, -1.0, -0.5, 0.5, -1.0, -0.25, -0.5, -0.75, -1.0, -0.25, 0.0, -0.25, -0.75, -0.25, 1.0, -0.25, 1.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.5, 0.0, ]);
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
    const array4 = new Float32Array([-0.5, -0.75, 0.25, 0.25, -0.75, -0.5, -0.5, 0.25, -0.75, -1.0, -1.0, -1.0, -0.75, 1.0, 0.5, 0.75, 0.75, -1.0, 1.0, -1.0, 0.5, 0.75, -1.0, -0.5, 0.25, 0.25, -0.25, 0.25, -0.25, -0.5, -0.25, -0.5, 0.5, 0.0, -1.0, -0.25, -0.25, 0.0, -0.75, 1.0, 0.75, 0.75, 1.0, 0.0, -0.5, 0.5, -0.25, -1.0, 0.75, 0.0, 0.75, -1.0, 0.0, 0.25, -1.0, 1.0, 1.0, 1.0, -1.0, 0.75, -1.0, -1.0, 0.0, -0.5, 0.5, 0.0, -0.5, 0.75, -0.5, -0.25, -0.5, -1.0, 0.5, -1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -1.0, -0.75, -0.75, -0.25, -1.0, -0.5, 1.0, 0.5, -1.0, 0.25, -0.25, -1.0, 1.0, -0.5, 1.0, -0.25, 0.25, -0.25, -1.0, 0.25, -0.5, ]);
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    buffer100.destroy()
    device30.pushErrorScope("validation");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
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
    const array5 = new Float32Array([-0.75, -1.0, 0.75, 0.5, 0.0, 1.0, -0.5, 0.25, -1.0, 0.0, 0.5, -0.5, -1.0, -1.0, -0.5, -0.25, 1.0, -1.0, 0.75, -0.5, 0.5, 0.5, 0.25, -1.0, 0.75, -0.75, -0.5, -0.5, -0.25, -1.0, 0.75, 0.75, -1.0, 1.0, 0.75, 0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 0.0, 1.0, 0.75, 0.5, -1.0, 0.75, 0.25, -0.5, -0.25, 0.0, -1.0, 0.75, 0.0, -0.25, 0.75, 0.5, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, -0.75, 1.0, -0.5, 0.5, 0.25, 1.0, -0.75, 0.0, -0.25, 1.0, -1.0, 0.25, -0.5, 0.25, 0.0, -0.25, 1.0, -1.0, 0.75, -0.25, -1.0, -0.5, 1.0, -1.0, -0.5, -0.75, 0.5, -0.75, -0.5, 1.0, -0.75, 0.25, 0.5, -0.75, -0.25, 0.5, -1.0, ]);
    device10.pushErrorScope("out-of-memory");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    
    
    
    const array6 = new Float32Array([-0.25, 0.5, 0.25, 0.5, -0.5, 0.0, -1.0, 1.0, -0.25, -0.5, -0.75, -0.5, -0.75, -0.25, -1.0, 0.0, 1.0, 0.0, 0.75, 1.0, -1.0, -0.5, 0.25, 0.75, 1.0, 0.25, -1.0, 0.0, 0.5, -1.0, -0.25, -0.25, 0.75, -0.25, -0.5, 0.75, 0.0, -0.5, 0.5, -1.0, 0.5, -0.75, -0.75, -0.5, 0.75, -1.0, -1.0, -1.0, 0.75, 0.5, 0.25, -0.25, -0.25, -0.25, -0.75, 0.0, -0.5, 0.5, -0.5, 0.0, 0.0, 1.0, 0.5, 1.0, -0.5, 0.75, 1.0, -0.25, -0.75, 1.0, 0.0, -1.0, 0.5, -0.5, -0.75, 0.5, -0.5, 0.5, 0.25, 0.25, -1.0, 0.0, 0.75, 0.25, -0.25, -0.25, 0.25, 0.25, -0.5, 1.0, -0.75, 0.0, 1.0, 0.5, -0.25, 0.75, -1.0, 0.0, -0.25, -0.75, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
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
    
    const array7 = new Float32Array([-1.0, 0.0, -0.75, -0.75, -0.25, -0.75, -0.25, 0.0, 1.0, -0.25, -0.5, 0.75, 1.0, 0.5, 0.5, 0.0, -0.75, 0.25, 0.75, -0.75, 0.75, 0.5, -1.0, 0.0, 0.75, 0.25, 0.5, 0.25, 1.0, -0.75, -0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.25, 0.25, 0.5, -0.25, 0.75, -0.25, 1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 0.25, 0.75, 0.25, 0.25, 0.25, -0.25, -0.5, -0.75, 0.75, -0.25, 0.75, 0.5, -1.0, 1.0, -0.75, 0.75, 0.25, -0.25, -0.75, 0.25, -1.0, 0.0, -1.0, -0.5, -1.0, 1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.5, -0.25, -0.25, 0.5, -0.5, -0.25, -0.25, 0.75, -0.75, 0.25, 0.5, -0.75, -0.25, 1.0, 0.5, 0.25, -1.0, 0.75, -1.0, 0.0, ]);
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    
    
    
    buffer301.destroy()
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array8 = new Float32Array([1.0, 0.25, -0.75, -0.25, 0.0, -0.25, 0.25, -0.75, -0.75, -0.5, -1.0, 0.5, -1.0, -0.25, 0.0, 0.25, 0.75, -0.75, -0.75, -0.25, -1.0, 0.75, 0.0, 0.75, 0.25, 0.75, 0.0, 0.75, -0.5, -0.5, 0.75, 0.25, -0.75, 0.25, 1.0, 0.75, 1.0, -0.5, -0.75, -1.0, -0.5, 0.75, 0.5, 0.0, -0.5, -0.25, -0.75, 0.25, 0.25, 0.75, 0.25, 0.5, 1.0, 1.0, 0.0, -0.5, 0.5, -0.5, 0.5, 0.5, 1.0, -0.75, 0.0, 0.75, 0.0, -1.0, 0.25, -1.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.5, -0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.75, 0.0, 0.0, -0.25, -0.75, 0.5, 0.25, 0.5, -1.0, -0.25, 0.5, 0.0, 0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 1.0, -0.75, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("validation");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
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
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.pushErrorScope("out-of-memory");
    
    
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    device20.pushErrorScope("out-of-memory");
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
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device50.pushErrorScope("out-of-memory");
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    
    
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
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
    
    
    buffer303.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer304.destroy()
    
    
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
    const sampler304 = device30.createSampler( { label: "sampler304" } );
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
    
    
    
    
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
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
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
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
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
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
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    device60.pushErrorScope("out-of-memory");
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
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
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
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    buffer306.destroy()
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer600.destroy()
    buffer302.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
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
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    
    buffer000.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    
    
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    buffer200.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    buffer700.destroy()
    
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
    
    buffer307.destroy()
    
    buffer500.destroy()
    
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
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    
    buffer305.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const array9 = new Float32Array([-0.75, 0.0, -0.75, 0.0, 0.0, 0.0, 0.0, 1.0, -0.25, -0.25, 0.0, -0.25, -0.75, -1.0, -0.25, -0.75, 1.0, 1.0, 0.0, -0.25, 0.0, -0.75, 0.0, 0.5, -1.0, -0.5, 0.75, -0.5, -0.75, 1.0, -0.75, 0.5, -1.0, 0.75, 0.0, -0.75, -1.0, -0.75, 0.5, 0.75, 1.0, -0.25, 0.25, -0.25, 0.75, 0.5, 1.0, 0.25, -0.25, -0.5, -0.25, -0.25, -0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, -0.75, -1.0, -1.0, 0.25, 0.25, 0.75, -0.25, 0.5, 0.25, 0.75, 0.0, -0.5, 0.0, 0.0, 0.0, 0.25, 0.75, 0.0, 0.0, -0.25, 0.0, -1.0, 1.0, -0.25, -0.25, 0.75, -0.25, 0.0, -1.0, -0.5, -0.5, -1.0, 1.0, -0.75, 0.5, ]);
    const array10 = new Float32Array([0.0, -0.75, -1.0, 0.5, 0.25, 0.0, -0.75, 0.25, 0.75, 0.25, -1.0, 0.75, -0.25, -0.25, -0.25, -0.25, -0.75, -1.0, 0.25, -0.5, 1.0, 0.5, -0.75, -1.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.25, -1.0, 0.0, -0.75, -1.0, 0.0, 1.0, -0.5, 0.0, -0.5, 0.5, -0.75, 0.75, -0.75, 0.25, 0.0, 0.25, 0.25, -1.0, -0.75, 0.0, 1.0, -0.25, -1.0, -1.0, 0.25, -1.0, 1.0, 0.75, -0.75, 0.75, 0.0, -0.5, -1.0, 0.0, -0.5, -1.0, -0.75, -0.75, 1.0, -0.5, -0.5, 0.25, 1.0, -1.0, 0.0, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, 0.25, 1.0, 0.0, 0.5, -0.75, 0.75, -0.75, -0.5, 1.0, -0.25, 0.25, 0.0, -0.25, 0.5, 0.0, 0.5, 0.25, 0.0, 1.0, ]);
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
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
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer101.destroy()
    
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    
    
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
    buffer701.destroy()
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    
    
    
    
    
    
    
}