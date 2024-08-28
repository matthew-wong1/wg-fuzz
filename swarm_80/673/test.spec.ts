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
    const array0 = new Float32Array([-0.5, 1.0, 0.0, 1.0, 0.5, 0.0, -0.25, 0.5, 0.5, -1.0, 0.0, 1.0, 1.0, 0.5, 0.75, -0.5, -1.0, -0.5, -0.5, 1.0, 0.25, 0.0, -1.0, 0.25, -0.25, 0.75, 0.0, 0.75, -0.25, -0.75, -0.5, 0.0, 0.75, 0.0, 0.0, -0.75, 0.0, -0.25, -0.75, 1.0, -1.0, 1.0, 0.5, -0.75, 1.0, 0.0, 0.75, 0.75, -0.75, -1.0, 0.25, 0.25, 0.25, -0.75, 0.75, -0.25, 0.5, -0.75, -0.25, -1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 0.5, -1.0, 0.0, 0.5, 1.0, 0.75, -1.0, 0.75, -1.0, 0.5, 1.0, 0.75, -0.25, -0.25, 0.5, -0.25, -0.5, -0.75, 0.5, 0.0, 0.25, 0.5, 1.0, -1.0, -0.25, 0.0, 0.25, -0.25, -0.5, 1.0, 0.25, -0.25, -0.25, -1.0, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const array1 = new Float32Array([0.0, -0.5, 0.0, 0.75, -0.75, -0.75, 1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 1.0, -0.5, -0.75, -0.75, -0.5, 0.25, 1.0, 0.0, -0.75, 1.0, -1.0, -0.25, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, 0.0, -0.25, -1.0, -1.0, 0.25, -1.0, 0.25, -0.25, 0.75, -0.75, -1.0, 0.0, -1.0, 1.0, -0.5, 0.0, -0.25, -0.5, -1.0, 0.0, 1.0, 0.0, -0.75, 0.25, -0.5, 0.0, 0.5, 0.0, 0.25, 0.0, -0.25, 1.0, -0.5, 1.0, -0.75, 0.75, 0.0, 0.0, 0.25, -1.0, -0.5, -0.5, 1.0, 0.0, -1.0, 0.0, 0.5, -0.75, 0.5, 0.0, 1.0, -0.75, 0.0, 0.5, 0.75, 0.0, -0.25, -0.75, -0.5, -0.25, -1.0, -0.75, -0.5, 0.5, 0.5, 0.75, -1.0, 0.25, -0.75, 0.5, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture100.destroy();
    device10.pushErrorScope("internal");
    
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query102.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    query101.destroy()
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    query102.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([1.0, -0.5, 0.25, 1.0, 1.0, 0.75, -0.25, -0.5, 0.25, 0.5, -0.25, 1.0, 0.5, 0.0, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, -0.75, 0.25, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.75, -0.25, -0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 1.0, -0.5, -0.5, 0.5, 1.0, -0.75, -0.75, 1.0, -0.75, 0.25, 0.0, 1.0, 1.0, 0.5, 1.0, -0.5, 0.75, -1.0, -0.5, -0.5, -0.75, 0.0, 1.0, -0.5, -1.0, -0.25, -0.25, -0.75, -1.0, 0.5, -1.0, -0.25, -0.75, -1.0, -1.0, -0.5, -0.75, 0.0, -1.0, 0.75, 0.25, 0.25, 1.0, 0.75, -0.25, 0.5, 1.0, 0.5, 0.75, 0.25, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, -0.25, 0.5, 0.5, -1.0, 0.25, -1.0, -0.25, -0.75, ]);
    const array3 = new Float32Array([1.0, -0.5, 0.75, 0.0, 0.75, 0.0, -1.0, 0.0, -1.0, 0.5, 0.5, -0.75, -0.75, -1.0, -0.5, -0.25, -0.5, -0.75, -0.5, -0.25, -1.0, -0.5, 0.5, -1.0, -1.0, -0.75, -1.0, -0.5, 0.75, -0.5, 1.0, -0.75, -1.0, 1.0, 0.5, 0.0, -0.5, 0.0, -1.0, -0.5, 1.0, 0.5, 0.75, -0.25, 1.0, -0.5, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, -0.25, 0.5, 0.75, -0.75, -0.5, -0.25, 0.0, -1.0, -0.5, -0.5, 0.25, -0.5, 0.5, 0.25, -0.5, -0.75, 0.0, 0.5, -0.25, -0.5, 0.0, -0.25, -0.5, -0.5, -0.25, 1.0, 0.5, -1.0, -1.0, 0.0, 0.0, 1.0, -0.75, -0.75, 0.25, 0.75, 0.5, -0.25, -1.0, 0.5, 0.25, -0.5, 0.0, -0.5, -0.25, 1.0, 0.75, -0.25, ]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query200.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query103.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query101.destroy()
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query200.destroy()
    
    
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([0.25, -1.0, 1.0, 0.0, -0.25, 0.25, -0.25, -1.0, 0.25, -0.25, -1.0, 1.0, 0.25, -0.25, -0.25, 0.5, -0.75, -0.75, 0.5, 0.0, 0.25, 0.25, 1.0, 0.75, 1.0, -1.0, 0.25, 0.75, -0.5, -0.25, 0.25, 1.0, 0.25, 0.25, -0.5, 0.25, -0.5, 1.0, 0.25, -0.5, -1.0, 0.0, 0.75, 0.0, 1.0, 0.25, 0.0, -0.25, -0.25, 0.5, 0.0, 0.0, -0.5, 0.5, 0.75, -0.75, 0.0, -0.5, -0.5, -1.0, 1.0, 1.0, -1.0, -0.5, 0.5, -0.5, -1.0, 0.5, -0.25, -0.25, 0.25, 0.5, 0.0, -0.75, 0.25, 1.0, -1.0, -0.25, -0.5, 1.0, -0.25, -1.0, 1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.75, 0.0, -0.5, -0.75, 0.75, 0.5, 1.0, -0.75, -1.0, -0.75, -0.75, -0.5, ]);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query201.destroy()
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.destroy();
    
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query200.destroy()
    device20.pushErrorScope("internal");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array5 = new Float32Array([1.0, -0.75, -0.5, 0.5, 0.5, 1.0, -0.25, -0.75, -0.5, 1.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.5, 0.25, -0.5, -1.0, -1.0, -1.0, -0.75, -0.75, -0.5, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, 0.25, -0.75, -1.0, -0.75, -0.25, -0.5, -1.0, -0.25, -1.0, -0.25, 1.0, -0.5, -1.0, -0.5, -0.5, 0.5, -0.25, 0.25, 0.5, -0.75, -0.75, 1.0, -1.0, 1.0, -0.75, 0.75, 0.75, 0.0, -0.5, 0.0, 0.75, -1.0, -0.75, -0.25, 0.0, 0.75, 0.5, -0.75, -0.25, -0.5, -0.75, 0.5, 0.0, 0.75, 0.5, -1.0, -0.75, 0.75, -0.5, 0.5, 0.5, 0.5, 0.5, 0.0, -0.75, 0.0, -0.5, 1.0, 0.25, -0.25, 0.75, 0.5, 0.75, -0.5, 0.5, -0.5, 0.25, -0.25, 0.25, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    query202.destroy()
    query202.destroy()
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query203.destroy()
    render_bundle_encoder202.popDebugGroup();
    query202.destroy()
    query201.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    query400.destroy()
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device40.destroy();
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device30.destroy();
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.pushErrorScope("internal");
    device50.pushErrorScope("internal");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    
    
    device50.pushErrorScope("internal");
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture500.destroy();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture501.destroy();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query600.destroy()
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture502.destroy();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
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
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
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
    
    render_bundle_encoder501.popDebugGroup();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query500.destroy()
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
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
    query601.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout503]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    device60.destroy();
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    texture505.destroy();
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    render_bundle_encoder500.popDebugGroup();
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.5, 0.0, 1.0, 0.5, 0.0, -0.25, -1.0, -0.5, 0.5, -0.5, -0.75, -0.5, -0.25, 0.25, 1.0, 0.25, 0.75, 0.5, 0.25, 1.0, -0.5, 0.5, -1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 0.75, 0.25, 0.0, 1.0, 1.0, -0.5, -0.25, 1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 0.5, 1.0, -0.25, -1.0, 0.5, 1.0, 0.0, 0.75, -0.25, -1.0, 1.0, 0.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.75, -0.75, 1.0, 1.0, -0.75, -0.25, 1.0, -1.0, 0.0, -1.0, 1.0, 0.5, -1.0, 1.0, 1.0, 0.75, -0.25, 0.5, 0.0, -0.75, 0.25, 0.75, 0.75, 0.75, 0.75, -0.25, 0.75, 0.5, 1.0, -0.75, -0.25, 0.0, -0.5, -1.0, -0.75, -0.25, 1.0, 0.75, 0.5, 0.25, 0.0, 1.0, ]);
    query500.destroy()
    
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout506]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout504]
    });
    
    query701.destroy()
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query500.destroy()
    texture504.destroy();
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    query700.destroy()
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    texture701.destroy();
    render_bundle_encoder502.popDebugGroup();
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout506]
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    query500.destroy()
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-1.0, 0.0, -1.0, -0.25, -0.25, -0.25, -0.25, -1.0, 0.25, 0.25, 0.5, 0.0, 0.75, -0.5, -0.25, 0.25, 1.0, -0.75, -0.75, 0.75, -1.0, 0.75, -0.5, -0.5, -0.75, 1.0, 0.0, 0.75, -0.5, 0.75, -0.5, -0.25, 0.25, 0.5, 0.5, 0.5, -0.75, 0.25, 1.0, 0.0, 0.5, 0.5, -0.25, -0.5, -0.75, 0.0, 0.5, 0.0, 0.75, -0.5, 0.75, -0.75, 1.0, 0.75, -0.25, -0.75, -1.0, -0.75, 1.0, 0.75, -0.25, -0.5, 0.25, -0.25, -0.5, 0.25, -0.25, -1.0, -0.25, 0.25, 0.75, 0.75, -0.25, -1.0, 0.75, -1.0, 0.25, 0.5, -1.0, 0.0, -1.0, 1.0, -1.0, 0.25, 1.0, 0.5, 0.0, 0.75, 0.25, -0.75, -1.0, -0.25, 0.0, -0.5, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, ]);
    texture702.destroy();
    query500.destroy()
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    query700.destroy()
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query701.destroy()
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.popDebugGroup();
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout507,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const bind_group_layout507 = device50.createBindGroupLayout({ 
        label: "bind_group_layout507",
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
    texture506.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout507]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout508,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout509,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query701.destroy()
    
    
    
    device50.pushErrorScope("out-of-memory");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout504]
    });
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const compute_pipeline5039 = device50.createComputePipeline({
        label: "compute_pipeline5039",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5040 = device50.createComputePipeline({
        label: "compute_pipeline5040",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline5041 = device50.createComputePipeline({
        label: "compute_pipeline5041",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5042 = device50.createComputePipeline({
        label: "compute_pipeline5042",
        layout: pipeline_layout507,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const compute_pipeline5043 = device50.createComputePipeline({
        label: "compute_pipeline5043",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.popDebugGroup();
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    device80.pushErrorScope("out-of-memory");
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pipeline5044 = device50.createComputePipeline({
        label: "compute_pipeline5044",
        layout: pipeline_layout507,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5045 = device50.createComputePipeline({
        label: "compute_pipeline5045",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    texture800.destroy();
    const compute_pipeline5046 = device50.createComputePipeline({
        label: "compute_pipeline5046",
        layout: pipeline_layout5013,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline5047 = device50.createComputePipeline({
        label: "compute_pipeline5047",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout506]
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
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
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}