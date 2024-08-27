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
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
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
    
    
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const array0 = new Float32Array([0.25, -0.75, 0.25, 0.25, -0.75, -1.0, -0.5, -0.75, 0.0, 1.0, 0.25, -0.5, -0.75, 0.25, -0.75, -0.25, 0.25, 0.5, 0.25, -0.25, 0.75, 0.5, 0.5, -0.25, -0.75, 0.5, 0.25, 0.25, 0.25, 1.0, 0.25, -0.25, -0.75, 0.5, -0.75, 0.0, -1.0, -0.5, -1.0, -0.25, -0.75, 0.0, 0.0, 1.0, 0.0, 0.25, -0.25, 1.0, 0.25, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, 0.25, 0.25, 0.25, 0.75, -0.5, -0.25, -0.25, -0.75, -0.25, -1.0, 1.0, -1.0, -0.25, 0.5, 0.0, 0.5, 0.0, -0.5, -0.25, 0.25, 0.0, -1.0, 0.25, -1.0, -0.5, 0.5, -0.25, -0.75, -0.75, 0.25, 0.75, -1.0, -0.5, 0.75, -0.5, 0.25, 1.0, -1.0, 0.25, -0.5, 0.5, -0.5, 1.0, 0.5, -0.75, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture200.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query200.destroy()
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    query200.destroy()
    const command_buffer201 = command_encoder201.finish();
    query200.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.submit([command_buffer201, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    texture201.destroy();
    
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const array1 = new Float32Array([-0.5, 0.75, 0.0, -0.25, 0.75, -1.0, -0.75, -0.75, -0.25, -0.75, -0.75, 0.25, 0.0, -0.75, 0.25, -1.0, 0.75, -0.25, 0.75, -1.0, -1.0, -0.5, 0.75, 0.75, -0.25, -0.5, 0.0, 0.5, 0.5, -1.0, -0.75, 0.5, 0.25, 0.25, -0.5, 0.0, 1.0, -0.5, 0.25, 0.25, 0.75, 1.0, -0.25, 1.0, 0.75, -0.5, 0.0, 0.5, 0.5, -0.5, 0.25, 0.75, -0.5, 0.5, -0.25, -0.5, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, 0.75, 0.75, -1.0, 0.0, 0.5, 0.5, -1.0, 1.0, -0.5, -0.5, 0.25, 0.75, 0.25, -1.0, 0.0, -1.0, 0.25, 0.0, -1.0, 0.75, -0.25, -0.25, -0.5, -0.25, 1.0, -0.75, 0.75, -0.75, 0.5, 0.25, 1.0, 0.0, -0.75, 0.0, 0.5, 0.25, 0.0, 0.25, ]);
    texture202.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer202.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    buffer203.destroy()
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const array2 = new Float32Array([1.0, -1.0, -1.0, 0.25, 0.0, -0.75, 0.5, 1.0, -0.5, -0.75, 0.0, -0.5, 0.75, -0.25, -0.75, -1.0, 0.5, 0.75, 0.0, 1.0, 0.5, 0.75, -0.25, -0.25, 0.0, 0.25, 0.75, -1.0, -0.75, 0.0, 0.75, -0.5, 0.25, 0.0, -0.5, -0.5, 0.0, 1.0, -0.25, 1.0, -0.25, 0.25, -1.0, 0.25, -0.75, -0.5, -1.0, -1.0, -1.0, 0.0, 0.25, -1.0, -0.5, 0.25, 0.75, 0.5, 0.75, 0.0, 0.5, 0.0, -0.25, -0.75, 0.0, -0.25, 0.5, 0.0, 0.0, 0.0, 0.75, 0.5, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -1.0, -1.0, -1.0, 1.0, 1.0, -0.75, -0.5, -0.25, -0.25, -0.5, -1.0, 0.0, -0.5, -0.75, -0.5, 0.75, 0.5, 0.0, -1.0, 0.5, 0.0, -0.5, 0.5, 0.0, ]);
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
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("internal");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer204.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    
    render_bundle_encoder201.popDebugGroup();
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("validation");
    buffer202.destroy()
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.destroy();
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer500 = command_encoder500.finish();
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer206.destroy()
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer300.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    texture203.destroy();
    const array3 = new Float32Array([0.5, -0.75, -0.25, -1.0, 0.75, -1.0, -0.25, 0.25, -0.5, 0.75, 0.5, -0.75, 0.75, 0.5, 0.5, 0.0, -0.5, 1.0, -0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 1.0, -0.5, -1.0, -0.25, 0.5, 0.25, 1.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.5, -0.5, -0.75, 0.0, 0.75, 1.0, 0.25, 0.25, -1.0, 0.5, 0.0, -0.25, -1.0, 1.0, 0.0, 0.75, 0.75, 0.5, 1.0, 0.0, -1.0, -0.25, -1.0, 0.5, 1.0, 0.0, 0.5, -1.0, -0.25, 0.25, -0.75, -0.25, -0.5, -1.0, 0.5, 0.75, -0.25, 0.0, -0.5, 1.0, -1.0, 1.0, 0.75, -0.75, 0.0, 0.25, -0.75, -0.25, 1.0, 0.75, -0.5, -0.5, -0.5, 0.75, -1.0, -0.75, -0.25, 0.75, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, ]);
    buffer208.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    
    device40.queue.submit([]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    
    render_bundle_encoder401.popDebugGroup();
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device40.destroy();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query500.destroy()
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer501.destroy()
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query500.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query301.destroy()
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    
    device60.pushErrorScope("validation");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.popDebugGroup();
    query500.destroy()
    device30.destroy();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder502.copyBufferToBuffer(
        buffer502,
        0,
        buffer500,
        0,
        400
    );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    command_encoder502.insertDebugMarker("mymarker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer502.destroy()
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
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
    
    compute_pass_encoder2010.popDebugGroup()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query502.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder502.insertDebugMarker("mymarker");
    
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    query501.destroy()
    const command_buffer600 = command_encoder600.finish();
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
    texture501.destroy();
    device50.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer503,
        0
    )
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer500.destroy()
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer501,
        0
    )
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query600.destroy()
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
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
    query600.destroy()
    device50.queue.submit([command_buffer500, ]);
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
        occlusionQuerySet: undefined
    });
    
    
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    render_pass_encoder5010.executeBundles([])
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    texture500.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    query501.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query500.destroy()
    render_pass_encoder5010.executeBundles([])
    render_bundle_encoder600.popDebugGroup();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query501.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([-0.5, 0.75, 0.0, 0.25, -0.5, 1.0, -1.0, 0.0, -0.25, 0.25, -0.75, 0.25, -1.0, 0.0, 0.75, 1.0, -0.5, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.5, 0.25, 0.5, 0.0, -0.25, 0.0, 0.75, 0.5, 0.5, 0.75, 0.75, -1.0, 0.0, -0.5, 0.25, 0.0, 0.5, 0.25, 0.0, 0.0, 0.75, 1.0, -0.25, -0.25, -0.75, -1.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.75, 1.0, 1.0, 0.0, 1.0, -0.75, -0.5, 0.25, -0.25, 0.5, -0.75, 0.0, 0.0, -0.25, -0.25, 0.75, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, 1.0, 1.0, 0.5, -1.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.25, -0.25, 0.0, 0.25, -0.75, -0.5, 0.75, 0.0, 0.5, -0.5, 0.75, 0.25, -0.5, -0.25, 0.5, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.setPipeline(render_pipeline500);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
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
    render_pass_encoder5020.executeBundles([])
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder5020.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.submit([command_buffer600, ]);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder503.clearBuffer(buffer500);
    render_pass_encoder5030.setPipeline(render_pipeline500);
    render_pass_encoder5010.executeBundles([])
    
    
    device90.destroy();
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    device40.pushErrorScope("internal");
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer505,
        0
    )
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
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
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder5020.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    
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
    command_encoder501.resolveQuerySet(
        query502,
        0,
        32,
        buffer503,
        0
    )
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query501.destroy()
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer504, 0, array0, 0, array0.length);
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
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
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
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group500);
    render_bundle_encoder500.setPipeline(render_pipeline502);
    
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("out-of-memory");
    buffer506.destroy()
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.popDebugGroup();
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    
    buffer509.destroy()
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    
    device50.queue.writeBuffer(buffer507, 0, array1, 0, array1.length);
    render_pass_encoder5010.executeBundles([])
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder5010.setPipeline(render_pipeline503);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer604, 0, array1, 0, array1.length);
    
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
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    
    
    const array5 = new Float32Array([0.5, 1.0, 0.0, -0.25, -0.75, -0.25, -0.5, -0.5, 1.0, 0.75, -1.0, -0.75, -0.25, 1.0, 0.75, 0.75, -0.5, 0.5, 0.75, 0.5, 0.75, -0.25, -0.25, -0.25, 0.5, 0.75, 0.0, 0.0, 0.5, -1.0, 0.5, 0.75, -0.25, -0.5, 0.0, -0.75, 1.0, 0.75, -0.25, 1.0, -0.5, -1.0, 0.25, -0.75, 0.25, 0.0, 1.0, 1.0, 0.25, -0.75, 0.25, -0.75, -0.75, -0.25, 0.75, 0.75, -1.0, 0.25, 0.5, -0.25, 0.0, 1.0, 0.5, -0.5, -1.0, 1.0, 0.75, -0.75, 0.25, -0.25, -0.25, 0.75, 1.0, -0.25, -0.75, 0.5, 1.0, -0.5, -0.75, 0.5, -0.25, 0.25, 1.0, 0.75, -1.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.75, 1.0, 0.75, 0.5, -0.75, -1.0, -0.25, -1.0, -0.25, 0.75, ]);
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
    texture300.destroy();
    device50.queue.writeBuffer(buffer503, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer508,
        0
    )
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer504,
        0
    )
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    buffer501.destroy()
    buffer508.destroy()
    texture600.destroy();
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    query500.destroy()
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    device50.pushErrorScope("validation");
    
    const array6 = new Float32Array([0.5, 0.0, -0.25, 1.0, -0.5, 0.75, -0.75, -0.5, -0.75, 0.25, -0.5, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 0.75, -1.0, 0.75, 0.5, 0.25, -0.75, 0.75, 0.5, 0.5, 1.0, 1.0, 1.0, 0.5, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, -1.0, -0.75, 0.75, -0.25, -0.75, -0.75, -0.5, -0.25, -0.75, 0.0, 0.75, 0.25, -1.0, 0.25, -0.25, 0.75, 0.75, 0.25, -0.75, -0.5, 1.0, -1.0, 0.0, -0.25, -0.75, 0.0, 1.0, 1.0, 1.0, -0.25, 0.75, 0.0, -0.75, 0.5, 0.25, -0.5, -1.0, 0.25, -1.0, 0.75, 1.0, -0.75, -0.25, -1.0, -1.0, 0.5, 0.0, -1.0, 0.0, 0.0, -0.25, -0.5, -0.75, -0.25, 0.25, -0.25, -0.75, 0.0, 0.75, ]);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    render_pass_encoder5020.setPipeline(render_pipeline503);
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device60.queue.writeBuffer(buffer604, 0, array5, 0, array5.length);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    
    
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_pass_encoder5020.popDebugGroup();
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer504.destroy()
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer605.destroy()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
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
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    device60.queue.writeBuffer(buffer602, 0, array0, 0, array0.length);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    render_pass_encoder5031.setPipeline(render_pipeline505);
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    render_pass_encoder5010.setVertexBuffer(0, buffer503);
    const command_buffer701 = command_encoder701.finish();
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group503);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.drawIndirect(buffer506, 0);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5020.endOcclusionQuery()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer701,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    render_pass_encoder5010.end();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, ]);
    device80.queue.submit([]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder5010.draw(3);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder5020.setVertexBuffer(0, buffer505);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer702, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer702, 0);
    render_pass_encoder5030.setVertexBuffer(0, buffer5014);
    render_pass_encoder5030.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5030.drawIndexed(3);
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5011, 0);
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder7000.end();
    render_pass_encoder5020.end();
    device60.queue.submit([]);
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5016,
                },
            },
        ],
    });

    render_pass_encoder5031.setBindGroup(0, bind_group504);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder5020.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder5030.endOcclusionQuery()
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5030.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5031.setVertexBuffer(0, buffer509);
    render_pass_encoder5031.drawIndirect(buffer5014, 0);
    render_pass_encoder5031.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder5031.draw(3);
    render_pass_encoder5020.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5020.popDebugGroup();
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    render_pass_encoder5020.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder5030.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    const command_buffer100 = command_encoder100.finish();
    device100.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder5020.drawIndexed(3);
    device60.queue.submit([]);
    render_pass_encoder5020.drawIndirect(buffer5015, 0);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder5010.end();
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group702);
    compute_pass_encoder2000.end();
    render_pass_encoder5031.drawIndirect(buffer507, 0);
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder2010.end();
    render_pass_encoder5020.end();
    render_pass_encoder5031.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5010.drawIndirect(buffer5016, 0);
    render_pass_encoder5020.setIndexBuffer(buffer500, "uint16");
    device80.queue.submit([]);
    render_pass_encoder5020.end();
    render_pass_encoder5030.end();
    render_pass_encoder5020.end();
    render_pass_encoder5030.end();
    device100.queue.submit([]);
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder5010.end();
}