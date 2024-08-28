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
    
    
    
    
    
    
    const array0 = new Float32Array([0.75, -0.5, -0.25, 0.75, -0.75, -0.25, 0.25, 0.75, 0.5, 1.0, 1.0, 0.75, -0.5, 0.25, 0.5, 0.0, 0.25, -0.25, -0.25, -1.0, 0.0, 0.0, 0.0, -0.25, 0.5, 0.5, -0.75, -0.75, -1.0, -0.5, -0.25, 0.5, 1.0, -0.5, 0.0, -0.25, -0.25, -0.5, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, 1.0, -1.0, -0.75, 0.75, 0.25, 0.5, 0.25, -1.0, -0.25, -1.0, 0.75, -0.75, 0.75, -0.25, 0.75, 0.0, -1.0, 1.0, 0.0, 0.25, 0.25, 0.25, -0.75, -0.5, 1.0, -0.75, 1.0, 0.25, 0.0, -0.25, -0.75, -0.5, 0.5, 0.0, -0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.0, -1.0, 0.5, 0.0, -0.5, 1.0, 0.0, 0.0, 0.0, -1.0, -0.75, -0.5, 0.5, -0.5, -1.0, 0.5, ]);
    const array1 = new Float32Array([0.25, 0.0, 1.0, 1.0, 0.0, -1.0, 0.75, -0.75, 0.75, 1.0, -1.0, -0.75, 0.5, 0.25, 1.0, -0.5, -1.0, -1.0, 1.0, 0.0, 0.25, -0.25, 0.25, 0.25, 0.75, -0.5, 1.0, -0.5, -0.5, 0.0, -0.5, -1.0, -1.0, -0.5, -0.75, -0.5, 0.25, 1.0, 0.75, 1.0, -0.75, 0.5, 0.25, -0.5, -0.75, -0.5, -0.5, 0.75, -0.5, 1.0, 0.0, 0.25, 1.0, 0.0, 0.0, 1.0, 1.0, -0.75, -0.25, 0.5, 0.5, 0.25, -0.75, 0.75, 0.5, 0.5, 0.5, -0.25, 1.0, 0.75, 0.5, 1.0, 0.5, 0.5, -0.5, 0.5, -0.75, -0.75, 1.0, -0.75, -0.75, 0.0, -0.5, 0.0, -0.75, 0.0, 0.75, -1.0, -0.5, 1.0, 0.25, -1.0, -1.0, -0.5, -1.0, 0.0, -0.75, 0.0, 0.25, -1.0, ]);
    const array2 = new Float32Array([-1.0, -0.75, -1.0, 0.5, -0.75, -0.5, 1.0, -1.0, -0.25, 1.0, 0.5, -0.75, -0.75, 1.0, -0.75, -0.75, 0.5, 0.0, 1.0, 0.75, -0.25, 0.75, -1.0, -0.5, -0.75, -0.25, 0.75, 0.75, 0.5, 1.0, -0.25, 1.0, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, 1.0, 0.25, -0.5, -0.75, -0.75, -1.0, 0.5, 0.0, -0.25, -0.25, -0.25, 0.0, 0.25, 0.5, 0.0, -0.5, 1.0, 0.0, -0.75, 0.5, -0.75, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, 0.75, -0.75, 0.0, 1.0, 0.25, 0.25, -1.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.5, -0.5, 0.75, 0.25, -0.25, 0.5, -1.0, 0.0, -0.5, 0.0, -0.25, 0.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.75, -1.0, 1.0, -1.0, ]);
    const array3 = new Float32Array([-0.5, 0.75, -0.75, 1.0, 0.0, 0.5, -0.25, 1.0, 1.0, 0.5, -0.75, -1.0, -0.5, 0.75, 0.0, 0.25, 0.0, 1.0, -0.25, -0.25, 1.0, -0.25, 1.0, 0.25, 0.25, 1.0, -0.75, 0.0, -0.75, -1.0, 0.0, -0.75, 0.0, 0.75, 0.5, 0.25, 0.5, 0.25, -0.5, -0.5, -0.25, 0.0, 1.0, 0.0, -1.0, 0.25, -1.0, 0.0, -1.0, -1.0, 0.0, 1.0, 0.0, -0.5, -0.75, 0.5, -1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 1.0, 0.0, -0.5, -0.25, -0.75, 0.0, -0.75, 0.0, 0.5, -0.5, 1.0, 0.75, -0.5, -0.5, -1.0, 0.0, 1.0, 1.0, -1.0, 1.0, -0.5, -1.0, -1.0, -0.5, 0.5, 0.25, -0.75, -0.75, 0.75, -1.0, -0.5, -0.5, -0.75, 0.0, 0.25, 0.25, 0.5, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([0.5, 1.0, 1.0, -0.5, -0.25, 0.5, 0.75, -0.5, 0.75, -0.75, -0.5, 0.0, -0.25, -1.0, 1.0, 0.25, -0.75, 0.0, 0.5, 0.5, 0.0, 0.0, 0.5, -1.0, -1.0, 0.0, -1.0, -0.75, -1.0, -0.25, -1.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, 1.0, 0.25, -0.75, -0.25, -0.5, -0.75, 0.5, 1.0, 0.25, 0.75, -1.0, -0.5, 0.5, -0.25, 0.0, 0.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.75, -0.75, 0.0, 1.0, -0.75, 0.0, 0.0, -0.25, 1.0, -0.25, 1.0, -0.5, 1.0, 0.75, 0.25, -0.5, 0.5, -0.25, 0.5, 1.0, 0.75, -1.0, -0.25, 0.5, -0.25, 0.25, 0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.75, 0.25, -0.25, 1.0, 0.25, -0.75, 0.5, -0.5, -0.75, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    
    
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    texture000.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
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
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    device10.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array5 = new Float32Array([-0.5, 0.5, 1.0, 1.0, 1.0, 0.0, 1.0, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 0.75, 0.5, 0.5, 0.75, -0.25, -1.0, -0.5, 1.0, -0.75, -1.0, -0.5, -0.75, -0.75, -1.0, -0.5, 0.0, 0.0, 1.0, 1.0, -1.0, -0.75, -0.25, 0.25, 1.0, 1.0, 0.0, -0.75, -0.25, 0.0, 0.0, 1.0, -0.25, 1.0, -0.5, 0.0, 0.25, -1.0, 0.0, -0.75, -0.75, 0.75, -1.0, 1.0, 0.75, -0.5, -0.75, -0.75, -1.0, 0.5, -0.5, 0.25, 1.0, -0.75, -1.0, 0.25, 0.25, -1.0, -1.0, 1.0, -0.75, -0.75, 0.0, -0.75, -1.0, 0.0, 0.0, 0.5, 1.0, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, -0.75, 0.75, -0.75, -0.5, 0.75, 0.25, 0.75, -0.75, -0.25, -0.5, 0.0, 1.0, 0.75, ]);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device00.destroy();
    
    const array6 = new Float32Array([1.0, -1.0, -1.0, 1.0, 0.5, 1.0, 0.0, 0.25, 1.0, 1.0, 0.25, -1.0, -0.5, 0.25, -1.0, -0.25, -0.75, 0.0, -0.25, -1.0, 0.0, 0.5, -0.25, -1.0, -0.25, 0.5, 0.0, 0.5, -0.75, -0.5, -0.25, 0.0, 0.75, 0.25, 0.25, -0.75, -0.75, -0.75, 0.5, -0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 1.0, -0.5, 0.5, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, 1.0, -1.0, -0.5, 0.0, -0.25, -0.75, 1.0, -0.5, 0.0, 0.75, -0.25, -1.0, -1.0, 0.75, 0.25, -0.25, 0.25, 0.75, 0.5, -0.25, -0.75, -1.0, 0.75, 0.75, 0.75, -0.25, 0.5, 0.0, 0.5, -0.5, -0.5, 0.75, 0.75, 0.5, -0.25, 0.75, -0.5, -0.25, 0.25, 0.25, -1.0, 0.25, -0.5, -0.75, -1.0, 0.75, ]);
    
    
    
    
    const array7 = new Float32Array([0.5, 0.0, -1.0, -0.5, -1.0, 0.25, -1.0, 0.75, -0.25, 1.0, 1.0, 0.75, -0.25, 1.0, -1.0, 0.5, 0.25, 0.25, 0.5, 0.75, -1.0, -1.0, 0.5, 0.75, 0.5, 0.25, 0.5, 0.0, -0.75, -1.0, -0.25, 0.25, -0.25, 0.5, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, 1.0, -0.5, 0.0, 0.25, -0.75, 0.25, -0.5, 0.75, -0.5, -1.0, 0.75, -0.5, -1.0, 0.5, 1.0, -0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.25, -0.75, -0.75, -1.0, 0.0, 0.0, 0.0, -0.75, -0.5, 0.75, -0.5, -0.75, 0.75, -0.5, 1.0, 1.0, 0.25, -1.0, -0.25, -0.25, 0.75, 0.75, 0.25, -1.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.25, 0.75, 0.0, -0.5, -0.5, 0.0, -0.5, 1.0, -0.75, 1.0, ]);
    
    const array8 = new Float32Array([-0.75, 0.5, -1.0, 0.75, -0.75, 0.25, 0.0, -0.25, 0.5, 0.0, 0.0, -0.75, -1.0, -0.25, -0.5, 0.5, 0.25, 0.0, 0.75, 0.0, -0.5, 1.0, 0.0, -1.0, -0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 0.75, -0.75, -0.25, 0.25, 1.0, -0.5, -1.0, 0.0, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, -0.5, -1.0, -0.75, -1.0, 1.0, 1.0, 0.0, 0.25, 0.25, 0.25, 0.25, -0.5, -0.75, -0.25, -1.0, -1.0, 0.0, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, 0.5, -0.75, 1.0, -0.75, -0.75, -0.25, -0.25, -0.75, -0.5, -0.5, -0.25, -1.0, 0.25, -0.5, -1.0, 0.5, 1.0, 0.25, -0.25, 0.5, -0.25, 0.0, 1.0, 0.25, 0.5, -0.75, 0.25, 0.5, -1.0, -0.75, 0.25, 0.75, -0.25, ]);
    
    
    
    const array9 = new Float32Array([-0.5, 0.0, 0.5, -0.75, 0.5, 0.0, 0.25, -0.25, -0.75, -0.25, -0.25, 1.0, -1.0, -1.0, 0.25, 0.25, 1.0, -0.75, 0.0, 0.5, 0.5, 0.75, 1.0, -0.25, 0.75, -1.0, 0.0, -0.25, 1.0, 0.0, -0.25, -0.5, -0.5, 0.5, 0.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.25, 1.0, -0.25, -0.5, 1.0, 1.0, 1.0, -0.5, -1.0, 0.5, 0.75, -1.0, 0.75, 0.75, 0.0, 0.25, 0.75, -1.0, 1.0, 0.0, 1.0, 0.75, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, 0.75, -0.25, -0.5, 1.0, -1.0, 0.0, 0.0, -0.75, 1.0, 0.5, -0.5, -0.75, -0.25, -0.5, 1.0, 0.0, 1.0, 0.5, 1.0, -1.0, 0.0, 0.25, -0.25, -0.25, -1.0, -0.5, -0.5, 0.5, -0.25, 0.0, -1.0, -0.75, ]);
    
    const array10 = new Float32Array([-0.25, -1.0, -1.0, 0.25, -0.75, 0.5, -0.5, 0.0, -0.25, -0.5, 0.5, 1.0, -1.0, 1.0, -0.75, 0.25, 0.5, 1.0, 0.25, 0.0, -0.25, -0.5, 0.75, 0.75, -0.5, 0.75, 0.75, -1.0, 1.0, -1.0, -1.0, 0.75, -0.25, -1.0, -1.0, 0.25, -1.0, -0.25, 0.0, -1.0, 0.5, -0.5, -0.5, -0.75, 0.5, 0.5, 0.0, 0.0, -0.5, 0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 0.25, -0.5, -1.0, -0.5, 0.5, 0.0, 0.25, -0.75, -0.25, 0.0, 0.0, 0.5, -1.0, 1.0, 0.25, -0.75, 0.5, 0.25, 0.0, -0.5, 0.25, 0.25, 0.5, -0.75, -1.0, 0.5, 0.5, 0.0, 0.5, 0.0, -0.75, 0.25, -0.5, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, 0.25, -0.75, -0.75, ]);
    
    
    
    const array11 = new Float32Array([-0.25, 1.0, -0.25, -0.75, 0.25, -0.5, -1.0, -0.75, -0.25, 0.25, 0.0, -0.5, 0.25, -1.0, -0.5, -1.0, 1.0, 0.0, 0.25, 0.75, 0.0, 1.0, 0.0, 0.5, 1.0, 0.0, 0.25, 0.0, 0.0, 0.5, -0.75, -0.25, 0.75, 0.5, 0.25, -0.25, 1.0, -0.75, -1.0, 0.0, -0.75, 0.0, -0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 0.25, 0.0, 0.0, -0.5, -0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.5, 0.0, -1.0, 0.5, 0.25, -1.0, -0.25, 0.0, -0.5, 1.0, -0.25, 0.0, 0.25, -0.5, -0.25, 0.5, -0.75, -1.0, -0.5, 0.25, 0.25, 0.25, -0.5, 0.0, -0.25, -1.0, -0.75, -1.0, 0.5, 0.5, 0.25, 0.5, -0.5, 0.25, -0.5, 0.5, 1.0, 0.75, -1.0, 1.0, 0.75, 0.5, ]);
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([0.5, -1.0, -1.0, 0.25, -1.0, -1.0, 0.75, 0.25, 0.0, 1.0, -1.0, -0.25, 0.0, 0.25, 0.25, -0.75, 0.5, 0.5, -0.25, 1.0, -0.75, -0.5, -0.75, -0.75, 0.25, -1.0, 0.0, 0.75, -0.75, 1.0, 0.25, -0.75, 0.25, -0.5, 0.75, -0.25, 0.0, 1.0, -0.5, -1.0, 0.75, 0.25, -0.5, 0.0, 0.75, -1.0, -1.0, -1.0, -1.0, -1.0, 1.0, 0.25, 1.0, -0.5, -0.25, 0.0, 0.25, -0.75, 0.75, 0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.0, -0.75, 0.5, 1.0, 0.0, 0.5, 0.75, -1.0, -0.75, -1.0, -0.5, 0.0, 0.0, 0.5, 0.0, 1.0, -0.5, -0.75, -0.25, 0.5, -0.25, -0.25, -1.0, -0.25, -0.75, 0.5, 0.5, 0.25, -1.0, 0.5, 1.0, -0.5, 0.75, -0.25, 1.0, ]);
    
    
    
    const array13 = new Float32Array([-0.75, 0.25, -0.5, 0.25, 1.0, -0.5, 0.75, 0.75, -0.25, -0.25, 1.0, 0.0, -0.25, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.5, 0.0, -0.5, -0.5, -1.0, 1.0, 0.75, 1.0, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, 0.0, 0.25, 0.5, -0.25, -0.75, 0.5, 0.75, -0.25, -0.75, -1.0, -1.0, -0.5, 1.0, -0.25, -1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.5, -0.25, 0.5, 0.75, -0.25, 0.25, 0.75, 0.25, -0.75, -0.75, 0.5, -0.25, 0.75, 1.0, -1.0, 0.0, -0.25, -0.75, 0.5, -1.0, -0.5, 1.0, -0.75, 0.75, 1.0, -0.25, 0.75, 1.0, -0.5, -0.25, 0.75, -0.25, 1.0, 1.0, 1.0, 0.25, 0.0, 0.75, -0.5, 0.75, -0.5, 0.5, -1.0, 0.75, -1.0, ]);
    
    const array14 = new Float32Array([0.75, -1.0, -0.25, -0.5, -0.25, -1.0, 0.25, 0.75, 0.75, -0.75, 0.75, 0.0, 0.0, -0.5, 0.25, -0.25, -0.5, 0.75, -0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.75, -0.25, -0.75, -0.75, 0.75, 1.0, 0.25, -1.0, -0.75, 0.25, 0.75, 0.25, 0.25, 0.75, 0.25, -0.25, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, 0.25, -0.75, -0.75, -0.75, 1.0, 0.25, 0.0, 1.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.75, -0.25, 0.25, -1.0, 0.5, -0.5, 0.0, -1.0, 0.0, 0.0, -0.75, 0.0, 0.0, -0.75, 0.5, -0.25, 0.5, -0.5, -1.0, -0.25, -0.25, 0.75, 1.0, -1.0, 0.25, -0.25, 0.25, 0.5, -1.0, -1.0, 1.0, -0.25, 0.5, -0.25, 0.0, 0.25, 0.75, 0.25, 0.5, -0.25, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array15 = new Float32Array([0.5, 0.75, -0.25, -0.75, -1.0, -0.25, 0.75, -1.0, 1.0, -0.25, 1.0, -0.75, 0.75, 0.75, -0.25, 0.75, -0.25, 0.5, -0.25, 0.25, -1.0, 0.75, 0.75, 0.5, 1.0, 0.75, 1.0, 0.5, 0.5, -0.5, 0.5, 1.0, 1.0, 0.25, 0.75, -0.25, 0.25, 0.25, 0.5, 0.5, 1.0, -0.75, -0.75, 0.75, 0.25, 1.0, -0.75, 0.5, 0.75, 1.0, 0.5, -0.5, -0.25, 0.25, 0.75, 1.0, 1.0, 0.75, -1.0, -0.75, -1.0, -0.25, -1.0, -0.75, -0.25, 0.5, -0.5, 1.0, -0.5, 0.25, 0.25, 1.0, 0.0, 1.0, -1.0, -0.5, -0.75, 0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.5, -1.0, -1.0, -0.25, 0.25, -1.0, 0.25, -1.0, 1.0, 0.0, -0.25, 0.75, -0.75, 0.5, ]);
    const array16 = new Float32Array([-1.0, -0.75, 0.5, -1.0, -0.75, 1.0, 0.25, 0.75, -0.5, -0.5, -1.0, -1.0, -0.75, 0.75, -0.25, 0.5, 0.5, -0.75, 1.0, -0.5, 0.5, -1.0, -0.75, -0.25, -0.5, -0.25, 1.0, 0.75, -0.5, 1.0, -1.0, -1.0, 0.25, 1.0, -0.25, -0.5, 0.25, 0.25, -1.0, -1.0, -0.25, 0.25, 1.0, 0.25, 0.0, 0.75, 0.25, -0.75, -0.75, 0.5, 0.25, -0.25, 0.75, 1.0, -0.75, 0.0, 1.0, 0.75, -0.25, 0.75, 0.5, 1.0, 0.75, -0.75, 0.75, 0.25, -1.0, 0.0, 0.5, -1.0, 0.75, 0.75, 0.5, -1.0, -0.75, 0.0, 0.0, 0.75, -0.5, 0.0, -0.5, -1.0, -0.25, 0.75, -0.5, 0.25, 0.75, -0.5, 0.5, -1.0, 0.75, 0.25, 0.75, 0.5, 0.25, -1.0, -1.0, 0.75, 0.75, 0.25, ]);
    
    
    
    const array17 = new Float32Array([0.0, 0.0, 0.5, -1.0, -1.0, -0.75, 1.0, 0.5, -1.0, -0.5, -0.5, -0.5, 0.0, -0.25, -1.0, -1.0, -1.0, 0.0, -1.0, -0.75, -1.0, -1.0, -0.5, 0.25, -1.0, -0.25, -0.75, -1.0, -0.25, -0.25, 0.25, -0.25, 0.0, 0.5, 0.0, 0.75, -0.25, -0.5, 1.0, -0.5, 0.75, -0.75, -1.0, -0.75, -0.75, -1.0, -0.75, -0.25, 0.75, -0.25, 0.5, -0.25, 0.0, -1.0, 1.0, -0.5, 0.5, 1.0, -0.25, 0.75, 0.5, 0.75, -0.5, -0.75, -0.5, -0.25, 0.25, 0.5, -0.75, 0.5, 0.5, 1.0, 0.0, 0.5, 1.0, 0.75, -0.25, 0.0, -0.25, 0.25, 0.75, 1.0, 0.25, 0.75, 0.0, -0.25, -0.5, 0.5, 1.0, 1.0, 0.25, -0.75, 0.25, 0.25, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    
    
    
    device20.pushErrorScope("out-of-memory");
    const array18 = new Float32Array([1.0, -1.0, -0.75, -0.75, -0.75, 0.75, 0.0, 0.25, 0.5, 0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 1.0, 0.5, 0.5, 1.0, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, 0.0, -1.0, 0.75, 0.75, -0.5, -0.5, -0.5, 0.5, -0.75, -0.25, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, 0.25, -0.25, 0.75, -0.5, -0.5, -0.75, -1.0, 0.0, -1.0, -0.75, 0.5, 0.5, 0.25, 0.5, -0.25, 1.0, -0.25, -0.75, 0.25, -0.25, -0.75, 0.25, -0.5, -0.25, 0.5, -0.5, -0.5, 0.25, 0.25, -1.0, 0.0, -0.5, 0.25, 0.75, 0.0, 0.25, -1.0, 1.0, -0.5, 0.25, 1.0, 0.75, -0.75, 0.5, 0.25, 0.0, -0.5, 0.75, -0.25, 0.75, -0.25, -0.5, -1.0, -1.0, -0.75, -0.25, -0.25, -0.5, 0.25, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array19 = new Float32Array([0.0, 0.25, -0.5, -0.75, -0.75, 0.75, 0.5, 0.5, 1.0, -1.0, -0.75, 0.25, 0.25, 0.0, -0.75, 0.5, 0.0, 0.0, 1.0, -0.5, 0.25, -1.0, 0.0, -1.0, 0.0, -0.75, 0.75, 0.75, 0.25, 0.75, -1.0, 0.5, 0.75, 0.75, 0.5, -0.5, -0.5, -0.5, 0.25, 0.75, 1.0, 0.5, -0.75, -0.75, 0.5, -0.5, -0.5, -0.25, 0.0, 0.5, 0.25, -0.5, 0.0, -1.0, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -0.5, -0.75, 0.0, 0.25, -1.0, 1.0, -1.0, -0.5, -0.5, -0.75, 0.0, 0.75, 0.0, -0.25, -0.75, -0.75, 1.0, 0.75, 0.75, 0.0, -1.0, -0.75, 0.25, -0.5, 1.0, -0.5, -1.0, 0.5, 0.75, -0.5, -0.75, -1.0, 0.5, 1.0, 0.75, -1.0, -0.75, ]);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device20.pushErrorScope("internal");
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2000.popDebugGroup()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    texture202.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture201.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture200.destroy();
    texture203.destroy();
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    compute_pass_encoder2000.popDebugGroup()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    const command_buffer300 = command_encoder300.finish();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    compute_pass_encoder2000.popDebugGroup()
    
    
    const array20 = new Float32Array([-0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -1.0, 0.25, -1.0, 0.75, 1.0, -0.75, -0.5, -0.5, -0.5, -0.5, 0.75, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.5, -0.75, 0.5, -0.25, 0.0, 0.75, -0.25, 0.75, 0.25, 0.5, 0.75, 1.0, 0.75, -1.0, 0.25, -0.25, 0.25, 0.5, -0.5, -0.5, 0.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.5, 1.0, -0.75, 0.0, -0.25, 1.0, 0.25, -0.25, -0.75, 0.25, -1.0, 0.75, 0.5, 0.5, -1.0, 0.25, 0.25, 0.0, 0.5, 0.5, 0.75, -0.5, -0.5, 1.0, 0.25, 0.0, 0.25, 1.0, -1.0, -0.25, -1.0, 0.25, 0.25, 0.0, -0.75, 1.0, 1.0, 1.0, 0.5, -0.5, 0.0, 0.75, -1.0, -0.5, 1.0, -0.75, 0.75, 0.75, 0.75, -0.5, -0.75, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setPipeline(render_pipeline206);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    texture300.destroy();
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2040.beginOcclusionQuery(0)
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2040.setPipeline(render_pipeline203);
    
    device30.queue.submit([command_buffer300, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder301.insertDebugMarker("mymarker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    render_pass_encoder2020.beginOcclusionQuery(1)
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group200);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2050.setPipeline(render_pipeline207);
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
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
    device30.pushErrorScope("internal");
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2050.insertDebugMarker("marker");
    buffer200.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    render_pass_encoder2050.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    texture204.destroy();
    render_pass_encoder2030.setPipeline(render_pipeline209);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_buffer206 = command_encoder206.finish();
    render_pass_encoder2050.setStencilReference(1);
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const array21 = new Float32Array([0.5, -0.75, 0.5, -0.75, -0.25, -0.25, 0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 1.0, 0.0, 0.25, -0.25, 0.25, -0.5, -0.75, -0.5, -0.5, 0.5, 0.25, -0.75, -0.5, 0.25, 0.0, -1.0, 0.75, 1.0, 0.25, -0.75, 0.25, 0.25, 0.0, -1.0, 0.25, -0.25, 0.75, 0.75, -0.25, -0.5, 0.75, -1.0, 0.5, -0.25, 1.0, 0.25, 0.75, -0.75, 0.75, 0.75, 0.0, -0.5, -0.75, -0.75, -1.0, -0.5, -0.25, 0.75, 0.75, 0.5, 0.0, -1.0, 0.25, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, -0.75, -0.25, -1.0, 0.0, -0.75, 1.0, 0.5, 0.75, -0.25, 0.5, -0.75, 0.75, 0.75, 0.0, 0.25, 1.0, 1.0, 0.5, 1.0, 0.5, -0.75, -1.0, -0.25, ]);
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder2030.beginOcclusionQuery(2)
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    compute_pass_encoder2000.popDebugGroup()
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
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array22 = new Float32Array([1.0, 0.5, 0.5, 1.0, -0.5, 0.5, -1.0, -0.75, 0.25, -1.0, -0.75, 0.75, -0.75, -1.0, -0.75, -0.75, 0.5, 0.75, -0.75, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -0.75, 0.75, -0.5, 0.5, 0.25, -0.25, 1.0, -1.0, 0.5, -0.75, -1.0, 0.75, 0.75, 0.25, -1.0, -0.5, 1.0, -0.25, 1.0, 0.25, 0.75, 0.25, 1.0, 0.0, 0.5, 0.75, -0.75, 0.75, -0.75, 0.5, -0.75, -1.0, -1.0, -0.5, -0.75, -0.25, -1.0, -0.5, 0.5, 0.25, -0.5, 0.75, -1.0, -1.0, -0.25, -0.25, 0.75, -0.75, 0.75, 1.0, -0.75, -0.75, 0.75, 0.75, -0.25, 1.0, -0.25, 0.75, -1.0, -0.5, -0.5, -0.75, 0.75, 1.0, -1.0, 1.0, 1.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.0, 1.0, -0.5, ]);
    
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
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
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    texture500.destroy();
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group202);
    
    render_pass_encoder2020.beginOcclusionQuery(3)
    buffer205.destroy()
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    buffer202.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder2050.setStencilReference(1);
    
    render_pass_encoder2020.endOcclusionQuery()
    
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
    render_pass_encoder2030.endOcclusionQuery()
    buffer204.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    
    device20.queue.submit([command_buffer206, ]);
    
    buffer203.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    device60.pushErrorScope("internal");
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    render_pass_encoder2030.setStencilReference(1);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
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
    const array23 = new Float32Array([-0.75, -0.5, -0.75, -1.0, 1.0, 0.25, 0.25, 0.25, 0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 0.25, 1.0, -1.0, 0.5, -0.25, -0.75, 0.25, 0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 0.75, 0.75, 0.25, 1.0, -0.75, 0.5, -0.5, 0.0, -0.5, -0.5, 0.25, 0.0, -0.75, 0.0, 0.0, 0.25, -0.5, -1.0, 0.75, -0.25, -0.5, -1.0, 0.5, 1.0, 1.0, 0.25, 1.0, -0.5, -0.5, -0.5, 0.25, 0.5, 0.5, 1.0, 1.0, 0.75, 0.75, -1.0, 0.75, -1.0, -0.5, 0.0, -0.5, 0.5, -1.0, 0.75, -1.0, 0.0, 0.0, 0.25, -0.75, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, -0.25, -0.75, 0.75, -0.5, 0.5, 0.75, 0.0, 0.5, -1.0, -0.75, 0.25, 1.0, 0.25, -0.5, -0.5, 1.0, ]);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder2040.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_pass_encoder2050.setStencilReference(1);
    
    device50.pushErrorScope("out-of-memory");
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
    
    
    render_pass_encoder2020.beginOcclusionQuery(4)
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    texture205.destroy();
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    texture301.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder2040.insertDebugMarker("marker");
    
    render_pass_encoder2030.beginOcclusionQuery(5)
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder2010.popDebugGroup()
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
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_pass_encoder2040.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2050.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
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
    command_encoder600.insertDebugMarker("mymarker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder2040.endOcclusionQuery()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const array24 = new Float32Array([0.0, -0.5, 1.0, -1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 1.0, -1.0, 0.25, 1.0, -1.0, 0.75, -1.0, 0.5, -0.25, 1.0, 0.5, 1.0, -0.5, 0.5, -1.0, -0.75, -0.25, -1.0, -0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 0.25, 1.0, -0.75, -1.0, 0.5, 1.0, 0.25, 0.75, -0.25, -0.75, 0.25, 0.5, -1.0, -0.5, 0.0, 0.75, 0.75, 0.5, -1.0, -0.5, 0.0, -1.0, 1.0, 0.25, 1.0, 0.25, 0.5, -0.25, 0.5, 0.5, -0.75, -0.25, 0.0, 1.0, 0.25, 0.75, -0.75, 0.25, -0.25, 1.0, 1.0, 1.0, -1.0, 0.0, 0.25, 0.0, 1.0, 0.25, -0.25, -0.25, -0.5, -1.0, -0.75, -0.5, -0.75, 0.0, -0.25, -0.25, 0.0, -1.0, -0.75, 0.0, -1.0, 0.25, -0.75, -0.25, 0.0, ]);
    device20.pushErrorScope("validation");
    
    
    compute_pass_encoder2000.popDebugGroup()
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2040.setStencilReference(1);
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
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
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline209.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    
    texture302.destroy();
    render_pass_encoder2030.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    render_pass_encoder2040.beginOcclusionQuery(0)
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder301.insertDebugMarker("mymarker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2030.insertDebugMarker("marker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    command_encoder504.insertDebugMarker("mymarker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder5010.popDebugGroup()
    
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer504 = command_encoder504.finish();
    device30.queue.submit([command_buffer302, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer502, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
}