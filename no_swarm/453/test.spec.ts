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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.5, 1.0, 0.25, -0.75, 0.0, -0.75, -1.0, 0.25, -1.0, -0.25, 0.75, -1.0, 0.75, 1.0, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, -0.75, -0.25, -1.0, 0.75, -0.75, 0.75, -0.25, 0.0, -0.75, 0.5, -0.5, 0.25, -0.5, 0.0, -0.25, -0.75, -1.0, -1.0, -0.5, 0.75, 0.0, -0.5, -0.75, 0.0, -0.25, 0.0, 0.25, -0.5, 0.0, -0.25, 0.0, -0.5, 0.75, 0.75, 1.0, 0.5, -1.0, 1.0, -0.75, -0.75, 0.0, 0.75, -0.5, 1.0, -0.75, 0.25, 0.25, 0.25, 0.0, 0.5, -1.0, -0.5, 1.0, -1.0, -1.0, 0.25, -0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.75, -0.75, 0.0, 1.0, -0.5, 1.0, -0.5, -1.0, -0.75, -1.0, -0.25, 0.0, -0.25, -0.75, -1.0, 0.75, 0.5, 0.5, ]);
    const array1 = new Float32Array([-0.5, -0.5, 0.25, 0.5, 0.75, -0.75, 0.5, 1.0, -0.25, 0.75, -0.25, 0.25, -0.25, 0.75, 0.0, 0.0, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, -1.0, 0.0, 1.0, 0.75, 0.0, 0.25, -0.5, 0.0, -1.0, 0.5, 0.0, -0.25, -0.25, -1.0, 0.25, 0.0, 0.0, 0.25, -0.75, 1.0, 0.25, 0.5, -0.25, -0.75, 0.0, 0.25, -0.5, -0.5, 0.0, -0.5, -0.25, 0.0, 0.5, 1.0, -0.5, -0.25, -0.5, 0.25, 0.75, 0.75, -0.25, 0.5, -0.25, -0.25, 0.75, 1.0, -0.25, -1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.5, -0.25, -0.25, 0.25, 0.5, -0.75, -0.5, -0.5, -0.5, 0.0, 0.5, -0.5, 0.75, -0.25, -0.75, 0.0, 0.0, -0.5, 0.25, 1.0, -0.25, 0.25, 0.75, 0.25, -0.5, ]);
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
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    
    const array2 = new Float32Array([0.25, -0.5, -0.5, 1.0, 0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 0.25, -1.0, -1.0, 1.0, 1.0, 0.25, 0.75, -0.25, -1.0, -0.5, -0.75, -0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -1.0, 0.5, -0.75, 0.25, 0.0, 0.5, -0.25, 1.0, -0.5, 0.0, -0.75, 0.0, -1.0, -0.75, 0.5, -0.5, 0.75, 0.0, 0.75, -0.25, 0.75, 0.5, -0.5, 0.5, -0.75, 1.0, 1.0, 1.0, 0.5, -0.25, 0.75, 0.0, 0.5, -0.25, 0.75, -0.5, 0.0, 0.75, 0.75, -1.0, -1.0, 0.5, -1.0, 0.75, -1.0, 0.75, -1.0, 0.25, -1.0, -0.75, 0.0, -0.5, -0.25, 0.5, 1.0, 0.0, -0.25, 0.25, 0.5, -0.5, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, 1.0, 0.75, -0.25, 1.0, -1.0, -0.5, 0.5, ]);
    
    
    
    const array3 = new Float32Array([-0.5, 0.75, -1.0, -0.5, 1.0, 0.25, 0.5, 0.5, 0.25, 0.75, 0.0, -0.25, 1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.5, -0.25, -1.0, -0.25, 0.0, 0.75, 0.0, 0.5, 0.25, 0.0, -1.0, -0.5, 0.5, 1.0, 0.5, -0.75, -1.0, 0.75, -0.25, -0.25, 0.75, 1.0, -0.75, -1.0, 0.25, -0.25, -0.25, 0.0, -0.5, -1.0, 0.0, -0.75, 0.25, 0.5, 0.5, -1.0, 0.5, -0.5, -1.0, 0.25, 0.5, 0.75, 0.0, 0.0, 0.5, 0.0, -0.75, 0.0, 0.75, -1.0, 0.0, 0.75, -0.25, -0.25, -0.25, 0.5, -0.5, -1.0, 0.0, -0.75, 0.0, 0.25, -0.75, 0.5, -0.75, -0.5, 0.0, 0.75, 0.5, 0.25, -0.5, 0.0, -0.25, 0.75, -1.0, 1.0, 0.0, 0.25, -1.0, 0.5, -0.75, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([-1.0, -0.5, 0.25, 0.75, 0.25, -1.0, -0.25, 1.0, -0.25, -0.25, 0.25, -1.0, 1.0, -1.0, -0.25, 1.0, -0.25, 0.5, -0.25, -1.0, 0.25, 1.0, 1.0, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -0.5, -0.25, -0.25, 0.25, 1.0, 0.75, 0.0, 1.0, 0.75, 0.25, 0.25, 0.25, 0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.5, -0.75, 1.0, -0.5, -0.5, -0.75, 1.0, 0.75, 0.5, 0.25, -0.5, 0.75, -0.5, -1.0, 1.0, -0.5, 0.25, 0.0, 0.75, -0.75, 1.0, -1.0, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.5, 0.0, -0.5, -0.5, -0.75, -0.5, -0.25, 0.0, -1.0, -1.0, 0.5, -0.25, 1.0, 0.25, 0.75, -0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.5, ]);
    
    
    
    const array5 = new Float32Array([1.0, -0.75, 0.75, -0.25, -0.25, -0.75, -0.5, 0.0, -0.75, -0.25, -0.5, 0.25, 0.5, -0.75, -0.5, 0.75, 0.25, 0.0, 1.0, -1.0, -0.25, 0.75, 0.75, 0.0, 1.0, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, 0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -0.5, -0.75, 0.0, -0.25, 0.75, 0.5, -0.25, -0.75, -1.0, -1.0, 1.0, -0.5, -0.25, -1.0, -1.0, -1.0, 0.75, -1.0, 0.25, 0.5, 0.0, 1.0, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.25, -0.75, -0.75, -0.5, -1.0, -0.25, 0.25, 0.75, 0.75, 0.75, -0.25, -1.0, 0.5, -1.0, 0.5, -1.0, 0.25, 0.0, -1.0, -0.5, -1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.5, 0.0, 0.75, 0.5, 0.75, 0.0, 0.25, -1.0, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device10.pushErrorScope("validation");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    texture200.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.popDebugGroup();
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("internal");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
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
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    query100.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder100.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture201.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query201.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("validation");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
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
    texture202.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query201.destroy()
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
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    query100.destroy()
    
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device20.destroy();
    device40.pushErrorScope("validation");
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("internal");
    texture300.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
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
    
    buffer101.destroy()
    buffer100.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const array6 = new Float32Array([0.25, 0.0, -0.75, -0.5, 0.5, 0.25, -0.25, -0.75, 0.0, 0.75, -1.0, -0.5, 0.75, -1.0, 0.5, -0.5, 1.0, 0.75, -0.5, -0.5, -0.5, 0.0, -0.25, 0.5, 0.5, -0.5, 0.25, -0.75, 0.0, 1.0, -0.25, 0.5, 1.0, -0.5, 0.0, 1.0, 1.0, 0.0, 1.0, -1.0, -0.5, -0.5, 1.0, 0.75, 0.25, 1.0, -0.5, 0.25, -0.75, -0.75, -0.5, -0.25, -0.5, 1.0, 0.0, 0.75, 0.75, 0.0, -0.25, 0.75, -0.25, 0.75, -0.25, 0.75, -0.5, 0.75, 1.0, 1.0, -0.5, -0.5, 0.0, 0.5, 1.0, 0.0, 0.75, 0.5, 0.5, -1.0, -0.5, -1.0, -0.25, -0.75, 0.0, 0.0, 0.25, 1.0, 0.0, 1.0, -0.75, -1.0, 0.0, -0.5, -1.0, 0.75, -0.5, -0.75, 0.5, -0.75, -0.75, 0.75, ]);
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([1.0, -0.75, 0.5, 0.5, -0.75, 0.75, -0.25, 0.75, -1.0, 0.0, 0.25, 0.25, -0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 1.0, 0.5, 0.25, -1.0, 0.5, 0.5, -0.75, -1.0, 0.5, 0.5, 0.0, 0.5, 0.75, -0.5, 0.75, 0.75, 1.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.75, 0.0, 0.75, 0.75, -1.0, 0.5, 0.25, 0.0, -1.0, -0.75, -0.75, -0.75, 1.0, 0.0, -0.75, -0.25, 1.0, 1.0, 0.25, -1.0, 0.0, 0.5, 0.0, -0.75, 0.0, 0.0, 1.0, 0.25, 0.5, 0.25, 0.0, -0.75, -0.25, -0.25, 0.25, -0.5, -0.25, 1.0, 0.0, 0.0, -1.0, -1.0, -0.25, 1.0, -0.5, 0.0, -0.25, 0.75, 0.25, 1.0, 0.75, 0.75, 0.5, -1.0, 0.25, -0.75, -0.25, -0.75, -0.25, -0.75, ]);
    
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer104, 0);
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    compute_pass_encoder1000.end();
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    device40.destroy();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder101.clearBuffer(buffer104);
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
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_buffer101 = command_encoder101.finish();
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer103.destroy()
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
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device30.destroy();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const array8 = new Float32Array([0.5, -1.0, 0.75, -0.75, -0.5, 0.75, -0.5, 0.25, -0.25, -0.25, -0.75, 1.0, -0.5, -0.5, 0.75, -0.25, -0.5, 0.25, -0.5, -1.0, 1.0, 0.25, -0.5, 0.75, 0.25, 0.5, -1.0, 0.25, -0.25, -0.75, 0.5, 1.0, 0.75, 0.75, 0.25, -1.0, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, -0.25, 0.75, -0.5, 0.0, 0.5, -0.5, 0.0, 1.0, -1.0, -0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.25, 0.25, 0.25, 0.0, -0.25, 0.25, 0.0, 0.25, 1.0, -1.0, -0.25, -0.5, -0.5, -0.75, 0.0, 0.5, 0.25, -1.0, -0.25, 0.0, 0.75, 0.5, -1.0, 0.0, 1.0, -1.0, -0.25, 0.25, 0.25, -0.25, 0.25, 0.0, -1.0, -0.75, 0.5, -0.5, 0.5, -0.75, 0.0, 0.25, 0.75, 0.5, 0.0, ]);
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    buffer107.destroy()
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    buffer102.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    compute_pass_encoder1001.setPipeline(compute_pipeline1014);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query101.destroy()
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.drawIndirect(buffer104, 0);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query103.destroy()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    texture100.destroy();
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    query101.destroy()
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    buffer109.destroy()
    query103.destroy()
    query102.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    buffer1011.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer106.destroy()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    command_encoder102.clearBuffer(buffer104);
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query105.destroy()
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    texture103.destroy();
    compute_pass_encoder1001.insertDebugMarker("marker")
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    
    texture102.destroy();
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    render_bundle_encoder101.popDebugGroup();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const array9 = new Float32Array([0.0, 0.75, -0.5, 0.5, 0.75, -0.75, -0.75, 0.75, 0.75, -0.75, -0.25, -0.75, 0.0, 1.0, -1.0, -0.5, 0.0, 0.75, 0.0, 0.75, 0.0, -0.5, 0.0, -1.0, 0.25, 0.75, -0.75, -0.25, 1.0, 0.75, 0.0, 0.25, -0.5, 0.0, 0.25, -0.25, 1.0, 0.5, -0.25, -0.25, -1.0, -0.25, 1.0, 0.5, 1.0, 0.75, 0.75, 0.75, 1.0, 1.0, 0.0, 0.0, -1.0, -0.25, -0.25, 0.0, 0.75, 0.0, 1.0, -0.5, -1.0, -1.0, 0.75, 0.5, 0.5, 1.0, 0.5, 0.75, -0.75, 0.0, 0.75, 0.75, -0.25, 0.0, 0.0, 1.0, -0.5, 0.0, 0.75, 0.0, 0.0, 0.0, -0.75, 1.0, -0.5, -0.5, -0.25, 1.0, 0.5, 0.25, -0.5, -0.75, 0.0, -0.75, 0.0, 0.25, -0.25, 1.0, 0.0, 1.0, ]);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline1014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group103);
    query104.destroy()
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query106.destroy()
    
    render_bundle_encoder100.setIndexBuffer(buffer108, "uint16");
    
    texture500.destroy();
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder500.pushDebugGroup("mygroupmarker")
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    query100.destroy()
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer109);
    query103.destroy()
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.drawIndirect(buffer104, 0);
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    buffer1010.destroy()
    device10.queue.submit([command_buffer101, ]);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query105,
        0,
        32,
        buffer1016,
        0
    )
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    buffer1014.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout105]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.drawIndexed(3);
    
    
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    query103.destroy()
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("internal");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline1034);
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1001.popDebugGroup()
    buffer104.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    query104.destroy()
    buffer1013.destroy()
    buffer1016.destroy()
    buffer108.destroy()
    
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query501.destroy()
    buffer1015.destroy()
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setStencilReference(1);
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    query104.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer1016,
        0
    )
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    
    
    
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout105]
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer600 = command_encoder600.finish();
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline1034.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    const command_buffer103 = command_encoder103.finish();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder1001.end();
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder1020.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    device10.queue.submit([command_buffer100, ]);
    device60.queue.submit([command_buffer600, ]);
}