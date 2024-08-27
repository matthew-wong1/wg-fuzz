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
    const array0 = new Float32Array([0.0, -0.5, -1.0, -0.75, 0.75, -1.0, 0.25, 0.5, 0.5, 1.0, -0.75, 0.25, -0.5, -0.75, 0.0, -1.0, 0.5, 0.25, 0.25, 1.0, 0.5, 0.5, -1.0, 1.0, -1.0, 0.0, 0.0, 0.0, -1.0, 0.5, 1.0, 0.0, 0.0, -0.5, -0.25, -0.5, 0.75, -0.25, 0.5, -0.25, 0.0, 1.0, -1.0, -0.25, -0.5, -0.75, 0.75, -0.25, 0.25, -0.25, -1.0, 0.75, -1.0, 0.75, 0.25, -0.5, 0.0, -1.0, 0.75, 1.0, 0.75, -0.25, -0.75, 0.5, 1.0, 0.75, -0.5, 0.25, 0.5, 0.0, 0.0, 0.5, 1.0, -1.0, -1.0, 0.25, -0.75, 1.0, 1.0, -1.0, 0.75, -0.25, 0.75, 0.75, -0.25, -0.75, -0.25, -0.25, -1.0, -0.5, -0.5, 0.0, 0.75, 0.75, 0.75, 0.25, 0.5, 0.5, 0.0, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.pushErrorScope("internal");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array1 = new Float32Array([1.0, 0.5, 0.75, -0.75, -1.0, 0.0, -1.0, 0.75, 1.0, -0.25, -0.75, -0.5, 0.0, 0.0, -0.5, 0.0, -0.75, 0.25, 0.75, -0.5, 0.5, 0.75, 0.0, -0.25, -0.75, -0.75, -0.25, -0.5, -0.25, 0.5, 0.75, 1.0, 0.5, 0.5, -0.25, -1.0, 1.0, 0.5, 1.0, 0.25, 0.25, 0.5, -0.5, -1.0, -0.5, -0.75, -1.0, 0.5, -0.75, -0.5, 1.0, -0.5, -0.5, 0.0, -1.0, -0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 0.75, -0.25, -0.75, 0.75, -0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 0.0, 0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 0.75, 0.75, 0.75, 0.25, 0.0, 0.75, 0.0, 0.0, -0.5, -0.5, -0.75, 0.75, -0.5, 0.0, -0.75, 0.75, 0.0, -0.5, -0.75, 1.0, -0.25, 0.0, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    buffer000.destroy()
    device10.destroy();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const array2 = new Float32Array([-1.0, 1.0, 0.25, 0.25, 1.0, -0.25, -0.5, 0.5, 1.0, -0.5, -1.0, -1.0, -1.0, 0.25, 1.0, -0.75, -0.75, -0.25, 0.25, -1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.0, 0.0, 0.5, -0.25, 0.75, 1.0, -0.25, 0.75, 0.25, 1.0, -0.5, 1.0, 1.0, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, -1.0, 0.75, 0.0, 1.0, -0.75, -0.75, 1.0, 0.5, 0.25, -0.75, -0.75, 0.5, 0.5, 1.0, -0.5, 0.25, 0.75, 0.75, -0.75, 0.75, -1.0, -0.25, -0.25, 1.0, -1.0, -1.0, 0.25, 1.0, -1.0, -0.75, 0.25, 0.5, 0.25, 0.0, 0.75, 0.0, 0.25, 1.0, 0.0, 0.75, -0.25, 0.5, -0.25, 0.0, 0.5, -1.0, -0.5, 0.25, 0.25, -1.0, 0.75, 0.75, -1.0, 0.75, 0.0, 0.75, ]);
    const array3 = new Float32Array([-1.0, 0.75, -0.25, 1.0, 0.5, 0.75, -1.0, -1.0, 0.5, 0.25, -0.25, 0.5, -1.0, 0.75, -0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.25, 0.75, -0.5, -0.5, -0.75, -0.5, -0.25, -1.0, -1.0, 0.75, 1.0, -0.25, 0.0, -1.0, 0.5, -0.75, 0.75, 0.75, 0.0, 0.5, -0.25, -0.25, -1.0, -0.25, 1.0, 0.0, -0.5, 0.75, -0.5, 0.5, 0.25, -0.5, 0.0, -0.25, 0.5, -1.0, 0.75, 0.25, 1.0, -0.75, -0.5, 0.5, 1.0, 0.5, 0.75, -0.25, -1.0, -1.0, 0.75, -1.0, 0.75, 0.5, -0.5, -1.0, 0.0, 0.0, -0.5, -1.0, 1.0, 1.0, -0.25, 0.75, 0.25, -1.0, -1.0, 1.0, 1.0, 0.0, 0.75, 0.0, -0.75, 0.75, -0.5, -1.0, -0.25, 0.25, 0.5, 0.5, 1.0, -0.75, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const array4 = new Float32Array([-0.5, -1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.75, 1.0, -0.25, -1.0, -1.0, -1.0, -0.25, -0.75, -0.75, 0.75, 0.5, 0.5, 0.5, 0.25, -0.5, -1.0, 0.25, -0.75, -0.75, 0.5, 0.0, 0.0, -0.75, -0.75, 0.75, 0.5, 0.5, 0.75, -0.75, 0.25, 0.75, -1.0, -0.25, 0.25, -0.75, 0.5, 0.25, -0.75, 0.25, -0.5, -0.5, 0.0, 0.25, -0.75, -1.0, 0.5, 0.75, 0.75, -0.25, -0.25, -0.75, 0.75, 0.25, 0.0, 1.0, -1.0, 0.75, 0.75, -0.75, 0.25, 0.0, 0.5, 0.0, -0.5, 0.25, -1.0, -0.75, -0.25, 1.0, 0.25, 0.0, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.5, -0.75, -1.0, -0.25, -0.75, -0.25, 0.75, 0.5, 1.0, -0.75, 0.75, -0.25, 0.5, 0.25, 0.0, -0.5, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer003.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array5 = new Float32Array([1.0, 0.5, 0.75, 0.75, 0.5, 0.75, -0.5, 0.0, 0.75, 0.75, -1.0, 1.0, 0.25, -1.0, -1.0, -0.25, 1.0, 1.0, -1.0, 0.5, 0.0, -0.25, 0.0, 0.75, 0.5, -0.25, -0.25, 0.5, 0.75, -0.5, 0.5, -0.75, 0.25, 0.0, -0.25, -1.0, 0.75, 0.75, 0.5, -0.5, 0.5, 0.0, 0.0, 0.5, 0.25, -0.25, -1.0, -1.0, 0.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.0, -1.0, 0.5, -0.5, -1.0, -1.0, -0.25, 0.25, 0.5, 0.25, 1.0, -0.5, -0.25, 1.0, 0.25, -0.5, 0.5, 0.5, -0.75, -1.0, 0.5, -1.0, 0.0, -0.25, 1.0, -0.25, 0.25, -1.0, 0.0, 0.0, -1.0, -0.75, -0.5, -1.0, 0.5, 1.0, 0.25, -0.5, 0.75, -1.0, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, ]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.destroy();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
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
    device00.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.destroy();
    const array6 = new Float32Array([-0.5, 0.5, 0.75, 0.25, 0.75, 0.0, 0.75, -0.75, -0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.5, -0.75, 0.25, 0.75, 1.0, -1.0, -0.75, 0.25, 1.0, -0.75, -0.5, -0.25, 0.5, -1.0, -0.5, 0.5, 0.75, 0.5, -0.5, -0.25, -0.5, -1.0, 1.0, 0.0, -1.0, -0.25, 0.0, 1.0, 0.5, -0.25, -0.25, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, -1.0, 0.25, 1.0, 0.25, 0.0, -1.0, 0.0, 0.5, -0.25, -1.0, 0.25, -1.0, -1.0, 1.0, 0.25, -1.0, -1.0, -0.75, 0.75, -0.25, 0.25, 1.0, -0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 0.75, -0.25, 1.0, 0.25, 0.0, -0.5, -0.25, -1.0, -1.0, 0.25, -0.25, 1.0, -0.75, -0.75, 0.0, 0.0, 0.5, 0.75, 0.75, -0.25, -0.5, ]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query100.destroy()
    texture300.destroy();
    
    
    
    
    const array7 = new Float32Array([-0.5, 1.0, 0.75, -0.5, 0.75, 1.0, 0.25, -0.25, -0.25, -0.5, -0.5, 0.25, -0.75, 1.0, 0.75, 0.75, -0.75, 0.5, 1.0, 1.0, 0.0, 0.75, 0.0, -0.25, 0.0, -0.25, 0.5, 0.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.5, -0.25, 1.0, -0.75, 0.0, -0.5, -0.5, 0.5, -0.75, 0.75, 0.25, 0.5, 0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 0.5, 0.0, -0.5, 0.5, 1.0, -0.5, 0.0, 0.0, 0.0, 1.0, -1.0, -0.5, -0.5, -0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.25, -0.75, -0.75, 0.0, 1.0, -0.25, 0.5, -0.5, -0.5, 0.75, 0.75, -0.25, -0.75, -0.75, -0.25, 1.0, 0.0, 0.0, -1.0, -1.0, 0.75, 0.5, 1.0, 0.25, -0.25, -0.5, -0.25, 1.0, 0.25, ]);
    const array8 = new Float32Array([-1.0, -0.25, -0.5, -0.75, 0.5, 0.5, -0.25, -0.5, -0.5, -0.5, 1.0, 0.75, 0.25, 0.25, -0.25, 0.25, -1.0, -0.5, -0.25, -0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 0.0, 0.0, 0.5, 0.75, 0.5, 0.0, -0.25, -0.25, -0.5, 0.25, 1.0, 0.25, -0.25, 0.0, -1.0, 1.0, -0.25, 0.25, 0.0, 0.25, 1.0, 1.0, 0.0, 0.0, -0.25, 0.0, 1.0, 0.0, -0.75, 0.75, -0.75, 0.5, 0.25, -1.0, 1.0, 0.5, -0.25, -0.75, -0.75, 0.5, 1.0, -1.0, 0.75, -0.25, -0.5, -0.25, 0.5, -0.75, 0.25, 0.75, -0.5, 0.25, 0.5, 0.0, 0.75, 0.0, -0.25, 1.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.75, -0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 1.0, -0.75, -1.0, -0.75, 0.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array9 = new Float32Array([-0.25, 0.75, 0.5, 0.25, 0.25, 1.0, 0.0, 0.5, 0.0, -0.75, -0.75, 0.0, 0.0, -0.25, 0.0, 0.25, 0.25, -0.5, 0.0, -0.75, 1.0, -0.75, -0.25, 0.75, 0.25, 0.0, -0.75, -0.75, 0.25, 0.75, 0.5, -0.75, 0.75, -0.75, -0.5, -1.0, -0.5, 0.5, 0.0, 0.0, -0.75, -1.0, -1.0, 0.5, 1.0, 1.0, 0.0, 0.75, 1.0, 0.0, -0.5, 1.0, -0.25, -1.0, 0.0, 0.0, 0.75, -0.75, -1.0, 0.5, -1.0, -0.5, -0.5, 0.75, -1.0, 0.5, 1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.25, 1.0, -0.25, -1.0, 0.75, 0.5, 0.75, 0.0, 0.0, 1.0, 1.0, -1.0, 0.5, -1.0, 1.0, -1.0, -0.75, -0.25, 0.25, 0.5, 0.75, -0.75, 0.25, 0.25, 0.25, 0.0, -0.75, 0.25, ]);
    const array10 = new Float32Array([-0.25, 0.0, -1.0, 0.75, 1.0, 0.75, -0.75, 1.0, 0.5, 0.5, -0.5, -0.25, 0.5, 0.0, 0.75, 1.0, -1.0, 0.25, -0.5, 0.25, 0.75, 1.0, -1.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 0.0, 0.0, -0.75, -0.25, -0.25, 0.25, -1.0, -1.0, 0.5, 0.75, 1.0, 0.0, -0.25, 0.5, 1.0, -1.0, -0.75, -0.25, 0.0, 0.5, -0.75, 0.75, 0.75, -1.0, 0.75, 1.0, -0.25, 0.75, 0.0, 0.25, 0.75, 0.0, -0.75, 0.75, 0.75, 0.0, 0.5, -0.25, 1.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.5, 0.0, -0.75, -1.0, 0.25, -1.0, 1.0, 0.75, 0.5, 0.0, 0.0, -0.75, 1.0, 0.75, -1.0, 0.75, -0.5, -0.5, -0.25, -1.0, -0.25, -0.5, -0.25, 1.0, 0.75, 0.5, 0.5, ]);
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("out-of-memory");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder500.insertDebugMarker("marker");
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query500.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    texture500.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.pushErrorScope("out-of-memory");
    command_encoder502.pushDebugGroup("mygroupmarker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const command_buffer502 = command_encoder502.finish();
    
    command_encoder501.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    texture500.destroy();
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    command_encoder503.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    buffer500.destroy()
    
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    query500.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder5040.executeBundles([])
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    query501.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder5040.popDebugGroup();
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5040.executeBundles([])
    const command_buffer504 = command_encoder504.finish();
    
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer601.destroy()
    
    render_pass_encoder5040.executeBundles([])
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture503.destroy();
    render_pass_encoder5040.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    command_encoder500.insertDebugMarker("mymarker");
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture501.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_pass_encoder5010.executeBundles([])
    compute_pass_encoder5030.popDebugGroup()
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query501.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer501.destroy()
    buffer600.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5011.pushDebugGroup("group_marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder5040.executeBundles([])
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder5011.popDebugGroup();
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.insertDebugMarker("mymarker");
    
    
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    texture601.destroy();
    device50.queue.submit([command_buffer502, command_buffer504, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    render_pass_encoder5011.executeBundles([])
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer300.destroy()
    
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    command_encoder503.insertDebugMarker("mymarker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5040.executeBundles([render_bundle_encoder501, ])
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5010.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5011.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_pass_encoder5040.executeBundles([render_bundle_encoder501, ])
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder5011.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.popDebugGroup();
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5021,
            },
        ],
        occlusionQuerySet: query500
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const array11 = new Float32Array([0.5, 1.0, -0.75, -0.75, 0.75, -1.0, -0.5, 0.75, 0.5, -0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 1.0, 0.25, -0.25, 0.0, 0.5, 0.75, -0.5, -1.0, 0.0, 0.25, -1.0, 0.0, -0.5, 0.0, 0.5, 1.0, 0.75, 0.0, 1.0, 0.0, 0.0, 0.25, 0.0, -0.75, 0.25, -0.75, 0.5, -0.25, -0.5, 1.0, -0.75, 0.75, -0.5, 0.0, 0.75, 1.0, 0.5, 0.5, 0.25, 0.25, 0.25, 0.75, 0.5, -1.0, 1.0, 0.0, 0.75, -0.5, 0.5, -1.0, -0.25, -1.0, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, 0.25, -0.75, -0.25, 1.0, -0.25, -0.75, -1.0, 0.75, -0.5, 0.5, 0.5, 0.75, 0.5, 0.5, -0.5, 1.0, 1.0, 0.75, -0.75, 1.0, -0.5, 1.0, 0.75, 0.25, 0.25, 0.75, -0.25, ]);
    compute_pass_encoder5000.popDebugGroup()
    
    command_encoder600.copyTextureToBuffer(
        {
            texture: texture600
        },
        {
            buffer: buffer602
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.pushErrorScope("internal");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    
    render_pass_encoder6000.executeBundles([])
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer603, 0, array11, 0, array11.length);
    const compute_pass_encoder5031 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5031" });
    
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    device60.queue.writeTexture({ texture: texture602 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device60.queue.writeBuffer(buffer603, 0, array11, 0, array11.length);
    device80.destroy();
    render_pass_encoder5011.executeBundles([])
    device60.queue.writeTexture({ texture: texture602 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder5000.executeBundles([])
    device50.pushErrorScope("internal");
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer603, 0, array7, 0, array7.length);
    
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5040.executeBundles([])
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture602 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5040.executeBundles([])
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
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
    
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer603, 0, array7, 0, array7.length);
    
    
    
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    query600.destroy()
    
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer603,
        0
    )
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const texture_view5023 = texture502.createView({ label: "texture_view5023" });
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    {
        await buffer603.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer603.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer603.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder5040.executeBundles([render_bundle_encoder501, ])
    const array12 = new Float32Array([-0.5, 0.75, -0.75, 0.25, 0.0, -0.75, -0.25, -0.5, -0.5, -0.75, -0.5, 0.75, 0.5, 1.0, -1.0, -0.25, -0.25, -0.25, -1.0, 0.5, -0.75, 0.25, -0.25, 0.0, -1.0, 0.25, 0.25, 0.75, -0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 0.5, 0.0, 0.75, 0.75, 0.25, -1.0, 0.25, -1.0, 0.0, 0.0, 0.0, -1.0, 0.0, -1.0, -0.5, 0.75, 0.0, 0.5, -1.0, 1.0, -0.5, -0.5, -0.25, 1.0, -0.25, 0.25, -0.75, 1.0, 0.25, 1.0, -1.0, -0.75, -0.5, -0.5, 0.75, -0.5, 0.25, 0.5, 0.0, -0.75, -1.0, 0.75, -1.0, -1.0, -0.5, 0.5, -0.75, -0.75, 1.0, -0.25, 0.0, -0.75, -1.0, -0.5, 0.25, -0.5, 1.0, -0.25, -0.5, 0.5, 0.0, -0.5, 0.75, -0.5, 0.25, -0.5, ]);
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5010.popDebugGroup()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_bundle_encoder500.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer603, 0, array11, 0, array11.length);
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    compute_pass_encoder5031.pushDebugGroup("group_marker")
    {
        await buffer603.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer603.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer603.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder503.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder5050.executeBundles([])
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer603, 0, array10, 0, array10.length);
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder5011.pushDebugGroup("group_marker");
    command_encoder501.clearBuffer(buffer501);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder5011.executeBundles([])
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_pass_encoder5050.executeBundles([render_bundle_encoder500, render_bundle_encoder502, ])
    const render_pass_encoder5051 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5021,
            },
        ],
        occlusionQuerySet: query500
    });
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer600, 0, array12, 0, array12.length);
    
    render_pass_encoder6000.executeBundles([])
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    render_pass_encoder5011.executeBundles([render_bundle_encoder502, ])
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture602 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder5001.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture503.destroy();
    const texture_view5024 = texture502.createView({ label: "texture_view5024" });
    
    texture502.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5000.popDebugGroup();
    device60.queue.writeBuffer(buffer603, 0, array7, 0, array7.length);
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    device60.queue.writeTexture({ texture: texture602 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5024,
            },
        ],
        occlusionQuerySet: query501
    });
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder101.insertDebugMarker("mymarker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture600.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([-0.25, -0.5, 0.25, -0.75, -0.75, 0.75, -0.25, -1.0, 0.75, 0.75, 0.0, -0.5, -1.0, 0.5, -0.5, 0.0, 0.75, -1.0, -0.25, -1.0, -0.5, -0.5, -0.5, -1.0, -0.25, 0.0, -1.0, -0.75, -0.5, 0.0, -0.5, -0.5, -1.0, -0.75, -0.25, 0.75, 0.25, -0.5, 1.0, 1.0, 0.75, -0.25, 0.75, 0.25, 0.5, -0.25, 0.0, 0.25, -0.25, -0.75, 1.0, 0.25, -0.25, -0.75, 0.5, -0.5, 0.5, 0.5, -0.5, 1.0, -0.5, 1.0, 0.75, 1.0, -0.75, -0.25, 0.75, -0.75, -0.75, -0.5, 0.0, 0.75, 0.75, 0.75, 1.0, 0.25, 0.5, 0.75, 0.75, -0.75, 0.75, 0.5, 0.75, -0.5, -0.5, 0.5, -1.0, 0.25, 0.5, 0.25, 0.0, 0.75, -1.0, 0.75, 0.25, 1.0, 0.5, 0.0, 0.0, -0.25, ]);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.queue.writeBuffer(buffer502, 0, array11, 0, array11.length);
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    compute_pass_encoder5010.popDebugGroup()
    buffer503.destroy()
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5041 = texture504.createView({ label: "texture_view5041" });
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    render_pass_encoder5001.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    command_encoder600.popDebugGroup()
    render_pass_encoder5001.popDebugGroup();
    command_encoder500.popDebugGroup()
    render_pass_encoder5010.endOcclusionQuery()
    compute_pass_encoder5030.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5030.endOcclusionQuery()
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5010.endOcclusionQuery()
    compute_pass_encoder5031.popDebugGroup()
    render_pass_encoder5000.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder5030.endOcclusionQuery()
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5030.endOcclusionQuery()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6000.endOcclusionQuery()
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5050.popDebugGroup();
    compute_pass_encoder5031.popDebugGroup()
    render_pass_encoder6000.endOcclusionQuery()
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5040.endOcclusionQuery()
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5030.endOcclusionQuery()
    compute_pass_encoder5030.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5010.popDebugGroup();
    command_encoder501.popDebugGroup()
    render_pass_encoder5001.endOcclusionQuery()
    compute_pass_encoder5031.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder6000.endOcclusionQuery()
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5000.endOcclusionQuery()
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder5011.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder5030.endOcclusionQuery()
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5010.endOcclusionQuery()
    device60.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5040.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder5001.endOcclusionQuery()
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5001.popDebugGroup();
    compute_pass_encoder5031.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    command_encoder503.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}