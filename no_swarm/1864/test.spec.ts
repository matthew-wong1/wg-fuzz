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
    const array0 = new Float32Array([1.0, -1.0, 1.0, -1.0, 0.25, 0.5, 0.5, -1.0, 0.0, -0.75, -0.75, -0.5, -0.75, 0.5, -0.75, -0.25, 0.0, 0.5, 0.75, 0.0, 1.0, -1.0, -0.75, -1.0, 0.5, 0.5, 0.5, -0.75, -0.25, -1.0, 1.0, -0.25, 0.25, -0.5, -0.5, 0.75, 1.0, 1.0, -0.25, -0.25, 1.0, 0.25, 0.5, -0.5, 0.0, 0.0, 0.75, 0.5, -1.0, -0.25, 0.0, -0.75, -0.75, 0.0, -1.0, -0.75, 0.5, 0.0, 1.0, 0.75, 0.5, 1.0, -0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -0.25, 1.0, -0.75, -0.25, 0.0, 0.0, 1.0, 0.75, -1.0, -1.0, -0.75, -0.75, 0.75, 0.5, 0.0, 0.25, -0.75, -0.5, -0.75, 1.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.5, 0.5, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, 0.75, 0.5, -0.25, -1.0, 0.0, -0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.25, -1.0, 0.5, -0.75, -0.25, -0.25, -0.5, -0.5, 0.5, 0.0, -1.0, 1.0, -0.25, 0.75, -0.25, -0.5, 0.75, 0.25, -0.5, -0.5, 0.0, -1.0, 0.5, -0.25, -1.0, -0.75, 0.25, 1.0, -0.75, -0.75, -0.25, 0.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.75, 1.0, -0.75, -0.75, 0.75, -0.25, 1.0, 0.75, -0.75, 0.5, -0.75, -0.5, -0.5, -0.75, 0.0, 0.25, -1.0, 1.0, -0.5, 0.5, 0.0, -0.75, -1.0, -1.0, -0.75, 0.75, -1.0, -0.75, -0.25, 0.5, -1.0, 0.5, 1.0, -0.75, -0.75, -0.25, -0.5, 0.75, -0.5, 0.5, 0.75, -0.25, -1.0, 1.0, 0.5, -0.5, 1.0, 0.75, -0.5, -0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.destroy();
    
    device30.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const array2 = new Float32Array([0.75, -0.5, 0.75, -1.0, 0.0, -0.25, 0.75, 0.5, -0.75, -0.5, -0.25, 0.25, -1.0, 0.5, 0.25, 0.5, 0.25, 0.0, -0.75, 0.25, -0.25, 0.0, 0.75, 1.0, -0.25, 0.75, 0.5, 0.75, -0.75, -0.25, 1.0, -1.0, 0.25, -0.75, 0.5, 0.5, 0.5, 0.0, -0.25, -1.0, 0.25, -1.0, 1.0, -0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, -0.5, 1.0, -0.25, -0.75, -0.25, -0.5, -0.25, 0.0, -0.75, 0.0, -0.25, -1.0, 1.0, -1.0, -0.5, 0.25, -1.0, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, 0.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.75, 0.5, 0.0, 0.75, 0.5, -0.75, -0.75, 0.5, 0.75, 0.5, -0.75, -1.0, 1.0, 0.25, 0.0, 1.0, 0.5, -0.5, -0.75, -1.0, 0.75, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    device10.destroy();
    
    device60.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    buffer500.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder501.insertDebugMarker("mymarker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query400.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device40.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder500.insertDebugMarker("mymarker");
    
    device20.pushErrorScope("out-of-memory");
    command_encoder501.pushDebugGroup("mygroupmarker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.pushErrorScope("out-of-memory");
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query200.destroy()
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    query500.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query200.destroy()
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer400.destroy()
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder501.popDebugGroup()
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    const command_buffer902 = command_encoder902.finish();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device90.pushErrorScope("internal");
    
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
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
    buffer500.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    query300.destroy()
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    device20.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    command_encoder500.insertDebugMarker("mymarker");
    device40.destroy();
    command_encoder500.clearBuffer(buffer501);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder900.pushDebugGroup("mygroupmarker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    device80.destroy();
    texture400.destroy();
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const array3 = new Float32Array([-0.75, 0.75, 0.0, -0.75, -0.75, 0.25, 0.5, 0.75, 0.75, -0.75, -0.5, -0.5, 0.75, -0.5, -1.0, -0.25, 0.0, -1.0, -0.5, -1.0, -0.25, 0.25, 0.0, -0.75, 0.75, 1.0, -0.75, -0.75, 0.0, -0.25, -1.0, 0.0, 0.0, 0.0, 0.75, -0.5, -0.5, 0.5, 1.0, -0.75, 1.0, -0.5, 0.5, 0.25, -1.0, -0.5, 0.0, -1.0, 0.75, 0.75, 1.0, 0.75, -0.25, 0.75, -0.75, -0.5, 0.25, -1.0, 0.0, 0.5, -0.75, 1.0, -0.75, -1.0, -0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, 0.25, -0.5, -1.0, -0.75, 0.0, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, 0.0, 0.0, -0.25, -0.75, -1.0, 0.0, -0.5, -0.75, 0.25, 0.25, 0.0, 0.25, ]);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    
    const render_pass_encoder9030 = command_encoder903.beginRenderPass({
        label: "render_pass_encoder9030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder500.copyBufferToBuffer(
        buffer503,
        0,
        buffer501,
        0,
        400
    );
    render_pass_encoder9030.setScissorRect(0, 0, texture900.width / 2, texture900.height / 2);
    command_encoder501.clearBuffer(buffer502);
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    compute_pass_encoder9010.insertDebugMarker("marker")
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
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
    render_pass_encoder9030.setScissorRect(0, 0, texture900.width / 2, texture900.height / 2);
    render_pass_encoder9030.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.25, -0.75, -0.5, 0.75, 0.25, 0.75, -0.5, -1.0, -0.75, 0.75, -0.75, 0.0, -0.5, 0.5, 0.25, -0.25, 0.5, -1.0, -0.25, 1.0, -0.25, 0.5, 0.25, -0.5, 0.5, -0.5, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 0.0, 0.0, 0.0, 0.5, 1.0, -0.75, -0.75, 1.0, 0.25, -0.5, 1.0, 0.75, 0.0, -0.75, -1.0, -0.75, -0.5, -0.25, -0.5, -0.25, -0.75, -1.0, 0.5, 0.5, 0.5, -0.75, 0.0, 0.75, 0.25, 0.75, -0.25, 0.75, 0.0, 1.0, 0.75, -0.5, 0.0, -0.25, -0.5, 0.0, -0.25, -1.0, -0.5, 0.5, 0.25, 0.75, 0.75, -1.0, -0.25, 0.5, 0.25, 1.0, -0.75, -0.5, 0.0, -0.25, 0.75, -1.0, -0.25, 0.25, 1.0, -0.5, -1.0, -0.25, -0.5, -0.25, 0.5, -0.5, ]);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    device90.queue.submit([command_buffer902, ]);
    
    
    
    
    command_encoder101.insertDebugMarker("mymarker");
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder9030.executeBundles([])
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture_view9001 = texture900.createView({ label: "texture_view9001" });
    compute_pass_encoder5000.setPipeline(compute_pipeline502);
    
    
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5010.setPipeline(compute_pipeline502);
    command_encoder501.copyTextureToTexture(
        {
            texture: texture501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    const array5 = new Float32Array([1.0, 0.5, -0.5, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 0.75, 0.75, -0.75, 1.0, 0.0, -1.0, -0.5, -1.0, -0.25, -0.5, 0.5, -0.75, -0.5, 0.0, -0.5, 0.75, 0.75, 0.0, -0.25, -0.25, 0.5, -0.25, 0.25, -1.0, 1.0, -0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.5, -0.5, -0.5, 0.75, -1.0, 0.25, -0.5, -0.75, 1.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.25, -0.75, 1.0, 0.5, 0.25, -0.75, -0.25, 0.5, 0.0, 0.75, 0.5, 0.75, 1.0, 0.25, -0.25, 1.0, 0.5, 0.75, 0.75, 1.0, 0.25, -0.25, 0.5, -0.75, -0.75, 0.0, 0.25, 0.25, 0.0, 0.75, -0.25, 1.0, -0.5, -0.5, 0.25, 0.25, 0.5, 0.0, -1.0, 0.0, 1.0, 0.0, 1.0, -0.25, 0.0, 1.0, ]);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    buffer502.destroy()
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout503]
    });
    render_pass_encoder9030.setScissorRect(0, 0, texture900.width / 2, texture900.height / 2);
    
    
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
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline502.getBindGroupLayout(0),
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

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
    buffer503.destroy()
    
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([-0.75, -0.75, -1.0, -0.75, 1.0, -0.75, -0.75, 0.25, 0.5, 0.25, 1.0, 0.25, 0.5, -0.5, 0.5, -0.25, -0.25, -0.75, 0.25, 1.0, -1.0, 1.0, 0.5, 0.75, 1.0, -0.5, -0.75, 0.75, -1.0, -0.75, -1.0, 0.0, 0.25, 1.0, -0.5, 1.0, 1.0, 1.0, 0.0, -1.0, -0.75, -0.5, -0.5, -1.0, 0.75, 0.0, -0.75, 0.75, -0.5, 1.0, 0.0, -0.5, 0.25, -0.75, 0.25, 0.75, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, -0.75, 0.0, 1.0, -0.25, 0.75, 1.0, 1.0, -0.5, -0.5, 0.5, -0.25, -0.75, -0.75, -0.5, 1.0, 0.75, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, 0.0, 0.5, 0.25, 1.0, 0.0, -0.5, 1.0, -1.0, 1.0, -0.75, 0.75, 0.25, -1.0, 0.5, -0.75, 0.75, ]);
    
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer509.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder9030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    render_pass_encoder9030.setViewport(0, 0, texture900.width / 2, texture900.height / 2, 0, 1);
    device90.queue.writeTexture({ texture: texture903 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    device90.queue.writeTexture({ texture: texture903 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder9030.executeBundles([])
    render_pass_encoder9030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    device90.queue.writeTexture({ texture: texture903 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9010.popDebugGroup()
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    texture901.destroy();
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    
    
    
    const render_pass_encoder9010 = command_encoder901.beginRenderPass({
        label: "render_pass_encoder9010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9001,
            },
        ],
        occlusionQuerySet: query900
    });
    buffer1000.destroy()
    device90.queue.writeTexture({ texture: texture903 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture902 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer505.destroy()
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    
    device100.pushErrorScope("out-of-memory");
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    texture904.destroy();
    render_pass_encoder9030.insertDebugMarker("marker");
    render_pass_encoder9030.executeBundles([])
    
    
    device90.queue.writeTexture({ texture: texture902 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    
    
    device90.queue.writeTexture({ texture: texture903 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    texture903.destroy();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query400.destroy()
    render_pass_encoder9010.setStencilReference(1);
    
    render_pass_encoder9030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture902.destroy();
    render_pass_encoder9030.executeBundles([])
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query900.destroy()
    
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder9010.insertDebugMarker("marker");
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder9010.popDebugGroup()
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    
    
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder9030.setStencilReference(1);
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    render_pass_encoder9010.setStencilReference(1);
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder9010.insertDebugMarker("marker")
    render_pass_encoder9030.setScissorRect(0, 0, texture900.width / 2, texture900.height / 2);
    render_pass_encoder9010.setViewport(0, 0, texture900.width / 2, texture900.height / 2, 0, 1);
    
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    device140.queue.writeBuffer(buffer1400, 0, array3, 0, array3.length);
    device90.queue.submit([]);
    
    render_pass_encoder9010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    device100.destroy();
    device140.queue.writeBuffer(buffer1400, 0, array1, 0, array1.length);
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    const array7 = new Float32Array([-0.5, 0.5, -1.0, 1.0, 1.0, -0.25, -0.25, -1.0, 0.25, -1.0, -0.5, -0.75, 0.75, -0.5, 0.75, 0.0, 0.25, 1.0, -0.75, -0.75, 1.0, -0.5, -0.25, 0.5, -0.25, 0.5, 0.5, 0.75, 0.75, 0.25, -0.25, -0.5, 0.0, -0.5, -0.5, 0.0, -1.0, -0.25, 0.25, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, -0.5, 0.5, -0.5, 0.0, 0.75, -1.0, 0.0, -0.25, 0.75, -0.75, -1.0, -0.25, -0.5, 0.0, -0.25, 0.25, 1.0, -0.25, -0.5, -0.5, -0.25, -1.0, 0.25, -1.0, 0.75, 0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -0.25, -0.5, 0.0, 0.0, -0.5, 0.0, 0.75, 0.0, -0.25, -0.5, -0.75, 0.25, -0.75, -0.5, 0.25, -0.75, 0.25, -1.0, 0.0, -1.0, 0.75, -0.75, 0.75, -0.75, ]);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5010, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5010, 0);
    
    render_pass_encoder9030.setViewport(0, 0, texture900.width / 2, texture900.height / 2, 0, 1);
    device140.queue.writeBuffer(buffer1400, 0, array7, 0, array7.length);
    render_pass_encoder9010.beginOcclusionQuery(0)
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    
    
    render_pass_encoder9010.setStencilReference(1);
    const texture905 = device90.createTexture({
        label: "texture905",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder9030.setViewport(0, 0, texture900.width / 2, texture900.height / 2, 0, 1);
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.queue.writeTexture({ texture: texture905 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.pushErrorScope("internal");
    device140.queue.writeBuffer(buffer1400, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer5010, 0, array6, 0, array6.length);
    device100.pushErrorScope("internal");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const texture906 = device90.createTexture({
        label: "texture906",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture_view9002 = texture900.createView({ label: "texture_view9002" });
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    device140.queue.writeBuffer(buffer1400, 0, array7, 0, array7.length);
    render_pass_encoder9010.endOcclusionQuery()
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    render_pass_encoder9030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device140.queue.writeBuffer(buffer1400, 0, array2, 0, array2.length);
    device140.queue.writeBuffer(buffer1400, 0, array0, 0, array0.length);
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder9030.setScissorRect(0, 0, texture900.width / 2, texture900.height / 2);
    
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1401,
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
            module: shader_module1401,
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
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout901]
    });
    device90.queue.writeTexture({ texture: texture905 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder502.copyBufferToBuffer(
        buffer504,
        0,
        buffer5010,
        0,
        400
    );
    render_pass_encoder9030.popDebugGroup();
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    device90.pushErrorScope("internal");
    device120.destroy();
    
    
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("internal");
    device140.queue.writeBuffer(buffer1400, 0, array1, 0, array1.length);
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    
    const texture_view9050 = texture905.createView({ label: "texture_view9050" });
    device90.queue.writeTexture({ texture: texture902 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture905 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.queue.writeBuffer(buffer1401, 0, array0, 0, array0.length);
    device90.queue.writeTexture({ texture: texture905 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    render_pass_encoder9030.setViewport(0, 0, texture900.width / 2, texture900.height / 2, 0, 1);
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    {
        await buffer1401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1401.unmap();
        console.log(new Float32Array(data));
    }
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder9030.setScissorRect(0, 0, texture900.width / 2, texture900.height / 2);
    const texture_view9051 = texture905.createView({ label: "texture_view9051" });
    query001.destroy()
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const render_pass_encoder9031 = command_encoder903.beginRenderPass({
        label: "render_pass_encoder9031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view9010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture907 = device90.createTexture({
        label: "texture907",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder9010.pushDebugGroup("group_marker");
    render_pass_encoder9010.popDebugGroup();
    compute_pass_encoder9010.popDebugGroup()
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder9010.endOcclusionQuery()
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder9010.popDebugGroup()
}