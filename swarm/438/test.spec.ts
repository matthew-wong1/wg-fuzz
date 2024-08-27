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
    const array0 = new Float32Array([0.0, -0.75, -0.5, 0.75, -0.75, -1.0, 0.0, 0.25, -0.75, -1.0, -0.75, -0.5, -0.5, 1.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.0, -0.5, -0.25, -0.5, 1.0, -1.0, -0.75, -0.5, 1.0, 0.5, -0.5, -0.75, 0.25, -0.25, 1.0, -0.75, 1.0, 0.25, 0.0, 0.75, 0.5, 0.25, -1.0, -0.75, 0.0, 0.5, -0.75, 0.25, -0.75, -0.5, 1.0, -0.75, -0.25, 0.0, 0.75, -0.75, -0.5, 0.25, 0.25, 0.75, 1.0, 0.75, -1.0, -1.0, -0.5, -0.75, 0.0, 0.0, 1.0, -0.25, -0.25, 1.0, -0.25, -0.5, 0.75, -0.25, 0.25, -0.75, -1.0, -0.25, -1.0, -0.25, -0.5, 0.25, -0.75, 1.0, -0.25, -1.0, -1.0, 0.75, 0.25, -1.0, -1.0, -0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 0.25, -0.5, ]);
    const array1 = new Float32Array([1.0, -1.0, -1.0, -0.25, 0.25, 1.0, 0.5, 0.25, 0.25, 0.0, 0.25, 0.25, -0.25, 0.75, 0.5, -0.75, -0.5, -0.5, 0.25, 0.25, -1.0, -1.0, 0.0, 0.75, -0.25, 0.0, 0.25, -1.0, -0.5, -0.25, -0.5, -0.5, -0.25, -0.5, -1.0, 0.5, -0.75, 0.75, 1.0, 0.5, -1.0, 0.25, 0.5, -0.75, 0.25, 0.25, -0.5, 0.0, -0.5, 0.0, 0.75, -1.0, 0.5, 1.0, 0.0, -0.25, 1.0, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, -1.0, 0.25, -0.5, 0.5, -1.0, 0.5, -0.75, -1.0, 0.25, -0.75, -0.75, 0.5, -0.5, 0.0, -1.0, -0.75, -0.5, 0.0, -0.25, -0.5, 0.0, 0.25, -1.0, -1.0, 0.5, 1.0, -0.25, -0.25, 0.5, -0.25, 1.0, -1.0, 0.25, -0.25, 1.0, -1.0, -0.75, ]);
    const array2 = new Float32Array([-0.5, -0.5, 0.0, 0.5, 1.0, 0.5, 0.25, -0.75, -0.5, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, -1.0, 0.75, -0.75, 0.0, 0.25, -1.0, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, 0.5, -0.5, -0.75, -0.25, 0.0, -0.5, 0.25, 0.25, -0.75, 1.0, 1.0, -0.75, -1.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.25, 1.0, -1.0, -1.0, -0.25, 0.75, 0.0, 0.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, 0.0, -1.0, 1.0, 0.0, -1.0, 0.5, -0.75, 0.25, 0.75, -0.25, 0.75, -0.25, 0.75, -1.0, -1.0, 1.0, 0.5, 0.75, -0.25, 1.0, -0.5, 0.0, 1.0, -1.0, -0.5, -1.0, -1.0, -0.75, 0.0, 1.0, 0.75, 0.0, 0.75, ]);
    const array3 = new Float32Array([-0.75, -0.75, 0.75, -0.75, 1.0, 1.0, -0.75, -0.5, 0.5, -0.75, -0.5, 0.25, 1.0, -0.25, -0.25, -1.0, -0.25, 0.5, -0.75, 0.75, 0.75, -1.0, -0.75, 0.75, -0.25, 0.0, 0.25, 0.5, -1.0, 0.75, 0.0, 1.0, 0.5, -0.5, 0.5, -1.0, 0.0, 1.0, 0.75, -1.0, 0.5, -0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 0.0, 0.75, -0.75, 0.25, -0.75, 0.75, 0.5, 0.5, 0.25, -0.75, -0.5, 0.25, 1.0, -0.5, -1.0, 0.25, -0.25, -1.0, 0.75, 1.0, 0.5, -0.5, 0.25, -0.25, -0.75, -0.25, 0.5, -0.25, 0.0, 0.0, -1.0, 1.0, 1.0, -0.25, 0.5, -0.25, 0.5, -1.0, -0.25, -1.0, 1.0, 0.75, -0.75, 0.75, -0.75, -0.5, 0.25, -0.75, -0.5, -0.5, -1.0, -0.25, -0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([0.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.5, 1.0, -0.75, 0.5, -0.75, 0.5, 0.0, -0.75, 0.5, 0.25, -0.75, -0.5, -0.25, 0.25, 1.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.5, -0.25, 0.25, 0.25, 0.0, 0.5, 1.0, -0.5, -0.25, -1.0, 0.25, 0.5, -0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 1.0, -0.25, 0.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.0, 0.5, 0.5, 0.75, -0.25, 0.0, -0.25, -0.25, -0.25, 0.5, 1.0, -1.0, -1.0, 0.25, 0.25, 1.0, 0.0, -0.75, -0.75, -0.5, -1.0, -1.0, -1.0, 1.0, -1.0, -0.75, -0.5, 1.0, 0.5, 0.0, 0.25, 0.5, -0.75, 1.0, 0.0, 0.75, 0.75, -0.5, -1.0, -0.25, 0.75, -1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("validation");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.75, 0.75, 0.5, -1.0, 0.75, -0.25, 0.5, -1.0, 0.5, 0.75, 0.0, -0.5, 0.25, -0.25, -0.75, 0.5, 0.5, 1.0, -0.25, -0.25, -1.0, 0.25, -0.75, -0.5, 1.0, -1.0, -1.0, -0.25, 0.25, 0.0, 0.75, 0.0, 0.0, -0.75, 1.0, -0.25, 0.5, -1.0, 1.0, -0.75, 0.75, -0.75, 0.5, -0.25, -0.5, -0.5, -0.25, 1.0, 0.0, 0.75, 0.0, -1.0, -0.75, -0.25, -0.75, 0.5, -0.25, -0.75, 0.25, 0.0, -0.75, -0.25, 0.75, -0.25, 0.25, 0.25, -0.75, -1.0, 0.25, -0.25, -1.0, 0.25, 0.25, -0.5, 0.75, 0.25, -0.75, 0.5, 1.0, 0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, -0.5, 1.0, 0.25, 0.25, 0.0, 1.0, 0.0, -0.75, -1.0, 0.25, 0.5, -0.75, -0.75, -0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    texture000.destroy();
    const array6 = new Float32Array([-0.25, -1.0, 0.0, 0.0, -0.75, -0.25, -0.75, 0.75, -0.75, 0.5, -0.25, -0.75, 1.0, 0.75, 1.0, 0.0, -0.5, 0.25, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, 0.0, -1.0, 0.25, 0.0, 0.0, -0.75, 0.25, 0.0, 0.5, 0.0, 0.25, 0.5, 0.75, -1.0, 0.5, 0.25, -0.5, 1.0, -1.0, -0.75, -0.5, 0.75, -0.25, -0.5, 0.5, -0.25, 1.0, 0.0, -0.25, -0.5, 1.0, 0.0, -0.25, -1.0, -0.75, -0.25, 0.25, 0.25, 1.0, -0.5, 1.0, 1.0, 0.25, 1.0, 0.75, -0.5, 0.75, -0.5, 0.75, 1.0, 0.75, 0.25, -0.5, 1.0, 0.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.25, -0.75, -0.25, -1.0, 0.0, 0.0, 0.25, -1.0, 0.75, 1.0, 1.0, -1.0, -1.0, -0.5, 0.0, -1.0, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    texture300.destroy();
    texture500.destroy();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    device50.pushErrorScope("validation");
    
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("validation");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    
    texture200.destroy();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device00.pushErrorScope("validation");
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture501.destroy();
    device50.popErrorScope().then((error) => {
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
    
    texture201.destroy();
    compute_pass_encoder5010.insertDebugMarker("marker")
    
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
    command_encoder000.insertDebugMarker("mymarker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2000.executeBundles([])
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder301.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder000.insertDebugMarker("mymarker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture203.destroy();
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const array7 = new Float32Array([0.0, 0.75, -0.5, 0.5, 0.0, 1.0, -0.25, 0.25, 0.25, 0.25, -0.25, 1.0, 0.0, 0.75, -1.0, 0.75, 0.5, 0.5, 0.75, 1.0, -1.0, 0.25, 0.25, 0.75, -1.0, -0.25, -0.25, 1.0, 0.75, -0.5, 1.0, 1.0, 0.0, 1.0, 0.25, 0.5, 0.25, -0.25, 0.25, 0.25, 0.5, 0.5, -0.75, -1.0, -0.5, 0.5, -0.5, 0.0, -0.5, -0.5, -1.0, 1.0, -0.25, -0.75, 1.0, -0.75, 0.5, 0.0, -1.0, 1.0, 0.0, -1.0, 0.0, 0.0, 0.75, 0.75, 0.75, -1.0, -0.5, 0.5, -1.0, 1.0, 0.75, -1.0, -0.5, -0.25, -0.5, -0.25, 0.0, 0.25, -0.5, 0.25, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, 0.25, 0.5, 1.0, -0.25, -0.5, 1.0, 0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    device80.destroy();
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder2000.beginOcclusionQuery(0)
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder2000.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder2020.pushDebugGroup("group_marker");
    texture502.destroy();
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device50.pushErrorScope("out-of-memory");
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    
    device40.pushErrorScope("out-of-memory");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.executeBundles([])
    texture503.destroy();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2020.setStencilReference(1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture301.destroy();
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
    command_encoder700.insertDebugMarker("mymarker");
    const texture_view5041 = texture504.createView({ label: "texture_view5041" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    command_encoder203.insertDebugMarker("mymarker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5041,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const texture205 = device20.createTexture({
        label: "texture205",
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
    
    
    
    
    command_encoder700.insertDebugMarker("mymarker");
    texture204.destroy();
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder2000.endOcclusionQuery()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    texture700.destroy();
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder2000.executeBundles([])
    
    command_encoder700.insertDebugMarker("mymarker");
    render_pass_encoder5000.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_pass_encoder2000.setStencilReference(1);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2000.beginOcclusionQuery(1)
    texture205.destroy();
    device70.pushErrorScope("out-of-memory");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_pass_encoder2020.setStencilReference(1);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    texture504.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.pushErrorScope("out-of-memory");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    compute_pass_encoder0010.setPipeline(compute_pipeline0012);
    render_pass_encoder5000.setViewport(0, 0, texture504.width / 2, texture504.height / 2, 0, 1);
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.insertDebugMarker("marker");
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
    
    texture002.destroy();
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture_view2061 = texture206.createView({ label: "texture_view2061" });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    
    
    command_encoder204.insertDebugMarker("mymarker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setStencilReference(1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query201
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder2020.executeBundles([])
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4000.executeBundles([])
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    
    render_pass_encoder2010.executeBundles([])
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder0000.executeBundles([])
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const array8 = new Float32Array([-1.0, 0.75, -1.0, 0.5, -0.75, 0.25, 0.5, -0.5, 0.5, -0.25, -1.0, -1.0, 0.0, -0.25, -0.75, -0.5, -1.0, 0.75, 0.75, -0.75, 0.75, -0.25, 0.0, 1.0, -1.0, 0.25, -1.0, 0.0, 0.25, -0.5, -1.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.25, 0.5, 0.0, -0.5, 0.5, 1.0, -0.75, -0.25, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, 1.0, 0.5, -0.25, 1.0, -0.5, 0.25, 0.0, -1.0, -0.25, 1.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 1.0, 0.5, -0.5, 0.5, 0.0, -0.5, -0.75, 0.5, 0.25, -0.75, -0.75, -1.0, 1.0, -0.5, -0.75, 0.25, 0.25, 0.5, 0.25, 0.25, 0.75, 0.0, 0.25, -0.75, 1.0, 0.25, 1.0, -1.0, 0.75, 0.0, -0.5, ]);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.executeBundles([])
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_pass_encoder0000.beginOcclusionQuery(0)
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2000.endOcclusionQuery()
    
    
    render_pass_encoder4000.setStencilReference(1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([0.0, 0.25, 0.75, -0.75, -0.75, -0.25, 0.75, -0.25, -0.25, -1.0, 0.5, 0.0, 0.5, 0.25, -0.75, -1.0, 0.5, -0.25, 0.0, -0.25, -0.75, 0.5, -0.25, 0.5, 1.0, 0.75, -0.5, -1.0, 0.5, -0.75, 0.5, -0.75, -0.5, -0.25, 0.5, 0.75, 0.0, 0.75, -0.25, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, -1.0, 0.75, 0.25, -0.75, -0.25, 1.0, 0.0, -0.75, -0.5, 0.5, -0.5, 1.0, 1.0, -0.25, -1.0, -0.75, 0.5, 1.0, -0.5, 0.25, 0.25, 0.75, 0.5, 0.75, 1.0, 0.0, 0.5, 0.75, -0.75, -0.5, -1.0, 0.5, 0.75, 0.75, -0.25, -0.5, 0.0, -0.5, 1.0, -0.5, -1.0, 0.75, 0.75, 0.0, -1.0, 0.0, 1.0, 0.25, -0.5, 0.75, -1.0, -1.0, 0.0, 0.5, -0.75, ]);
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query403
    });
    
    texture207.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder5000.popDebugGroup();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    render_pass_encoder4010.setStencilReference(1);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    
    compute_pass_encoder0020.setPipeline(compute_pipeline005);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    const texture_view2062 = texture206.createView({ label: "texture_view2062" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    device00.pushErrorScope("validation");
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder5000.setStencilReference(1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder5000.pushDebugGroup("group_marker");
    command_encoder700.insertDebugMarker("mymarker");
    render_pass_encoder2020.executeBundles([])
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder4000.executeBundles([])
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query404
    });
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    const array10 = new Float32Array([1.0, -0.25, -0.75, -0.5, 0.0, 0.5, -0.5, -1.0, -1.0, -0.25, 0.0, 0.25, 0.0, -1.0, 0.25, 0.25, -0.75, 1.0, 0.25, -0.5, 0.5, 0.75, 0.0, -0.5, 0.5, -0.75, 0.5, -0.5, 0.5, 0.5, 1.0, -0.5, 0.0, -1.0, -0.75, -1.0, -0.25, -0.5, -0.75, 0.75, 1.0, -0.5, 0.0, 0.75, -0.5, 0.25, -0.25, 1.0, -0.5, -0.25, -0.75, -1.0, 0.25, -0.25, 0.75, 0.0, 0.75, 0.25, 0.0, 0.25, -1.0, 0.25, 0.25, -0.75, 1.0, 1.0, 0.5, -0.75, 0.5, 0.75, 1.0, 0.5, -0.75, -0.75, 0.75, -0.75, -0.5, 0.5, 0.75, -0.5, 1.0, 0.0, -0.25, -0.5, 0.0, 0.75, 0.25, 0.0, -0.5, -0.25, 1.0, 0.5, -1.0, -0.75, -1.0, -0.5, 1.0, -1.0, 0.25, -0.25, ]);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.setStencilReference(1);
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder4010.beginOcclusionQuery(0)
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder0040.executeBundles([])
    texture001.destroy();
    texture401.destroy();
    render_pass_encoder5000.executeBundles([])
    render_pass_encoder4000.executeBundles([])
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.executeBundles([])
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder0040.insertDebugMarker("marker");
    texture402.destroy();
    render_pass_encoder0000.setStencilReference(1);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder4010.executeBundles([])
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4004,
            },
        ],
        occlusionQuerySet: query406
    });
    
    render_pass_encoder0030.setStencilReference(1);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const array11 = new Float32Array([0.5, -0.5, -0.25, -0.5, -0.25, 1.0, 0.5, 0.0, -0.75, 0.75, 0.5, -1.0, 1.0, -0.75, 1.0, 0.25, 1.0, 0.0, -0.25, -0.25, -0.5, 0.75, 0.75, -0.75, -0.25, 0.5, 0.0, -0.75, 1.0, 0.75, 0.5, -0.75, -0.75, 0.75, 0.25, -0.25, -0.25, 0.5, -1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, 0.75, 0.0, -0.25, 1.0, -1.0, 0.25, -1.0, 1.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.25, -0.75, -0.25, 0.25, -0.25, 1.0, 1.0, 1.0, 0.5, 0.5, -0.25, -0.5, -0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 0.25, 1.0, -1.0, 0.25, -0.5, -0.25, -0.75, -0.25, 0.5, -0.25, 0.0, 0.75, -0.75, -0.75, 0.25, 0.0, -0.75, 0.0, 0.25, 1.0, -0.75, 0.75, 0.25, ]);
    
    render_pass_encoder4020.executeBundles([])
    texture202.destroy();
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder700.insertDebugMarker("mymarker");
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query203
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder4020.popDebugGroup();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer004, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer004, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder4010.endOcclusionQuery()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}