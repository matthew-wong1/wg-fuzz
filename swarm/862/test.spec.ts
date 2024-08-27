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
    const array0 = new Float32Array([-0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.0, -0.25, 0.5, -0.5, -1.0, -0.5, 0.75, 0.25, 1.0, -0.75, -0.75, 0.0, 1.0, -1.0, 0.5, -1.0, 0.25, 1.0, -1.0, -0.5, 0.5, -1.0, -1.0, -1.0, -0.25, -0.5, 0.0, 0.25, 0.5, 0.0, 1.0, 0.25, -1.0, 0.75, 0.5, 0.75, -1.0, 0.25, -0.75, 0.0, -0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 0.5, 0.5, -0.25, 1.0, -0.5, 0.5, 0.75, -0.5, -0.25, 1.0, 0.0, 0.5, 0.25, -0.5, -0.5, 0.0, 1.0, -0.5, 1.0, 0.25, -0.75, -1.0, 1.0, 1.0, -1.0, -1.0, 0.0, -0.5, 0.0, -0.75, -0.5, 0.5, -1.0, 0.25, 0.25, -0.5, 1.0, -0.25, -0.5, 0.25, 0.75, 0.0, 0.5, 0.25, 0.25, -1.0, -0.5, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture000.destroy();
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const array1 = new Float32Array([0.5, 0.5, -0.5, 0.75, 0.75, -0.75, -1.0, -1.0, 1.0, -1.0, -1.0, -0.5, 0.0, 0.5, 0.0, -0.25, 0.25, -1.0, -0.25, 0.5, 0.25, 0.25, -0.25, 1.0, -0.25, 0.0, -0.75, 1.0, -1.0, -0.25, 0.5, -1.0, 0.0, 0.75, 0.0, -0.5, -1.0, -0.75, 0.5, 1.0, -0.25, -1.0, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, -0.75, 0.0, -0.25, 0.5, 1.0, -0.5, -0.5, -0.25, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, 0.25, 0.25, -0.75, -0.5, -0.25, -0.25, 0.75, -0.75, -1.0, 0.25, 0.25, 0.25, 0.25, 0.75, -0.5, -0.25, -0.25, -0.75, -0.75, -0.25, 0.75, -1.0, 0.75, -0.25, 0.25, -0.75, 1.0, -1.0, -0.25, 0.25, -0.25, 0.75, 0.75, -0.5, 0.25, 0.0, -0.75, 1.0, ]);
    texture100.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    texture002.destroy();
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    texture101.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array2 = new Float32Array([-0.5, -0.75, 0.0, -0.25, 0.0, 0.75, -0.5, -1.0, 0.0, 0.0, 1.0, 1.0, 1.0, -0.5, 0.25, -0.75, -0.75, 0.0, -1.0, 0.75, -1.0, 0.25, 1.0, -1.0, 0.75, 0.75, 0.5, 1.0, 0.0, -0.25, 1.0, 1.0, -0.5, 0.75, 0.0, 0.5, -0.25, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 1.0, -0.75, 0.5, -0.75, -1.0, 0.25, -0.25, 0.25, 1.0, 0.25, 1.0, -0.5, 0.0, -0.75, 0.0, -0.25, 0.75, -0.5, -0.75, 0.5, -0.75, 1.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.75, 0.5, -0.5, 0.0, -0.75, 0.75, 0.0, 0.5, 1.0, 0.25, 0.75, 1.0, 0.0, 0.75, 0.75, 0.5, 0.25, 0.75, -0.5, 0.75, 0.5, 1.0, -1.0, 0.5, -1.0, -1.0, 0.25, 0.0, -1.0, -0.75, ]);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query100.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    device10.destroy();
    const array3 = new Float32Array([-0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -1.0, -0.75, 0.5, 0.5, -0.75, 0.25, -0.5, -0.25, -0.25, -0.75, 0.75, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, 0.25, 0.25, 1.0, 0.25, 0.75, 0.0, 0.0, 0.5, 1.0, 0.0, -0.25, -0.75, -0.5, 0.25, 0.5, -1.0, -0.25, 1.0, 0.75, -0.75, 0.75, -1.0, -1.0, 1.0, -0.75, -0.25, 0.0, -0.75, 0.5, 0.0, -0.75, 0.75, 1.0, -1.0, 0.5, -0.75, -1.0, 0.75, 0.25, 1.0, 0.75, 1.0, 0.25, 1.0, 0.75, 1.0, 0.5, 1.0, 0.5, -0.75, 0.0, 0.0, 0.0, -1.0, -0.5, 1.0, -0.25, -0.75, -0.75, -1.0, -0.25, 0.0, -0.5, 0.0, 0.5, 0.5, -0.75, -0.25, -1.0, -0.5, -1.0, -0.5, -0.75, -0.25, -0.5, 1.0, -0.25, ]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture004.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    query001.destroy()
    const array4 = new Float32Array([0.0, 0.25, -1.0, 0.25, 0.25, -0.25, -0.25, 0.25, -0.75, 0.75, 0.5, -1.0, 0.75, -0.75, -0.25, 0.25, -0.75, -0.5, 0.0, 0.75, 0.25, -0.25, 0.5, 0.75, -1.0, 1.0, 0.5, 0.25, -0.75, 0.5, 0.0, -0.25, 0.25, 0.75, -0.75, 0.25, -0.75, -0.75, 0.0, -0.25, 0.25, -1.0, -1.0, 0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 1.0, 0.75, -0.75, 0.75, 1.0, 0.25, -1.0, -1.0, 1.0, -0.25, -1.0, -0.25, 0.25, 0.0, 0.5, -0.25, -0.25, -0.75, 0.5, -1.0, -0.75, -1.0, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, 0.75, 0.25, 0.75, -0.25, -0.25, 0.75, 0.25, 0.0, 0.25, 0.0, -0.25, 0.25, 0.25, 0.75, 0.0, 0.25, -0.5, -0.25, 0.0, -0.5, -0.5, 0.75, -0.25, ]);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture006.destroy();
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
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
    
    
    device20.pushErrorScope("out-of-memory");
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.pushErrorScope("validation");
    
    texture003.destroy();
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    query002.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    query000.destroy()
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device00.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
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
    
    query202.destroy()
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
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    const array5 = new Float32Array([0.25, -1.0, 0.5, 0.5, 1.0, 1.0, -0.5, 0.0, -0.5, -0.25, -1.0, -1.0, -0.75, 1.0, -0.5, -0.75, 1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 1.0, -0.75, 0.75, 0.75, 0.0, 0.25, -0.25, 0.25, 0.5, -0.5, -1.0, -1.0, 0.75, 0.25, 1.0, 0.75, 0.25, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.75, -0.75, -1.0, 0.5, -1.0, -0.25, -0.25, 0.0, 1.0, 0.75, 0.75, 0.25, 0.25, 1.0, -0.5, -0.5, -1.0, 0.75, -1.0, -0.25, 0.25, 0.25, 0.75, -0.75, 0.0, 0.75, 0.25, 0.75, -0.5, 0.0, 0.75, -0.5, -0.75, -1.0, -0.5, 0.0, -1.0, 1.0, -1.0, 0.5, 1.0, 0.0, 1.0, 0.75, -1.0, -0.75, 0.0, 1.0, 0.5, 0.25, 0.5, 0.0, -1.0, -0.5, 0.0, ]);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    query201.destroy()
    texture200.destroy();
    query200.destroy()
    
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout205]
    });
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("out-of-memory");
    
    const array6 = new Float32Array([0.0, -0.5, 0.25, 0.25, 0.5, -0.5, 1.0, -0.25, -1.0, -0.75, -0.75, 1.0, 0.5, 0.25, 0.0, 0.75, -0.25, 0.75, -1.0, -0.75, -0.25, 0.5, -0.5, -0.25, 0.0, 0.25, 1.0, 1.0, 0.5, -0.5, 1.0, 0.25, 0.75, -0.25, 1.0, 0.25, 0.0, -1.0, 0.5, 1.0, -1.0, 0.5, 1.0, 0.75, 1.0, -1.0, 0.25, -0.75, -0.25, -1.0, -0.75, -0.75, 0.25, -1.0, -1.0, 0.75, 0.5, -0.25, -1.0, 0.5, 0.75, -0.75, 0.25, 0.75, -0.5, 0.25, -0.5, 0.5, 0.5, -0.5, 0.0, -0.75, -1.0, -1.0, 0.5, -1.0, -0.5, 0.0, -0.5, -1.0, 0.0, -0.75, -0.25, -0.75, -0.25, 0.5, 0.75, 0.75, 0.25, -1.0, -0.75, -1.0, -0.25, -0.75, -0.75, 1.0, 0.25, 0.75, -0.75, -1.0, ]);
    
    
    query201.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    texture201.destroy();
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query200.destroy()
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout206]
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    texture202.destroy();
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout204]
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query201.destroy()
    
    
    query202.destroy()
    query203.destroy()
    device50.pushErrorScope("internal");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    query201.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout206]
    });
    query202.destroy()
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture203.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    query200.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    const array7 = new Float32Array([-1.0, 0.5, -0.5, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, 0.5, -0.25, 0.0, 0.0, 1.0, -0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.5, -0.5, -0.25, 0.25, 0.0, 0.75, 0.0, 0.25, 0.5, 0.5, 0.0, 0.75, 0.75, -0.75, -0.75, 0.25, 0.0, 1.0, 1.0, -0.5, -0.25, 0.75, 0.75, -1.0, 1.0, 0.0, 1.0, 0.75, -0.75, -0.75, -0.25, -0.25, 0.5, -0.75, 1.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.0, 1.0, 0.0, -0.5, 0.25, -1.0, 1.0, 1.0, 1.0, 0.75, -0.5, -1.0, -0.25, 0.5, 0.75, 0.5, -0.25, -0.75, -0.75, 0.25, 0.5, -0.75, 0.0, -0.75, -0.25, 0.5, 0.75, -0.75, 0.75, 0.75, -0.5, 0.75, -1.0, 0.5, 0.5, -0.5, -0.75, 0.25, 1.0, -0.25, ]);
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout206]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout207]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture204 = device20.createTexture({
        label: "texture204",
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device20.destroy();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device60.pushErrorScope("validation");
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, -1.0, 0.75, -0.5, 0.0, 0.25, 0.0, 0.75, -0.5, 0.75, 0.75, 0.0, -0.25, 0.75, 0.0, 0.5, -0.75, 0.25, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0, -1.0, 0.0, 0.75, -1.0, 0.5, 1.0, 0.75, 0.0, -0.25, 0.25, -1.0, -0.75, 1.0, -0.5, -0.5, 0.75, -0.25, -1.0, 0.75, 0.75, 0.0, -0.75, -0.5, 0.25, -1.0, 0.5, -0.75, -0.75, 0.75, 1.0, 0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, 0.5, -1.0, -0.5, 1.0, 0.75, 1.0, 0.25, -1.0, 0.5, -0.5, -1.0, 1.0, -0.75, -1.0, 1.0, 0.0, 0.5, -0.5, 0.0, -0.5, 1.0, 0.75, -0.5, -0.25, 0.5, 0.5, 0.0, -0.25, 1.0, -0.5, -0.75, 0.75, -0.75, 0.0, -0.25, 1.0, 0.5, 0.0, -0.25, ]);
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query301.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    
    
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    query700.destroy()
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture502.destroy();
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query702.destroy()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    device70.pushErrorScope("validation");
    texture503.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.destroy();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device60.pushErrorScope("out-of-memory");
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    query301.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    device40.pushErrorScope("internal");
    
    device30.pushErrorScope("out-of-memory");
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    query301.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("out-of-memory");
    query301.destroy()
    device60.destroy();
    query301.destroy()
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
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
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    query300.destroy()
    
    
    query703.destroy()
    query701.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    query703.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    texture701.destroy();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query302.destroy()
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query701.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query701.destroy()
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    
    texture300.destroy();
    query702.destroy()
    
    
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    query703.destroy()
    
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
    
    
    
    query703.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    query702.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    
    query300.destroy()
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.destroy();
    device80.pushErrorScope("internal");
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    device70.queue.writeTexture({ texture: texture702 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query702.destroy()
    
    
    device70.queue.writeTexture({ texture: texture702 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device70.queue.writeTexture({ texture: texture702 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture700.destroy();
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device70.queue.writeTexture({ texture: texture702 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    query801.destroy()
    
    const array9 = new Float32Array([0.0, 0.25, -0.75, 0.25, -1.0, -0.5, 0.25, 1.0, -1.0, -1.0, 0.25, 0.75, -0.5, 1.0, 0.75, 0.0, 0.75, -0.75, 0.0, 0.0, -0.75, -0.5, 0.5, 0.5, 0.5, 1.0, -1.0, 0.0, 1.0, 0.0, 0.5, 0.5, 1.0, 1.0, -0.25, -0.25, -0.5, -0.25, -0.5, 0.75, -0.75, 0.25, -0.25, -0.75, -0.25, 0.0, -0.25, 0.5, -0.5, -0.75, 0.75, 0.0, -0.5, -1.0, -0.25, 0.25, 1.0, 0.75, -1.0, -1.0, -0.5, 0.25, -0.75, 0.5, 0.0, 1.0, 0.75, -0.5, 0.25, 0.5, -0.75, -1.0, 0.5, -1.0, -0.25, 0.5, -0.5, 0.5, 0.75, -0.75, 0.0, -0.75, 0.0, -1.0, -0.5, 0.75, 0.25, -0.75, 0.5, 0.25, -0.75, -0.5, 0.25, -0.25, -1.0, 0.0, -0.5, 0.0, -1.0, -0.5, ]);
    device70.queue.writeTexture({ texture: texture702 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query701.destroy()
    
    query700.destroy()
    
    
    device70.queue.writeTexture({ texture: texture702 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query801.destroy()
    
    texture800.destroy();
    const array10 = new Float32Array([-0.5, 0.0, -0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 1.0, -0.25, -0.5, 1.0, 0.75, 0.25, -1.0, 0.75, -0.5, -0.75, 0.25, 0.25, 0.0, 0.75, -1.0, 0.25, 0.75, -0.75, 0.75, 0.0, -0.75, -1.0, -0.25, -0.75, -0.5, -0.5, -1.0, 0.5, -0.25, -1.0, 1.0, 0.5, -1.0, -0.75, -0.25, -1.0, 0.0, 1.0, -0.25, -0.75, -0.5, -0.25, 0.0, 0.0, -0.75, 0.25, -0.25, 0.0, 0.25, -0.5, -0.25, -0.25, -0.25, 0.5, 0.5, -0.25, 0.75, -1.0, 0.25, 0.75, 0.0, 1.0, 0.75, 0.75, -0.5, -0.75, 0.25, -0.5, -0.75, 0.25, -0.5, 1.0, 0.25, -1.0, 0.0, 0.0, 0.25, -0.25, -0.75, 0.75, 1.0, -0.5, -0.75, 0.0, -1.0, -0.75, -0.5, 0.25, -0.75, 0.0, -1.0, 0.0, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query800.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    device90.pushErrorScope("internal");
    query802.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    query802.destroy()
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
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
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query800.destroy()
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    query800.destroy()
    const array11 = new Float32Array([-0.75, 0.25, 0.5, -1.0, -0.5, -0.5, -0.5, 0.75, 1.0, 0.25, -0.75, -1.0, 0.0, 0.25, 0.5, 0.75, 0.75, 0.5, 0.75, 0.0, 1.0, 0.0, -0.75, 1.0, -1.0, 0.25, -1.0, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, 0.0, 0.5, -0.75, 1.0, -0.5, -0.25, -0.75, -0.5, -0.5, -0.75, 0.75, 0.0, 0.0, 0.25, 1.0, 1.0, 0.75, -0.25, 0.75, -0.5, 0.5, -1.0, 1.0, 1.0, 0.5, 0.75, 0.75, 0.0, -0.25, 0.5, -0.25, 1.0, -0.25, 0.5, 0.5, -0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 0.25, -1.0, 0.25, -1.0, -0.25, -0.25, 0.25, 0.75, 0.25, 0.75, -0.75, -0.5, 0.75, 1.0, 0.0, 0.75, -0.75, 0.75, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, -0.25, 0.0, ]);
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    const query805 = device80.createQuerySet({
        label: "query805",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    const bind_group_layout805 = device80.createBindGroupLayout({ 
        label: "bind_group_layout805",
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
    
    device90.destroy();
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query801.destroy()
    texture801.destroy();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const array12 = new Float32Array([1.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.75, -0.75, 0.25, 0.75, -0.75, 1.0, 0.75, -0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 1.0, -1.0, -0.75, 0.0, 0.75, 1.0, -1.0, -0.5, -0.5, -1.0, -0.75, 0.5, -0.75, -0.5, 0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 1.0, 1.0, 1.0, -0.5, -0.25, 0.75, 0.5, 1.0, -0.25, 1.0, -0.5, -0.5, -0.25, -0.25, 0.25, 1.0, -0.5, 0.25, 0.75, -0.5, -0.75, -0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.25, 1.0, -1.0, 0.75, 0.75, -0.5, -0.5, -1.0, -0.5, 0.25, -0.75, 0.0, 0.0, -0.25, -0.75, -0.75, 0.0, -0.75, 0.5, 0.5, 0.25, -0.25, -0.25, 0.75, -0.5, 0.75, -0.5, -0.5, 0.25, 0.75, -0.25, -0.25, -0.5, -0.5, ]);
    query805.destroy()
    const array13 = new Float32Array([-1.0, -0.75, 0.5, -0.25, -0.75, -0.5, 0.5, -0.5, 1.0, 0.5, 1.0, -1.0, -0.25, -0.5, -0.25, 0.25, -0.75, 0.5, -0.5, -1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.25, 0.25, -1.0, 0.25, -0.75, -0.25, 0.75, 0.25, 0.25, -0.5, -0.75, 1.0, 0.25, 0.25, -1.0, -0.25, -0.75, -0.75, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.0, -0.5, -1.0, -0.25, 0.75, 1.0, -1.0, 0.25, 1.0, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 0.0, -0.75, -1.0, 0.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -0.5, -1.0, 1.0, 0.5, 0.75, -0.75, -0.75, -0.75, 0.5, -0.5, -0.25, 1.0, 0.5, 1.0, 1.0, -0.5, 1.0, 1.0, -0.75, ]);
}