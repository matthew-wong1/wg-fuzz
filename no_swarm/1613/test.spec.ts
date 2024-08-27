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
    const array0 = new Float32Array([-0.5, 0.0, -0.5, 0.5, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, -0.75, -0.5, 0.0, -0.5, -0.25, 0.5, 0.25, -0.5, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, 0.75, -0.75, 0.0, 0.0, -0.25, 1.0, 0.0, 0.75, -0.25, 0.5, -0.75, 0.5, 0.25, 0.0, -0.5, 0.25, 0.75, -1.0, -0.5, -0.5, -0.75, -1.0, 0.25, -0.25, 0.75, 1.0, 1.0, -0.5, 0.75, -0.75, -0.5, 1.0, 0.5, -0.75, 0.5, 0.75, 0.25, -0.75, 1.0, 0.5, -0.25, 1.0, 0.0, 0.75, -1.0, 1.0, 0.75, 0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 0.25, 1.0, -1.0, 0.25, -1.0, -0.5, -0.25, -0.75, -1.0, 0.75, -0.5, -0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 0.75, 0.75, -0.5, 0.5, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.5, 0.25, 0.5, -0.75, 0.0, 0.75, 1.0, -0.5, 1.0, -0.75, -0.5, 0.5, -1.0, 1.0, 1.0, 0.25, 0.5, 0.75, -1.0, -1.0, -1.0, -1.0, -0.75, 0.5, 1.0, -0.5, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 1.0, -0.25, -0.5, 0.25, -1.0, 0.25, 0.0, -0.5, 0.0, 0.5, 0.75, -0.75, 0.75, 0.5, 0.25, 0.25, 0.75, 1.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.0, 0.25, -0.75, 0.5, -0.5, 0.75, -0.5, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, 0.75, 0.5, -0.75, -0.25, -0.25, -0.5, -0.25, -1.0, -0.5, 0.75, -0.25, -0.25, -0.75, -0.25, 0.75, -0.5, -0.5, -1.0, 0.5, 1.0, -0.25, -0.5, 0.25, 1.0, -0.5, 0.25, 0.5, 0.75, -0.25, -0.25, 0.5, -0.5, ]);
    
    const array2 = new Float32Array([-0.5, -0.75, -0.75, -0.25, -0.5, 0.25, 0.5, -0.25, -0.25, 0.25, 0.25, 0.25, -0.25, 0.25, -0.5, 0.0, -0.5, 0.5, 1.0, 0.25, -0.75, -0.25, -0.75, 0.5, -0.75, 0.25, -1.0, -0.5, 0.75, 0.25, 1.0, 0.25, 0.75, 0.75, -0.5, 0.0, -0.75, -0.25, 1.0, 0.5, -1.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.75, -1.0, 0.5, -0.75, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, 0.25, 0.0, 1.0, 0.0, -0.75, -1.0, -0.5, -0.75, 0.5, -0.75, -0.25, 0.5, 0.5, 0.25, -0.25, -1.0, 0.25, 0.75, 1.0, -0.25, -1.0, -1.0, -0.5, 0.0, 0.0, -0.5, -0.5, -0.5, 1.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.0, -1.0, -0.75, -1.0, 0.0, 0.75, 0.0, 0.5, -1.0, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const array3 = new Float32Array([-0.25, -0.75, 1.0, -0.25, 0.75, -0.25, -0.75, -0.5, -0.5, 0.5, -1.0, -1.0, 0.75, 1.0, -0.5, 0.5, -1.0, -1.0, 0.0, 0.75, 1.0, 1.0, -0.5, -0.5, 0.25, -1.0, -1.0, -0.75, 0.75, -0.25, 1.0, -0.5, -0.75, -1.0, 0.0, -0.25, 0.25, -0.75, 1.0, -0.25, -0.75, 0.75, 0.25, -0.5, 0.75, 1.0, -1.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.25, 0.75, -0.75, 0.75, 0.75, 0.5, 0.0, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, -0.25, 1.0, -0.75, -0.25, 0.0, 0.25, -0.75, 0.5, -0.25, 0.5, 0.75, 0.25, 0.75, -0.25, -0.25, -0.75, -1.0, 0.0, -0.5, -1.0, 0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 0.0, 1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.5, -0.5, ]);
    device10.pushErrorScope("internal");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const array4 = new Float32Array([0.75, 0.75, -1.0, 0.25, -0.5, 0.5, 0.25, 0.25, 0.5, -1.0, -0.25, 0.0, -1.0, 0.75, -0.25, -0.25, 0.0, 0.25, -1.0, 0.75, -0.75, 0.5, -0.5, -1.0, 1.0, 0.75, 0.25, -1.0, -0.25, -0.25, -0.5, 0.5, 0.75, -0.25, 0.25, -0.25, -0.75, 0.25, 0.5, 0.5, -0.75, 0.25, 1.0, 0.5, 0.25, -0.5, 0.0, 0.0, -0.5, 0.0, -0.5, 1.0, -0.75, -0.75, 0.5, 1.0, 0.5, 0.0, -0.25, -0.75, 1.0, 0.75, -0.25, -0.75, 1.0, -0.25, 0.0, -1.0, 0.25, 1.0, 1.0, -0.5, 0.5, -0.5, 0.0, 0.0, -0.75, 0.25, -0.25, 1.0, 0.0, 1.0, -0.25, 0.5, 1.0, 0.5, -0.5, -0.75, -1.0, 0.25, -1.0, -0.75, -0.75, 0.25, 1.0, 0.75, 0.75, -0.75, -0.25, 0.75, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const array5 = new Float32Array([-0.5, 0.25, 0.0, -0.25, 1.0, 1.0, 0.5, 0.0, -1.0, -0.5, 0.5, -0.5, 1.0, -0.75, -1.0, 0.0, -0.75, -0.75, -0.5, -0.25, 0.5, -1.0, -1.0, 0.75, 0.0, -0.5, -0.25, 0.75, 0.75, -0.5, 0.5, 0.75, -0.5, -0.75, 0.0, -0.75, -1.0, 0.25, -0.5, 1.0, 0.25, 0.0, -0.75, 0.0, 0.0, -1.0, 0.0, 0.5, 0.5, -0.25, -0.25, 1.0, -1.0, -0.5, 0.5, 0.25, -0.25, -1.0, -1.0, -0.25, -0.75, 0.5, -0.5, -1.0, -0.25, 0.75, -0.5, -0.75, -0.75, 0.75, -0.75, 1.0, 0.5, 1.0, 0.25, 0.5, 0.5, 0.75, -1.0, 1.0, 0.75, -1.0, 0.25, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, -1.0, -1.0, 1.0, 0.25, 0.5, 1.0, -0.5, -0.75, 0.5, 0.75, -0.25, ]);
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.destroy();
    
    device20.pushErrorScope("out-of-memory");
    const array6 = new Float32Array([-0.25, -0.25, 0.75, -1.0, -0.75, -0.5, 0.25, 0.75, -1.0, 1.0, -0.75, -1.0, 0.25, 0.5, 0.25, -0.25, 0.5, 0.5, 1.0, -0.75, 0.75, 1.0, 0.25, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, 0.25, 0.0, 0.75, 0.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.75, 0.5, 0.25, 0.0, 0.75, -1.0, 1.0, 0.0, 0.25, -0.75, -0.25, -0.75, -0.75, -0.75, 0.0, -0.5, -0.5, 0.25, -0.25, -1.0, 0.5, -0.5, 0.25, -0.75, 0.75, 0.0, -0.25, -0.5, 0.0, 0.25, 0.0, 0.25, -0.25, -0.75, -1.0, 0.0, 0.75, 0.5, -0.75, 1.0, -0.25, 1.0, -0.5, 1.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.5, 0.5, -1.0, 0.0, 0.75, 0.0, -1.0, -0.25, 0.25, 1.0, 1.0, -0.75, -1.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("out-of-memory");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    
    
    const array7 = new Float32Array([0.0, 0.25, -0.25, -0.5, -1.0, 0.25, -0.75, -0.5, 0.25, 1.0, -1.0, 0.0, 0.75, -0.5, -0.25, -0.5, 1.0, -0.25, -0.25, -0.25, 0.25, -0.5, 1.0, 0.75, -0.75, 1.0, 0.0, 0.5, 0.75, -1.0, 0.5, 0.0, 0.5, 1.0, 1.0, -0.75, 0.25, 0.75, 0.75, 0.5, -0.25, 0.0, 0.75, 0.75, -0.5, -0.25, -0.25, 1.0, 0.25, -0.5, 0.25, -0.75, 0.5, -0.75, 0.75, -0.25, -1.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.5, -1.0, 0.25, 0.0, 0.5, -1.0, -0.25, -1.0, 0.25, 1.0, -0.25, 0.5, -0.25, -0.75, -0.5, 0.0, 0.0, 0.5, -0.5, -1.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.75, -0.25, 0.75, -0.75, -0.25, -0.75, -0.5, 0.0, 0.25, -0.75, 0.75, 0.25, 0.75, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture300.destroy();
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.pushErrorScope("validation");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.insertDebugMarker("mymarker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    texture200.destroy();
    
    buffer700.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    device60.pushErrorScope("validation");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    command_encoder601.popDebugGroup()
    
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder601.insertDebugMarker("mymarker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device00.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const command_buffer601 = command_encoder601.finish();
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer602 = command_encoder602.finish();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query601.destroy()
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    device50.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query700.destroy()
    query700.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.queue.submit([]);
    buffer300.destroy()
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    query100.destroy()
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture700.destroy();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    texture703.destroy();
    device40.pushErrorScope("out-of-memory");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const command_buffer400 = command_encoder400.finish();
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    const array8 = new Float32Array([0.5, 0.25, -0.25, -0.75, 0.25, 0.0, 1.0, -1.0, 0.5, -0.75, -0.75, -1.0, 0.75, -0.25, 0.25, -0.25, -0.25, 0.0, -0.5, 0.25, -0.5, -1.0, -0.75, -0.25, 0.5, 0.75, -0.5, 0.25, -0.75, -1.0, -0.75, -0.25, 0.25, -0.75, -0.5, 0.25, -0.5, 0.5, -0.75, -1.0, -1.0, 1.0, -0.25, -0.5, 0.5, -0.25, -0.25, -0.75, 0.5, -0.5, -0.25, -0.75, -0.5, -0.75, -1.0, 0.75, -0.5, -0.25, -0.25, 0.0, -0.75, -0.25, 1.0, -0.25, 0.5, 0.25, 0.0, 0.5, 0.0, -0.25, 0.5, -0.75, 1.0, -0.75, 0.0, -0.75, 1.0, -0.5, -0.25, 0.75, -1.0, -1.0, -1.0, 0.0, 0.5, -1.0, 0.0, 0.5, 0.0, -1.0, 0.5, -0.75, 0.0, -0.25, 0.5, 0.0, 0.0, -0.5, -0.25, -1.0, ]);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.5, 0.25, 1.0, -0.75, 0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 0.0, -1.0, -1.0, -0.25, 0.25, -0.25, -0.5, -0.75, -1.0, 0.75, -0.5, -0.25, -1.0, 0.0, 0.75, 0.0, -0.25, -0.75, -0.75, 1.0, 0.5, -0.25, -0.25, 1.0, 0.5, -0.75, 0.0, -1.0, 0.75, 0.5, 0.25, 0.5, 0.25, -1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.0, 0.75, 0.5, 0.75, 0.75, -0.5, -0.25, 0.75, 1.0, -0.5, 0.0, -0.25, -1.0, 1.0, -0.5, -0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -1.0, -0.5, 0.0, 1.0, 0.0, -0.5, -0.5, 0.75, 0.5, -0.25, 0.5, -0.5, -1.0, 0.75, 0.25, 0.5, -0.5, -1.0, 0.0, 0.25, -0.25, 0.5, 0.0, -0.75, 0.75, 0.0, 0.5, 0.75, 1.0, 0.0, ]);
    texture701.destroy();
    compute_pass_encoder6000.popDebugGroup()
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    buffer701.destroy()
    device70.queue.writeTexture({ texture: texture702 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture302.destroy();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query600.destroy()
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query302.destroy()
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device70.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([-0.5, 1.0, -0.5, -0.5, -0.25, 0.75, 0.25, 0.5, 0.5, -1.0, -0.75, -0.5, -0.5, 0.75, -0.25, 1.0, 0.5, -0.25, 0.75, -0.5, -0.75, -1.0, 0.0, 1.0, 0.75, 0.0, -0.75, -1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 0.5, -0.25, -1.0, 0.75, 0.0, 0.0, 0.5, -0.5, 0.75, 0.75, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.5, -0.75, 0.5, 0.0, -0.25, 0.0, -0.5, 0.5, -0.5, 0.5, 0.0, 0.0, -0.75, -1.0, -0.25, -0.75, 1.0, 0.0, -0.25, -0.5, 0.5, -0.25, -0.25, 0.75, 0.0, 0.75, -0.25, 0.0, -0.5, 0.0, 0.5, 0.5, -0.25, -0.75, 0.75, 0.75, -1.0, -1.0, 0.5, 0.0, 1.0, ]);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    query600.destroy()
    
    texture301.destroy();
    
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
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    device30.destroy();
    query602.destroy()
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
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
    
    buffer702.destroy()
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device40.queue.submit([]);
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    
    
    
    
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
    query604.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder604.pushDebugGroup("mygroupmarker")
    
    const command_buffer604 = command_encoder604.finish();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device40.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeTexture({ texture: texture703 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    query600.destroy()
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    texture800.destroy();
    query602.destroy()
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder600.setPipeline(render_pipeline601);
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device80.destroy();
    query604.destroy()
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
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    
    buffer600.destroy()
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    query900.destroy()
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query900.destroy()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    buffer301.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6030.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    query606.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    compute_pass_encoder6030.insertDebugMarker("marker")
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.pushErrorScope("internal");
    render_bundle_encoder600.insertDebugMarker("marker");
    buffer703.destroy()
    
    device90.pushErrorScope("internal");
    
    query604.destroy()
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    query601.destroy()
    device30.queue.writeTexture({ texture: texture303 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder900.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture303 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query603.destroy()
    
    texture202.destroy();
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
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
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    buffer602.destroy()
    
    
    
    
    buffer601.destroy()
    query603.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    query601.destroy()
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    device60.queue.submit([command_buffer602, ]);
    const command_buffer901 = command_encoder901.finish();
    compute_pass_encoder6030.popDebugGroup()
    const command_buffer900 = command_encoder900.finish();
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6030.setPipeline(compute_pipeline600);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    const command_buffer000 = command_encoder000.finish();
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group602);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer607, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer607, 0);
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder6000.end();
    device90.queue.submit([command_buffer900, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6030.end();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer603 = command_encoder603.finish();
    compute_pass_encoder6000.popDebugGroup()
    device90.queue.submit([]);
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device90.queue.submit([command_buffer901, ]);
    device90.queue.submit([command_buffer900, ]);
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    device60.queue.submit([command_buffer603, ]);
    device90.queue.submit([]);
    device90.queue.submit([command_buffer900, ]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder6000.popDebugGroup()
    device80.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer402 = command_encoder402.finish();
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    compute_pass_encoder6030.end();
    device90.queue.submit([command_buffer901, ]);
    device90.queue.submit([command_buffer900, ]);
}