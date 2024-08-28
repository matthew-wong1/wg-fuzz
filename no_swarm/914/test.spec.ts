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
    
    
    
    
    
    
    
    const array0 = new Float32Array([0.5, 1.0, 0.75, 0.75, 0.25, 1.0, 0.75, -0.5, 0.75, 0.25, -0.25, 0.75, 0.25, -0.5, -0.75, 1.0, -0.75, 1.0, -1.0, 0.75, -0.25, 0.0, 0.75, -0.75, -1.0, -0.25, -1.0, -0.25, 0.25, -1.0, 0.25, -1.0, -0.5, 0.75, 0.25, 1.0, 0.0, 0.0, 0.0, -0.25, -0.5, -0.25, 0.75, -0.75, -1.0, 0.75, 0.25, -1.0, -1.0, -0.25, 0.25, -1.0, -0.75, -1.0, -1.0, -1.0, 0.0, 0.75, 0.75, -0.75, 0.75, 0.75, 0.0, -0.25, 0.75, 0.5, -0.5, -0.75, -0.75, 0.0, 1.0, 1.0, 0.0, -0.75, 0.5, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 0.25, -1.0, -0.5, 0.25, 0.5, -0.5, 0.75, 0.5, -0.5, -1.0, -0.5, 0.25, 1.0, -0.5, 0.75, 0.25, 1.0, 0.75, 1.0, ]);
    const array1 = new Float32Array([0.0, 0.0, -1.0, -1.0, -0.25, 0.25, -0.5, 0.75, 0.5, 0.75, 0.5, -0.75, 0.0, 0.75, -0.75, 0.75, 0.25, 0.0, -0.75, -0.25, 0.5, -0.25, -1.0, 1.0, -0.25, 0.75, 0.5, -0.5, -1.0, -1.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.75, 0.5, -0.75, -0.75, -0.75, -0.75, 0.0, 1.0, 0.5, -1.0, -1.0, 0.75, -0.5, 1.0, 0.25, 0.75, -0.25, 0.75, 0.25, -0.75, 0.25, 0.75, 0.75, -0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.25, -0.25, -0.5, -0.75, 1.0, -0.25, -0.75, 1.0, -0.25, -0.75, -1.0, -0.75, 0.75, 0.25, -0.25, 1.0, -1.0, -0.75, 0.25, -0.5, -0.5, 0.75, 0.75, 0.25, 0.5, -1.0, 0.25, 0.5, -0.75, -0.75, -1.0, -0.25, -0.25, 0.5, -1.0, 0.0, ]);
    
    
    
    
    
    const array2 = new Float32Array([-0.25, 0.5, 0.5, -0.5, 0.0, -0.75, -1.0, -0.5, 0.75, -1.0, 0.0, -0.5, -1.0, -0.25, 0.0, -1.0, 0.25, -0.5, -0.5, -0.75, 0.75, -1.0, -0.25, 0.0, 1.0, 0.0, -0.5, -1.0, -1.0, 0.0, -0.5, -0.25, -1.0, -1.0, 0.5, -0.5, -0.75, 1.0, 0.0, -1.0, -1.0, -0.5, 0.0, 0.25, 0.5, -0.75, 1.0, 0.75, 1.0, 0.25, -0.25, 1.0, 0.0, 0.0, 1.0, -1.0, 1.0, 0.75, 0.0, 0.5, -0.25, -0.5, -1.0, 0.25, 0.5, -0.5, 0.25, 0.5, 0.25, 0.25, -0.5, 0.0, -1.0, 0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.5, -0.25, 0.5, 0.5, -0.5, 0.0, -0.75, 0.75, 0.0, -0.5, -1.0, 1.0, -1.0, 1.0, 0.25, 0.75, 1.0, -0.75, 1.0, 0.75, -0.75, ]);
    
    const array3 = new Float32Array([0.0, 0.0, 0.75, 1.0, 1.0, 0.25, 0.75, -0.75, -0.25, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.75, -0.25, -0.5, 0.0, 0.25, -1.0, -1.0, 1.0, -0.5, -0.5, 0.0, 0.0, 0.5, -0.75, 0.0, -0.25, -0.5, 0.75, 0.0, -0.25, 0.75, 1.0, -0.75, -1.0, 0.0, -0.75, 0.25, -1.0, 0.0, -0.25, 0.75, -0.75, 0.75, 0.25, -1.0, 0.75, -0.25, 0.0, -1.0, -1.0, -1.0, 0.25, 0.75, 0.5, -0.25, 1.0, 0.0, 0.0, 0.0, 0.75, -0.25, -0.5, 0.75, -0.5, 0.25, 0.0, 0.25, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.75, -1.0, -1.0, -0.75, 0.75, 0.75, 0.0, -0.25, 0.75, -0.75, -0.5, -1.0, -1.0, 0.75, -0.75, 1.0, -1.0, -1.0, 0.25, ]);
    const array4 = new Float32Array([-0.25, -0.25, -0.5, 1.0, 0.75, 0.75, 1.0, 0.0, -0.25, 1.0, 1.0, 1.0, -0.25, 1.0, 0.75, 0.25, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, -1.0, -0.75, -1.0, -0.75, 0.25, -0.5, 1.0, 1.0, -0.5, 0.75, 0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 1.0, 0.75, 0.0, -1.0, 0.75, -0.25, -0.5, 1.0, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.25, 0.0, 0.0, 0.25, -0.5, 0.0, 1.0, 0.75, 0.0, 0.5, 0.25, -1.0, -0.75, 1.0, -0.25, 0.5, -1.0, 0.5, 0.5, -0.25, -1.0, 0.5, 0.75, -0.75, -0.25, -0.5, -0.75, 1.0, -0.75, -1.0, 0.5, 0.5, 0.75, -1.0, -1.0, -0.75, 0.0, 0.75, -1.0, -0.25, -1.0, 0.5, 0.25, 0.0, ]);
    
    
    const array5 = new Float32Array([-0.75, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.25, 0.75, 0.5, 0.75, 0.5, -0.25, -1.0, 0.0, -0.5, -0.5, 0.75, 1.0, 0.0, -0.25, 0.0, -0.5, 1.0, 0.75, 0.5, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, -0.25, -1.0, 0.75, 1.0, 0.0, -0.75, 0.75, 1.0, -0.5, 1.0, -0.75, -0.25, 0.5, -0.25, -0.25, 0.75, 0.5, 0.75, -0.25, 0.5, -0.5, -0.25, 1.0, -0.5, 1.0, -0.25, -0.25, -0.75, -1.0, 0.0, -0.5, -0.75, -0.75, 0.0, 1.0, 0.75, 0.5, -0.25, -0.75, 0.0, 0.25, 0.5, 0.75, 1.0, -0.5, -1.0, -0.5, -1.0, 1.0, 0.75, 0.0, -0.25, -0.25, -0.5, 1.0, 1.0, 0.0, 0.5, -0.75, 0.25, 0.75, 0.25, 0.75, -0.75, 0.75, 1.0, 0.0, ]);
    const array6 = new Float32Array([0.25, 0.0, 1.0, -0.75, 0.0, 0.25, -0.75, 0.0, 0.5, -1.0, -0.75, -0.5, -1.0, -1.0, -0.75, 0.75, -1.0, -1.0, 0.75, -0.25, -0.25, 0.5, 0.75, 0.5, 1.0, 0.75, -0.75, -0.25, -0.25, -1.0, -1.0, -1.0, -0.75, 0.5, 0.5, -0.75, -1.0, -0.25, 0.5, 1.0, 1.0, 0.5, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, 0.5, 0.25, 0.5, 1.0, 0.5, 0.75, 0.25, -0.25, 0.75, 1.0, -0.25, 0.75, 0.25, -0.75, -0.25, 0.5, -0.5, -0.75, -0.5, -0.25, 0.5, 1.0, -0.75, 0.25, -1.0, 0.0, -0.75, -0.75, -1.0, -0.5, -0.75, 1.0, -0.25, -0.75, 0.5, 0.25, -0.5, -0.25, 0.25, 0.25, 1.0, 0.5, -1.0, -0.25, -0.5, 0.5, 0.25, 0.5, 1.0, 1.0, -1.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([1.0, 0.75, -0.75, -0.25, -0.25, -0.75, 0.75, 1.0, 0.75, -0.75, -0.75, -0.5, -0.5, 0.75, 0.5, 0.5, -0.75, -0.75, 0.25, 1.0, -1.0, 0.25, 0.25, -1.0, -1.0, 0.0, -0.25, 1.0, 1.0, 0.25, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, 0.75, -0.75, -0.25, 0.75, -0.5, 0.75, 0.25, 0.25, -0.25, 0.25, -0.5, 1.0, 1.0, 0.5, 0.5, 1.0, 0.75, -0.25, 1.0, -0.25, -0.75, -0.5, 0.5, 0.5, -0.75, 0.0, -0.25, -0.25, 0.0, -0.75, 0.5, -0.5, 0.5, -1.0, 0.75, 0.25, 0.5, 1.0, 0.25, -0.5, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, 0.0, 0.25, -0.5, -0.25, 0.5, 0.0, 0.0, -1.0, 0.0, -0.75, -0.5, 0.75, -0.75, 0.75, 0.75, 1.0, -1.0, -0.25, ]);
    
    
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer000.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([1.0, -0.5, 1.0, 0.0, 1.0, 1.0, 0.0, 0.75, 1.0, 0.5, -0.5, 1.0, -1.0, 0.5, 0.5, -0.75, -0.25, 0.75, 0.75, -0.25, -0.25, -0.25, 0.25, -0.75, -0.25, -1.0, 0.5, 1.0, -1.0, -0.5, 0.75, 0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 0.0, 0.5, 1.0, -0.75, -0.25, 0.0, 0.25, 0.0, 0.75, 1.0, -0.5, 1.0, -0.25, -1.0, 0.75, 0.25, -1.0, -0.75, -0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, -0.75, 0.0, 0.0, -0.5, -0.75, 0.5, 1.0, -0.5, -1.0, -0.5, 1.0, 0.75, -0.25, 0.75, 0.5, 1.0, 0.5, 0.75, 0.0, 0.25, -1.0, 0.25, 0.0, 0.0, -0.5, 0.0, -0.75, -0.25, 0.75, 0.5, -1.0, 0.75, -0.5, 1.0, -0.75, 0.25, 0.25, -1.0, ]);
    device00.destroy();
    
    
    
    
    
    const array9 = new Float32Array([0.25, 0.0, 0.5, 0.5, 0.25, 0.75, -1.0, 0.25, 1.0, 0.25, -0.25, 0.75, 0.25, -0.5, 0.75, 1.0, -0.25, 0.0, -1.0, 1.0, 0.0, 0.0, 0.5, -0.5, -0.25, 0.75, -0.5, -0.25, 1.0, 0.5, -0.75, -1.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, 1.0, 0.75, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, -0.5, 1.0, -1.0, 0.0, 0.75, 0.75, -0.75, -0.75, -1.0, 0.75, -0.25, -0.75, 0.5, 0.0, -0.25, -1.0, 0.25, -0.75, 0.25, 1.0, -0.5, 1.0, 0.25, -0.25, 0.5, 1.0, 0.75, -0.75, 1.0, -1.0, -0.75, 1.0, 0.0, -0.75, -1.0, 0.5, -0.25, 0.0, -0.5, 0.5, 1.0, -0.5, 0.25, 1.0, 0.5, -0.5, 0.25, 1.0, -0.5, -0.75, -0.25, 1.0, 0.5, 0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture101.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array10 = new Float32Array([1.0, -1.0, -0.75, -0.75, 1.0, 1.0, -0.5, 1.0, -0.25, 0.5, 0.25, -0.5, 1.0, 0.0, -0.75, -0.25, 0.5, 0.5, -0.5, 0.75, 1.0, 0.25, -0.75, 0.75, 0.25, -0.75, 0.25, 0.75, -0.5, 0.5, 1.0, 1.0, 0.75, 0.75, -0.25, 0.25, -0.75, 0.25, -0.5, 1.0, -1.0, 0.0, 1.0, 0.5, 0.5, -0.25, 0.5, 0.0, -0.5, 0.5, -0.75, -0.5, 0.5, 0.0, -0.5, 1.0, -0.75, -1.0, 0.75, 0.25, 0.5, -0.25, 0.75, -0.75, 0.75, -0.25, 1.0, 0.0, 1.0, 0.75, -0.75, 0.25, 0.25, -0.5, 0.75, 0.5, 1.0, -0.5, -0.5, 0.5, 0.75, -0.25, -1.0, -1.0, 0.5, 0.5, -0.75, 0.25, 0.0, 0.0, 0.75, -1.0, 0.5, -0.5, 0.0, 0.5, -0.5, -0.75, -0.75, 0.5, ]);
    const array11 = new Float32Array([-0.5, -0.5, -1.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.5, 0.5, 0.75, 1.0, 1.0, 0.25, 0.25, -0.25, 0.5, -0.5, 0.25, 0.25, -1.0, -0.25, 0.75, 0.75, -0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 0.75, -1.0, -0.75, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, -0.5, 0.75, 0.25, -1.0, -0.75, 0.0, 0.5, 0.25, 0.75, 1.0, 0.75, 0.0, 0.0, 0.5, 0.75, 1.0, 0.25, 0.75, 0.0, 0.0, 1.0, 0.75, 0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -0.5, 0.0, -0.5, 0.75, 0.0, 1.0, -0.75, 0.75, 1.0, -1.0, 1.0, 0.25, -0.25, 0.25, 0.0, 0.75, 0.75, 0.25, -0.75, -1.0, -0.5, 0.5, 0.0, 0.25, 0.25, 0.0, -0.25, -1.0, ]);
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    buffer200.destroy()
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device20.pushErrorScope("out-of-memory");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query200.destroy()
    texture201.destroy();
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query201.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    texture200.destroy();
    texture202.destroy();
    const array12 = new Float32Array([-1.0, 0.5, -0.25, 0.75, -0.75, 0.0, -1.0, -0.75, 0.0, 0.0, 0.75, -0.75, -1.0, 0.0, -0.75, 0.75, 1.0, 1.0, 0.25, -0.25, -0.25, -0.5, -0.5, 0.5, 1.0, -1.0, 0.75, -0.25, 0.5, -1.0, -0.5, -0.5, -0.5, 0.75, 0.75, -1.0, 0.75, -0.75, -1.0, -0.25, 0.0, -1.0, 0.5, 0.5, -0.75, -0.75, -0.75, 0.75, 0.25, 0.5, 1.0, 0.75, -1.0, -0.75, 0.75, 0.0, -0.25, -0.75, 0.75, 1.0, 0.25, -0.5, 0.25, 0.5, -0.75, 0.0, -0.5, -1.0, -0.75, -1.0, -1.0, 0.25, 0.0, -0.25, -0.25, -0.75, 0.75, -0.25, 0.5, 0.25, 0.25, 0.0, -0.25, -0.5, -0.25, 0.75, -1.0, -1.0, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, 1.0, 0.0, -0.25, 0.0, -0.5, -0.25, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer201.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
    query200.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2000.executeBundles([])
    
    
    
    texture203.destroy();
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    
    
    
    
    
    
    query200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query200.destroy()
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array13 = new Float32Array([0.75, -0.75, 0.0, -0.25, 0.25, 0.25, -0.25, 0.75, 0.25, 0.75, -1.0, 1.0, -1.0, 1.0, 0.5, 0.0, -1.0, 0.5, -1.0, -0.25, -1.0, -1.0, 0.75, 0.75, 0.5, 0.25, 0.25, 0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 1.0, 1.0, 0.75, 0.0, -1.0, -0.5, -0.75, 0.5, 0.5, 0.5, 0.75, 0.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.25, 0.0, -0.5, -0.5, 0.75, -0.5, -0.5, -0.25, 1.0, 0.25, -0.75, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.5, 1.0, -1.0, 0.25, 0.25, 0.25, -1.0, 0.25, -1.0, 0.0, -0.5, 0.0, 1.0, -1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, -0.5, 1.0, -1.0, -0.25, 0.0, -0.5, -0.75, -0.25, -1.0, 0.25, ]);
    query200.destroy()
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
    query300.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.executeBundles([])
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    
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
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
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
    
    query201.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder2000.insertDebugMarker("marker");
    const array14 = new Float32Array([-1.0, -1.0, 0.5, -0.25, 1.0, -0.75, -0.25, 0.5, 0.25, 0.0, -0.75, 0.75, -0.75, 0.75, -0.75, -0.5, 0.5, 0.25, -0.25, -1.0, -0.75, 0.25, -0.25, -1.0, 0.75, -0.75, 0.75, 0.0, -0.75, 1.0, 0.75, 1.0, 0.75, 0.75, 0.0, 0.25, -0.5, 0.5, 0.75, 0.0, 0.0, 0.75, 1.0, 0.25, -0.75, -0.5, 0.25, 1.0, 0.75, -0.5, 0.0, -0.25, 0.0, 0.5, -0.5, 0.0, -0.5, 0.25, -0.75, 0.25, 0.0, -0.75, 0.0, -0.25, -0.5, -0.25, 0.25, -1.0, 0.5, -1.0, -1.0, 0.75, 0.0, 1.0, 0.75, -0.75, 1.0, 0.75, -0.25, -1.0, 0.75, -1.0, 0.0, 0.5, 0.75, 0.25, -0.75, -0.5, 0.25, 0.0, -0.25, 0.5, -0.5, -1.0, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, ]);
    
    
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_buffer202 = command_encoder202.finish();
    
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
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder201.popDebugGroup()
    device20.pushErrorScope("internal");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    buffer204.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer202, ]);
    const array15 = new Float32Array([0.5, 0.25, -0.5, -1.0, 0.75, 1.0, -0.25, 0.5, -0.75, 0.5, 1.0, -0.75, 1.0, 0.75, 0.25, -0.25, -1.0, 0.5, -1.0, 0.75, -0.25, -1.0, -0.5, -0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.5, 1.0, 0.75, 0.75, 0.5, -0.25, 0.25, -0.25, -0.75, 0.5, -0.25, -0.75, -0.25, 1.0, 0.25, 0.25, 0.25, -0.5, -1.0, -0.5, 0.0, -1.0, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.5, 0.0, -0.75, 0.75, -0.25, 0.0, -1.0, -0.75, -0.75, -0.5, 0.25, -1.0, -0.25, -1.0, -0.5, -0.25, -0.25, 0.25, 1.0, -0.75, 1.0, 0.5, 0.5, -0.75, -0.5, -1.0, 1.0, 1.0, 0.25, 1.0, -0.25, -0.75, -1.0, 1.0, 1.0, 0.75, 0.75, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const array16 = new Float32Array([0.5, 1.0, 1.0, -0.75, -1.0, 1.0, 1.0, -1.0, 0.0, -0.25, -0.25, -0.75, 0.25, -0.25, 0.0, 0.25, -0.75, -0.75, 1.0, -0.75, -0.75, 0.75, -0.75, 0.0, 0.75, -0.75, -1.0, -1.0, -1.0, -1.0, 0.75, 0.25, -0.25, -0.5, -0.5, 0.0, -0.75, -0.5, -1.0, -0.5, -0.25, -0.25, 0.75, -0.5, 0.5, 1.0, -1.0, 0.5, 0.0, 0.75, -0.75, -0.75, 0.5, 0.75, 0.75, 1.0, -0.75, 0.5, 0.5, -1.0, -0.75, 0.5, 0.75, -1.0, 0.0, 1.0, 0.0, -0.75, 0.0, -0.75, 1.0, -1.0, -0.25, 0.0, 0.25, -0.25, 0.75, 0.5, 1.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.75, -1.0, 1.0, -0.5, -0.75, 0.75, 0.5, -0.5, 1.0, 0.75, 0.0, 0.0, -1.0, 0.75, -0.5, 0.5, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    buffer202.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_bundle_encoder202.setPipeline(render_pipeline200);
    buffer205.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setStencilReference(1);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_bundle_encoder202.setVertexBuffer(0, buffer206);
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setVertexBuffer(0, buffer201);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    buffer207.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer203.destroy()
    buffer2011.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    
    render_bundle_encoder200.draw(3);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.setStencilReference(1);
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    buffer300.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2000.setStencilReference(1);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer209.destroy()
    device20.pushErrorScope("validation");
    render_bundle_encoder202.draw(3);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_bundle_encoder200.finish();
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    buffer206.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    query201.destroy()
    device30.queue.writeBuffer(buffer304, 0, array15, 0, array15.length);
    
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group203);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const command_buffer302 = command_encoder302.finish();
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    buffer208.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device30.pushErrorScope("internal");
    buffer305.destroy()
    device30.queue.writeBuffer(buffer304, 0, array14, 0, array14.length);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.queue.writeBuffer(buffer304, 0, array10, 0, array10.length);
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
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
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.popDebugGroup();
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array14, 0, array14.length);
    
    device30.queue.submit([command_buffer302, ]);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    buffer306.destroy()
    query301.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer2013.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder301.setPipeline(render_pipeline304);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    query201.destroy()
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group302);
    const command_buffer400 = command_encoder400.finish();
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer2012.destroy()
    
    const texture_view2043 = texture204.createView({ label: "texture_view2043" });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.queue.submit([command_buffer400, ]);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query200.destroy()
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    render_pass_encoder2010.draw(3);
    compute_pass_encoder3030.setPipeline(compute_pipeline301);
    render_pass_encoder2000.setVertexBuffer(0, buffer201);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder2000.draw(3);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group304);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3013, 0);
    compute_pass_encoder3010.end();
    compute_pass_encoder3030.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2010.end();
    const command_buffer300 = command_encoder300.finish();
    command_encoder301.popDebugGroup()
    command_encoder200.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer303 = command_encoder303.finish();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    device30.queue.submit([command_buffer301, ]);
}