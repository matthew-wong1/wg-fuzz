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
    
    const array0 = new Float32Array([-0.25, -0.5, -0.5, 1.0, -0.75, -1.0, 0.25, 0.0, -0.75, -0.75, 0.0, 0.0, -0.25, 0.5, 0.25, -0.5, -0.25, 0.25, 0.25, 0.75, 0.0, -0.75, 1.0, 0.25, 0.25, -0.25, -0.25, 1.0, -1.0, 0.0, 0.5, -0.75, 0.0, 1.0, -0.25, 0.75, -0.75, 0.25, 0.25, -0.25, -1.0, -0.75, 0.0, 1.0, 0.0, -0.25, 0.75, 0.5, -0.5, 0.25, -0.5, -0.75, -0.5, 0.5, -0.75, -0.75, 1.0, 1.0, -0.25, 1.0, -0.25, -1.0, 0.0, 0.0, 1.0, 0.0, 1.0, -0.25, 0.75, -0.5, -0.25, 0.0, 0.25, 0.25, -1.0, -0.25, 0.0, 0.0, -0.75, 0.0, 0.75, -0.25, 0.0, 0.75, 0.0, -0.75, -1.0, 0.25, -1.0, 1.0, -0.75, -0.75, 0.0, 0.0, 0.75, 0.0, 1.0, -0.5, 0.25, 0.0, ]);
    
    
    
    
    const array1 = new Float32Array([-1.0, 1.0, -0.5, 0.0, 0.0, 0.5, 0.25, 0.5, -0.75, 0.0, 0.75, 0.0, 0.75, 0.25, -1.0, 0.0, 0.75, -0.5, -1.0, -0.75, 0.0, 0.25, -0.5, 0.0, 0.25, 0.0, -0.25, 0.25, 0.5, -0.75, 1.0, 0.75, -0.25, -0.75, -0.25, -1.0, 0.75, 1.0, 0.25, 0.0, 0.5, -0.25, 0.75, 1.0, -0.75, 0.5, 1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.25, -1.0, -1.0, -0.75, -0.75, -0.5, -0.5, 0.5, 1.0, -0.5, -0.75, -0.5, -0.25, -1.0, 0.5, -0.25, 0.25, 0.25, 0.25, 0.5, 1.0, 0.5, 0.75, 0.5, 0.75, 0.25, -0.25, -1.0, 0.75, -0.5, 0.0, -0.5, 0.0, -0.75, -1.0, 0.25, 0.75, 0.0, 1.0, -0.25, -0.75, 0.25, 1.0, -0.5, -1.0, 0.75, 0.0, -0.25, ]);
    
    const array2 = new Float32Array([1.0, 0.25, -0.5, -0.5, -0.25, -1.0, 0.25, -0.75, 1.0, -0.5, 0.25, 0.5, 0.25, 0.75, -0.25, 0.0, 0.0, -0.5, 0.0, 0.5, -0.5, 0.0, -0.5, 0.25, -0.75, 0.25, 0.5, 0.5, -0.75, 0.75, -0.75, -1.0, 0.75, 0.25, -0.25, 0.25, -1.0, 0.25, -0.75, 1.0, 0.75, 0.5, -0.5, -0.5, 0.5, 1.0, 1.0, 1.0, -0.25, 0.0, 0.0, 0.25, -0.5, -0.5, 1.0, -0.75, -0.25, 1.0, 0.0, 0.5, -1.0, 0.75, -1.0, -1.0, 0.5, 1.0, 0.25, 0.0, 0.25, -0.5, 0.0, 0.75, 0.75, -0.25, -0.25, -1.0, 0.25, -0.5, 0.5, 0.5, -0.75, 0.25, -0.75, 0.0, 0.0, -1.0, 0.75, 0.75, -0.25, 0.75, 1.0, 1.0, 0.5, 0.25, -0.75, 0.75, 0.25, -0.25, 0.75, -0.5, ]);
    
    
    const array3 = new Float32Array([0.75, 0.5, 1.0, 1.0, -1.0, 0.25, 0.5, -0.75, -0.75, 0.5, 0.0, 1.0, -0.25, 0.75, -0.75, 0.75, -1.0, 0.5, 0.5, -1.0, 0.5, -1.0, -0.25, 1.0, -0.25, 0.75, 1.0, -0.5, 0.75, 1.0, 0.75, -1.0, -0.5, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, 0.25, -1.0, 0.5, 0.5, 0.25, -0.25, -1.0, 1.0, 0.5, 0.0, 0.25, 1.0, -0.5, 0.25, -0.25, -0.25, -0.25, -0.5, 1.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, 1.0, -0.75, 0.0, 0.75, -1.0, -0.25, 0.5, 0.25, -0.25, -0.75, 0.25, 0.25, -1.0, 0.5, 0.25, -0.25, 0.5, 0.25, 0.0, 0.5, 0.0, -0.75, 0.0, -0.25, -0.25, 1.0, -0.5, 0.75, 0.5, -1.0, 0.25, -1.0, -0.5, 0.0, 1.0, 0.25, ]);
    
    const array4 = new Float32Array([-1.0, -1.0, 0.5, -0.75, 0.0, -0.5, -0.25, 0.5, -0.5, -0.25, -0.75, -0.5, -0.25, 1.0, 0.25, 0.0, 0.25, 0.75, 1.0, -1.0, 1.0, 1.0, 0.25, -0.25, 0.75, -0.75, -1.0, 1.0, -0.25, -0.5, -1.0, -1.0, 0.0, -0.25, -0.25, 0.75, -1.0, -0.25, 0.25, 1.0, 0.25, 0.25, 0.25, 0.25, 0.75, -0.5, -0.75, 0.75, 0.25, 1.0, 0.0, 0.25, 0.0, 0.0, 1.0, -0.25, 0.75, 0.0, -0.5, 0.0, -0.75, 0.5, -0.75, 0.0, 0.0, -0.75, 0.0, -0.25, 1.0, 0.25, 0.75, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, -1.0, 0.0, 1.0, 0.5, 1.0, 0.75, 0.0, -0.75, -0.5, 0.25, 0.75, -0.5, 0.5, 0.0, 0.0, -0.25, -0.25, 0.0, -1.0, -1.0, 1.0, 0.75, -1.0, ]);
    
    
    
    const array5 = new Float32Array([0.5, 0.25, 1.0, -0.75, 0.5, -0.5, -0.75, -1.0, 0.5, -0.25, 1.0, -0.25, 0.75, 0.25, 0.75, 0.75, 0.5, 0.0, -1.0, -0.75, -0.5, 0.5, -0.5, -1.0, -0.75, -0.5, 0.0, 0.75, 1.0, 0.25, -0.75, -0.25, 0.5, 0.75, 1.0, 0.5, -0.75, 1.0, -0.5, -0.5, -0.25, 0.25, 1.0, -1.0, 0.75, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, -0.5, 1.0, -1.0, -0.75, -0.25, 0.0, 0.75, -0.25, 0.25, -0.25, -0.5, -0.5, -0.25, 1.0, -1.0, 0.0, -1.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.0, 0.0, 0.5, 0.25, 1.0, 0.25, -1.0, 0.5, 0.5, 0.5, 0.25, -0.75, 0.5, -0.75, -0.25, 0.25, 1.0, 0.0, -1.0, -0.75, -0.75, 0.75, 0.25, -1.0, -0.5, 0.0, -1.0, ]);
    const array6 = new Float32Array([-0.5, 0.5, 0.0, -0.5, 0.25, 0.5, -0.25, 1.0, 0.25, 0.75, -0.75, -0.5, -0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.25, -1.0, 0.5, -0.75, 0.25, -0.75, -0.25, 0.0, -0.75, -0.5, 0.75, -0.75, 1.0, -0.25, -0.5, 1.0, 0.75, 0.0, 0.25, 0.0, 0.25, 0.25, 0.5, 0.25, -0.25, -0.75, 0.25, 1.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.25, 0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 1.0, -0.5, -0.75, -0.5, -1.0, 0.75, 1.0, 0.5, 1.0, 0.5, 0.5, 1.0, 0.5, -0.75, -1.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.0, 0.5, 1.0, 0.75, -1.0, 0.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.25, 1.0, 0.25, 1.0, 0.25, -0.25, 1.0, -0.5, 0.0, 0.75, 1.0, ]);
    const array7 = new Float32Array([-0.75, -0.5, 1.0, 0.75, -0.25, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, 0.75, 0.5, 0.0, 0.0, 0.0, 0.75, 1.0, -1.0, -0.25, -0.5, 0.5, 0.75, 0.0, 0.75, 1.0, -0.5, -0.25, -0.25, 0.5, 0.0, -0.5, -0.75, -0.25, -0.25, 0.5, 0.5, 0.75, 0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 0.25, 0.5, 1.0, -0.5, 0.25, 0.0, 0.25, 0.5, 0.75, -0.25, 1.0, 0.5, 0.25, 0.75, -1.0, 0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 0.0, -0.25, -0.75, 0.25, -1.0, -0.5, 0.25, 0.25, -1.0, -1.0, -0.75, -0.25, -0.75, 1.0, 1.0, -0.25, -0.5, 0.0, -0.75, -0.75, 0.0, -0.25, -1.0, 0.75, -1.0, 0.0, -1.0, 0.5, -0.25, -0.5, -0.25, -0.75, 0.25, 0.0, -0.75, ]);
    
    
    const array8 = new Float32Array([0.25, -0.75, -0.25, -0.75, 0.5, -0.5, -0.25, -0.25, -1.0, 0.0, 0.25, -0.25, 0.25, -0.75, -0.5, 0.75, -0.25, 0.5, -0.25, 0.75, -1.0, 0.5, -0.5, 1.0, -0.5, 1.0, -0.5, 0.0, 0.0, 0.75, 0.0, -0.25, -1.0, -0.25, -0.25, 0.5, -0.25, 0.75, -0.5, -0.25, -1.0, -1.0, 0.25, 0.75, -0.5, 0.0, 0.25, 0.0, 0.5, 0.5, -1.0, -0.75, 0.25, 0.75, 0.0, 0.25, -1.0, 1.0, -0.5, -0.5, 0.25, -0.25, -0.5, 0.25, -0.5, 0.75, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, 0.25, -0.25, 1.0, 0.75, 0.0, -1.0, -0.75, 0.0, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, -0.25, 1.0, 0.5, -1.0, 0.75, -0.25, -1.0, -0.5, 0.0, 0.25, -0.75, -0.75, -1.0, 0.5, ]);
    
    const array9 = new Float32Array([0.0, -1.0, -0.5, -1.0, 0.75, -0.25, -0.25, 0.0, 0.0, 1.0, 0.75, 0.75, -1.0, 0.0, -0.25, -0.25, 0.75, 0.5, 0.25, 1.0, -0.5, -0.5, 0.25, 0.25, -1.0, -0.75, -1.0, 0.0, 0.25, 0.75, -1.0, -1.0, -0.5, 0.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.75, 0.5, 1.0, 0.25, -1.0, -0.25, 0.75, -0.5, -0.25, 0.75, -1.0, 0.75, 1.0, -0.25, -1.0, 0.5, 1.0, 0.25, 1.0, -1.0, 0.25, 1.0, -0.5, -0.5, -0.25, -0.75, 0.5, -0.75, -0.5, 0.75, 0.5, 0.5, -1.0, -0.25, -0.25, -1.0, 0.5, 0.75, 1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.5, -0.5, 0.5, -1.0, -0.75, 0.0, -0.75, -0.25, 0.5, -0.5, 0.0, 0.75, 0.0, 0.5, -0.75, 0.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array10 = new Float32Array([0.5, 0.75, 0.0, 0.25, 0.0, 0.0, 0.5, -0.25, 0.25, -0.75, 0.75, 0.0, 1.0, -0.5, 0.75, -1.0, -0.75, 0.5, 1.0, -0.75, -0.75, 0.5, -0.75, 0.5, -0.5, -1.0, 0.25, 1.0, -0.25, 0.75, 1.0, 0.5, 0.0, -0.75, 1.0, 0.75, 0.0, -0.75, 0.75, 0.5, -0.5, 0.25, 1.0, -1.0, 0.25, 0.75, 0.5, 0.0, 1.0, 0.0, 0.0, 1.0, -0.5, -1.0, 0.25, -0.75, 0.75, 0.0, 0.25, -0.25, -1.0, -0.5, -0.5, -0.5, 0.0, 0.5, -0.5, 0.75, -0.25, -0.25, 1.0, -0.25, 0.5, 0.5, 0.25, -1.0, -1.0, -0.25, 0.0, 0.5, -0.5, -0.25, -1.0, -0.5, 0.5, -0.75, 0.5, 0.5, 0.25, -1.0, -0.25, -0.5, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, -0.75, 1.0, ]);
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    command_encoder000.insertDebugMarker("mymarker");
    const array11 = new Float32Array([0.0, -0.25, 0.0, -0.75, -0.25, 0.0, 0.0, -0.25, -0.25, -0.5, -0.75, 0.25, 0.0, -1.0, -1.0, -0.25, 0.0, 0.5, 1.0, 1.0, 0.25, 1.0, -0.5, 0.5, 1.0, -0.5, -0.5, -0.25, -1.0, -0.25, 0.5, -0.5, 0.0, -0.75, 0.0, 0.0, -1.0, 0.25, 1.0, 0.25, -1.0, 0.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.0, 0.25, -0.25, 0.75, 0.5, -0.5, -0.75, 0.75, 0.25, -0.5, -1.0, 1.0, -0.75, -0.5, -0.25, 0.25, 0.25, 0.0, 0.0, 0.5, 0.75, -0.75, -1.0, -0.5, -0.75, -1.0, 0.5, 0.25, -0.25, -0.25, -0.25, -0.25, 0.5, -0.25, -0.25, 1.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.0, -0.5, 1.0, 0.0, -0.75, -1.0, 1.0, -1.0, -0.75, -0.75, ]);
    
    device00.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.destroy();
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const command_buffer200 = command_encoder200.finish();
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const array12 = new Float32Array([0.0, -0.75, -0.75, 0.75, -0.5, 0.25, 0.75, -1.0, 1.0, 0.5, -0.75, 0.25, -0.5, -0.5, -0.5, 1.0, -0.25, 0.0, -0.25, 1.0, 0.25, 0.5, -0.5, -0.75, 0.5, -0.25, -1.0, 1.0, -0.5, 0.25, 0.5, -0.75, 0.0, 0.75, -0.5, 0.0, 0.25, 0.75, -0.5, 0.75, -1.0, -0.25, 0.25, 1.0, -0.25, 0.25, 0.75, -0.25, 1.0, 0.75, -0.5, 0.5, -0.5, -0.25, -0.5, -1.0, 0.5, -1.0, 0.0, 0.5, 0.75, 0.75, -0.75, -1.0, 1.0, 0.0, 0.5, -1.0, -1.0, -0.75, -0.5, 0.75, 1.0, -1.0, 1.0, 0.5, -0.5, 0.0, 0.0, 0.5, -0.25, -0.75, -0.75, 0.75, -1.0, -0.25, 1.0, 0.75, 0.75, -1.0, 0.25, 1.0, -0.75, -0.5, 1.0, 1.0, 0.75, -0.75, -1.0, 0.25, ]);
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
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device40.pushErrorScope("internal");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const command_buffer300 = command_encoder300.finish();
    
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device30.queue.submit([command_buffer300, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    command_encoder000.clearBuffer(buffer001);
    command_encoder202.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeBuffer(buffer001, 0, array11, 0, array11.length);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer001, 0, array12, 0, array12.length);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    
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
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    command_encoder001.clearBuffer(buffer002);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device00.queue.writeBuffer(buffer001, 0, array12, 0, array12.length);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer002, 0, array12, 0, array12.length);
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    device30.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.clearBuffer(buffer001);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    command_encoder000.clearBuffer(buffer001);
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device00.queue.writeBuffer(buffer002, 0, array12, 0, array12.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.clearBuffer(buffer001);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    device00.pushErrorScope("out-of-memory");
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
    
    device00.queue.writeBuffer(buffer002, 0, array12, 0, array12.length);
    
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("validation");
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device30.destroy();
    
    
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
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    command_encoder000.insertDebugMarker("mymarker");
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer201 = command_encoder201.finish();
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    device40.queue.writeBuffer(buffer401, 0, array12, 0, array12.length);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.insertDebugMarker("mymarker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder001.clearBuffer(buffer001);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder203.pushDebugGroup("mygroupmarker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    device00.queue.writeBuffer(buffer001, 0, array12, 0, array12.length);
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
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array12, 0, array12.length);
    
    command_encoder001.clearBuffer(buffer002);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device00.queue.writeBuffer(buffer002, 0, array12, 0, array12.length);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    device60.pushErrorScope("validation");
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer401, 0, array12, 0, array12.length);
    
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer401, 0, array12, 0, array12.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.clearBuffer(buffer001);
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    command_encoder001.clearBuffer(buffer001);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([-0.5, -0.75, 0.5, 0.75, 0.25, -0.25, 0.25, -0.25, 0.75, -0.5, 0.0, 0.75, 0.0, -0.25, 1.0, 0.25, 0.0, 0.75, -0.25, -0.75, 0.0, 0.75, -0.25, 0.0, 0.25, -0.75, -0.75, -0.5, -0.75, -0.25, 1.0, -0.25, 0.75, 0.75, 0.0, -1.0, 0.25, -0.75, 0.0, 0.0, 0.25, -0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 0.0, -1.0, 0.25, 0.0, -0.75, -0.25, -1.0, 0.25, -1.0, 0.0, -1.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.25, 1.0, 0.25, -0.25, 0.25, 0.0, -0.5, 0.0, 0.0, 0.25, -0.75, -0.5, -0.25, -0.75, -0.25, 0.25, 0.25, 1.0, -0.5, -0.5, 0.75, 1.0, -0.25, 0.0, -0.25, 0.25, 0.5, 0.5, 1.0, 0.75, -1.0, 0.25, -1.0, 0.75, -1.0, -0.75, -0.25, ]);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device50.destroy();
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device20.queue.submit([command_buffer200, ]);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    command_encoder001.clearBuffer(buffer001);
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const array14 = new Float32Array([1.0, 0.75, -1.0, 0.5, 0.75, 0.0, -0.75, 0.75, -0.5, 0.5, -0.75, 1.0, -0.5, 0.0, -0.25, 0.0, -1.0, 0.75, 0.25, 0.5, -0.25, -0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.75, 0.0, -0.25, 0.0, -0.5, 0.75, 0.75, 0.5, 1.0, -0.25, -1.0, 0.0, 0.25, 0.5, 0.5, -0.25, 1.0, 0.0, 0.0, 1.0, -0.75, -0.75, 1.0, -0.5, 1.0, -0.5, 0.25, -0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 1.0, 1.0, -0.25, 0.75, 0.0, 0.0, -0.5, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, 0.75, -1.0, -0.25, -0.25, 0.25, -0.25, -0.25, -0.25, 0.5, -0.5, 1.0, -1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 0.75, 0.0, 0.25, 0.25, -0.25, 0.5, 1.0, 1.0, -0.5, -0.75, ]);
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    device60.destroy();
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    command_encoder002.clearBuffer(buffer001);
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
    
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    device40.queue.writeBuffer(buffer401, 0, array12, 0, array12.length);
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer002, 0, array13, 0, array13.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    device40.queue.writeBuffer(buffer401, 0, array12, 0, array12.length);
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout408,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_buffer400 = command_encoder400.finish();
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array13, 0, array13.length);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout404]
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
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    command_encoder002.clearBuffer(buffer001);
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer401 = command_encoder401.finish();
    device20.queue.submit([command_buffer201, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
}