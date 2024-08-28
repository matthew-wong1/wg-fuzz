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
    
    
    
    const array0 = new Float32Array([0.75, -0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 0.25, -1.0, 0.25, -1.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.75, 1.0, 1.0, 0.75, 0.5, -0.5, -0.25, -0.75, -1.0, 0.5, 1.0, 1.0, 1.0, 0.75, -0.25, -1.0, -1.0, -0.25, 0.0, 0.75, 0.5, 1.0, 1.0, -0.75, 1.0, 0.75, 0.75, 0.5, 1.0, 0.75, -0.25, -1.0, 0.5, -1.0, 0.0, -1.0, -0.5, 1.0, 0.5, 0.25, 0.5, -1.0, 0.0, -1.0, -0.25, 0.75, 0.0, -1.0, -1.0, 0.25, -0.75, -0.75, 0.5, 0.5, 0.0, -0.75, -0.25, 0.5, -0.5, -0.5, 1.0, -0.75, -0.5, -0.75, -0.25, 0.75, 0.5, 1.0, -0.75, -0.5, 0.0, 0.5, 0.0, 0.25, -0.75, 1.0, 0.25, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, -0.25, ]);
    
    const array1 = new Float32Array([-0.75, -1.0, -0.5, -0.75, 0.25, -1.0, -1.0, -1.0, 0.25, -0.25, -0.5, 0.5, 0.5, 0.5, -1.0, -1.0, -1.0, 0.0, 0.25, 0.0, 1.0, 0.0, -0.5, -0.75, 1.0, 0.0, -1.0, -1.0, -0.5, 0.75, -0.25, -0.75, -1.0, 0.0, -1.0, 0.25, -0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 0.25, 0.0, 0.5, -0.5, -0.75, -0.5, -0.25, 0.0, 0.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.75, 1.0, -0.5, -1.0, -0.25, -1.0, -0.5, 0.5, -0.75, 0.0, 0.25, 0.75, 1.0, -1.0, -0.25, 0.5, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, 0.5, 0.75, 0.0, -0.25, 0.75, -0.25, 0.75, -0.5, -1.0, 1.0, 1.0, -0.25, -0.5, 0.75, 1.0, 0.5, 0.0, -1.0, 0.75, -0.5, 0.0, ]);
    
    
    
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
    const array2 = new Float32Array([-1.0, -0.25, 0.5, 0.25, 0.75, 0.25, -1.0, 0.5, 0.75, -1.0, -1.0, 0.0, -0.5, -0.25, 0.75, 0.5, 0.25, 0.5, 0.75, -0.25, 0.75, 1.0, 1.0, 0.75, -1.0, -1.0, 0.25, -0.75, 0.5, -0.5, 1.0, 0.5, -0.75, -0.75, -1.0, 0.5, 0.5, -0.75, -1.0, 0.5, 0.0, -0.5, -1.0, 0.0, 0.5, 0.25, 0.75, 0.0, -1.0, 0.0, 0.5, -0.25, 0.75, 1.0, 0.75, -0.5, 0.25, 0.75, 0.75, -1.0, 0.0, -0.5, 0.5, 0.5, 0.25, -0.25, -1.0, -0.25, -0.25, 0.5, 0.25, 0.5, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.5, 1.0, -0.5, 0.5, -1.0, -0.75, 0.25, -0.75, 0.5, 0.5, -1.0, -1.0, 0.75, 0.25, -0.25, 0.75, 0.5, 0.25, 0.75, -0.75, 0.25, 0.0, ]);
    
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
    device00.destroy();
    
    const array3 = new Float32Array([1.0, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, -0.75, 0.25, -0.25, -0.5, 0.25, 0.0, -0.75, 0.5, 0.0, 0.75, 0.25, -1.0, 0.25, 0.0, 0.25, -0.5, 0.25, 0.25, 0.75, -0.75, -0.5, -0.75, 0.25, 1.0, 0.75, 0.25, 0.0, -1.0, -0.75, 0.0, -1.0, 0.25, -0.5, 0.5, -1.0, -0.25, -0.75, 0.25, 0.25, -0.25, 1.0, 0.75, 0.5, 0.0, -1.0, -0.5, -0.25, -0.25, 0.75, 0.5, 0.75, 0.0, -1.0, -0.75, -0.5, 0.25, -1.0, -0.75, 0.75, -0.75, 0.25, -0.25, 0.25, -1.0, 0.0, 0.0, 1.0, 0.5, -0.25, 0.0, -1.0, -0.25, -0.5, -0.5, 0.25, -0.25, 1.0, -0.25, 0.25, 0.0, -0.75, 0.25, 0.5, 0.0, -0.5, -1.0, 0.5, 0.25, -1.0, ]);
    
    
    
    
    
    
    const array4 = new Float32Array([-0.75, -0.25, 1.0, 0.5, 0.0, -0.75, -0.25, -0.5, -0.5, -0.25, 0.75, 0.5, 1.0, 0.25, 0.25, -0.25, 0.25, 0.75, 0.75, 0.75, -0.25, -1.0, 0.25, 0.0, 0.75, -0.75, -0.5, 0.0, -1.0, 0.25, 0.5, 0.75, 0.75, -0.5, -0.25, -0.5, -0.5, 0.0, -0.25, 0.75, 1.0, -0.75, -0.5, 1.0, -0.75, 1.0, -1.0, 0.0, -1.0, 0.0, 0.75, -0.75, 0.75, 0.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.25, 0.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, -0.25, -0.25, -0.75, -1.0, 1.0, -1.0, -1.0, 0.75, -1.0, 0.0, 0.75, -1.0, -0.25, -1.0, 0.75, -0.25, -1.0, 0.5, 0.5, 0.5, 0.75, 1.0, 0.75, 0.0, -0.75, -0.5, -0.5, 0.0, 0.75, -0.25, 1.0, 0.25, -0.75, ]);
    
    const array5 = new Float32Array([0.0, 0.25, -1.0, -1.0, 0.5, 0.0, -1.0, 1.0, -0.75, -1.0, -0.75, -0.75, 0.5, -0.25, -0.5, 1.0, -0.75, -1.0, -1.0, 0.25, 0.25, 0.25, 0.0, -0.75, -0.5, 0.25, 0.25, 0.75, -0.5, -0.5, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, 1.0, -0.25, 1.0, -0.5, 0.75, 0.0, 1.0, 0.0, 0.75, -0.75, 0.5, 0.25, 0.0, -0.25, 0.25, -0.5, -0.75, -0.5, 1.0, 0.0, 0.5, -0.5, 1.0, -0.25, 0.75, 1.0, 0.25, -0.75, 0.25, -0.5, 1.0, 0.0, -1.0, -0.5, 0.5, -0.75, 0.5, 0.5, 0.0, 0.0, -0.25, 0.5, -0.25, -0.25, -0.75, -0.5, -1.0, 0.75, 0.5, -0.75, 0.75, -0.5, -0.5, -0.5, 0.5, -1.0, 0.0, -0.5, -0.75, 0.0, -0.75, 0.0, 0.25, 0.0, ]);
    
    const array6 = new Float32Array([-0.75, -1.0, 0.75, 1.0, 0.0, 1.0, 1.0, 0.25, -0.25, -0.75, -0.5, -1.0, 0.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.25, -0.25, 0.75, -1.0, 0.5, 0.5, -0.25, 0.5, 0.25, 0.75, -0.5, 0.0, -0.25, 0.75, -0.75, 0.5, 0.5, 0.25, 0.25, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.25, -0.25, 0.0, 0.75, 0.5, -0.75, -1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -0.75, 1.0, 0.0, -0.25, 0.25, -1.0, -1.0, 0.5, -0.75, -1.0, 0.0, -0.75, -1.0, -0.75, -0.5, 0.25, 0.75, 0.75, -0.5, 0.5, -0.25, 0.75, 0.25, -0.5, -0.25, 0.0, -0.25, -0.5, -0.75, 0.0, -0.25, 0.75, -1.0, -1.0, -0.5, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -1.0, -0.25, 0.5, 0.25, ]);
    
    const array7 = new Float32Array([-0.5, -1.0, 0.0, 1.0, 0.0, -0.5, 0.75, -0.5, -0.25, -1.0, 0.0, 0.75, -0.25, 0.75, 0.0, 1.0, 1.0, -0.25, 0.5, 0.25, 0.5, 0.0, 1.0, -0.25, -1.0, -0.5, 1.0, 0.0, 0.0, 1.0, -0.75, -0.75, -1.0, -0.25, 0.0, -0.25, 0.0, -0.25, -1.0, 1.0, -0.25, 1.0, 0.0, 0.5, 1.0, -0.75, -0.5, -0.75, -1.0, 0.5, 0.25, -1.0, 0.5, 1.0, 1.0, -1.0, -0.25, -1.0, -1.0, 0.75, 0.75, 0.25, 0.75, 1.0, 0.0, -1.0, -0.75, 0.25, 0.25, -0.5, 0.75, -0.75, -1.0, 0.25, -0.5, 1.0, 0.75, -0.5, -0.5, -0.25, 0.5, 0.5, 1.0, 0.5, -0.75, 0.5, -0.75, -0.5, -0.75, -0.5, -0.25, 0.25, -1.0, 1.0, -1.0, 0.0, -0.25, -1.0, 0.5, 1.0, ]);
    const array8 = new Float32Array([-0.5, -0.25, 1.0, -1.0, -0.25, 0.5, -0.75, -0.5, -0.25, 0.25, -1.0, 0.75, -1.0, -0.25, -0.25, 0.25, 0.0, -0.25, -1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -0.75, 0.0, 0.5, 0.25, 0.75, -1.0, -0.5, 0.5, 0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -0.5, -0.75, -0.5, 0.5, 0.25, -0.5, -0.25, -0.75, -0.75, 1.0, 0.25, 0.0, -0.5, -0.5, -0.75, -0.5, 0.75, -0.75, 0.5, -1.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.25, 0.75, 1.0, 0.5, -1.0, -0.25, -0.75, -0.5, -1.0, 0.5, -0.5, 0.25, 0.5, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, -1.0, 0.75, -0.75, 0.5, -0.25, 0.5, -0.75, 0.75, -0.25, -1.0, 0.75, ]);
    
    const array9 = new Float32Array([0.25, 0.5, 0.25, -1.0, 0.0, 1.0, 0.75, -0.5, 0.5, 1.0, 0.25, 1.0, -0.5, -0.75, -0.25, -0.25, 0.0, -0.75, 1.0, 1.0, 0.0, 0.0, -1.0, -0.5, -0.75, -1.0, 0.25, 0.75, 0.75, -0.25, 1.0, 1.0, 0.5, 0.25, -0.25, -0.75, 0.0, -0.5, -0.25, -0.75, -0.75, 0.25, -1.0, -0.25, -0.75, -0.25, 1.0, 0.0, 0.0, -0.75, -0.5, 0.0, -0.75, 0.0, 1.0, 0.75, 0.5, -0.5, 0.5, 0.75, -1.0, 0.75, -0.25, -1.0, 0.25, 0.25, -1.0, 0.0, -1.0, -0.25, 0.5, 0.5, 0.5, 0.5, 0.75, 1.0, 0.5, 0.25, -0.5, -1.0, 0.75, -1.0, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, 0.5, -0.75, -0.75, 0.75, 0.25, 1.0, -0.5, 0.5, -0.5, 0.5, -1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array10 = new Float32Array([0.5, 0.75, -1.0, -0.25, 0.75, 1.0, 1.0, -1.0, 0.75, 0.25, -0.25, 0.75, 0.75, -0.5, -1.0, 0.5, 0.0, -0.75, 0.25, 0.25, -0.5, -0.25, -0.25, 0.75, -0.25, 0.0, -0.5, -0.5, 0.25, -1.0, 0.25, -0.25, 0.0, 0.5, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, -0.75, 0.75, 0.5, 0.0, 0.75, -0.25, 0.25, -1.0, -1.0, 0.75, 0.25, -1.0, 0.25, 0.25, -1.0, 0.0, 0.0, -1.0, 1.0, 0.0, 1.0, -0.25, 0.75, 0.25, 0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 0.5, -0.25, 0.25, 1.0, 0.75, -0.5, -0.75, 0.25, 0.75, 0.5, -0.5, 0.0, 0.75, 0.0, 1.0, 0.5, -0.5, -0.5, -0.5, 0.25, -0.5, 0.0, -1.0, 0.75, 0.75, 0.25, -0.5, 1.0, 1.0, -1.0, ]);
    
    
    
    const array11 = new Float32Array([0.25, -0.5, 1.0, -1.0, 0.75, -1.0, -1.0, 0.25, 0.5, -0.75, 0.25, 0.5, 1.0, -0.5, 0.25, 0.5, 1.0, 0.75, 0.75, -1.0, 0.0, -1.0, 0.0, 1.0, 0.5, 0.25, 0.5, -1.0, -0.25, -0.25, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.75, 0.75, 0.0, 0.25, -0.25, 0.5, 0.25, 0.25, 0.0, -0.5, -0.25, -0.75, 0.25, 0.0, 1.0, 1.0, 0.25, 0.5, 0.5, -0.75, -0.5, -1.0, -0.25, 1.0, -0.5, -0.25, -0.5, -1.0, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, 0.0, -0.5, 0.25, 0.0, 0.0, 0.25, 1.0, 0.25, 1.0, 1.0, 0.5, 1.0, 0.25, 0.75, 1.0, -0.25, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, 0.25, -1.0, 1.0, -0.5, -0.5, 0.25, -1.0, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array12 = new Float32Array([1.0, -0.75, 1.0, 1.0, 0.5, -0.75, -0.5, 1.0, 0.75, -0.25, 1.0, -0.25, 1.0, 1.0, 0.25, -1.0, -0.5, 0.0, 1.0, 0.5, 1.0, -0.5, 0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.75, 1.0, 0.0, 0.0, -0.75, -1.0, 1.0, 0.75, 0.25, 0.25, -1.0, 0.5, 0.25, 1.0, -1.0, 0.75, 0.5, 1.0, -0.25, -0.25, 0.5, 0.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.25, -1.0, 1.0, 1.0, -0.75, -0.25, 0.0, -1.0, 0.75, 0.25, 1.0, 1.0, -1.0, 0.0, -0.5, 1.0, -0.75, 0.25, -0.5, -1.0, -0.75, 0.25, -0.75, 0.25, 0.25, -0.75, 0.5, -0.5, 0.5, -1.0, 0.0, 1.0, 0.75, 0.5, 0.5, -0.5, 0.25, 0.5, -0.25, 0.0, -0.25, -0.25, 0.5, 0.75, 0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    device20.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const adapter3 = await gpu.requestAdapter({
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    
    device20.destroy();
    
    texture100.destroy();
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1000.beginOcclusionQuery(0)
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
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array11, 0, array11.length);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.endOcclusionQuery()
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
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
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const array13 = new Float32Array([0.5, -0.25, 1.0, 0.75, 1.0, -0.5, -0.5, -0.75, -0.25, 0.75, -1.0, -0.75, 0.25, 0.0, -0.25, -1.0, -1.0, 0.25, -1.0, -0.25, -0.25, 0.75, -0.25, -0.75, 1.0, -0.5, 0.25, -0.5, 1.0, -0.5, 0.0, 0.25, 1.0, 0.25, 0.5, -0.25, -1.0, 0.0, 0.0, 0.25, -0.75, 1.0, 0.25, 0.25, -0.25, 0.0, 0.75, -1.0, -1.0, -0.75, 0.5, -0.25, 0.25, 0.25, -1.0, 1.0, 0.0, -1.0, -0.5, -1.0, 1.0, 0.75, 0.25, 0.75, 0.0, 0.5, 0.75, 1.0, -0.75, 0.0, 0.75, -0.75, 1.0, -0.25, -0.25, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 0.5, 0.75, -0.5, -1.0, -1.0, 1.0, -0.75, -0.25, 0.75, 0.75, 0.75, 0.0, -0.5, -0.5, -0.5, -1.0, 0.75, 0.5, 0.75, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder501.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    texture400.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder500.popDebugGroup()
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device40.pushErrorScope("internal");
    
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    command_encoder501.insertDebugMarker("mymarker");
    
    query100.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    render_bundle_encoder400.popDebugGroup();
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
    device10.queue.writeTexture({ texture: texture101 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    texture401.destroy();
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
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
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    buffer100.destroy()
    texture101.destroy();
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
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
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device40.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1000.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer500, 0, array11, 0, array11.length);
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
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    buffer106.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    device10.queue.writeBuffer(buffer101, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    query100.destroy()
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
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    
    buffer501.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.popDebugGroup();
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    const array14 = new Float32Array([0.5, -1.0, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -1.0, -0.75, -0.25, -0.5, 0.25, 0.25, 1.0, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 0.75, 0.0, 0.75, -0.75, 0.0, 0.0, -1.0, -0.25, -1.0, -1.0, -0.5, 1.0, -1.0, -0.5, 0.75, -1.0, -1.0, -0.75, -1.0, 0.25, 0.5, -0.5, 0.5, 1.0, -0.25, 0.25, -0.5, 0.0, 1.0, -0.5, -0.75, 0.25, -1.0, 0.75, -0.75, 1.0, -0.5, -0.25, -0.5, -0.5, 0.25, -0.75, -0.5, 0.25, -1.0, 0.0, 0.75, -0.5, 0.0, -0.5, -0.5, -0.25, -0.5, 1.0, -0.5, 0.25, 0.5, 1.0, -0.75, 1.0, 0.5, 0.0, -0.75, -0.75, -0.25, 1.0, -0.5, 0.5, 0.75, -0.25, 0.5, 1.0, 0.25, 0.75, 0.25, 0.75, -0.75, 0.75, 0.25, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setStencilReference(1);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    device10.queue.writeBuffer(buffer101, 0, array12, 0, array12.length);
    compute_pass_encoder5010.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder101.setPipeline(render_pipeline102);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array12, 0, array12.length);
    buffer104.destroy()
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
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
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer103.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.writeBuffer(buffer101, 0, array13, 0, array13.length);
    render_pass_encoder1000.setStencilReference(1);
    texture102.destroy();
    device10.queue.writeBuffer(buffer101, 0, array13, 0, array13.length);
    query501.destroy()
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder501.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("validation");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setStencilReference(1);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    buffer105.destroy()
    
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    query100.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    query101.destroy()
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1000.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture103 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    compute_pass_encoder5010.popDebugGroup()
    device10.queue.writeTexture({ texture: texture103 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
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
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeBuffer(buffer101, 0, array12, 0, array12.length);
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    compute_pass_encoder5000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture103 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture103.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    render_bundle_encoder500.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    render_bundle_encoder501.insertDebugMarker("marker");
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
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    query101.destroy()
    
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
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array13, 0, array13.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    compute_pass_encoder5000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    render_bundle_encoder500.setPipeline(render_pipeline501);
    buffer101.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
        occlusionQuerySet: query101
    });
    
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("internal");
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_bundle_encoder501.pushDebugGroup("group_marker");
    buffer102.destroy()
    render_pass_encoder1020.setPipeline(render_pipeline105);
    command_encoder300.pushDebugGroup("mygroupmarker")
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder1030.setPipeline(render_pipeline104);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    buffer107.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    compute_pass_encoder5000.popDebugGroup()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    query101.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    texture104.destroy();
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture300.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query503.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    render_bundle_encoder501.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group104);
    command_encoder301.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_pass_encoder1000.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group503);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder5010.end();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1020.draw(3);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1030.end();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    const command_buffer501 = command_encoder501.finish();
    const command_buffer101 = command_encoder101.finish();
    command_encoder103.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.end();
    compute_pass_encoder5000.end();
    const command_buffer103 = command_encoder103.finish();
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    const command_buffer500 = command_encoder500.finish();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
}