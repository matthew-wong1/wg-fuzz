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
    const array0 = new Float32Array([-0.25, 0.0, 0.25, -0.75, -0.75, 0.75, 0.0, -0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, 0.75, 0.25, -0.5, 0.0, -0.25, -0.25, 1.0, 1.0, -0.75, -0.25, 1.0, 1.0, -0.75, 0.5, 0.25, -1.0, 1.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.5, -0.75, 1.0, -1.0, 1.0, 0.75, 0.25, 0.0, -0.5, -0.75, -0.75, 0.5, -0.75, -0.75, 0.5, 0.0, 0.25, 0.5, 0.0, 0.0, -0.5, 0.0, 0.25, 0.0, -0.5, 0.25, -0.5, -0.5, -0.5, -0.75, 0.5, -1.0, 0.75, -0.5, 0.25, 0.75, 1.0, 0.25, 0.5, -0.5, -0.25, 1.0, 1.0, 0.5, 0.5, 0.5, -0.75, 1.0, -1.0, -0.5, 0.25, -0.25, 0.0, -0.75, -0.5, 0.0, 0.5, 0.0, 0.0, -0.75, -0.75, 0.25, -0.75, -0.75, ]);
    const array1 = new Float32Array([0.25, 0.75, 0.75, -0.5, -0.5, -1.0, 0.25, -0.5, 0.75, 0.75, 1.0, 0.5, -1.0, 0.0, 0.75, -0.75, -0.5, -0.5, -1.0, -1.0, -0.75, -1.0, 0.75, 0.25, -0.75, -0.5, 0.0, -1.0, -1.0, 0.5, 0.0, 0.75, 0.5, -1.0, 0.0, 1.0, -0.75, -0.5, 0.5, -0.75, 1.0, 1.0, 0.25, -0.75, -0.25, -1.0, -0.75, 0.5, -0.75, -0.75, -0.25, -0.75, -0.25, 0.25, 0.25, -0.25, -0.25, 0.25, -0.25, -0.5, -0.75, -0.5, 0.0, 0.5, -0.5, -0.75, -0.5, 0.75, -0.25, -0.75, -0.75, -0.25, -0.5, 0.0, -0.25, 0.25, -0.5, 1.0, -0.75, -0.75, 0.0, 0.5, 0.25, 0.25, -0.5, 0.25, 0.25, 0.0, -0.5, 0.0, -0.25, -0.5, 0.0, -0.5, -0.75, -0.75, 0.0, 0.5, -0.75, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array2 = new Float32Array([-1.0, -0.25, -0.25, -0.25, 0.0, 0.0, -0.25, 0.0, 0.0, 0.5, -0.25, -0.25, -0.25, 0.25, 0.5, -0.75, 0.75, 0.75, 1.0, 0.25, -0.5, -1.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.5, -1.0, -1.0, 0.0, -0.5, -0.25, -1.0, 0.25, 0.25, -0.5, -0.5, 0.0, 1.0, -0.5, 1.0, -0.25, 0.25, -0.5, 0.0, -1.0, -0.25, -0.75, -0.25, -0.75, 0.5, 0.75, 0.25, 1.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.25, -0.5, -0.5, -0.25, 0.75, -0.75, -0.75, -0.25, -0.25, -1.0, -0.25, 0.75, 0.0, 0.25, -0.5, 0.75, 0.0, 1.0, 0.5, 1.0, -1.0, 1.0, -0.5, 0.25, -0.75, -0.25, 0.0, 1.0, -0.75, 1.0, 0.25, 0.5, 0.75, 0.5, 0.25, 0.0, 0.5, -0.5, 0.5, 1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array3 = new Float32Array([0.5, -0.25, 0.5, -0.75, 0.5, -0.25, -0.75, 0.5, 1.0, -0.5, 1.0, 0.75, 0.5, 0.5, 1.0, 0.5, -0.75, 1.0, -0.5, 0.75, 0.75, -0.5, -0.75, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, 0.0, 0.5, 1.0, 0.25, -0.5, 0.0, -0.75, -0.25, -1.0, -0.25, -0.75, -0.75, -0.5, 0.75, -0.25, 0.0, -1.0, -0.25, 1.0, -0.75, 0.0, -0.75, -1.0, -0.25, 0.5, -0.25, -0.5, 0.25, 1.0, 0.25, 1.0, -0.5, -0.5, 0.75, -0.75, 0.5, 1.0, -0.5, -0.5, -0.25, 0.75, 0.75, -0.75, 0.75, -0.5, -0.75, 0.5, 0.5, -0.75, -0.75, 0.0, 0.75, 0.0, -0.75, 1.0, 0.75, -0.25, -0.5, 0.25, -0.75, -0.25, -0.25, 0.25, -0.25, -0.75, 0.75, 0.75, 0.75, -0.25, 1.0, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    texture000.destroy();
    
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
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query000.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.destroy();
    const array4 = new Float32Array([0.25, 0.25, -1.0, -0.5, 0.5, 0.0, -1.0, 0.5, -0.25, 0.5, -0.75, 0.25, -0.25, -1.0, -1.0, -0.75, -0.5, 0.75, 0.25, 1.0, -0.75, -0.5, -1.0, 0.75, -0.75, -1.0, 0.0, -0.5, -0.75, 0.75, -0.25, 0.5, 1.0, 0.75, -0.75, -0.5, 1.0, -0.25, -1.0, 1.0, 0.25, -0.25, 0.0, 0.25, 0.75, -0.75, 0.0, 0.5, 0.75, 1.0, 1.0, 0.75, -0.75, -0.5, 0.5, 1.0, 0.0, 0.75, 0.75, -0.75, -1.0, 1.0, 0.0, -1.0, -0.5, 0.75, 1.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.5, 0.25, 0.75, 1.0, 0.5, -0.5, 0.75, -0.5, 1.0, 0.75, 0.75, -1.0, 0.75, -0.25, 0.5, 0.25, 0.75, -1.0, -1.0, 1.0, -1.0, 0.25, 0.5, 0.75, -0.5, 0.75, -0.25, -1.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.5, 0.75, -0.25, 0.0, -0.5, 0.75, -0.5, 0.75, -0.25, 0.75, 1.0, 0.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, 1.0, -0.25, 1.0, 0.0, -1.0, -0.25, 0.25, -0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.75, -0.5, -1.0, 0.0, 1.0, 0.75, -0.5, -0.5, -0.75, -0.25, 0.5, -0.25, 0.0, 0.0, 0.75, -1.0, 0.0, 0.25, 0.5, -0.5, 0.25, -0.5, -0.5, -0.75, 0.25, -0.75, -0.5, -0.5, -0.5, -1.0, 0.25, 0.5, -0.5, 0.0, -0.5, 0.0, 0.25, 1.0, -0.75, -0.5, 0.75, 0.25, -0.5, 1.0, 0.5, 0.0, -1.0, 0.25, 0.5, -0.5, -0.75, 0.75, 0.25, -1.0, 0.75, 0.75, -0.25, -1.0, -0.25, -0.5, 0.0, 0.75, 0.5, 1.0, -0.5, -0.5, -0.25, 0.25, -0.25, ]);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.25, 0.0, -0.75, 0.25, 0.5, 0.75, -0.25, 0.0, -1.0, 1.0, 0.75, -0.25, -0.5, 0.25, 0.25, -1.0, 0.75, 0.0, 0.5, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, -0.5, 1.0, -0.5, -0.5, 1.0, 0.5, 0.75, 0.5, -0.5, 0.75, 0.75, -1.0, -0.5, 0.25, 0.25, 0.75, -0.25, 0.75, -0.5, 0.5, -0.25, 0.5, -0.5, -0.25, -0.75, 0.25, 0.5, -1.0, 0.75, 0.5, 0.75, -0.25, 0.75, 1.0, 0.0, -0.75, 0.0, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, 0.75, 0.75, 0.75, 0.75, 0.25, -1.0, 0.0, 1.0, -0.5, 0.0, 0.0, -0.25, -0.25, -0.25, -0.75, 0.0, 0.25, 0.25, 0.25, -0.75, -0.25, -0.75, 0.0, 1.0, -0.25, 0.25, 1.0, 0.0, 0.0, -0.75, 0.75, -0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    query000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const array7 = new Float32Array([0.0, -1.0, 0.75, 0.75, -0.5, 1.0, 0.0, 0.5, -0.25, 0.0, 0.75, 1.0, 0.75, -1.0, 0.0, 0.75, 0.25, -0.75, -0.5, -0.75, 0.75, 0.75, -1.0, 0.0, -1.0, 0.75, -0.25, 0.75, 0.5, -0.75, 0.75, -0.25, -0.25, 0.5, 0.0, 0.75, -0.5, -0.5, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, -0.75, -0.25, -0.75, 0.0, 0.75, 0.25, -0.75, -0.75, -0.5, -0.5, -0.75, 0.0, 0.5, 0.25, -0.5, -1.0, -0.75, -0.25, -0.75, -1.0, -0.5, -0.75, 0.0, 0.0, 1.0, -0.25, -1.0, -0.5, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, -1.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.75, -0.5, 0.75, -0.5, 1.0, -0.75, 1.0, 1.0, 0.75, 0.0, 0.5, -0.25, -0.5, -0.25, 0.75, 0.5, ]);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.destroy();
    const array8 = new Float32Array([-0.5, -0.75, 1.0, -0.75, -0.25, -0.75, -1.0, -0.75, 0.25, 0.25, 1.0, 0.0, 0.0, 0.0, 0.25, 0.75, 0.0, -0.5, 1.0, 0.75, 1.0, -1.0, 0.5, 0.25, 0.25, -0.5, -1.0, 0.75, 0.0, 0.0, 0.0, 0.75, -1.0, -0.5, 0.25, -0.5, -0.25, 0.0, -1.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.25, 0.25, -0.25, 0.0, -1.0, -0.5, 0.5, 0.25, -0.25, -0.25, 0.0, -1.0, 0.75, -0.25, 1.0, 0.25, -0.5, -0.5, 0.5, -0.25, 1.0, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 0.0, 0.75, 1.0, 0.0, 0.0, 0.75, 0.75, 0.25, -0.5, 0.25, -0.25, 1.0, -0.75, 0.75, 0.5, 0.5, 0.25, -0.25, -0.25, 0.75, -0.75, 0.25, 0.25, -0.25, -0.25, 1.0, -1.0, -0.25, 1.0, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    const array9 = new Float32Array([0.25, -0.5, -0.75, 0.25, 0.75, 0.0, -1.0, -0.5, 0.75, 1.0, 0.25, -0.5, 0.5, -0.5, 1.0, -0.75, -0.25, -0.5, 0.75, -1.0, 0.5, 0.75, 1.0, 0.0, 0.5, 0.0, 0.75, -0.25, -0.25, -0.25, 1.0, -0.5, -0.5, -1.0, 1.0, 0.25, 0.0, 0.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.25, 0.0, 0.0, -0.5, -0.25, -0.25, -0.75, -1.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.5, 0.25, 0.5, 0.75, 0.0, -1.0, -1.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.75, -0.25, 0.5, -0.25, -0.5, 1.0, -0.25, -1.0, -1.0, -0.75, 0.0, 1.0, 0.0, -0.5, 0.0, -1.0, -1.0, -1.0, 0.75, -0.75, 0.75, -1.0, 1.0, 0.0, -0.75, -0.5, 0.75, 0.75, 0.0, 0.75, -0.25, 1.0, ]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device50.destroy();
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.destroy();
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    texture800.destroy();
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    device80.destroy();
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device90.destroy();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device130.destroy();
    
    
    
    
    
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
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    
    
    const array10 = new Float32Array([-0.25, -0.75, 0.0, 0.5, 0.75, -0.5, 0.25, 0.0, 0.5, 0.5, 0.5, 0.0, 1.0, 0.5, -0.5, -0.75, -0.75, -0.5, -0.5, -1.0, -0.75, 1.0, -1.0, -0.5, -0.5, 1.0, 0.0, 0.25, -0.25, -0.5, 1.0, 0.25, 0.0, -1.0, 1.0, 0.5, 0.0, -0.25, 0.0, -0.75, 0.5, 0.0, -0.5, -0.75, 0.5, -0.5, 0.5, 0.25, -0.75, -0.25, 1.0, -0.25, 0.5, 0.5, -0.25, -0.5, 0.0, 0.5, -0.75, -0.5, -0.5, -1.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 1.0, 0.0, -0.25, 0.5, 0.75, -0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 0.25, -0.25, -1.0, -0.75, 0.25, -0.5, -0.5, -0.75, 0.5, -0.75, 0.75, 0.5, 0.5, -0.25, -0.25, 0.0, 0.0, -0.75, -0.5, 0.25, -0.5, ]);
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    texture1100.destroy();
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    query1000.destroy()
    
    device100.destroy();
    
    
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const texture_view12002 = texture1200.createView({ label: "texture_view12002" });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device120.destroy();
    
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    var shader_module1104_code = "";
    try {
        shader_module1104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1104 = await device110.createShaderModule({ label: "shader_module1104", code: shader_module1104_code })
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    query1102.destroy()
    
    
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1105_code = "";
    try {
        shader_module1105_code = await fs.readFile(__dirname + '/shader_module1105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1105 = await device110.createShaderModule({ label: "shader_module1105", code: shader_module1105_code })
    render_bundle_encoder1102.insertDebugMarker("marker");
    
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device110.queue.writeTexture({ texture: texture1102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1101.destroy()
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    const array11 = new Float32Array([1.0, 0.75, -0.25, 0.0, -0.25, 0.0, 0.0, 0.0, 0.25, 0.75, 0.75, 0.0, -0.25, -0.75, 0.25, 0.5, -0.5, -0.25, -1.0, 0.75, 0.0, 0.25, 0.75, 0.75, -0.75, -0.25, -0.5, 1.0, -0.25, -0.75, 1.0, 0.75, -0.25, 1.0, -0.75, 0.5, 0.75, -1.0, 0.5, 0.5, -0.5, -1.0, 0.75, 0.5, 1.0, -0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.5, 0.25, -0.75, -1.0, -0.5, 0.0, 1.0, -1.0, 0.75, 1.0, 0.0, 0.75, 1.0, 0.5, -1.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.0, -1.0, -0.25, 0.5, -0.5, 0.25, 0.75, 0.0, -0.5, 0.0, 0.75, 0.75, 0.5, 0.75, 0.5, -0.25, -0.5, 0.25, -0.5, 0.5, 0.0, 0.5, -0.5, -0.75, 0.0, 1.0, 1.0, -0.75, 0.5, ]);
    
    
    
    device110.queue.writeTexture({ texture: texture1102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1102.insertDebugMarker("marker");
    render_bundle_encoder1102.insertDebugMarker("marker");
    const texture_view11020 = texture1102.createView({ label: "texture_view11020" });
    query1101.destroy()
    var shader_module1106_code = "";
    try {
        shader_module1106_code = await fs.readFile(__dirname + '/shader_module1106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1106 = await device110.createShaderModule({ label: "shader_module1106", code: shader_module1106_code })
    
    device110.queue.writeTexture({ texture: texture1102 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    texture1102.destroy();
    var shader_module1107_code = "";
    try {
        shader_module1107_code = await fs.readFile(__dirname + '/shader_module1107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1107 = await device110.createShaderModule({ label: "shader_module1107", code: shader_module1107_code })
    
    
    const query1104 = device110.createQuerySet({
        label: "query1104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    const compute_pipeline1100 = device110.createComputePipeline({
        label: "compute_pipeline1100",
        layout: pipeline_layout1101,
        compute: {
            module: shader_module1106,
            entryPoint: "main"
        }
    });
    query1102.destroy()
    const compute_pipeline1101 = device110.createComputePipeline({
        label: "compute_pipeline1101",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1100,
            entryPoint: "main"
        }
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1102 = device110.createComputePipeline({
        label: "compute_pipeline1102",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1100,
            entryPoint: "main"
        }
    });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const compute_pipeline1103 = device110.createComputePipeline({
        label: "compute_pipeline1103",
        layout: pipeline_layout1101,
        compute: {
            module: shader_module1100,
            entryPoint: "main"
        }
    });
    
    
    query1101.destroy()
    render_bundle_encoder1102.pushDebugGroup("group_marker");
    device110.destroy();
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    
    device140.destroy();
    
    
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1700.pushDebugGroup("group_marker");
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    query1500.destroy()
    const array12 = new Float32Array([-0.5, 0.5, -0.25, -0.25, -0.75, 0.5, -0.5, -1.0, -1.0, 0.5, -0.25, 0.5, 0.75, -0.5, -0.75, 0.75, -1.0, 0.25, 0.25, 0.5, 0.0, 0.25, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, -0.75, 0.75, 0.75, -1.0, 0.5, -0.5, -0.75, -1.0, -0.75, -0.25, -1.0, 0.0, 0.75, 0.75, -0.5, 1.0, 0.75, -0.25, 0.75, 0.75, 0.75, -0.25, -0.25, 0.25, 0.5, -0.75, 0.5, 1.0, 0.25, 0.5, -0.75, 1.0, -1.0, -0.75, 0.75, 0.25, 0.75, 0.0, 0.75, -0.25, 0.0, -0.5, -0.5, 0.0, 0.0, -0.75, 0.25, -0.75, 0.25, 0.0, 0.75, 0.25, 0.75, -0.5, 0.25, 1.0, 1.0, 0.25, -0.5, 1.0, 0.25, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, 1.0, -1.0, 0.75, -0.5, -0.25, ]);
    device170.destroy();
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    
    
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1502 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1502",
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
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    
    
    device160.destroy();
    
    
    
    
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1501]
    });
    
    
    render_bundle_encoder1501.insertDebugMarker("marker");
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query1500.destroy()
    device150.queue.writeTexture({ texture: texture1500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1500.destroy()
    device150.queue.writeTexture({ texture: texture1500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout1503 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1503",
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
    
    
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    const pipeline_layout1501 = device150.createPipelineLayout({ 
        label: "pipeline_layout1501",
        bindGroupLayouts: [bind_group_layout1501]
    });
    var shader_module1503_code = "";
    try {
        shader_module1503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1503 = await device150.createShaderModule({ label: "shader_module1503", code: shader_module1503_code })
    device150.queue.writeTexture({ texture: texture1500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1501.pushDebugGroup("group_marker");
    
    const compute_pipeline1500 = device150.createComputePipeline({
        label: "compute_pipeline1500",
        layout: pipeline_layout1501,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    const texture_view15000 = texture1500.createView({ label: "texture_view15000" });
    
    const pipeline_layout1502 = device150.createPipelineLayout({ 
        label: "pipeline_layout1502",
        bindGroupLayouts: [bind_group_layout1501]
    });
    
    device150.queue.writeTexture({ texture: texture1500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1500.destroy();
    
    
    
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view15010 = texture1501.createView({ label: "texture_view15010" });
    
    
    
    
    
    const pipeline_layout1503 = device150.createPipelineLayout({ 
        label: "pipeline_layout1503",
        bindGroupLayouts: [bind_group_layout1501]
    });
    const compute_pipeline1501 = device150.createComputePipeline({
        label: "compute_pipeline1501",
        layout: pipeline_layout1503,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    
    const query1502 = device150.createQuerySet({
        label: "query1502",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1504 = device150.createPipelineLayout({ 
        label: "pipeline_layout1504",
        bindGroupLayouts: [bind_group_layout1501]
    });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    const pipeline_layout1505 = device150.createPipelineLayout({ 
        label: "pipeline_layout1505",
        bindGroupLayouts: [bind_group_layout1503]
    });
    const compute_pipeline1502 = device150.createComputePipeline({
        label: "compute_pipeline1502",
        layout: pipeline_layout1504,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    const compute_pipeline1503 = device150.createComputePipeline({
        label: "compute_pipeline1503",
        layout: pipeline_layout1500,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1500.insertDebugMarker("marker");
    const render_bundle_encoder1502 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1502",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1502.pushDebugGroup("group_marker");
    
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query1500.destroy()
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    query1502.destroy()
    query1501.destroy()
    query1800.destroy()
    query1800.destroy()
    const compute_pipeline1504 = device150.createComputePipeline({
        label: "compute_pipeline1504",
        layout: pipeline_layout1504,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    
    const array13 = new Float32Array([0.5, 0.25, -0.5, -1.0, 0.75, 0.75, 0.0, -0.5, -0.25, -0.25, 0.75, 1.0, 0.75, -0.75, -1.0, -1.0, 0.0, -0.25, 0.25, 0.75, -0.5, -1.0, -0.5, -0.75, -0.75, -0.25, -1.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.75, -0.75, 0.0, -0.5, -1.0, 0.0, -0.25, 1.0, -0.5, 1.0, -0.75, -0.75, 0.5, 0.0, -1.0, 0.0, 1.0, 0.5, -0.75, 1.0, 0.25, -0.25, 0.25, 0.5, 0.75, -1.0, 0.5, -0.75, 0.5, 0.5, -1.0, 0.0, 0.25, 1.0, 0.25, 0.25, -0.75, -0.75, 0.5, 0.5, 0.25, 0.5, 0.25, 0.5, -0.75, 0.25, -0.25, -0.25, 0.25, 0.0, 1.0, 0.5, 0.5, -0.5, -0.75, 1.0, 0.25, -0.75, 0.5, -0.75, -0.5, 0.5, -0.75, -0.25, -1.0, 0.25, 0.0, -1.0, ]);
    const compute_pipeline1505 = device150.createComputePipeline({
        label: "compute_pipeline1505",
        layout: pipeline_layout1501,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    var shader_module1504_code = "";
    try {
        shader_module1504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1504 = await device150.createShaderModule({ label: "shader_module1504", code: shader_module1504_code })
    const pipeline_layout1506 = device150.createPipelineLayout({ 
        label: "pipeline_layout1506",
        bindGroupLayouts: [bind_group_layout1501]
    });
    render_bundle_encoder1800.insertDebugMarker("marker");
    const query1801 = device180.createQuerySet({
        label: "query1801",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1507 = device150.createPipelineLayout({ 
        label: "pipeline_layout1507",
        bindGroupLayouts: [bind_group_layout1503]
    });
    
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    
    const compute_pipeline1506 = device150.createComputePipeline({
        label: "compute_pipeline1506",
        layout: pipeline_layout1501,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    query1801.destroy()
    
    var shader_module1801_code = "";
    try {
        shader_module1801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1801 = await device180.createShaderModule({ label: "shader_module1801", code: shader_module1801_code })
    const sampler1801 = device180.createSampler( { label: "sampler1801" } );
    
    const pipeline_layout1800 = device180.createPipelineLayout({ 
        label: "pipeline_layout1800",
        bindGroupLayouts: [bind_group_layout1800]
    });
    render_bundle_encoder1501.insertDebugMarker("marker");
    
    const compute_pipeline1507 = device150.createComputePipeline({
        label: "compute_pipeline1507",
        layout: pipeline_layout1504,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    const query1802 = device180.createQuerySet({
        label: "query1802",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1508 = device150.createPipelineLayout({ 
        label: "pipeline_layout1508",
        bindGroupLayouts: [bind_group_layout1500]
    });
    
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    texture1800.destroy();
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline1508 = device150.createComputePipeline({
        label: "compute_pipeline1508",
        layout: pipeline_layout1508,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    var shader_module1505_code = "";
    try {
        shader_module1505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1505 = await device150.createShaderModule({ label: "shader_module1505", code: shader_module1505_code })
    
    
    var shader_module1802_code = "";
    try {
        shader_module1802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1802 = await device180.createShaderModule({ label: "shader_module1802", code: shader_module1802_code })
}