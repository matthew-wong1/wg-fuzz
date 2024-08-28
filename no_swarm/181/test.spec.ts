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
    const array0 = new Float32Array([-0.75, -0.25, 1.0, -0.75, 0.0, 0.25, -0.5, -0.5, -1.0, 0.75, 1.0, -1.0, 0.5, -0.25, 0.0, -0.75, -0.5, -0.75, 1.0, 0.25, -0.25, 0.0, -1.0, 1.0, 0.0, 0.75, -0.75, -0.25, 0.0, -0.75, 1.0, 1.0, 0.5, 0.25, 0.5, 0.5, -0.5, -0.75, 0.25, 0.5, -1.0, -0.25, 0.5, -0.75, -0.75, 1.0, -1.0, 0.75, 0.5, 0.75, -1.0, 0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.25, 1.0, -1.0, 1.0, 0.25, -0.25, -0.75, -1.0, 1.0, -1.0, 1.0, -0.75, 0.25, -1.0, -0.25, -0.75, -1.0, -0.25, 0.25, 1.0, 0.75, 0.75, 0.25, 0.25, -0.5, -0.5, 0.75, 1.0, 0.25, -1.0, 0.75, -0.5, 0.0, 0.25, -0.5, -0.25, 1.0, 0.5, -0.5, -0.75, -1.0, -0.75, 0.75, ]);
    
    const array1 = new Float32Array([0.75, 0.0, 0.0, 0.75, 0.0, -1.0, 0.25, 0.25, 0.25, -0.25, -0.5, 0.75, -1.0, -1.0, -1.0, -1.0, 0.5, 0.25, 1.0, -0.75, 1.0, -0.5, 0.5, 1.0, 0.25, -0.75, -0.5, 0.5, -0.5, 1.0, 0.25, -1.0, -0.5, -0.5, 1.0, -1.0, -1.0, 0.75, -0.5, 0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 1.0, 1.0, -0.25, 0.0, -0.5, -1.0, 0.75, -1.0, -0.5, 0.25, -0.5, 1.0, 1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.75, 1.0, 0.25, 1.0, 0.75, 0.0, 0.25, -0.75, 0.0, -0.75, 0.75, -0.75, -0.5, 0.0, 0.0, 0.25, 0.75, 0.0, 0.25, -0.25, 0.75, 0.25, -0.75, 1.0, 0.0, -1.0, -1.0, 0.5, -1.0, 0.75, 0.5, 0.75, ]);
    
    const array2 = new Float32Array([0.5, 0.5, -1.0, 0.25, 1.0, -1.0, 0.75, 0.0, 0.5, 0.25, 1.0, -0.5, 0.75, 0.5, -0.75, 1.0, -0.25, -0.75, -1.0, -0.25, 0.75, 0.0, 0.75, 0.5, 0.0, 0.5, 0.75, 0.0, 1.0, 0.75, 0.0, 0.5, 0.75, -0.25, -1.0, -0.75, 0.0, 0.25, 0.5, 1.0, -0.75, 0.5, 0.5, 0.0, 0.75, 1.0, -0.75, 1.0, 0.25, -1.0, -0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.25, 0.5, 1.0, -1.0, -0.75, 0.25, 0.5, 0.5, -0.25, -0.5, 0.25, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, -1.0, 0.0, 0.0, 0.75, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, -0.25, 0.5, 0.5, 0.0, 0.25, -0.75, 0.0, -1.0, 0.0, 0.0, -1.0, -0.5, -1.0, 0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([-0.5, -0.75, 0.0, -0.25, 0.0, 0.25, 0.0, -1.0, 0.25, -0.5, 1.0, 0.5, 0.25, 0.75, -0.75, 0.5, -0.75, 0.75, 0.5, 0.25, 0.25, 0.5, -0.5, -0.25, -0.25, -1.0, 0.75, 0.5, -0.5, -1.0, 0.25, -0.5, 0.5, 1.0, 0.5, 1.0, 0.5, 1.0, 0.75, -0.75, 0.0, -0.5, 0.75, 1.0, -0.25, 0.0, -1.0, 0.75, -1.0, 0.5, 0.5, -0.5, -0.75, -0.25, 0.25, 0.25, -0.75, -0.5, 0.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.5, -1.0, 0.75, 0.5, -0.75, 0.0, -0.5, 0.0, 0.0, -0.25, 1.0, 0.5, -0.25, 0.0, 1.0, -0.75, -0.75, 0.25, -0.25, -0.25, 1.0, -1.0, 0.25, 1.0, -0.5, -0.5, 0.0, 0.5, 1.0, 0.25, 0.0, -1.0, 0.75, -0.75, 0.25, -1.0, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array4 = new Float32Array([0.5, 1.0, 0.0, -0.25, 0.5, 0.0, -1.0, -0.5, 0.75, -0.5, 1.0, -0.5, -0.5, 0.0, -1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 0.5, 1.0, 0.75, -0.5, -1.0, 1.0, -0.75, -0.75, -1.0, -0.75, 0.5, 0.75, 0.25, 0.0, 0.0, -0.25, 1.0, -0.25, 0.5, 0.5, 0.25, 1.0, 0.5, 0.5, -1.0, -0.25, 0.25, 0.75, 0.75, -0.75, -1.0, -0.5, 0.75, -1.0, 0.0, 0.75, 0.5, 0.25, 0.0, 1.0, 0.75, 1.0, -0.5, -0.75, -0.5, -0.25, 0.25, 1.0, 0.75, 1.0, 1.0, -0.25, 0.25, -0.75, 0.0, -0.75, -0.5, -1.0, -0.5, -0.5, 1.0, -1.0, -0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.25, -0.5, 1.0, -0.25, 0.75, 0.75, -1.0, 0.5, 0.0, 1.0, -0.25, -0.75, ]);
    const array5 = new Float32Array([-0.75, -0.75, 0.75, -0.75, 0.0, -0.25, -0.75, -0.75, -1.0, 0.25, 0.75, 0.25, 0.5, 1.0, -0.25, -0.5, 1.0, -0.25, -0.75, -0.75, -1.0, 0.5, -0.25, 1.0, 0.5, -1.0, -1.0, 0.75, -1.0, 0.25, 1.0, 1.0, 0.25, -0.25, -1.0, -1.0, -0.5, 0.5, -0.75, -0.5, -1.0, -0.5, -0.5, 0.25, 0.5, -0.5, -0.25, 0.5, 0.5, 0.75, 1.0, 0.5, 1.0, -0.75, 0.0, 0.5, 1.0, -0.25, -0.5, 0.75, 0.5, -1.0, -0.25, 0.25, 0.75, 0.0, 0.5, 1.0, -0.75, 1.0, 0.5, -1.0, 0.25, 0.0, 0.75, 0.75, 0.5, 0.25, 1.0, -0.5, -1.0, 0.5, -0.5, 0.25, -0.75, 1.0, 1.0, -0.25, -0.25, 1.0, -0.5, 0.25, 0.0, -0.75, -1.0, 0.75, 0.0, 0.5, -0.75, -0.25, ]);
    device10.pushErrorScope("internal");
    const array6 = new Float32Array([0.75, -0.25, -1.0, -0.75, -1.0, -1.0, 0.25, 0.5, 0.75, 1.0, 0.75, -1.0, 0.5, -0.25, 0.5, 1.0, 0.0, -0.25, 0.0, -0.75, -0.25, 0.5, 1.0, -0.75, 1.0, 0.5, -0.75, -0.5, 0.5, 0.75, -0.25, -0.5, 0.75, -0.25, 0.5, 0.25, -0.25, 1.0, 0.25, -0.25, -1.0, -0.5, -0.5, -1.0, -0.5, 0.0, -0.75, 0.5, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.75, 0.75, -0.75, -0.5, 0.75, 0.75, -0.5, -0.5, 0.5, -0.5, -0.25, -1.0, 1.0, -0.5, -1.0, -0.75, 0.75, 0.75, -0.5, 0.25, -0.75, -0.25, 0.0, -0.75, 0.5, 0.75, 0.5, -1.0, 0.75, -1.0, 0.5, 0.25, -0.75, -0.75, -0.75, 0.5, -0.75, -0.5, -1.0, 1.0, 0.25, ]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const command_buffer100 = command_encoder100.finish();
    const array7 = new Float32Array([-0.75, 0.5, 0.5, -1.0, -0.75, -1.0, -1.0, -0.5, -1.0, 0.0, -0.25, 0.0, 1.0, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, -1.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.0, -1.0, -0.5, -0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, -0.75, -0.25, 0.5, -1.0, -1.0, 1.0, 0.75, 0.5, -1.0, 0.5, 0.75, 0.25, 0.5, -1.0, -0.75, 0.0, 0.5, 0.25, -0.75, 1.0, -0.75, -0.25, 0.0, -0.5, -0.5, -1.0, -0.75, 0.75, 0.25, -0.75, 0.25, 0.5, -1.0, -0.25, 0.75, -0.25, 1.0, -0.25, -0.5, -0.5, 0.5, 0.75, 0.5, 0.5, 0.0, 0.0, -0.25, -1.0, -0.25, -0.25, -0.5, -0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -0.75, 0.5, 1.0, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.submit([command_buffer100, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array8 = new Float32Array([-0.5, -0.5, 0.0, 0.75, 1.0, 0.0, 0.0, 0.25, -0.25, 1.0, -0.25, -1.0, -1.0, -0.25, 0.75, 0.5, 0.0, 0.0, -1.0, -0.25, 0.5, 0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -0.25, 0.5, 0.25, 0.75, 0.5, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, -0.75, 0.75, 0.5, 0.5, -0.25, -1.0, 0.5, -0.25, 0.25, 1.0, 0.0, 1.0, 1.0, -0.75, 0.0, -0.75, 1.0, -1.0, -0.25, 0.5, -0.5, -0.75, -0.25, 1.0, 1.0, 0.75, -0.5, -0.75, 0.25, 0.5, 1.0, -0.75, -0.5, 1.0, 1.0, -1.0, -1.0, 0.75, -0.25, -0.5, -0.25, 0.75, 0.25, -0.25, 0.25, -0.5, 0.75, 0.25, -1.0, 0.0, -0.25, -0.5, -0.5, 1.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.75, -0.5, 0.25, ]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    query100.destroy()
    query100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    query100.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("internal");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture100.destroy();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.setPipeline(render_pipeline401);
    query401.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder401.popDebugGroup();
    query400.destroy()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query402.destroy()
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query401.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
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
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    
    buffer401.destroy()
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    render_pass_encoder1010.executeBundles([])
    texture400.destroy();
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
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1010.popDebugGroup();
    device50.destroy();
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1010.setStencilReference(1);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    query401.destroy()
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer403.destroy()
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    buffer402.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture101.destroy();
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
    render_bundle_encoder401.popDebugGroup();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query100.destroy()
    render_pass_encoder1010.executeBundles([])
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([-0.25, -0.5, 0.75, -0.75, 0.5, -0.5, -0.5, 0.25, 1.0, -0.5, -0.5, -0.25, -0.75, -0.5, 0.5, -0.75, 0.0, 0.25, -0.25, 0.0, 0.25, -0.5, 1.0, -0.25, 0.5, 0.0, -1.0, -0.25, 0.25, -1.0, -0.25, -0.75, -0.75, -0.75, -0.75, 0.25, -0.25, 0.0, -0.25, 0.75, 0.25, 1.0, -0.5, 0.75, -1.0, -0.75, 0.75, -0.5, 0.25, -0.75, -1.0, -0.75, 0.25, -0.25, -0.25, 0.5, -0.75, -0.25, -1.0, 0.75, -0.25, 0.75, 0.25, 0.0, -0.5, 1.0, -1.0, 0.75, 0.0, -0.75, -0.25, 1.0, -0.25, 0.0, -0.5, -0.5, -1.0, -0.25, 1.0, 1.0, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, -0.25, 0.25, -0.25, 0.25, -0.5, 0.5, 1.0, 0.25, -1.0, 0.5, 0.5, 0.75, -0.5, -0.25, ]);
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    query400.destroy()
    
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1083 = device10.createComputePipeline({
        label: "compute_pipeline1083",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1084 = device10.createComputePipeline({
        label: "compute_pipeline1084",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const compute_pipeline1085 = device10.createComputePipeline({
        label: "compute_pipeline1085",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const compute_pipeline1086 = device10.createComputePipeline({
        label: "compute_pipeline1086",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1087 = device10.createComputePipeline({
        label: "compute_pipeline1087",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    const compute_pipeline1088 = device10.createComputePipeline({
        label: "compute_pipeline1088",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query404.destroy()
    const compute_pipeline1089 = device10.createComputePipeline({
        label: "compute_pipeline1089",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline1090 = device10.createComputePipeline({
        label: "compute_pipeline1090",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1091 = device10.createComputePipeline({
        label: "compute_pipeline1091",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1092 = device10.createComputePipeline({
        label: "compute_pipeline1092",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1093 = device10.createComputePipeline({
        label: "compute_pipeline1093",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1094 = device10.createComputePipeline({
        label: "compute_pipeline1094",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1095 = device10.createComputePipeline({
        label: "compute_pipeline1095",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline1096 = device10.createComputePipeline({
        label: "compute_pipeline1096",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1097 = device10.createComputePipeline({
        label: "compute_pipeline1097",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
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
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1098 = device10.createComputePipeline({
        label: "compute_pipeline1098",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1099 = device10.createComputePipeline({
        label: "compute_pipeline1099",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const compute_pipeline10100 = device10.createComputePipeline({
        label: "compute_pipeline10100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10101 = device10.createComputePipeline({
        label: "compute_pipeline10101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer405.destroy()
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline10102 = device10.createComputePipeline({
        label: "compute_pipeline10102",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10103 = device10.createComputePipeline({
        label: "compute_pipeline10103",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline10104 = device10.createComputePipeline({
        label: "compute_pipeline10104",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline10105 = device10.createComputePipeline({
        label: "compute_pipeline10105",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10106 = device10.createComputePipeline({
        label: "compute_pipeline10106",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const compute_pipeline10107 = device10.createComputePipeline({
        label: "compute_pipeline10107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10108 = device10.createComputePipeline({
        label: "compute_pipeline10108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10109 = device10.createComputePipeline({
        label: "compute_pipeline10109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10110 = device10.createComputePipeline({
        label: "compute_pipeline10110",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10111 = device10.createComputePipeline({
        label: "compute_pipeline10111",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10112 = device10.createComputePipeline({
        label: "compute_pipeline10112",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10113 = device10.createComputePipeline({
        label: "compute_pipeline10113",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline10114 = device10.createComputePipeline({
        label: "compute_pipeline10114",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline10115 = device10.createComputePipeline({
        label: "compute_pipeline10115",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer102.destroy()
    
    const compute_pipeline10116 = device10.createComputePipeline({
        label: "compute_pipeline10116",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10117 = device10.createComputePipeline({
        label: "compute_pipeline10117",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10118 = device10.createComputePipeline({
        label: "compute_pipeline10118",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    
    const compute_pipeline10119 = device10.createComputePipeline({
        label: "compute_pipeline10119",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline10120 = device10.createComputePipeline({
        label: "compute_pipeline10120",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline10121 = device10.createComputePipeline({
        label: "compute_pipeline10121",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10122 = device10.createComputePipeline({
        label: "compute_pipeline10122",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer407, 0, array1, 0, array1.length);
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pipeline10123 = device10.createComputePipeline({
        label: "compute_pipeline10123",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline10124 = device10.createComputePipeline({
        label: "compute_pipeline10124",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    device40.queue.writeBuffer(buffer407, 0, array8, 0, array8.length);
    const compute_pipeline10125 = device10.createComputePipeline({
        label: "compute_pipeline10125",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline10126 = device10.createComputePipeline({
        label: "compute_pipeline10126",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline10127 = device10.createComputePipeline({
        label: "compute_pipeline10127",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline10128 = device10.createComputePipeline({
        label: "compute_pipeline10128",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pipeline10129 = device10.createComputePipeline({
        label: "compute_pipeline10129",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10130 = device10.createComputePipeline({
        label: "compute_pipeline10130",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline10131 = device10.createComputePipeline({
        label: "compute_pipeline10131",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline10132 = device10.createComputePipeline({
        label: "compute_pipeline10132",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10133 = device10.createComputePipeline({
        label: "compute_pipeline10133",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer407, 0, array4, 0, array4.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const compute_pipeline10134 = device10.createComputePipeline({
        label: "compute_pipeline10134",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer407.destroy()
    const compute_pipeline10135 = device10.createComputePipeline({
        label: "compute_pipeline10135",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline10136 = device10.createComputePipeline({
        label: "compute_pipeline10136",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const compute_pipeline10137 = device10.createComputePipeline({
        label: "compute_pipeline10137",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10138 = device10.createComputePipeline({
        label: "compute_pipeline10138",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    const compute_pipeline10139 = device10.createComputePipeline({
        label: "compute_pipeline10139",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10140 = device10.createComputePipeline({
        label: "compute_pipeline10140",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    buffer100.destroy()
    const compute_pipeline10141 = device10.createComputePipeline({
        label: "compute_pipeline10141",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10142 = device10.createComputePipeline({
        label: "compute_pipeline10142",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline10143 = device10.createComputePipeline({
        label: "compute_pipeline10143",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10144 = device10.createComputePipeline({
        label: "compute_pipeline10144",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline10145 = device10.createComputePipeline({
        label: "compute_pipeline10145",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline10146 = device10.createComputePipeline({
        label: "compute_pipeline10146",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline10147 = device10.createComputePipeline({
        label: "compute_pipeline10147",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10148 = device10.createComputePipeline({
        label: "compute_pipeline10148",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline10149 = device10.createComputePipeline({
        label: "compute_pipeline10149",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10150 = device10.createComputePipeline({
        label: "compute_pipeline10150",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10151 = device10.createComputePipeline({
        label: "compute_pipeline10151",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer406.destroy()
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline10152 = device10.createComputePipeline({
        label: "compute_pipeline10152",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10153 = device10.createComputePipeline({
        label: "compute_pipeline10153",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pipeline10154 = device10.createComputePipeline({
        label: "compute_pipeline10154",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10155 = device10.createComputePipeline({
        label: "compute_pipeline10155",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline10156 = device10.createComputePipeline({
        label: "compute_pipeline10156",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline10157 = device10.createComputePipeline({
        label: "compute_pipeline10157",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10158 = device10.createComputePipeline({
        label: "compute_pipeline10158",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer404.destroy()
    
    const compute_pipeline10159 = device10.createComputePipeline({
        label: "compute_pipeline10159",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    query403.destroy()
    const compute_pipeline10160 = device10.createComputePipeline({
        label: "compute_pipeline10160",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline10161 = device10.createComputePipeline({
        label: "compute_pipeline10161",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline10162 = device10.createComputePipeline({
        label: "compute_pipeline10162",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10163 = device10.createComputePipeline({
        label: "compute_pipeline10163",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline10164 = device10.createComputePipeline({
        label: "compute_pipeline10164",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10165 = device10.createComputePipeline({
        label: "compute_pipeline10165",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
}