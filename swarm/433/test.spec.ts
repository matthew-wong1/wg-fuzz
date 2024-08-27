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
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    texture001.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array0 = new Float32Array([-0.25, 0.75, 0.5, -1.0, -1.0, 0.0, 0.0, -1.0, -0.5, -0.75, 0.0, -0.75, -0.75, -1.0, 0.25, 0.0, -0.25, 0.75, 1.0, 1.0, 1.0, 0.75, 0.75, 0.25, 1.0, 0.25, -0.75, -1.0, -0.75, 0.75, -0.25, -0.25, 1.0, 1.0, -0.25, -0.75, -0.25, -0.5, -1.0, 0.5, 0.75, 0.0, 0.5, -1.0, 0.0, -0.5, 0.25, 0.75, 1.0, -0.25, -0.5, 0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 0.0, -0.5, -0.5, -1.0, 0.25, -0.5, -0.25, -0.5, 0.0, -1.0, -1.0, -0.25, -0.5, 0.0, 0.25, 0.75, -0.25, 0.5, 0.5, 0.0, -0.25, 0.75, -0.25, -0.5, 0.0, 0.25, 0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 0.0, -0.75, 0.0, -0.25, 0.0, -1.0, 0.25, 0.75, -1.0, 0.0, 0.75, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer101.destroy()
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.pushErrorScope("internal");
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    texture100.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    buffer102.destroy()
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
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    
    device40.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1025 = texture102.createView({ label: "texture_view1025" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture102.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
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
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    const command_buffer202 = command_encoder202.finish();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
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
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    buffer103.destroy()
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder203.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    command_encoder203.insertDebugMarker("mymarker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1024,
            },
        ],
        occlusionQuerySet: query101
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array1 = new Float32Array([0.5, 1.0, -1.0, -0.5, -0.75, 0.5, 0.75, -1.0, 0.0, 0.75, -0.25, -0.25, 0.5, -0.75, -0.75, -1.0, 0.0, -1.0, 0.0, 0.0, 1.0, 0.0, 0.75, -0.5, 0.5, -0.5, -0.25, 0.0, 0.0, -0.25, 1.0, -0.5, 0.5, -0.25, 0.0, 0.75, 0.75, -0.5, -0.5, 0.25, 0.75, 0.75, 0.75, 0.25, -1.0, 1.0, -0.25, 0.0, 0.75, -0.5, -1.0, 0.0, -0.25, -0.5, -0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 0.0, -1.0, 0.5, 1.0, 0.0, -1.0, -1.0, -0.5, -1.0, -0.5, 0.0, -0.75, 0.25, 1.0, 0.25, 0.5, 1.0, -0.5, -0.5, -0.5, 0.5, 0.5, -1.0, 0.5, 0.5, 0.5, 0.25, -1.0, 0.75, 1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.0, 0.75, 0.0, -1.0, 0.25, ]);
    
    
    
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    query101.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query202.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.0, 0.75, -0.25, 1.0, 0.75, -1.0, 1.0, -0.25, -0.5, -0.5, 1.0, 1.0, 1.0, 0.5, -1.0, -0.25, 0.25, 0.5, 0.75, 0.75, 0.25, 1.0, -1.0, 0.5, -0.75, 0.0, 0.25, -0.5, 0.0, -1.0, 0.75, 0.75, -0.5, -1.0, 0.25, 1.0, 1.0, -0.5, 0.0, -0.75, 0.0, 1.0, -1.0, 1.0, -0.75, -0.25, -0.5, -0.25, -0.5, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, 0.5, -0.5, 0.25, 1.0, 0.75, 0.0, 0.75, 0.25, -0.25, -0.75, 0.0, 0.75, -1.0, -1.0, -1.0, -0.75, 0.5, 0.75, -0.5, -0.5, 0.5, 1.0, -0.5, 1.0, 0.5, 0.5, -0.25, 0.5, -0.5, 0.0, 1.0, 0.25, 0.75, 0.75, 0.0, -1.0, 1.0, -0.5, 0.75, 0.5, 0.0, 1.0, -0.5, 1.0, 0.75, ]);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    texture104.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    render_pass_encoder1000.setStencilReference(1);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    compute_pass_encoder2010.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    compute_pass_encoder2000.popDebugGroup()
    device20.pushErrorScope("validation");
    
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query102.destroy()
    const array3 = new Float32Array([-1.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.5, 0.0, 0.75, 0.75, -0.75, -1.0, -0.5, 0.75, -0.25, -0.75, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, -0.5, -1.0, 1.0, -0.25, 0.5, 0.0, -1.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.0, -0.5, 0.25, -0.25, -0.75, -0.5, 0.25, -0.75, 0.5, -1.0, -0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 0.0, -0.25, -0.5, 1.0, 0.5, -0.5, 0.5, 0.25, -1.0, -0.75, -0.75, 1.0, 0.5, -0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 0.5, -0.75, -0.75, 0.0, -0.75, -0.75, 0.25, 0.25, -0.75, -1.0, 0.75, 1.0, 0.0, -0.75, 0.5, 0.5, 0.25, 0.75, -0.25, 0.75, 0.25, -0.5, 0.25, -1.0, 1.0, -0.5, ]);
    query100.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder0020.popDebugGroup()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([1.0, -0.25, -0.75, 0.5, 1.0, 0.5, 0.5, 1.0, 1.0, -0.25, -0.75, 0.25, 0.5, -0.75, 0.75, 1.0, -0.25, 0.0, -1.0, -0.25, 0.25, -0.75, 1.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.5, -1.0, -0.75, 0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 0.0, -0.5, 0.5, 0.25, 0.25, 0.0, -1.0, 0.0, 0.75, -0.75, 0.0, -0.75, 0.25, -0.75, 1.0, -0.25, 0.75, 0.0, -0.75, -0.5, 0.25, 0.0, 0.5, 0.0, 1.0, -1.0, 0.75, -1.0, 0.25, -0.75, -1.0, -0.75, -0.5, -0.25, 1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, -0.25, -0.75, -0.75, 0.25, -1.0, -0.25, -0.75, -0.25, -1.0, -0.5, -1.0, 0.5, -0.25, -1.0, -0.25, -0.25, -0.25, -0.75, -0.5, 0.0, 0.75, ]);
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    query000.destroy()
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
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1010.setStencilReference(1);
    const array5 = new Float32Array([-0.25, 0.5, -0.5, 0.25, 0.0, -0.75, -0.75, 1.0, -0.5, 0.75, 0.75, 0.5, -0.25, 0.5, -1.0, -0.5, -0.5, -1.0, -0.75, -0.5, -0.75, 0.0, 0.75, -0.5, 0.25, -1.0, -0.25, 0.25, -1.0, 0.25, -0.25, 1.0, 0.75, 0.25, -0.5, 0.25, 0.5, -0.5, -0.25, 0.5, 0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, -0.25, 0.0, -0.75, 0.75, -1.0, -0.25, 0.5, 1.0, -0.25, -0.5, -1.0, 0.75, -0.25, -1.0, 1.0, 0.5, -1.0, -1.0, 0.5, -0.75, 1.0, 0.25, -0.75, 0.25, -0.5, -0.5, -0.75, -0.5, -0.75, 0.5, 0.25, 0.25, -0.25, -0.5, 0.75, -1.0, 0.75, -0.25, -0.75, 0.25, 0.5, 0.25, -1.0, 0.25, 0.5, -1.0, 0.5, -0.75, 0.25, -0.25, 1.0, 0.5, ]);
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder0040.popDebugGroup()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer203, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer203, 0);
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer001.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    
    buffer201.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const command_buffer300 = command_encoder300.finish();
    device30.pushErrorScope("out-of-memory");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setStencilReference(1);
    buffer202.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const array6 = new Float32Array([1.0, -0.5, -0.75, 0.0, -1.0, 0.0, 0.0, 0.0, -1.0, -0.5, 0.75, 0.75, 1.0, -0.25, 1.0, -0.75, -1.0, -1.0, 0.25, 0.25, 1.0, -0.75, -0.5, 0.75, -0.5, 0.25, -1.0, 0.5, 0.5, -1.0, 0.5, -0.75, -0.25, 1.0, 0.75, -0.75, -0.25, 0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -0.25, 0.75, 0.25, -0.75, -0.75, 1.0, 0.0, -0.75, 0.5, 0.75, 0.5, -0.5, 0.75, 0.75, -0.5, -0.25, 1.0, -1.0, -1.0, 0.5, 0.0, -1.0, 0.0, 0.75, 0.75, -0.75, -0.25, 0.25, -0.5, 1.0, 0.5, 0.0, 1.0, 0.25, -0.5, 0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.5, 0.75, 0.5, -0.5, -1.0, 0.0, -0.5, -0.75, 0.0, 1.0, 1.0, 1.0, -0.5, 1.0, 0.25, ]);
    render_bundle_encoder100.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    query201.destroy()
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.pushErrorScope("out-of-memory");
    
    
    query203.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    buffer002.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    
    buffer104.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    query204.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query102.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    render_pass_encoder1010.setStencilReference(1);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_pass_encoder1000.insertDebugMarker("marker");
    texture103.destroy();
    
    
    device00.pushErrorScope("validation");
    compute_pass_encoder2030.setPipeline(compute_pipeline205);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    
    texture005.destroy();
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture201.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array7 = new Float32Array([-0.5, 0.0, 0.0, 0.25, 1.0, 0.0, -0.25, 0.75, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, -1.0, -0.75, 0.75, -0.75, -1.0, 0.25, 0.0, 0.75, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -0.25, -0.25, -1.0, -0.25, -1.0, 0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -0.5, 1.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.5, 0.5, 0.5, -0.5, 0.25, 0.5, -0.25, -0.5, -0.5, -1.0, 0.75, 0.5, -0.75, -1.0, -0.75, -0.5, 0.75, 1.0, 0.0, 0.5, -1.0, -0.5, 0.5, 1.0, -0.75, 0.5, 0.75, -0.75, 0.75, -0.25, 0.0, 1.0, -0.75, 0.0, -0.5, 0.25, 0.75, -0.75, -0.5, -0.25, 0.0, -1.0, -1.0, -1.0, -0.5, 0.0, -1.0, 1.0, 0.75, -1.0, 0.25, ]);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    texture003.destroy();
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query201.destroy()
    query204.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer105.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    buffer100.destroy()
    query101.destroy()
    
    texture202.destroy();
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    command_encoder500.insertDebugMarker("mymarker");
    buffer301.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    buffer203.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    compute_pass_encoder2010.dispatchWorkgroups(100);
    texture105.destroy();
    device70.pushErrorScope("out-of-memory");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0050.setStencilReference(1);
    buffer205.destroy()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer500.destroy()
    
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query101.destroy()
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    query102.destroy()
    
    query002.destroy()
    
    render_bundle_encoder300.popDebugGroup();
    buffer003.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
    command_encoder302.insertDebugMarker("mymarker");
    buffer204.destroy()
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query205
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.popDebugGroup()
    texture200.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2060.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer000.destroy()
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const array8 = new Float32Array([0.5, 0.5, 0.0, 0.75, -1.0, 0.5, -0.75, 0.5, -1.0, 1.0, -0.5, -0.75, -0.25, 0.0, 0.75, -0.5, 0.5, 0.5, -0.75, 0.25, -0.75, 0.75, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 1.0, 0.0, -0.5, 0.5, -0.25, 0.0, 1.0, 0.0, 0.0, 0.5, 0.0, 1.0, 1.0, 1.0, 0.75, 0.25, 0.0, -0.25, -1.0, 0.0, 0.5, 1.0, -0.5, 1.0, 0.5, -0.5, -1.0, -0.75, -0.5, 0.75, -0.25, -0.5, -0.75, -1.0, 0.0, -0.25, -1.0, -1.0, -0.5, 0.75, 1.0, 1.0, -0.25, 0.75, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.0, 0.75, 0.75, 1.0, -0.25, 1.0, 0.0, -0.5, 0.5, -0.5, 0.0, -0.5, -0.25, 0.25, 0.5, -0.5, -0.5, -0.5, -0.5, 1.0, 0.5, 0.75, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    query100.destroy()
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    compute_pass_encoder0040.popDebugGroup()
    query103.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    render_pass_encoder0050.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    query100.destroy()
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder2060.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    
    compute_pass_encoder2030.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder0030.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2010, 0);
}