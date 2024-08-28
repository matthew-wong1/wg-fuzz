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
    const array0 = new Float32Array([-1.0, -1.0, 1.0, 0.5, 0.25, 0.75, -0.5, 0.5, -0.5, -0.25, 0.25, -0.5, -1.0, -0.75, 0.5, -1.0, 0.25, -0.5, 0.0, 0.5, 1.0, 0.75, -1.0, 0.25, 0.0, 0.75, -0.75, 0.75, 0.75, -0.75, -0.25, 0.25, -1.0, -0.5, -0.75, 0.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.5, -1.0, 0.5, -0.25, 0.25, 0.75, 0.25, -0.75, 0.25, -0.5, -1.0, 0.5, -0.75, -0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 0.75, -0.25, 0.5, -1.0, 0.0, -0.5, -0.25, -1.0, 0.5, 1.0, -0.25, -0.75, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, -0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.25, -1.0, 0.5, -1.0, 0.25, -0.5, 0.75, 0.75, -0.75, 0.25, -1.0, -0.25, 1.0, 0.75, 0.5, ]);
    
    
    const array1 = new Float32Array([1.0, 0.25, 0.25, 0.5, 1.0, -0.25, -1.0, -0.5, 0.75, 1.0, 0.75, 0.5, -0.5, 0.75, -0.5, -0.75, 1.0, 0.25, -0.75, 0.75, -0.25, 1.0, 0.25, -0.25, -0.25, -0.25, -1.0, -0.5, 0.75, 0.5, 1.0, -0.25, 0.5, -0.25, -0.25, -0.75, -1.0, 0.25, 0.75, 0.25, -0.5, -0.5, -0.5, -1.0, -0.75, -0.25, 0.25, 1.0, 0.0, -1.0, 0.75, -0.5, -1.0, 0.5, -0.75, -0.75, -1.0, -0.25, -0.25, 0.0, -1.0, -1.0, 0.5, 1.0, 0.0, -1.0, 0.75, -0.5, -0.75, 0.0, 1.0, -1.0, 0.0, 0.25, -0.75, 0.25, -1.0, 0.5, -0.75, 0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, 0.25, 0.25, -1.0, -0.75, 0.25, 0.0, -1.0, 1.0, 0.25, -1.0, 0.75, -0.5, 1.0, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    const array2 = new Float32Array([1.0, -0.5, -0.25, -0.75, -0.75, 0.75, 0.0, -0.25, -0.25, 0.75, 0.25, 1.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.25, 0.25, -0.5, -0.5, -0.5, -0.5, 0.5, 0.25, -0.5, 0.75, -0.25, -0.75, 0.75, 0.5, 1.0, 0.0, 0.25, 0.75, 1.0, 0.5, 0.5, 0.75, -0.25, 0.25, 0.25, -0.25, -0.25, -1.0, 0.0, 0.25, -0.25, 1.0, -0.25, -0.25, -0.5, 0.75, -0.5, -0.25, 0.0, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, 0.75, 1.0, -0.75, -0.25, 0.0, -1.0, 0.25, 0.5, -0.5, -0.25, -1.0, 0.25, -0.5, 1.0, 1.0, 1.0, -0.5, 1.0, 1.0, -0.25, -0.25, 0.75, 0.5, -1.0, 0.5, -0.5, -1.0, -1.0, -0.5, -1.0, 0.25, 0.25, 0.5, 0.5, -0.75, 0.5, -1.0, 0.75, ]);
    const array3 = new Float32Array([0.25, -1.0, 0.0, 0.0, -0.5, 0.0, -0.75, 0.5, -0.25, 1.0, 1.0, -1.0, 0.25, -1.0, 0.25, 0.25, -0.25, -0.75, -0.25, 0.75, -0.25, -0.75, 0.5, 0.5, -0.5, 0.5, -1.0, 1.0, -0.75, -0.25, -0.5, -0.75, 1.0, 0.0, 0.75, 0.0, 0.75, -0.25, 0.0, -0.5, 0.5, -0.25, -0.25, 0.25, 1.0, -0.25, 0.0, 1.0, 1.0, 0.25, 0.75, 0.0, -0.25, 1.0, -0.75, 0.5, -0.75, -0.75, 0.5, 0.5, 0.0, 0.75, -0.25, 0.5, -0.25, 0.0, -0.75, -0.25, -0.75, -0.5, -0.75, -0.25, -0.5, 0.0, 0.75, -0.25, 0.25, -0.25, 0.75, 1.0, 0.5, 0.5, 0.0, -1.0, 0.5, -1.0, 0.25, -0.75, 0.0, 0.5, -1.0, 0.5, 0.25, -1.0, 0.5, 0.25, -1.0, 1.0, 1.0, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    const array4 = new Float32Array([-0.25, -1.0, -1.0, 0.5, -0.25, -1.0, -0.5, 0.5, -0.5, 0.5, 1.0, -0.75, -0.75, 0.25, 0.5, -1.0, 0.0, -0.5, 0.0, 0.0, -0.75, 0.75, -0.25, 0.25, -0.5, 0.25, -0.5, -0.75, 1.0, 0.5, 1.0, 0.75, 0.75, 0.25, 0.25, -0.75, -0.75, 0.5, -0.25, 1.0, 0.5, 0.75, -0.5, -0.5, 0.0, -0.25, 0.0, -0.25, -0.75, -1.0, -1.0, -0.25, 1.0, 0.5, 1.0, -0.25, 1.0, 0.75, -0.5, 0.0, 0.5, -1.0, -1.0, 0.75, 0.25, 0.0, 0.5, 0.0, -0.25, -0.5, 0.0, -0.75, 1.0, -0.25, 0.0, -0.5, -0.75, 0.5, 1.0, -0.5, 0.75, 1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.5, 0.5, 1.0, 0.0, -0.75, -0.5, -1.0, -0.25, -1.0, 0.0, 1.0, 0.75, -0.25, ]);
    const array5 = new Float32Array([0.0, -0.5, 0.25, 0.75, 1.0, 1.0, 0.75, 1.0, -1.0, 1.0, 0.0, 1.0, -0.5, 0.25, 0.5, 0.0, 0.5, -0.75, 1.0, -0.25, 1.0, 0.5, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5, 0.75, -0.25, 1.0, -1.0, 0.5, -0.25, 0.0, -0.75, -0.75, 0.25, -0.5, 1.0, -0.75, -0.5, 0.25, -1.0, 0.0, 0.0, 0.0, -1.0, 0.0, -0.5, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -0.5, 0.0, 1.0, -0.75, -0.5, -0.75, 0.75, 0.0, -0.75, 1.0, 0.5, 0.25, 0.75, -0.75, 0.5, 1.0, 1.0, 0.25, -0.5, 0.5, -1.0, 0.0, 1.0, 0.5, 0.75, 0.0, -0.75, 1.0, 0.5, 0.0, -0.5, -1.0, -0.75, -0.75, -0.25, 1.0, 0.75, 1.0, 0.5, -0.75, 0.5, 0.75, -0.5, 0.75, ]);
    
    const array6 = new Float32Array([1.0, -0.5, 0.5, -1.0, 0.75, 0.0, -0.25, 0.75, -0.25, 0.75, 0.75, -0.75, 0.0, 0.0, -1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.0, 0.75, -0.5, 0.5, 1.0, 1.0, 0.5, 0.25, 0.75, 0.75, 0.0, -0.75, 1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.5, 0.0, -1.0, -0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, 0.75, 0.25, -0.5, -1.0, -0.75, 0.0, -0.75, 0.5, 0.0, -1.0, 0.5, -0.25, -0.25, 1.0, -0.25, -0.5, -0.5, -1.0, 0.75, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, 1.0, 0.25, 0.75, -1.0, 0.25, 0.0, -0.75, 1.0, 0.75, -0.5, -1.0, -0.75, 0.0, 0.75, -0.25, 1.0, -0.5, -0.25, 0.75, -1.0, -0.25, -0.5, -0.5, ]);
    
    const array7 = new Float32Array([-0.25, 0.0, 0.0, 1.0, 1.0, -1.0, -1.0, 0.25, -0.5, 0.5, 0.5, -1.0, 0.5, 0.75, -1.0, 0.25, 1.0, 0.5, 0.0, 0.75, 1.0, -1.0, -0.75, 1.0, -1.0, 1.0, -0.5, 0.0, 1.0, -0.5, 0.75, -0.75, -0.75, -0.25, 1.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.75, -0.75, 0.0, -0.5, 0.75, 1.0, 0.0, -0.75, -1.0, -0.75, -0.5, 0.25, -0.75, 1.0, 0.25, 0.0, -1.0, -1.0, -0.5, -0.5, -0.5, -0.25, -0.5, -0.5, -0.5, -0.25, 0.5, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -1.0, -0.5, 0.5, 0.0, -0.5, 0.75, -0.25, 0.25, 1.0, -0.25, 0.0, 0.5, -0.25, -0.25, -0.75, 0.75, -0.75, 0.75, 1.0, -1.0, -0.25, 0.0, -0.75, 1.0, -1.0, 0.0, -0.75, ]);
    
    const array8 = new Float32Array([-0.25, 0.5, -0.5, -1.0, -1.0, -0.5, 0.0, -1.0, -0.25, 0.75, 0.0, -0.75, 0.0, 0.75, -0.75, -0.25, 0.25, 0.5, 0.25, -0.25, -1.0, 1.0, -0.5, -0.5, 0.25, 0.0, -1.0, -0.5, 0.0, -0.5, 0.0, -0.5, -0.25, -0.25, 0.75, 0.75, -0.5, 1.0, -0.25, -0.5, -0.25, 0.0, -0.25, 1.0, 0.5, -0.25, -1.0, 0.75, -1.0, 0.0, 0.0, 1.0, 1.0, -0.5, 0.25, -0.25, 0.75, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, -1.0, 0.5, 0.5, 0.0, 0.5, -0.5, -0.75, 0.0, -0.25, -1.0, -1.0, -0.75, 0.0, -1.0, -0.25, 0.5, -0.5, -0.5, -0.25, -0.25, 0.75, -0.75, 1.0, -1.0, 0.0, 0.75, 1.0, -0.25, -0.5, -0.25, -0.5, 0.75, -0.75, 0.25, -0.5, -0.75, ]);
    
    
    
    const array9 = new Float32Array([-0.5, 0.75, 0.75, 1.0, 0.75, -0.75, -1.0, -1.0, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.0, 0.5, 1.0, 0.0, -0.25, 0.75, 0.75, 1.0, -0.75, 0.5, -1.0, -1.0, -1.0, 0.0, -0.25, -1.0, -0.25, 0.25, 0.25, 0.75, -0.75, 0.5, 0.5, -0.75, 0.5, 0.5, -0.5, 0.5, 0.5, 0.25, -0.75, 1.0, -0.5, -0.25, -0.75, 1.0, 0.75, -0.25, -0.75, 0.0, 1.0, -0.5, 1.0, -0.75, -0.5, 0.25, 0.25, 0.25, -0.25, 0.75, 0.25, 0.5, 0.0, 0.75, 0.0, 1.0, -0.75, 1.0, 0.0, -0.5, 0.0, -0.5, -0.75, 1.0, 0.25, -0.75, 0.5, 0.0, 0.5, 0.25, 0.25, -0.75, 0.5, -1.0, 0.75, 0.25, -0.5, 1.0, 0.0, -0.25, -0.5, 0.25, 0.25, -0.75, -0.25, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array10 = new Float32Array([-0.75, 0.5, -0.5, -1.0, -0.25, 0.0, -1.0, -0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 0.75, -0.5, -0.5, -0.25, 1.0, 0.75, -0.5, 0.5, 0.0, -0.25, 0.75, 0.5, 0.0, 0.25, -0.5, -0.25, 0.75, -0.75, -1.0, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.75, 0.0, 0.25, 0.0, -0.5, -0.75, -1.0, -0.75, -1.0, -0.25, -1.0, -0.5, 0.5, -1.0, -1.0, -1.0, 0.0, 0.75, 0.0, -0.25, -0.25, 0.75, 1.0, 1.0, -0.5, 0.5, -0.5, 0.0, 0.25, 1.0, 0.75, -0.5, 0.5, -0.25, 0.0, 0.75, 0.25, 0.25, -0.5, -0.5, -0.25, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.0, -0.5, 0.5, -0.25, -0.5, 0.75, -1.0, 0.75, 0.25, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.destroy();
    
    const array11 = new Float32Array([0.75, 1.0, 0.0, -0.25, 0.25, 1.0, -1.0, 0.5, 0.5, -0.5, -0.5, -0.5, 1.0, 0.5, -0.75, -0.75, -0.5, 1.0, 0.75, 0.0, 0.75, 0.0, 1.0, -0.75, -0.25, 0.25, 0.5, -0.5, 0.75, 0.25, -0.25, 0.25, -0.25, 0.75, -1.0, 0.25, -0.25, -0.75, -0.25, 0.5, -0.25, -0.75, -0.5, 0.0, -1.0, 0.75, 0.5, -0.75, -0.75, 0.0, 0.25, -1.0, -0.25, 0.75, 0.75, 0.25, -0.25, 0.0, -0.25, 1.0, -1.0, 0.75, -1.0, 1.0, -0.5, 0.0, -0.25, 0.5, 0.25, -0.25, -1.0, -1.0, 0.25, -0.75, 0.75, -1.0, -0.5, 0.5, -0.75, 0.25, 0.5, 0.5, 0.5, -0.5, 1.0, 0.5, 0.0, 0.0, -0.75, -0.5, 0.75, 1.0, -0.75, 0.0, 0.5, -0.25, -1.0, 0.5, 0.75, -0.25, ]);
    
    
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer500.destroy()
    const command_buffer401 = command_encoder401.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture501.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer500 = command_encoder500.finish();
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    command_encoder400.popDebugGroup()
    command_encoder400.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.submit([command_buffer500, ]);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array12 = new Float32Array([-0.25, 1.0, -0.5, -0.75, 0.25, 0.5, -0.25, 0.25, 0.75, -0.25, -0.5, -0.25, -0.75, 0.5, 0.5, 0.25, -1.0, -1.0, 0.25, -0.5, 0.5, 0.5, 1.0, 0.0, 0.25, -0.25, 0.75, 0.0, 0.5, 0.25, -1.0, 0.0, -1.0, -0.75, -1.0, 0.5, -1.0, -0.5, 0.75, 0.5, -1.0, 0.0, 0.75, -0.25, 0.75, 0.5, -0.5, -0.25, -0.25, -1.0, -0.75, 1.0, -0.75, -0.5, 0.75, -0.5, 1.0, 0.5, 0.75, -0.5, -0.5, -0.25, 0.0, 0.5, 0.75, -0.75, -0.5, 0.0, -0.25, 0.5, 1.0, 0.0, -1.0, -0.25, 1.0, 0.5, 1.0, -0.25, 0.75, 0.75, -1.0, -0.5, 0.75, 0.25, 0.0, -1.0, 0.25, -0.5, 1.0, 0.25, -0.5, 0.25, 0.75, 0.25, 1.0, -0.25, -0.75, 0.25, 1.0, 1.0, ]);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([command_buffer401, ]);
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
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
    query400.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder402.setPipeline(render_pipeline400);
    device40.pushErrorScope("internal");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    
    
    render_bundle_encoder502.setPipeline(render_pipeline501);
    const array13 = new Float32Array([0.25, 0.75, -0.5, 0.25, 0.75, -0.25, 0.75, 1.0, 1.0, 0.25, -0.25, -0.5, 0.25, 0.25, 0.25, -0.25, -0.75, 0.5, 0.25, -0.25, 0.0, 0.25, 0.0, -1.0, -1.0, 0.75, -0.25, 0.25, -0.5, -0.75, -0.25, 1.0, 0.5, 1.0, 0.5, 0.75, 0.5, 0.25, 1.0, 0.75, 0.5, 1.0, 0.5, -0.5, 0.25, -0.5, -0.25, 0.75, -0.5, -0.75, 0.0, 1.0, 0.0, -0.25, -0.5, 0.0, -1.0, -0.75, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, 0.5, -1.0, 1.0, -0.25, -1.0, 0.75, 1.0, 0.25, -0.75, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, -0.75, -0.75, 1.0, 0.5, -0.25, -0.75, 1.0, -0.5, 0.25, 0.25, 1.0, 0.25, 0.25, -0.5, 0.5, 0.75, -0.75, -1.0, 1.0, 0.75, -1.0, ]);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    const array14 = new Float32Array([-0.5, -0.25, -0.75, 0.0, 1.0, 0.0, 0.75, 0.75, 0.75, 0.5, -0.5, 0.75, 0.0, 0.0, -0.5, -1.0, -1.0, 0.5, 0.5, 0.5, -0.25, -0.5, 1.0, 0.75, -1.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.25, 0.0, -1.0, 0.5, 0.5, -0.5, -0.5, -0.25, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, 0.5, -1.0, 0.75, 0.0, -0.25, 0.5, -0.25, 0.25, 0.0, -1.0, -0.5, 1.0, 0.5, 0.0, -1.0, 0.75, 1.0, 1.0, -0.5, 0.0, -0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 0.5, 1.0, -1.0, 0.75, 0.75, 0.25, 0.25, 1.0, -0.75, 0.5, 0.0, -0.25, -1.0, -0.75, 0.25, 0.0, 1.0, 1.0, 1.0, 0.25, -0.25, -1.0, 0.75, 0.5, -0.25, 0.5, 0.0, 0.0, -0.25, 0.0, ]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
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
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    command_encoder400.popDebugGroup()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    texture500.destroy();
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer400.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    buffer401.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array15 = new Float32Array([-0.5, -0.5, 0.5, 0.5, 0.25, -0.5, 0.75, 0.5, 0.25, 0.5, 0.0, 0.0, -1.0, 0.5, 0.75, 0.75, -1.0, 0.0, 0.75, -0.5, 1.0, 0.75, -1.0, 0.5, 0.75, 0.5, -1.0, 0.5, 0.25, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, -0.5, 0.5, 0.75, 1.0, -0.25, -0.25, -0.25, -0.25, -0.75, -0.75, 0.25, 0.0, -0.25, 0.5, 0.0, 0.25, -1.0, 1.0, -0.25, 1.0, -0.75, 0.75, 0.0, 0.75, 0.0, -0.5, -0.25, -0.25, 0.25, -0.25, 0.0, 0.5, -0.5, 0.25, 0.5, -0.5, 1.0, 0.5, 0.75, 0.0, 1.0, -0.5, 0.5, 0.5, -0.5, 0.75, 1.0, 0.0, 0.75, -0.75, -0.75, 0.25, -0.5, -0.75, -0.5, 0.0, 1.0, -0.25, 0.0, -0.5, 0.75, 0.75, -0.5, 0.0, 0.0, ]);
    
    query401.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    buffer403.destroy()
    const array16 = new Float32Array([-0.25, 0.0, 0.5, -0.75, -0.5, 0.5, 0.25, -1.0, -0.25, 1.0, -0.25, 1.0, -1.0, -0.5, -0.25, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, -0.25, 0.75, -1.0, 1.0, -0.25, 0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 0.25, 0.5, 0.75, -0.25, 0.0, -0.75, 0.5, 0.75, 0.25, 0.0, 0.5, 0.75, 0.0, -0.25, 0.75, 1.0, 0.75, -0.5, 0.5, -0.75, 0.0, -0.5, -1.0, 0.5, -0.25, 0.5, -0.5, 1.0, 1.0, -0.75, -0.25, 0.75, -0.25, 0.0, 0.25, -0.25, -0.5, 1.0, -0.25, -0.25, 0.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.5, -0.25, -0.5, 0.75, 0.5, 0.0, 0.25, -1.0, -1.0, 0.5, 1.0, 0.5, 0.25, 0.75, -1.0, -0.75, 0.0, -0.5, -0.5, -1.0, 0.25, -0.5, ]);
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder400.popDebugGroup();
    
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    texture502.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder501.clearBuffer(buffer501);
    const array17 = new Float32Array([-0.25, -0.25, 0.0, -0.25, 0.25, -0.75, 0.0, 0.75, -1.0, 0.0, 0.0, -0.25, -0.75, -1.0, -0.75, 0.0, 1.0, 0.5, 0.0, -0.75, -1.0, -0.25, 1.0, -0.75, 0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 0.5, 0.5, 0.75, 0.0, -0.25, -1.0, -0.75, -0.75, 0.5, -1.0, 0.25, 0.0, 0.25, 1.0, -0.25, 0.75, 0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 0.5, 0.25, -1.0, 0.5, 0.75, -0.25, -0.25, 0.25, -0.25, 0.5, -0.5, 0.25, -0.25, -0.25, 0.25, -1.0, 1.0, -0.25, -1.0, -1.0, -0.75, 0.25, -0.75, -1.0, 0.75, 1.0, 1.0, 0.0, -0.25, -0.75, -0.25, 0.0, -0.75, 1.0, 0.0, -0.5, -1.0, 0.0, -0.25, 0.5, 1.0, 0.75, 0.0, 0.75, -0.5, -1.0, 0.25, -1.0, ]);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
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
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    
    query401.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    device50.pushErrorScope("out-of-memory");
    
    
    buffer501.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder501.setBindGroup(0, bind_group500);
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
    command_encoder403.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    render_bundle_encoder500.popDebugGroup();
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    query402.destroy()
    buffer402.destroy()
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    command_encoder501.popDebugGroup()
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
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

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder402.popDebugGroup()
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    texture503.destroy();
    query500.destroy()
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    query503.destroy()
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
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_bundle_encoder502.setBindGroup(0, bind_group502);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const array18 = new Float32Array([0.5, -0.5, 0.0, 0.75, -0.25, -0.25, -0.75, 1.0, 0.5, -1.0, 1.0, 0.5, -0.25, -0.25, 0.25, 0.0, 0.5, 1.0, 0.25, -0.5, -0.75, 0.75, 0.75, 0.75, 0.75, 0.0, -1.0, 0.25, -0.75, -0.75, 0.75, 1.0, 0.0, -0.5, 0.75, -0.25, 1.0, -1.0, 0.25, 0.75, -1.0, -1.0, 1.0, 0.75, -0.5, -1.0, -0.75, 0.5, 0.5, 0.0, 0.5, -0.5, 0.25, -0.5, 0.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.0, -1.0, -0.5, 0.25, -0.5, 1.0, 0.5, -0.25, 0.75, -0.75, 0.0, -0.25, 1.0, -0.5, 0.5, 0.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.0, 0.0, -0.75, 0.5, 1.0, -0.75, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, 0.25, -0.25, 0.75, -1.0, 0.0, -0.25, 0.25, ]);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    query500.destroy()
    
    query400.destroy()
    
    buffer506.destroy()
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer406.destroy()
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer507.destroy()
    
    
    render_bundle_encoder502.popDebugGroup();
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder502.insertDebugMarker("marker");
    compute_pass_encoder4000.popDebugGroup()
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder402.popDebugGroup();
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer505.destroy()
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
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
    
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder4000.insertDebugMarker("marker")
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
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    query400.destroy()
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    texture400.destroy();
    query402.destroy()
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder502.insertDebugMarker("mymarker");
    
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder501.insertDebugMarker("mymarker");
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device70.queue.writeTexture({ texture: texture700 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device70.destroy();
    
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device60.destroy();
    query500.destroy()
    query400.destroy()
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer502.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer4010.destroy()
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    query502.destroy()
    compute_pass_encoder5020.setPipeline(compute_pipeline506);
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout507,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.popDebugGroup();
    const texture_view5050 = texture505.createView({ label: "texture_view5050" });
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline506.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group503);
    
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5011, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer5011, 0);
    buffer504.destroy()
    texture504.destroy();
    texture401.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.end();
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder401.setVertexBuffer(0, buffer408);
    const array19 = new Float32Array([0.25, 1.0, -0.5, 0.5, 1.0, -0.25, 0.5, 0.5, 0.0, 0.0, 0.5, 0.25, -1.0, -0.75, 0.5, -0.25, 0.5, 1.0, -1.0, 0.5, 0.25, 0.0, -0.75, 0.5, -1.0, -0.25, 0.0, 1.0, -0.5, -1.0, -0.75, -0.5, 0.0, 0.5, 1.0, -0.75, -1.0, -1.0, -0.75, 0.5, 0.5, 0.25, 0.0, -0.25, 1.0, -0.75, -0.75, -1.0, 0.25, 0.75, 0.25, 0.0, -0.25, -0.5, -0.25, 1.0, 0.75, -0.5, -1.0, 1.0, 1.0, -0.75, -0.75, 0.75, -0.5, 0.5, 0.5, -0.5, 0.75, 0.5, 0.0, -0.75, -0.75, -0.75, -0.25, 0.25, 1.0, 0.5, 0.75, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, -1.0, -0.25, -1.0, 1.0, 0.75, -1.0, -0.75, 0.5, 0.25, 0.0, 0.5, 1.0, -0.25, 0.5, ]);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer5011, 0, array1, 0, array1.length);
    const array20 = new Float32Array([0.0, 0.75, 0.25, 0.75, 0.0, -0.75, -1.0, -0.25, -0.75, -0.75, -0.5, -0.5, -0.5, 0.75, -0.5, 1.0, 0.25, 1.0, -0.25, 0.75, 0.0, -0.5, -0.75, 0.75, -0.5, -0.25, -1.0, -0.75, -0.75, -1.0, 1.0, 0.5, 0.5, -1.0, 0.75, 0.25, 1.0, 0.5, -1.0, -0.75, -0.25, -1.0, -0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 1.0, -0.75, 0.75, 0.75, 0.75, 0.25, 0.0, -0.75, 0.75, 0.5, 1.0, -0.75, -0.5, 1.0, 0.25, 0.25, 0.5, -0.75, 1.0, 0.25, 0.5, 0.75, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, 0.75, 0.5, 0.0, 0.5, 0.25, -0.25, 0.5, -1.0, 0.5, -0.25, 1.0, 0.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.75, 1.0, 0.5, -0.25, 1.0, -1.0, 1.0, ]);
    const command_buffer404 = command_encoder404.finish();
    command_encoder502.insertDebugMarker("mymarker");
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5050,
            },
        ],
        occlusionQuerySet: query503
    });
    
    
    device50.queue.writeBuffer(buffer5011, 0, array10, 0, array10.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5010.setPipeline(render_pipeline504);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer404.destroy()
    device50.queue.writeBuffer(buffer5011, 0, array7, 0, array7.length);
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer4011, 0, array6, 0, array6.length);
    command_encoder502.insertDebugMarker("mymarker");
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
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
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    device50.queue.writeBuffer(buffer5011, 0, array12, 0, array12.length);
    
    device50.queue.writeBuffer(buffer5011, 0, array11, 0, array11.length);
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    device50.queue.writeBuffer(buffer5011, 0, array10, 0, array10.length);
    device50.queue.writeBuffer(buffer5011, 0, array14, 0, array14.length);
    compute_pass_encoder4030.setPipeline(compute_pipeline402);
    device50.queue.writeBuffer(buffer5011, 0, array10, 0, array10.length);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5050,
            },
        ],
        occlusionQuerySet: query504
    });
    buffer4011.destroy()
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5050,
            },
        ],
        occlusionQuerySet: query500
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4030.popDebugGroup()
    buffer405.destroy()
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device50.queue.writeBuffer(buffer5011, 0, array3, 0, array3.length);
    render_pass_encoder5020.setViewport(0, 0, texture505.width / 2, texture505.height / 2, 0, 1);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder5020.setPipeline(render_pipeline501);
    render_pass_encoder5030.setPipeline(render_pipeline501);
    const command_buffer504 = command_encoder504.finish();
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group504);
    device40.queue.submit([command_buffer404, ]);
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group505);
    render_pass_encoder5030.setVertexBuffer(0, buffer508);
    const command_buffer405 = command_encoder405.finish();
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group403);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group404);
    render_pass_encoder5020.setVertexBuffer(0, buffer508);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4016, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4016, 0);
    render_pass_encoder5020.drawIndirect(buffer5011, 0);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder5030.drawIndirect(buffer5011, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.end();
    command_encoder502.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder4030.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group506);
    render_pass_encoder5030.end();
    const command_buffer400 = command_encoder400.finish();
    command_encoder403.popDebugGroup()
    render_pass_encoder5010.setVertexBuffer(0, buffer508);
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder5010.drawIndirect(buffer500, 0);
    const command_buffer403 = command_encoder403.finish();
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group405);
    render_pass_encoder5010.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer502, command_buffer503, command_buffer504, ]);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4020.end();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer501 = command_encoder501.finish();
}