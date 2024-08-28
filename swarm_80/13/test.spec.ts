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
    
    const array0 = new Float32Array([1.0, 1.0, -0.25, 0.5, 0.75, 1.0, 1.0, -0.75, -0.5, 0.75, 0.25, 0.0, 0.0, 0.5, -1.0, 0.0, 0.75, -0.75, -0.75, -1.0, -0.25, -1.0, -0.25, -1.0, -0.75, -0.75, 0.5, 1.0, -0.25, 1.0, 0.5, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, 0.5, 0.5, 0.5, -0.75, 1.0, 0.75, 1.0, -1.0, -1.0, 0.0, -0.25, 0.0, -0.25, -0.75, -0.25, -0.75, 1.0, 0.25, -0.25, -1.0, 0.0, -0.25, 0.25, -1.0, -1.0, 0.0, -0.25, 0.25, 0.5, -1.0, 0.5, 0.5, 0.75, 1.0, 0.0, -1.0, 0.75, -0.25, 1.0, -0.25, -1.0, -0.25, 1.0, -1.0, 0.0, 0.75, -0.75, -0.75, 1.0, -0.75, 0.25, 0.25, 0.0, -1.0, -0.5, 0.0, -0.5, -0.25, -1.0, -1.0, 0.25, 0.5, 0.75, ]);
    const array1 = new Float32Array([-1.0, 0.5, 0.5, -0.75, -0.5, -0.25, -0.25, 0.5, 0.0, 0.75, -0.25, -1.0, -1.0, 0.0, -0.5, 0.75, 0.25, -0.75, 0.0, -1.0, -1.0, -0.25, 0.5, -0.25, -1.0, 0.5, 0.75, -0.5, 0.0, 1.0, -0.25, -0.75, -0.75, -0.75, -0.75, 0.0, -0.25, -1.0, 0.75, -0.75, 1.0, 0.75, 0.0, -0.25, -0.25, 1.0, -0.5, 0.25, -0.5, 1.0, -1.0, 0.5, 0.0, -0.5, -0.25, -0.5, -1.0, 0.0, -1.0, 0.0, 1.0, -0.75, -1.0, -0.75, 0.0, -1.0, -1.0, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, 0.0, -0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 1.0, 1.0, -0.5, -0.5, 0.5, -0.5, -0.5, 1.0, -1.0, -0.75, -1.0, 0.75, 0.5, -0.75, -0.75, 0.25, 1.0, 0.75, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    device00.destroy();
    const array2 = new Float32Array([0.5, -1.0, 0.75, 0.25, -0.75, 0.5, -0.75, 0.75, 1.0, 0.5, -0.75, 0.75, -1.0, -0.5, -0.5, 1.0, 1.0, -1.0, 0.25, -0.25, 0.5, -0.25, 1.0, 1.0, -1.0, -1.0, 1.0, -0.5, -1.0, 1.0, 1.0, 1.0, 0.5, 0.75, -0.25, 1.0, 1.0, 1.0, 0.0, 0.25, -0.75, -0.75, 0.25, 0.0, -0.25, -0.5, -0.5, -0.5, -0.25, 0.75, 1.0, -0.5, 0.0, -1.0, 1.0, 0.25, 0.5, -1.0, -0.25, -1.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.25, 0.75, 0.5, -0.25, 0.75, 0.5, -0.25, 0.5, -0.75, -0.75, 0.0, 0.5, -1.0, 1.0, -0.5, 0.25, -0.25, -0.25, -0.5, 1.0, -1.0, -0.75, 0.75, -0.5, -0.75, 0.0, -1.0, 1.0, 0.5, -1.0, -0.5, -0.5, -1.0, 0.5, 0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array3 = new Float32Array([0.25, -1.0, -0.5, -0.75, 0.75, -0.75, -0.5, -0.75, -0.75, 0.5, -1.0, -1.0, 0.0, -0.75, -0.5, 0.75, -0.75, 0.75, 0.0, 0.75, 0.75, -1.0, -1.0, 0.0, -0.5, 0.75, 0.75, 0.75, 0.0, 0.0, 0.5, 0.75, -0.25, 0.75, 0.25, -0.25, -1.0, 0.25, 0.25, -0.75, 0.0, 0.0, 0.5, 0.25, 0.25, 0.75, -0.75, 0.5, -0.25, 0.25, -0.75, -1.0, -0.5, 0.0, 0.5, -0.25, 0.25, 0.5, -1.0, 0.0, 0.0, 1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -0.5, 0.75, 0.75, 0.5, -0.5, -0.25, -0.75, -0.25, 0.25, -1.0, 0.0, -0.25, 1.0, 0.75, -0.5, 1.0, 0.25, 0.75, 0.5, -1.0, 0.75, 0.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.75, 0.0, -0.25, 1.0, 1.0, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const array4 = new Float32Array([-0.75, 0.75, -0.5, -0.75, -0.75, 0.75, -0.75, 0.5, 0.75, 1.0, 0.25, 0.25, 1.0, 0.75, 0.75, 0.75, 0.75, -0.5, 0.5, 0.5, -1.0, -0.75, -0.75, -0.25, -0.25, -0.5, -0.5, 0.25, 0.5, 1.0, -1.0, 0.25, -0.5, 1.0, -1.0, -1.0, 0.75, -0.25, -0.5, 0.75, 0.0, 0.5, 0.5, -1.0, 0.75, 0.75, -0.75, 0.0, 0.75, 0.0, -0.25, -0.5, -0.25, -0.5, -0.25, -1.0, 0.75, 0.5, -0.25, 0.5, 0.0, -1.0, 1.0, 0.5, -1.0, -0.25, 0.5, -1.0, 0.75, -0.25, 0.25, 0.5, 1.0, 1.0, 1.0, -0.5, 0.25, -0.5, 0.0, 0.5, -1.0, 0.5, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.0, 0.5, -1.0, 0.5, -1.0, 0.75, 0.25, 0.75, 0.0, -0.75, -0.5, -0.5, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([0.75, -0.75, -0.25, 1.0, 1.0, 0.75, -0.5, -0.5, 0.0, -0.25, 0.75, -0.5, 1.0, 0.75, 0.5, 0.5, -0.75, -0.5, -1.0, 0.5, 0.0, -0.5, 0.25, -0.75, 0.75, 1.0, 1.0, 0.75, -0.5, 1.0, 1.0, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 1.0, 1.0, 0.75, 0.0, 0.75, -0.25, 0.0, -0.75, 0.75, 0.75, 0.0, 0.5, 0.25, 0.5, -0.5, 0.75, -0.25, 0.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.75, -1.0, 0.75, -0.25, 0.75, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.0, -0.5, 0.5, -1.0, -1.0, 0.25, -0.25, -1.0, 1.0, 1.0, -1.0, 1.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.75, -0.75, 0.25, -0.25, 0.5, 1.0, 0.75, 0.5, 0.75, 0.25, 0.25, ]);
    device10.destroy();
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array6 = new Float32Array([-0.75, 0.5, 0.25, -0.25, 1.0, -0.25, -0.5, 0.25, -0.25, 0.5, -0.75, -0.25, -0.25, -0.25, 0.5, -0.75, -0.25, 0.75, -0.75, -0.5, -0.75, 0.5, -1.0, -0.5, 0.0, 1.0, 0.75, -0.25, -0.25, 0.5, -0.75, 0.75, -0.5, 0.25, 0.25, 0.25, 0.5, -0.75, 1.0, -1.0, -0.75, -0.75, 0.25, 0.0, 0.25, 1.0, 1.0, 0.0, 0.25, -0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.5, 0.5, 0.25, 0.0, 0.5, 0.25, 1.0, -1.0, 1.0, 0.25, -0.25, 0.75, -0.5, -0.5, 0.75, 0.0, 0.25, 0.0, -0.5, -1.0, 0.5, 1.0, 1.0, 0.0, -0.5, -0.75, 0.0, 0.5, -0.5, -1.0, -0.75, -0.5, -0.25, 0.25, 0.75, 0.75, 0.75, -1.0, -0.75, 0.0, 1.0, -0.75, 0.5, -0.5, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.pushErrorScope("validation");
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
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
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
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
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    device50.pushErrorScope("validation");
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.destroy();
    buffer601.destroy()
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_buffer600 = command_encoder600.finish();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
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
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device60.queue.submit([command_buffer600, ]);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    buffer600.destroy()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.pushErrorScope("out-of-memory");
    buffer800.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    query500.destroy()
    query800.destroy()
    compute_pass_encoder6010.setPipeline(compute_pipeline605);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device80.destroy();
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder4000.popDebugGroup()
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
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
    
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.popDebugGroup()
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder6010.insertDebugMarker("marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline404);
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder4000.setPipeline(compute_pipeline403);
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_buffer501 = command_encoder501.finish();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device90.pushErrorScope("internal");
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
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
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout601]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder900.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout604,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout609,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    compute_pass_encoder4000.popDebugGroup()
    
    buffer404.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout404]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
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
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    
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
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout609,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device50.queue.submit([command_buffer501, ]);
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    query601.destroy()
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const command_buffer403 = command_encoder403.finish();
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer401.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout6013 = device60.createPipelineLayout({ 
        label: "pipeline_layout6013",
        bindGroupLayouts: [bind_group_layout603]
    });
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout6013,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    command_encoder602.pushDebugGroup("mygroupmarker")
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout6011,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline502);
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    query500.destroy()
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.75, 1.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.5, 0.0, 0.0, 0.25, -0.75, -0.25, 0.0, 0.25, 0.75, -0.5, -0.75, 0.0, -0.25, 1.0, -0.25, 1.0, 0.75, -1.0, -0.5, -1.0, 0.75, -0.5, -0.25, 0.75, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, 1.0, 0.25, -0.25, 0.25, -0.25, -0.5, -0.5, -0.75, 0.75, 1.0, 1.0, -0.75, -0.25, -1.0, -0.5, -0.5, -0.25, -0.25, -0.5, -0.75, -0.25, -0.25, -0.75, 0.25, 0.5, 0.0, 1.0, -0.75, 0.0, 0.0, -0.75, -1.0, 0.5, 0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.75, -1.0, 0.25, -0.25, 0.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.25, -0.75, 1.0, 0.5, -0.75, -0.25, -0.75, 0.75, -0.5, -0.25, 0.25, 0.5, 0.5, -0.25, ]);
    
    
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    
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
    compute_pass_encoder4010.popDebugGroup()
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer901.destroy()
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder6020.setPipeline(compute_pipeline6037);
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const pipeline_layout6014 = device60.createPipelineLayout({ 
        label: "pipeline_layout6014",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const compute_pipeline6045 = device60.createComputePipeline({
        label: "compute_pipeline6045",
        layout: pipeline_layout6012,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    
    buffer501.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    const compute_pipeline6046 = device60.createComputePipeline({
        label: "compute_pipeline6046",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    buffer903.destroy()
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const buffer905 = device90.createBuffer({
        label: "buffer905",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder902.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    buffer904.destroy()
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline6047 = device60.createComputePipeline({
        label: "compute_pipeline6047",
        layout: pipeline_layout604,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const pipeline_layout6015 = device60.createPipelineLayout({ 
        label: "pipeline_layout6015",
        bindGroupLayouts: [bind_group_layout604]
    });
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
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout404]
    });
    buffer502.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
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
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline605.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group600);
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
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline6037.getBindGroupLayout(0),
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

    compute_pass_encoder6020.setBindGroup(0, bind_group601);
    compute_pass_encoder4020.popDebugGroup()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
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
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.popDebugGroup()
}