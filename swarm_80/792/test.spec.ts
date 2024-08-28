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
    const array0 = new Float32Array([-1.0, -1.0, 0.5, 1.0, -0.25, 0.5, -1.0, -0.25, -0.75, -0.75, 1.0, 0.75, -0.5, -0.75, 0.0, 0.25, 0.25, 0.75, -0.75, 1.0, 0.25, 1.0, 0.25, -0.25, -0.75, -0.5, -0.25, -0.5, -1.0, 0.0, 1.0, 0.0, 0.75, -0.75, 0.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.25, 0.5, 1.0, 1.0, -0.5, 1.0, 0.25, 0.5, -0.25, 0.0, 0.25, -1.0, -0.25, 0.25, 0.75, -1.0, 0.5, 0.25, -0.75, -1.0, 0.5, -1.0, 1.0, 1.0, 0.0, -1.0, -0.25, 0.75, 1.0, 0.25, -0.75, 0.75, -1.0, -0.75, -0.25, -0.5, 0.5, -0.5, 1.0, -0.5, 0.5, -0.5, -0.25, 0.75, 0.5, 1.0, -0.25, 1.0, 1.0, -0.75, -0.5, -1.0, 0.0, -0.75, 0.75, -0.5, 0.25, 0.5, -0.75, -1.0, ]);
    
    const array1 = new Float32Array([0.75, -0.5, 0.25, -0.5, 0.0, 0.5, 0.25, -0.5, -0.25, 0.75, -0.25, 1.0, 0.25, -0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 1.0, 0.75, 0.75, -1.0, 0.0, -1.0, -1.0, 1.0, 0.0, -1.0, -1.0, 0.0, 1.0, 0.25, -0.25, 0.5, 0.75, 0.25, -0.25, 0.5, 0.0, 0.0, -0.25, 0.25, 0.0, -0.5, -0.75, 0.5, 0.25, -0.75, 1.0, 0.5, 0.0, 1.0, 0.5, 1.0, 0.25, 0.0, 0.5, 1.0, -0.5, 0.25, 0.5, -0.75, -0.5, 0.25, -0.25, -0.75, -0.75, -0.75, -0.25, -0.5, -1.0, -1.0, -1.0, -0.5, 0.75, 0.5, 0.5, 0.5, -0.5, 0.0, 0.5, 1.0, -0.25, 0.5, 0.75, 1.0, 1.0, 0.5, 1.0, 0.5, 0.25, -1.0, -1.0, 0.5, 1.0, 0.5, 0.5, -0.5, 0.5, ]);
    
    
    const array2 = new Float32Array([0.25, 0.0, 0.25, 0.75, -0.5, 1.0, 0.75, 0.25, -0.25, 1.0, -0.25, 0.5, -0.25, -1.0, 0.75, 0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -0.25, -0.75, 0.25, 0.25, -0.25, -1.0, -0.75, -0.5, 1.0, -0.25, 0.5, -0.5, -0.5, 0.25, 0.0, -0.75, -0.25, 0.25, -0.25, -0.5, 0.25, -1.0, -0.5, 0.75, -1.0, -1.0, 0.25, 1.0, 0.75, 0.25, 0.0, 0.5, -0.5, 0.0, 1.0, 0.75, 0.25, 0.25, -1.0, 0.0, 1.0, 0.0, 0.75, -0.5, 0.75, -0.5, 0.0, -0.25, -0.5, 1.0, 0.0, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, -1.0, -0.25, -0.5, 0.75, 0.25, -0.25, 1.0, 0.5, 0.25, -0.5, 0.5, -0.25, -0.75, -0.5, 0.0, 0.0, -1.0, 0.0, 0.5, 0.0, 0.25, 0.0, ]);
    
    
    
    
    
    
    const array3 = new Float32Array([1.0, -0.5, -0.75, 0.0, -0.25, -1.0, 0.25, -1.0, -1.0, -0.5, 0.5, -0.5, -0.75, -1.0, 0.5, 1.0, -0.25, -1.0, -0.5, -0.75, -1.0, -0.5, 0.0, 0.75, 0.75, 1.0, 0.0, -1.0, 0.5, -1.0, -0.25, -0.5, -0.25, 0.25, 0.25, 0.75, -1.0, -0.75, -0.5, 1.0, -0.25, -0.25, -0.5, -0.25, 0.25, -0.25, 0.0, 0.25, 0.75, -0.5, 0.5, 0.75, -0.75, 0.25, -0.5, -1.0, -0.75, 0.5, 0.5, 0.5, -1.0, -0.25, 0.0, -0.75, -0.5, 0.25, 0.5, 0.75, 0.0, -0.5, 0.5, 0.25, -1.0, 1.0, 0.0, -0.75, -0.75, 0.75, 0.0, 1.0, -0.5, -0.25, 1.0, 0.0, -0.75, -0.25, 0.5, -0.25, -1.0, -0.75, 1.0, -0.25, -1.0, -0.5, 0.75, -0.25, 0.0, -0.5, -1.0, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const command_buffer002 = command_encoder002.finish();
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
    const array4 = new Float32Array([-1.0, -0.5, -1.0, 0.25, 1.0, 0.75, 1.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.75, -1.0, 0.75, -0.5, 0.0, 0.5, -0.25, -0.75, -0.5, 1.0, -0.75, 0.75, 0.25, 1.0, 0.75, 0.0, 0.75, -1.0, -1.0, 0.0, -0.75, 0.0, 0.5, 0.75, 0.25, 1.0, -0.5, 1.0, 0.0, 0.25, 1.0, -1.0, -1.0, -0.25, -1.0, -0.75, 0.5, 0.25, -0.75, 1.0, -1.0, -0.5, -0.75, -0.5, -0.75, -0.25, 1.0, -0.5, -0.75, -0.5, 0.75, -0.5, -0.75, 0.0, 0.25, 0.5, 0.5, 0.25, -0.5, 1.0, 0.0, 0.75, 0.25, 0.0, 1.0, -1.0, -0.5, -1.0, -0.25, 0.25, -0.75, -0.75, -0.75, -0.25, 0.75, 0.75, 0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.75, -0.75, -0.5, -0.25, 0.25, 1.0, ]);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array5 = new Float32Array([0.5, 1.0, -0.75, 0.5, 0.75, 0.5, -1.0, 0.0, 1.0, 0.25, 1.0, -0.75, -1.0, 0.5, 0.5, -0.25, -0.5, 1.0, 0.75, 0.75, -0.75, 1.0, 0.75, -0.75, 1.0, -1.0, -1.0, 0.75, -0.25, 0.0, 0.75, 0.0, 0.75, -1.0, 0.75, 0.75, 0.75, -0.5, -0.25, -0.25, -0.25, 0.0, 0.25, 0.25, -0.25, -0.75, 0.5, 0.0, 0.25, 0.5, -0.25, -0.25, 0.0, -0.25, -0.75, -0.5, -1.0, -0.5, 1.0, -0.25, 0.25, -0.25, 0.5, -0.25, 0.0, 0.75, -1.0, 0.25, -0.25, 0.0, 1.0, 0.25, 0.75, 0.75, 0.75, 0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 1.0, -0.25, 0.25, 0.25, 0.75, 0.25, -0.25, 0.0, -1.0, -0.75, -0.25, -0.75, 0.5, 1.0, -0.25, 0.75, 0.0, 0.25, 1.0, ]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    device00.pushErrorScope("validation");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query000.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array6 = new Float32Array([-0.75, 0.5, 0.0, 0.75, -0.5, -0.75, -0.75, 1.0, -0.25, 0.0, 1.0, -1.0, -0.75, 1.0, 0.75, -1.0, 0.25, -0.5, 0.25, 1.0, 1.0, 0.0, 0.0, -0.75, 0.25, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, -0.75, 0.5, 0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.5, 1.0, -0.25, 0.0, -1.0, -1.0, 0.0, 0.25, -0.5, -1.0, 0.25, 0.25, 1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 1.0, 1.0, 1.0, -0.25, -0.5, 0.5, 0.5, -1.0, 0.25, -0.25, 1.0, 0.5, 0.25, 0.25, 0.25, 0.5, -0.25, 0.0, 1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 0.25, -1.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.0, -1.0, -0.75, 0.5, 0.75, -0.75, 0.5, 0.5, 1.0, 0.25, -1.0, -0.75, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0040.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.25, -0.75, -0.5, 0.25, -0.5, 0.25, 0.75, -0.75, 0.25, -1.0, 0.75, 0.75, -0.5, -1.0, 0.25, -0.75, 0.75, 0.5, 0.0, -1.0, -1.0, 1.0, -0.75, 0.0, -1.0, -0.75, 0.25, 0.25, -0.5, -1.0, 1.0, 0.25, -0.75, -0.5, 1.0, -1.0, 0.0, 0.5, 0.75, -0.5, 0.5, 0.0, 0.0, 0.0, -0.25, 0.5, 1.0, -0.75, 0.25, 0.75, 0.5, 0.75, -0.25, -0.75, 1.0, -0.5, 0.25, 1.0, 0.25, 0.5, 0.25, 0.25, -0.5, -0.25, 0.75, -0.5, -0.25, -0.25, -0.25, 0.25, -0.75, -0.75, -1.0, 0.0, 0.25, 0.5, -0.5, 1.0, 0.0, -0.25, 0.75, -0.5, 0.75, -0.75, 0.75, 1.0, 0.0, 0.75, -0.5, 0.25, 0.0, 0.5, 0.5, -1.0, -0.75, -0.25, 0.25, 0.75, -0.25, 0.75, ]);
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    render_bundle_encoder000.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    command_encoder003.popDebugGroup()
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer003 = command_encoder003.finish();
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0010.popDebugGroup()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0060.setPipeline(compute_pipeline003);
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, 0.75, 0.75, 1.0, -0.5, -0.75, 0.75, 0.75, 0.25, -0.25, 0.75, 0.0, -1.0, 0.5, 0.75, 1.0, -1.0, -0.75, -0.25, -0.25, -0.5, 0.75, -0.75, 0.0, -1.0, 0.5, -0.75, -0.75, 0.75, 0.75, -0.75, 0.25, 0.25, -0.25, 0.75, 1.0, -0.25, -0.75, -1.0, 0.5, 0.25, -0.25, 0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.25, 0.5, 0.0, -1.0, 0.5, 0.5, 0.75, 0.5, -1.0, 0.0, -0.75, 0.25, 0.25, 1.0, -0.75, -0.25, 0.5, -0.5, -0.25, -0.25, 0.25, 0.5, 0.25, 1.0, -0.75, 0.5, -0.25, -0.25, -0.25, 0.0, -0.25, 0.5, -0.5, 0.5, -0.25, 0.0, -0.25, 0.25, 0.25, 0.5, 0.0, 1.0, 0.75, -1.0, -0.75, 1.0, -0.25, -0.5, ]);
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const array9 = new Float32Array([0.5, 1.0, 0.75, -0.5, 0.25, 1.0, 0.0, 0.75, -0.5, 1.0, 0.5, 1.0, -0.75, -1.0, 0.25, 0.75, -1.0, -0.25, 0.0, -1.0, 0.0, 0.0, 1.0, 0.5, 1.0, -0.5, -0.25, 1.0, 0.75, -0.25, -0.5, 0.5, -0.75, -0.75, -0.5, -0.75, 0.0, -0.25, -1.0, -0.25, -0.25, 0.25, -0.5, 0.25, -0.25, -0.5, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, -0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.5, 0.5, 0.25, -0.75, 0.75, -0.5, 0.5, 0.75, 0.25, 0.0, -0.75, -0.25, 0.0, 0.5, 0.25, -0.75, -1.0, 0.25, -1.0, -1.0, -0.5, -1.0, 0.75, -0.25, 0.0, 0.75, 0.5, 0.25, 0.75, 0.25, 0.5, 0.25, 0.0, 0.0, 1.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.5, 0.75, ]);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group001);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0050.setPipeline(compute_pipeline000);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer005.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0050.popDebugGroup()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    buffer006.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer009, 0);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0060.popDebugGroup()
    query000.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    
    const command_buffer008 = command_encoder008.finish();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer003.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    buffer009.destroy()
    const array10 = new Float32Array([0.5, -0.5, 0.75, 0.75, -0.25, -0.75, -1.0, -0.25, -0.75, 0.75, 0.25, -0.75, 0.5, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, 0.25, 1.0, 0.25, -0.25, -0.25, -0.25, -0.25, 0.5, -1.0, 1.0, -1.0, 0.0, -0.5, 1.0, -0.5, 0.5, -0.75, -0.75, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, 1.0, -0.25, -0.5, 0.0, -0.25, -0.25, 0.0, 0.5, -1.0, 0.75, -0.75, 0.0, -1.0, -0.5, -0.75, -0.25, 1.0, -1.0, 0.75, -0.25, -0.75, -1.0, -0.5, 0.5, -0.5, 0.5, -0.5, 0.25, 1.0, -1.0, 0.5, -0.75, -1.0, -0.5, -0.75, -1.0, -1.0, -0.25, -1.0, 0.25, -0.5, -1.0, -0.75, -0.75, 0.25, -0.5, 0.5, 0.75, 1.0, 0.0, 0.75, 0.75, 1.0, 0.25, -1.0, -1.0, 0.75, ]);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query000.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer0010, 0, array7, 0, array7.length);
    
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0011, 0);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    device40.destroy();
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0012, 0);
    command_encoder007.pushDebugGroup("mygroupmarker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0010, 0, array10, 0, array10.length);
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    compute_pass_encoder0070.insertDebugMarker("marker")
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0012, 0, array7, 0, array7.length);
    buffer007.destroy()
    compute_pass_encoder0040.popDebugGroup()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder0070.setPipeline(compute_pipeline000);
    device00.queue.writeBuffer(buffer0012, 0, array9, 0, array9.length);
    query200.destroy()
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder009.clearBuffer(buffer0011);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    command_encoder009.clearBuffer(buffer0011);
    device00.queue.writeBuffer(buffer0012, 0, array10, 0, array10.length);
    compute_pass_encoder0060.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device00.queue.submit([command_buffer008, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array11 = new Float32Array([0.75, -0.25, -1.0, 0.0, 1.0, -1.0, -1.0, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, 0.75, 0.0, -0.75, -0.75, 0.25, 0.5, -0.25, -0.25, -0.75, -0.5, -0.5, -0.75, -0.75, -1.0, -0.5, 0.0, -0.25, 0.0, -1.0, 1.0, -0.25, 0.25, -1.0, 0.25, -0.5, -0.5, 0.0, -0.25, 0.5, -0.25, 0.25, -1.0, -0.25, 0.5, 0.5, 0.5, -0.75, 0.25, 0.0, 0.25, 0.0, -0.25, 0.5, -0.5, 0.75, -0.75, -0.25, 0.75, -1.0, 0.5, 0.0, 0.75, 0.75, 0.5, -0.5, 0.0, -1.0, -1.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.5, -0.25, -0.75, 0.75, -0.75, 0.25, 1.0, -0.25, -1.0, 0.0, 0.75, -0.25, 1.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.0, 0.75, 0.5, 0.75, -0.5, -0.75, ]);
    device10.pushErrorScope("validation");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder009.clearBuffer(buffer0013);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device00.queue.submit([command_buffer003, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0010, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer0013, 0, array8, 0, array8.length);
    
    device00.queue.writeBuffer(buffer0013, 0, array11, 0, array11.length);
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0010, 0, array5, 0, array5.length);
    buffer004.destroy()
    
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0011, 0, array8, 0, array8.length);
    
    device00.queue.writeBuffer(buffer0013, 0, array8, 0, array8.length);
    command_encoder009.clearBuffer(buffer0010);
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer0013, 0, array11, 0, array11.length);
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
    query200.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer0012, 0, array9, 0, array9.length);
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const array12 = new Float32Array([0.25, 0.0, 1.0, 0.25, -1.0, -0.25, 1.0, 1.0, 0.0, -0.25, -1.0, -0.5, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, -0.25, -0.5, 1.0, 0.0, -1.0, 0.75, 0.0, 0.5, 0.5, 0.75, 0.25, -0.25, -1.0, -0.5, 0.5, -0.75, -0.25, -1.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.0, 0.25, 0.75, -0.25, 0.75, 0.25, -0.75, 0.5, 0.5, -0.25, -0.25, 0.5, -1.0, -1.0, -0.25, -0.5, -0.25, 0.75, -0.25, 1.0, 0.5, -0.25, -0.25, -0.75, 1.0, -0.5, -0.75, -0.25, -1.0, -0.5, 1.0, -0.5, -0.75, -1.0, -0.75, 0.5, 0.0, 0.25, -1.0, 1.0, 0.75, -0.25, 1.0, 0.5, -0.25, 0.0, -0.25, 0.5, 1.0, 0.0, 0.75, -1.0, -1.0, 0.5, 1.0, -0.5, 0.25, 0.5, 0.0, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    command_encoder009.clearBuffer(buffer0013);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder009.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0011, 0, array9, 0, array9.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0013, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    query002.destroy()
    buffer0010.destroy()
    
    buffer002.destroy()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group003);
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device00.queue.submit([command_buffer002, ]);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device00.queue.writeBuffer(buffer0013, 0, array9, 0, array9.length);
    command_encoder009.popDebugGroup()
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group004);
    device00.queue.writeBuffer(buffer0013, 0, array8, 0, array8.length);
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const array13 = new Float32Array([0.0, 0.25, 0.5, -0.25, 0.5, 0.75, 0.25, -0.5, 0.0, 1.0, -0.75, 0.0, -1.0, 0.5, -0.25, -0.25, 0.75, 0.0, -0.25, 0.75, 1.0, 0.75, -0.75, -1.0, -0.25, 0.75, -0.75, 0.75, 0.75, 0.75, 1.0, -1.0, -0.5, 0.5, -0.5, 0.0, 0.25, 0.25, 0.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 0.0, 0.5, 0.75, 1.0, 1.0, 0.25, 0.75, -0.5, 1.0, 0.25, 1.0, 0.25, -0.75, 0.5, 0.0, 1.0, -0.25, 1.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.5, 0.75, 0.5, 0.5, 0.5, -1.0, 1.0, 0.25, -0.25, -0.25, -0.25, 1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 1.0, 0.0, 0.0, 1.0, 0.25, 0.75, -1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 1.0, 0.0, 0.5, ]);
    compute_pass_encoder0070.insertDebugMarker("marker")
    
    buffer0011.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array11, 0, array11.length);
    command_encoder009.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer0012, 0, array12, 0, array12.length);
    query001.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer0012, 0, array10, 0, array10.length);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    query100.destroy()
    
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    query001.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    command_encoder009.popDebugGroup()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    buffer0012.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0013, 0, array4, 0, array4.length);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0018, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0018, 0);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    buffer101.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0018, 0, array8, 0, array8.length);
    compute_pass_encoder0070.popDebugGroup()
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0000.end();
    buffer0019.destroy()
    
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    
    
    query002.destroy()
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    command_encoder009.clearBuffer(buffer0013);
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer0013, 0, array0, 0, array0.length);
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    compute_pass_encoder0001.setPipeline(compute_pipeline0025);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder0090.setPipeline(compute_pipeline0022);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder100.clearBuffer(buffer102);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0018, 0, array3, 0, array3.length);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    const array14 = new Float32Array([-0.75, 0.0, 0.5, 0.25, 1.0, -0.25, -0.75, 0.25, -0.75, 0.75, -0.75, 0.25, -0.25, -0.5, -0.25, -0.75, -0.25, -0.75, -0.25, 0.5, -0.5, -0.75, 1.0, -0.75, 0.25, -0.25, -0.25, -0.5, -1.0, 0.0, 0.5, 1.0, -0.5, -1.0, 0.25, 0.75, 0.0, 0.75, -0.25, 0.75, 0.0, -0.5, 0.0, 0.25, 1.0, 0.75, 0.0, -1.0, 0.5, -0.25, -1.0, 0.25, 1.0, -0.25, -0.25, -0.5, 0.75, 0.75, -0.5, -0.5, 0.75, 0.75, 1.0, -0.75, -0.75, 0.75, 0.25, 0.75, -0.5, 0.25, -1.0, 1.0, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -0.5, 0.0, 0.75, 0.75, -1.0, 0.25, -1.0, 0.0, 1.0, 0.5, -0.25, -0.5, 1.0, -1.0, 0.5, 0.5, -0.75, 0.75, ]);
    
    device10.queue.writeBuffer(buffer102, 0, array14, 0, array14.length);
    
    buffer0017.destroy()
    
    
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query001.destroy()
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder0001.pushDebugGroup("group_marker")
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
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query001.destroy()
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0018, 0, array10, 0, array10.length);
    
    
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    device00.queue.writeBuffer(buffer0018, 0, array1, 0, array1.length);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0001.popDebugGroup()
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0018, 0, array12, 0, array12.length);
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.queue.writeBuffer(buffer0018, 0, array14, 0, array14.length);
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer203 = command_encoder203.finish();
    const array15 = new Float32Array([0.5, -0.25, -0.5, 0.0, -1.0, 0.75, -0.5, 0.25, 1.0, 0.5, -0.25, 0.75, -0.5, 0.0, 0.5, 0.0, 0.25, -0.25, 0.0, -0.75, 0.25, -0.75, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, -0.75, 0.25, 0.25, -0.25, -1.0, 0.75, 0.25, 0.0, 0.75, -0.25, -0.25, 0.75, -0.75, -0.75, -0.5, 1.0, -0.75, -0.5, 1.0, -0.5, -0.25, 0.25, 1.0, 0.25, 0.5, -0.5, -1.0, 0.75, -0.25, 0.0, -0.75, -1.0, 1.0, -0.75, -1.0, 0.0, -0.5, -1.0, 0.75, 0.75, 0.25, 0.75, -0.5, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, 1.0, 0.0, 0.25, -1.0, -0.5, 0.25, 0.75, 0.5, 0.0, 0.25, -0.25, 0.5, -0.75, 0.5, -0.75, -1.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.0, 0.5, ]);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0018, 0, array15, 0, array15.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    compute_pass_encoder0060.popDebugGroup()
    
    query201.destroy()
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
    device00.queue.writeBuffer(buffer0013, 0, array1, 0, array1.length);
    query001.destroy()
    
    
    device00.queue.writeBuffer(buffer0013, 0, array7, 0, array7.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0020, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0020, 0);
    command_encoder202.popDebugGroup()
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline0022.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0090.setBindGroup(0, bind_group005);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder0060.end();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0040.popDebugGroup()
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline0025.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group006);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0025, 0);
    compute_pass_encoder0070.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder0040.end();
    compute_pass_encoder0050.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    const uint32_0090 = new Uint32Array(3);

    uint32_0090[0] = 100;
    uint32_0090[1] = 1;
    uint32_0090[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0090, 0, uint32_0090.length);

    compute_pass_encoder0090.dispatchWorkgroupsIndirect(buffer0026, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0010.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0090.end();
    const command_buffer009 = command_encoder009.finish();
    const command_buffer004 = command_encoder004.finish();
    const command_buffer005 = command_encoder005.finish();
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group007);
    device00.queue.submit([command_buffer006, ]);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0029, 0);
    compute_pass_encoder0070.end();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer004, command_buffer005, command_buffer009, ]);
    compute_pass_encoder0001.end();
    device20.queue.submit([command_buffer203, ]);
    command_encoder007.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    const command_buffer007 = command_encoder007.finish();
}