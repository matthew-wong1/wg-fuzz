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
    const array0 = new Float32Array([1.0, -0.5, 0.75, -1.0, -0.25, 0.75, 0.25, -0.5, 0.0, 0.75, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, -0.5, -0.25, 0.0, 0.75, -1.0, 0.75, 0.5, 0.25, -0.5, 0.5, -0.5, -0.25, 0.0, 0.0, -0.5, 0.5, 0.25, 1.0, 0.25, 1.0, 0.75, 0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 0.0, -0.75, 0.25, -0.75, 0.75, -0.5, 1.0, 0.5, -0.75, 0.75, -0.25, 0.5, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.75, 0.0, -0.5, -1.0, 0.75, 0.75, 0.25, 0.0, 1.0, -1.0, 0.75, 0.75, 1.0, 0.0, 0.25, -0.5, 1.0, 1.0, -0.75, -1.0, 0.75, -0.75, -0.75, -0.25, 0.5, 0.5, -1.0, 0.75, -0.5, -1.0, -0.5, 1.0, 0.25, -0.25, -0.5, 0.5, 0.75, -0.25, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([0.25, -0.5, 1.0, -0.5, -0.75, -1.0, 0.5, -1.0, 1.0, -0.75, 0.75, 0.0, -0.75, -0.75, 0.5, 1.0, 0.25, 1.0, 1.0, 1.0, 1.0, 0.0, -0.75, -1.0, 0.5, 0.25, 0.25, 0.25, 0.25, 0.75, -0.25, 0.75, -0.5, -1.0, 0.25, -0.75, 1.0, 1.0, -0.5, 0.75, -1.0, 0.0, 1.0, 0.0, 0.75, 0.25, 0.5, -0.75, 0.5, -0.75, -0.25, -1.0, -1.0, 0.75, -0.25, -0.25, -0.75, 0.0, -1.0, -0.75, 1.0, -0.25, -1.0, 1.0, -0.25, -1.0, -0.5, 0.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.25, 0.75, 0.75, -1.0, -0.25, 0.25, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, 0.5, -0.5, 0.0, 0.5, 0.75, 0.5, -0.25, 0.0, 0.25, 1.0, -0.5, 0.5, 0.75, -0.25, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([0.75, -1.0, -1.0, -0.25, 0.75, -0.5, 0.75, 0.25, -0.5, 0.25, 0.5, 0.75, -1.0, 0.5, -1.0, 0.0, 0.75, 1.0, -0.5, -0.25, 0.25, 0.5, 1.0, -1.0, -1.0, -1.0, 0.0, -0.75, -0.25, -0.75, -0.5, -0.75, -0.75, 0.5, 0.5, 0.0, -0.25, 0.25, -1.0, 1.0, -0.75, -0.75, -0.5, 0.25, -0.75, 1.0, -0.25, 0.25, -0.5, 0.25, -0.75, 1.0, -0.25, -0.25, -0.75, 0.5, 0.5, -0.5, -0.25, 0.25, -1.0, 0.25, -0.25, 0.0, -1.0, 0.25, -0.25, -0.75, 0.25, -1.0, 1.0, -0.25, 0.0, -0.5, -0.25, 0.75, 0.5, -0.5, -0.25, -1.0, -1.0, -0.25, 0.5, 0.5, 0.5, -1.0, -0.25, 0.0, 1.0, -0.5, 0.5, -1.0, 0.0, 1.0, 1.0, -0.5, 0.5, 0.25, -1.0, -0.75, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture000.destroy();
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    const array3 = new Float32Array([0.75, -0.5, -1.0, -0.25, -0.75, -0.25, 0.0, -1.0, -0.25, 0.5, -0.75, 1.0, -1.0, 1.0, 0.25, 0.75, -0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.5, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, 0.75, 1.0, -0.75, -0.5, 0.0, 0.25, -1.0, -1.0, -1.0, -1.0, 0.5, -1.0, 1.0, 0.5, -1.0, 0.75, -0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, -0.5, -0.25, -0.75, -0.75, -0.25, 0.25, 0.75, 0.25, -0.5, 0.25, 0.75, -1.0, -0.5, -0.25, 0.5, 0.25, 0.25, 0.5, -1.0, -1.0, 0.5, -0.75, 0.25, 0.75, 0.5, -0.5, -1.0, 1.0, 0.0, -0.5, 0.75, -0.25, 0.25, 0.5, -0.75, 1.0, -0.5, -0.5, -0.5, 0.5, -1.0, 1.0, -1.0, 0.5, 0.5, -0.5, -1.0, -0.75, ]);
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const array4 = new Float32Array([1.0, -1.0, -0.25, 0.75, 1.0, 0.25, -1.0, -0.75, -0.75, -0.25, 0.5, -1.0, -0.25, 0.25, -0.75, 0.75, -0.25, 1.0, -0.75, -0.5, 0.75, -0.5, 0.0, 0.25, -1.0, -0.5, 0.75, -1.0, 0.75, -1.0, -0.5, 1.0, 1.0, -0.25, -0.25, 0.0, 0.75, 0.0, -1.0, -0.5, 0.25, -0.5, 0.5, 0.75, -1.0, -0.75, -1.0, -0.25, -0.25, -0.75, -0.75, 1.0, 0.75, -0.75, -0.25, 0.0, -0.5, -1.0, -1.0, -0.5, -0.5, -0.75, 0.75, 0.25, 1.0, 0.75, -0.5, -1.0, -0.5, 0.25, -0.5, -1.0, 0.75, -1.0, 0.25, 0.25, 0.75, -0.75, 0.5, 0.5, -0.5, 0.5, 0.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.5, 1.0, -0.75, -0.75, -0.5, -0.75, -0.75, 0.0, -0.25, 0.0, 1.0, 0.75, ]);
    device10.destroy();
    const array5 = new Float32Array([0.25, -0.75, 0.75, -0.25, -0.75, -0.75, 0.25, -1.0, -0.5, 0.25, 0.5, -0.75, 0.75, 1.0, 0.75, -0.75, 1.0, 0.25, 0.25, -0.25, -0.75, -0.75, -0.25, -1.0, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, -0.25, -0.25, -0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 1.0, -0.5, 1.0, 0.75, 0.0, -0.75, -0.5, 0.75, 0.25, -0.25, -0.25, -0.5, 1.0, 0.75, -0.5, 0.75, -0.25, 0.5, -1.0, -0.25, 0.5, -1.0, 0.0, 0.5, 0.0, 0.0, 0.5, 1.0, 0.0, -0.5, -0.75, 1.0, 0.5, -0.75, 0.5, -0.5, -0.5, 0.75, -0.5, 1.0, 0.0, 0.5, 0.0, 1.0, 0.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.25, -0.5, 0.75, 0.75, -0.25, -0.25, -0.5, 1.0, -0.5, -1.0, 0.75, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array6 = new Float32Array([0.75, 0.25, 0.25, -0.75, 1.0, 0.75, -0.75, -0.75, 1.0, 1.0, 0.5, -0.25, -0.25, 0.75, -0.25, 0.0, -0.5, 0.75, -1.0, -0.5, -0.75, 0.5, -0.5, 0.25, 1.0, 0.0, -0.25, 0.0, 0.25, -0.75, 0.0, -0.25, 0.5, -0.5, 0.25, -0.75, 1.0, 0.5, 0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.5, 0.0, 0.0, -0.25, -0.5, 1.0, 0.5, -0.75, -0.75, 1.0, 0.0, 0.25, 1.0, 0.5, -0.25, -0.25, -1.0, 0.75, -0.5, -1.0, 1.0, 0.5, -0.25, 0.75, -0.25, 0.75, 0.75, -0.75, 0.0, 0.5, 0.5, -0.5, 1.0, 0.5, -0.25, 0.25, 0.0, 0.75, 0.25, 0.75, 0.5, -0.25, 0.5, 0.5, -1.0, 1.0, 0.75, -0.25, -0.25, 0.5, 0.5, 0.5, 0.75, -1.0, -0.75, 0.5, ]);
    const array7 = new Float32Array([0.5, 1.0, 0.5, 0.0, -1.0, 0.0, -0.75, 0.25, -1.0, 0.75, -0.75, 0.25, 0.75, 0.75, -0.5, 0.25, -0.75, 0.0, 1.0, 0.25, 1.0, 0.5, -0.25, 0.0, 0.0, -0.75, 1.0, 0.25, -1.0, 0.0, -1.0, -0.75, 1.0, 0.0, -0.5, -0.25, 0.0, 0.5, -0.25, 0.75, -0.5, 1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.0, -1.0, 0.75, -0.75, -1.0, 1.0, -0.5, -0.25, 0.5, 0.25, -0.5, 0.75, 0.0, 0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 0.0, -0.25, -1.0, -0.25, 0.5, 1.0, -1.0, -0.25, 0.75, 0.75, -1.0, -0.75, 0.75, -1.0, 0.0, -0.5, 0.25, 0.25, 0.0, -0.5, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.75, -0.5, 0.5, -1.0, -0.25, -0.5, -0.75, -1.0, ]);
    
    const array8 = new Float32Array([-1.0, -0.5, 0.75, -0.5, -0.5, 0.25, 0.25, -0.5, -0.75, 0.25, -0.5, -0.75, 1.0, -0.25, -0.5, 0.25, 0.75, 0.25, -0.75, 0.0, -1.0, -1.0, -0.75, -0.75, 0.25, -1.0, -0.75, 1.0, 0.5, -1.0, -0.25, -0.75, 0.5, 0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 1.0, -0.25, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.25, 0.25, -0.25, 0.5, 1.0, -0.25, 0.25, -0.25, -1.0, 0.5, -0.75, 0.0, -0.25, 1.0, -0.75, 1.0, -0.75, -1.0, 0.75, -0.25, -0.25, 0.5, -0.75, -1.0, -0.25, -0.25, 0.75, -0.5, 0.5, -0.25, 0.25, 0.5, 0.75, -0.25, 0.25, 0.5, -0.75, -0.5, -0.75, 0.0, -0.5, -0.25, -0.5, -0.25, 0.25, 0.75, -0.25, -1.0, -0.5, 0.0, 1.0, 0.5, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array9 = new Float32Array([0.0, -0.75, -0.75, 0.25, 0.0, 1.0, -1.0, -0.75, 0.75, 1.0, 0.25, -0.25, -1.0, 0.75, 0.0, 0.25, 0.75, 0.0, 0.5, 1.0, -0.25, -1.0, 0.0, 0.25, -1.0, -1.0, -0.75, -1.0, 0.5, -0.5, -1.0, -0.75, 0.5, 0.75, 0.0, 0.25, 0.25, 0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.0, -0.75, 0.25, -0.25, -0.75, 0.25, -0.25, 1.0, 1.0, -0.5, 1.0, -0.25, 1.0, -1.0, 0.0, 0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 0.25, 1.0, -0.25, -0.75, 0.5, 1.0, 0.5, 0.5, 0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -0.25, -0.5, -1.0, -1.0, -0.5, -0.25, -0.25, -0.5, 1.0, 0.5, 0.75, 0.75, -0.5, -0.5, -0.25, 0.25, -0.75, 0.75, 1.0, -0.75, 0.5, -0.25, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array10 = new Float32Array([-0.75, 0.75, 0.5, -0.5, 0.5, 0.5, 0.75, 0.5, 1.0, 0.75, 0.5, 0.0, 0.25, 0.0, -0.5, 1.0, -1.0, 0.75, -0.75, -1.0, 0.25, 0.5, 0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 0.0, 1.0, 0.5, -0.5, 0.75, 0.0, -1.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.5, 0.25, 0.0, 0.75, 0.0, 0.75, 1.0, 0.25, 0.5, -0.25, -1.0, 0.5, -0.25, 1.0, 0.5, 0.25, 0.25, 1.0, 0.25, 1.0, -0.25, 1.0, -0.25, 0.0, 1.0, 0.75, -0.25, -0.25, -0.75, 0.5, -0.25, -0.75, 1.0, 1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.0, -0.5, -0.5, 0.25, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, -1.0, -0.5, -0.25, 0.0, 0.25, 1.0, -0.25, -1.0, 0.0, -0.75, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const array11 = new Float32Array([0.25, -0.75, 0.5, 0.5, 0.75, 0.75, 0.25, 0.75, 0.25, 0.0, 0.75, -0.75, 0.25, 0.25, 0.0, 1.0, 0.25, -0.75, -0.5, -0.5, 0.5, 0.5, -1.0, 0.0, -0.5, 1.0, -0.5, 0.25, 1.0, 0.0, -1.0, -0.25, 0.0, 1.0, -1.0, 0.0, 0.25, -0.5, 0.0, 0.75, 1.0, -0.5, -0.5, 0.25, -0.5, -0.75, 0.25, 0.0, 0.5, 1.0, -0.25, -0.5, 0.75, 1.0, -0.25, 0.5, -0.5, -0.5, 1.0, -0.75, 0.75, 1.0, -0.75, -0.25, -0.75, 0.5, 0.0, 0.75, 0.0, -1.0, 1.0, 0.75, 1.0, -0.5, -0.5, 1.0, 0.5, 0.25, -0.25, -1.0, 0.5, -0.25, -0.5, 0.0, -0.25, 0.75, 0.5, 0.25, 0.25, -0.75, 0.25, -0.5, 0.75, 1.0, 0.75, -1.0, 0.0, -0.5, -0.5, -0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
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
    query300.destroy()
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
    device50.destroy();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    buffer301.destroy()
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
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
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
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.destroy();
    
    
    
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device70.destroy();
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device60.pushErrorScope("validation");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    
    
    
    texture602.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    
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
    buffer600.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture604.destroy();
    
    
    texture900.destroy();
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    buffer601.destroy()
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
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture601.destroy();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const texture_view6031 = texture603.createView({ label: "texture_view6031" });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    texture603.destroy();
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    query900.destroy()
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    buffer800.destroy()
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const texture_view6050 = texture605.createView({ label: "texture_view6050" });
    
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view6051 = texture605.createView({ label: "texture_view6051" });
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query902.destroy()
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([0.25, 1.0, -0.5, 1.0, 0.5, 0.0, 1.0, -0.75, -0.75, 1.0, 0.5, 0.75, 1.0, -0.75, 0.5, 0.25, -1.0, -0.25, -0.75, -1.0, 0.75, 0.25, 0.25, 0.0, 0.75, 1.0, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 1.0, 1.0, 0.0, 0.25, -0.5, -0.75, 1.0, -0.5, 0.75, 0.75, 0.75, 0.5, 1.0, 0.0, 0.0, -1.0, -0.75, 1.0, 0.75, 0.25, -0.5, 0.5, 1.0, -0.75, 0.5, -0.25, -1.0, 0.5, 0.0, 0.25, 0.75, -1.0, -0.5, 0.75, 0.75, -0.75, -0.5, 0.5, -1.0, 0.0, -0.5, -1.0, 1.0, 0.25, -0.5, -0.5, -1.0, 0.75, -1.0, 0.25, 1.0, -1.0, -0.25, 0.5, 0.0, -0.25, -1.0, -1.0, 1.0, -1.0, -1.0, 1.0, -0.5, 0.75, 0.5, 0.0, 0.75, ]);
    
    
    
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout602]
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    query600.destroy()
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    
    device100.pushErrorScope("validation");
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    texture801.destroy();
    texture605.destroy();
    
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
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device90.pushErrorScope("out-of-memory");
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    texture800.destroy();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    
    query900.destroy()
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    texture901.destroy();
    
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout604]
    });
    
    device90.queue.writeTexture({ texture: texture903 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    texture903.destroy();
    buffer604.destroy()
    
    
    
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    buffer603.destroy()
    
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    device100.pushErrorScope("out-of-memory");
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    device90.pushErrorScope("internal");
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const array13 = new Float32Array([0.75, 1.0, -0.75, 1.0, -0.25, -1.0, 0.75, -0.25, -0.75, -1.0, -0.75, 1.0, -1.0, 1.0, -1.0, -0.25, 1.0, 1.0, 1.0, 1.0, -0.25, -1.0, -0.75, 0.0, -0.75, 0.0, 0.0, -0.5, 0.75, -1.0, 1.0, 0.5, 0.0, -0.75, 0.5, 0.75, -0.75, -0.75, 1.0, 0.75, 0.5, -0.75, 1.0, 0.75, -1.0, 0.0, 0.25, -0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 0.0, 0.5, 0.0, 0.5, -0.25, 0.0, 0.5, 1.0, -0.5, 0.5, 0.75, -0.75, 0.75, -0.75, -0.75, -0.75, -0.75, 0.0, -1.0, 0.0, 0.25, -0.75, 0.25, 1.0, 0.5, 0.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, -0.5, 0.0, 0.0, 1.0, -0.5, 0.0, -0.75, 0.75, -0.5, -0.25, -0.5, 0.5, ]);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout609,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout600]
    });
    buffer900.destroy()
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device90.queue.writeBuffer(buffer901, 0, array9, 0, array9.length);
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    texture902.destroy();
    const render_pipeline905 = device90.createRenderPipeline({
        label: "render_pipeline905",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    buffer1001.destroy()
    
    buffer802.destroy()
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer803.destroy()
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout603]
    });
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_pipeline906 = device90.createRenderPipeline({
        label: "render_pipeline906",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    texture802.destroy();
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    query600.destroy()
    
    const render_pipeline907 = device90.createRenderPipeline({
        label: "render_pipeline907",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const render_pipeline6012 = device60.createRenderPipeline({
        label: "render_pipeline6012",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    device90.queue.writeBuffer(buffer901, 0, array3, 0, array3.length);
    device90.queue.writeBuffer(buffer901, 0, array0, 0, array0.length);
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device60.queue.writeBuffer(buffer606, 0, array5, 0, array5.length);
    device90.queue.writeBuffer(buffer901, 0, array13, 0, array13.length);
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout602]
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    device60.queue.writeBuffer(buffer606, 0, array0, 0, array0.length);
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile(__dirname + '/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout6013 = device60.createPipelineLayout({ 
        label: "pipeline_layout6013",
        bindGroupLayouts: [bind_group_layout602]
    });
    device130.destroy();
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    
    buffer1100.destroy()
    
    query600.destroy()
    
    const array14 = new Float32Array([0.0, 1.0, 1.0, -0.25, -0.75, 0.5, -0.25, 0.25, 0.0, 0.25, -0.25, -0.25, 0.5, 0.25, 0.25, -1.0, 0.75, 1.0, 0.75, 0.5, 0.25, 0.5, -0.75, -0.5, 1.0, 0.5, 1.0, -1.0, 0.25, -0.25, 0.5, -0.5, -0.75, 0.75, -0.75, 0.5, -0.5, -1.0, -0.25, 1.0, 0.75, 0.0, 0.75, 0.5, -0.5, 0.25, -0.25, 0.75, -0.5, -1.0, 1.0, 1.0, 0.25, 0.0, -0.25, 0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.75, 1.0, -0.75, -1.0, 1.0, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, 0.75, 0.25, -0.25, -0.75, -0.5, 0.25, 1.0, 0.75, -0.5, 0.5, 0.25, 0.75, -1.0, 0.25, -0.25, 0.5, 0.25, 0.0, -1.0, 0.75, 0.75, 0.75, 0.25, -1.0, 0.0, -0.75, 0.0, 1.0, ]);
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer901, 0, array5, 0, array5.length);
    
    const pipeline_layout6014 = device60.createPipelineLayout({ 
        label: "pipeline_layout6014",
        bindGroupLayouts: [bind_group_layout605]
    });
    
    device60.queue.writeBuffer(buffer606, 0, array5, 0, array5.length);
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    buffer801.destroy()
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout802,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer901, 0, array13, 0, array13.length);
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const pipeline_layout6015 = device60.createPipelineLayout({ 
        label: "pipeline_layout6015",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const render_pipeline908 = device90.createRenderPipeline({
        label: "render_pipeline908",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    const array15 = new Float32Array([0.5, -0.75, -1.0, -0.75, -0.75, -1.0, 1.0, -1.0, 0.0, 0.5, -0.75, -0.75, -1.0, -0.25, 1.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.5, 0.75, -0.75, -1.0, 0.75, -1.0, 0.25, -0.25, 0.5, 0.0, 0.0, 0.0, -0.75, -0.75, -0.75, 0.25, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.75, -0.75, -0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, 0.75, 0.25, -0.75, 0.25, -0.25, -0.75, -0.5, -0.75, 0.25, -0.25, 0.5, -0.25, -1.0, -0.25, -1.0, 1.0, 0.5, -1.0, 0.25, -1.0, -0.25, 0.5, -0.25, -1.0, 0.5, -0.5, 0.75, 0.75, 0.75, 0.0, -0.5, -0.25, 0.25, -0.25, -0.25, 0.0, 0.5, 0.75, 0.75, 0.75, -0.75, -0.5, ]);
    const render_pipeline909 = device90.createRenderPipeline({
        label: "render_pipeline909",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const render_pipeline9010 = device90.createRenderPipeline({
        label: "render_pipeline9010",
        vertex: {
            module: shader_module906,
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
            module: shader_module906,
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
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    query902.destroy()
    
    
    
    device100.destroy();
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline805 = device80.createComputePipeline({
        label: "compute_pipeline805",
        layout: pipeline_layout802,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/shader_module806.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    const compute_pipeline806 = device80.createComputePipeline({
        label: "compute_pipeline806",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer606, 0, array2, 0, array2.length);
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile(__dirname + '/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline807 = device80.createComputePipeline({
        label: "compute_pipeline807",
        layout: pipeline_layout802,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline808 = device80.createComputePipeline({
        label: "compute_pipeline808",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline6045 = device60.createComputePipeline({
        label: "compute_pipeline6045",
        layout: pipeline_layout6015,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    device90.queue.writeBuffer(buffer901, 0, array1, 0, array1.length);
    const compute_pipeline809 = device80.createComputePipeline({
        label: "compute_pipeline809",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}