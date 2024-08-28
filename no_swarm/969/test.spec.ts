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
    
    
    const array0 = new Float32Array([-1.0, -1.0, 0.75, 0.0, -0.25, 0.0, -1.0, 0.75, -0.5, -0.75, -0.25, -0.25, -1.0, -0.5, 1.0, -0.5, -0.75, 0.5, -1.0, 0.0, -0.5, 0.0, -1.0, 0.25, 0.0, -1.0, 0.5, 0.25, 0.25, 0.25, 0.0, -0.25, 0.75, 1.0, -0.75, 0.75, 0.0, -0.5, -0.5, 0.25, 0.5, -0.75, 0.25, -0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.0, -0.25, 0.0, 0.25, 0.25, 0.25, -1.0, 1.0, 1.0, -0.75, -0.5, 0.5, 1.0, 0.75, -0.75, 1.0, -0.5, -1.0, 0.5, -0.25, -0.5, 0.0, -0.25, -0.25, -0.75, 0.0, -1.0, 1.0, -0.5, -0.75, 1.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.5, -1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.25, -0.75, 0.5, 1.0, 0.5, 0.75, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.75, 0.0, -0.5, -0.5, -0.25, 0.0, 0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -0.75, 0.25, -0.75, 1.0, -0.5, -0.75, 0.75, 0.75, -0.5, -0.5, 0.0, -1.0, -0.25, 0.25, -0.75, 1.0, -0.75, 0.25, 0.25, -0.25, -0.25, -0.5, -1.0, 1.0, 0.0, -0.5, -1.0, -0.5, -0.25, -0.5, -0.75, 0.75, -0.5, 0.5, -1.0, 0.25, 0.0, -0.25, 0.0, -1.0, 0.25, -1.0, 0.25, 1.0, -0.75, 0.25, 1.0, 0.75, -0.5, 0.75, -0.75, 0.5, 1.0, 0.0, 1.0, 0.75, -0.5, 1.0, 0.25, -0.5, -0.75, 0.0, 0.75, 0.5, -0.75, 1.0, -0.75, 0.75, 0.5, -1.0, 0.0, -0.75, 0.0, -0.75, 0.25, -1.0, 0.25, 0.25, -0.75, 0.75, 0.25, 0.0, 0.75, -1.0, 0.25, -0.25, 1.0, -1.0, ]);
    const array2 = new Float32Array([-1.0, 0.25, 0.75, 0.25, -0.75, -0.75, 0.5, -1.0, -0.75, 0.75, 1.0, -1.0, 1.0, 0.75, -0.25, 0.0, -0.75, 1.0, -0.75, 0.5, -1.0, 0.0, -0.75, -0.25, 0.5, -1.0, 0.5, 0.5, -0.25, -0.5, -0.5, -1.0, 0.5, -1.0, -0.5, 0.0, 0.0, -1.0, -0.75, 0.75, 0.25, -0.25, 1.0, 0.25, 0.75, 0.5, -0.5, 0.0, 1.0, 1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.5, 0.0, -0.75, -0.25, 0.0, 1.0, 1.0, -0.75, -0.5, -0.5, 0.25, 0.5, -1.0, -1.0, 0.75, -0.25, -1.0, 0.25, 1.0, -1.0, -0.5, 0.5, -0.5, -0.5, 0.75, 0.25, -0.5, -0.5, 0.5, -0.75, -0.5, 0.5, 0.5, -0.75, 1.0, 1.0, -0.5, -1.0, 0.25, 0.0, 0.5, 1.0, -0.75, -0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("validation");
    
    
    
    
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
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
    texture000.destroy();
    
    query001.destroy()
    
    
    query002.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.destroy();
    
    const array3 = new Float32Array([-0.25, 1.0, -0.75, -0.5, -0.25, -0.5, 0.75, -0.75, -1.0, -1.0, 0.0, -0.5, 0.75, 0.75, 0.0, -0.75, 0.5, 0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -0.25, 0.5, 1.0, -0.25, -0.25, -1.0, -0.75, 0.25, -1.0, 0.75, 0.75, 0.75, -0.25, -0.75, 1.0, -1.0, 0.75, 0.0, 0.0, 0.0, 0.0, 0.5, -0.25, 0.25, -0.5, 0.75, 1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.25, 0.0, -0.5, -0.75, 0.75, 1.0, 0.5, -0.5, -0.5, 0.25, 0.25, 0.25, 1.0, 1.0, 0.0, 0.5, 1.0, -1.0, 0.5, 1.0, 1.0, 1.0, 0.75, 0.0, 0.75, 1.0, -1.0, 1.0, 1.0, 1.0, 0.5, -1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.5, -0.75, -1.0, -1.0, 0.75, -0.25, 0.25, -0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("validation");
    const array4 = new Float32Array([0.75, 0.0, -0.25, -1.0, -0.25, -0.5, 0.5, -0.75, 0.25, -0.5, 0.75, 0.25, -0.75, -1.0, -0.75, 0.75, 0.25, -1.0, 0.25, -0.25, 1.0, -0.25, -0.5, -0.75, -0.5, 0.25, 0.25, -1.0, 0.25, 0.5, 1.0, -0.5, -1.0, -0.5, -1.0, 0.5, -0.5, 0.25, 0.5, -1.0, 1.0, -0.25, 0.75, 0.5, 0.0, 0.75, 0.75, 0.0, 0.5, 1.0, -1.0, 0.25, 0.75, -0.25, 0.0, -0.5, -1.0, 0.0, 0.5, -0.75, -0.25, 0.25, -1.0, 1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.5, 0.25, 0.5, -1.0, -0.5, 1.0, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, -1.0, -1.0, 0.75, -0.75, 0.5, 0.5, 0.25, 1.0, -0.75, 0.0, 0.5, 1.0, 0.25, 1.0, 0.5, 0.5, -0.25, -0.5, -0.25, ]);
    const array5 = new Float32Array([0.5, -1.0, -0.5, 1.0, 0.75, 0.75, 0.0, -0.5, -0.25, 1.0, -0.5, -0.75, 0.25, 0.75, 0.75, -0.75, 0.0, 0.0, 0.75, 1.0, 0.75, -1.0, 0.25, 1.0, 0.5, 1.0, 0.75, -0.25, -1.0, -0.25, 0.0, -0.25, -0.5, 0.0, 0.5, 0.5, 0.75, 1.0, -0.75, -0.75, 1.0, -1.0, -1.0, 0.25, 0.75, -1.0, 1.0, 1.0, -0.5, -1.0, -0.25, 0.5, -0.25, -0.5, 1.0, -0.75, 1.0, 0.5, 0.5, -0.75, 0.25, -0.75, 0.5, 1.0, -0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 1.0, -0.25, -0.5, -0.25, 0.75, 0.5, -0.25, 0.0, 1.0, 0.75, 0.0, -1.0, 0.0, -0.75, 0.25, -0.75, -0.5, 0.0, 0.0, 0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -0.75, 1.0, 1.0, -0.5, -0.5, ]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    const array6 = new Float32Array([0.25, -0.75, -0.25, 0.25, 0.5, -1.0, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, -0.5, -1.0, -0.5, 0.75, 0.75, -0.25, 0.5, 1.0, 0.5, -0.5, 0.5, -0.5, 0.75, 0.25, -0.75, 0.25, -0.25, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -0.25, 0.0, 0.5, 0.5, -0.25, 0.25, 0.75, -0.75, -0.5, 0.75, 1.0, -0.5, -0.25, -0.25, -1.0, 0.0, -1.0, 1.0, 0.75, -1.0, -1.0, 0.5, -1.0, -1.0, 0.25, 1.0, 0.25, -0.25, 0.0, -0.75, 0.25, -0.5, -1.0, -0.5, -0.5, -0.5, -0.5, -1.0, -0.5, 0.75, 0.75, -0.75, -0.5, -0.5, 1.0, 0.0, 0.25, -1.0, 0.0, -0.5, -0.25, 1.0, 0.25, -0.75, 1.0, 0.5, -0.5, 0.5, 1.0, 0.0, -0.25, 0.25, 0.25, -1.0, -0.5, ]);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    
    const array7 = new Float32Array([0.75, -0.5, 0.75, 0.75, -1.0, 0.0, -0.75, -0.5, -0.75, -1.0, 0.25, -1.0, -0.25, 0.0, -1.0, -0.25, -1.0, 0.5, -0.25, -0.5, -0.25, 1.0, 1.0, 0.25, 1.0, -1.0, 0.5, -0.25, 1.0, 0.0, 0.25, -1.0, -1.0, -1.0, -0.75, -1.0, -1.0, -1.0, -0.5, 0.25, -0.5, 0.5, 1.0, 0.25, 0.5, -0.25, -0.25, -0.25, 1.0, -0.5, -0.5, 0.75, 1.0, 1.0, 0.0, 0.25, 0.5, -0.75, 0.0, 0.5, 0.0, 0.0, 0.75, 0.25, 0.5, 0.0, -0.25, 0.5, -0.25, -1.0, 0.5, 0.25, -1.0, 0.5, 0.75, 1.0, -0.75, -1.0, -1.0, 0.25, -0.25, -0.75, -1.0, 0.25, -1.0, -1.0, 0.25, 0.25, -1.0, 0.0, -0.75, -0.25, 0.75, 0.75, 0.75, 0.0, 0.0, 0.0, 0.5, 1.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer100.destroy()
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    texture100.destroy();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("out-of-memory");
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_buffer103 = command_encoder103.finish();
    
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer105 = command_encoder105.finish();
    
    command_encoder104.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    texture200.destroy();
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer200.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer104, 0);
    command_encoder104.clearBuffer(buffer104);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    device30.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.pushErrorScope("internal");
    device20.destroy();
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    
    
    
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder106.clearBuffer(buffer104);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    texture101.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer103, ]);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    buffer103.destroy()
    command_encoder106.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    
    
    
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    command_encoder106.clearBuffer(buffer104);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder107.insertDebugMarker("mymarker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.popDebugGroup()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const command_buffer108 = command_encoder108.finish();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1011, 0);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query100.destroy()
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture103.destroy();
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    texture102.destroy();
    
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    buffer106.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    buffer102.destroy()
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer1011, 0, array7, 0, array7.length);
    
    buffer107.destroy()
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    buffer105.destroy()
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    buffer109.destroy()
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1060.setPipeline(compute_pipeline105);
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
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
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    compute_pass_encoder1060.popDebugGroup()
    compute_pass_encoder1060.insertDebugMarker("marker")
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1070.setStencilReference(1);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer1011, 0, array4, 0, array4.length);
    render_pass_encoder1070.executeBundles([])
    buffer1011.destroy()
    texture105.destroy();
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    buffer101.destroy()
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group103);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    render_pass_encoder1090.setStencilReference(1);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const render_pass_encoder10100 = command_encoder1010.beginRenderPass({
        label: "render_pass_encoder10100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query100
    });
    compute_pass_encoder1060.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    buffer1013.destroy()
    const array8 = new Float32Array([0.25, 0.5, 0.0, 0.5, -0.25, 0.5, -0.25, 0.25, -1.0, 0.5, -0.5, 0.0, -0.75, -0.75, 0.75, -0.25, -0.5, -0.75, 0.5, -1.0, 0.75, 0.25, 1.0, 1.0, 0.0, -0.25, 0.75, 0.5, 0.5, 0.25, 1.0, -0.25, -0.75, 0.25, -0.5, 0.5, 0.25, -1.0, 0.0, -0.25, 0.5, 0.0, -1.0, -0.25, 0.5, 0.25, 0.0, -1.0, -0.5, 0.5, 0.0, -0.75, -1.0, -0.5, 0.75, -0.5, 0.0, 0.5, -0.25, 0.0, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, -1.0, -1.0, -0.75, 0.25, 0.5, -0.25, -1.0, -0.75, -0.5, -0.5, -0.75, 0.75, 0.5, 0.25, -0.75, -0.25, 0.5, 0.75, 1.0, -1.0, -0.75, -0.25, 0.0, 0.5, 1.0, 1.0, -0.5, 0.25, -1.0, -1.0, 0.75, 0.5, -0.25, -1.0, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer1012.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
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
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder10100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer1016, 0, array6, 0, array6.length);
    const command_buffer1011 = command_encoder1011.finish();
    render_pass_encoder1070.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer1015.destroy()
    device10.queue.writeBuffer(buffer1016, 0, array5, 0, array5.length);
    render_pass_encoder1090.pushDebugGroup("group_marker");
    
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer1016, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer1016, 0, array7, 0, array7.length);
    compute_pass_encoder1060.insertDebugMarker("marker")
    texture104.destroy();
    buffer1016.destroy()
    render_pass_encoder1070.setStencilReference(1);
    render_pass_encoder1090.insertDebugMarker("marker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1070.insertDebugMarker("marker");
    
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1090.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query101.destroy()
    
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    texture106.destroy();
    render_pass_encoder10100.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1070.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1060.popDebugGroup()
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1070.insertDebugMarker("marker");
    render_pass_encoder1090.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query101.destroy()
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1070.executeBundles([])
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    
    query100.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([0.5, 0.25, -0.5, -0.25, -0.25, -0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 1.0, 0.0, -0.25, 1.0, -0.25, -0.5, 0.5, -0.75, -0.5, 0.5, -0.75, 0.75, 0.25, -0.25, 0.0, 0.0, 0.25, 1.0, 1.0, -1.0, 0.25, -0.5, -0.25, -0.75, 0.25, 0.75, 0.0, -0.5, 0.0, -0.75, -0.75, -1.0, 0.25, -0.5, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, 0.75, 0.75, -0.75, 1.0, -0.5, 0.25, 1.0, -0.75, -0.75, -1.0, -0.5, 0.75, -0.75, 0.0, -1.0, -0.5, 0.25, -0.25, 0.0, 0.5, 0.75, -1.0, -0.25, 0.5, 0.0, -0.75, -0.5, 0.0, 1.0, 0.5, -0.75, -0.25, 0.5, -1.0, -0.75, -0.25, -0.75, 1.0, -0.5, 1.0, 0.25, 0.0, 0.5, -0.75, 1.0, -0.5, 0.75, -0.5, 0.0, ]);
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    render_pass_encoder1090.setStencilReference(1);
    render_pass_encoder10100.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
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
    query102.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([0.25, -0.5, 0.5, -0.75, -0.25, 0.75, -0.25, 1.0, -0.75, 0.5, 0.0, -0.25, -0.75, -0.75, 0.0, -0.5, 1.0, -0.25, -1.0, 0.25, -0.5, 0.0, 0.0, -0.75, -0.75, -0.5, 0.25, -1.0, -0.75, 1.0, -0.5, 0.5, -1.0, -0.75, 0.75, 0.75, 0.5, -1.0, 0.5, 0.75, -0.25, -0.75, -1.0, 0.25, -1.0, -1.0, 1.0, -0.25, 0.5, -0.5, -0.75, 1.0, -0.5, 0.25, 0.0, -0.5, 1.0, 0.0, 1.0, -0.5, -0.75, 0.25, -1.0, 0.0, 0.75, -0.75, 0.25, -1.0, -1.0, -1.0, -0.5, -0.25, 0.75, 0.25, 0.75, 0.5, -0.75, -0.5, 0.5, -1.0, -0.25, -0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.0, 0.75, 0.0, 1.0, 0.5, 0.75, 0.0, -1.0, -0.25, -0.75, 0.0, 0.75, -0.25, ]);
    render_pass_encoder10100.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    texture107.destroy();
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1070.setStencilReference(1);
    compute_pass_encoder1000.popDebugGroup()
    
    query100.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.end();
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1090.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query101.destroy()
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    command_encoder102.insertDebugMarker("mymarker");
    const array11 = new Float32Array([-1.0, -1.0, 0.25, 0.5, -0.75, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, -1.0, 0.25, 0.5, 0.75, 1.0, 0.75, 0.75, 0.5, 0.5, 0.0, 0.25, -0.5, -0.5, 0.0, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, 0.5, 0.25, -1.0, 0.0, 0.25, -1.0, -0.75, -1.0, -0.25, 0.5, 0.25, -0.25, -1.0, 0.75, 0.5, 0.75, -0.5, -0.75, -0.5, 1.0, -1.0, 1.0, -1.0, 0.25, 0.25, -0.25, -0.25, -0.75, -0.75, -1.0, 0.75, 0.0, 0.25, -0.25, -0.75, -0.25, 1.0, -1.0, -0.5, -0.25, 1.0, 0.25, -0.25, -0.75, 0.25, 0.75, 0.5, -1.0, -0.25, -1.0, -0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 0.5, 0.25, 0.0, 0.5, 0.5, -0.5, 0.25, -1.0, 0.25, -0.25, 0.5, 0.0, 0.75, ]);
    render_pass_encoder1070.executeBundles([])
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device10.queue.writeBuffer(buffer104, 0, array10, 0, array10.length);
    compute_pass_encoder1021.setPipeline(compute_pipeline1027);
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    
    
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder10100.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1090.setPipeline(render_pipeline100);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer104, 0, array11, 0, array11.length);
    query101.destroy()
    render_pass_encoder10100.insertDebugMarker("marker");
    render_pass_encoder10100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1021.pushDebugGroup("group_marker")
    
    render_pass_encoder10100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder1070.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group104);
    query101.destroy()
    compute_pass_encoder1000.end();
    
    device10.pushErrorScope("internal");
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
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
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    render_pass_encoder1070.insertDebugMarker("marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1090.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1070.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer1017.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1070.setPipeline(render_pipeline100);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder10100.setPipeline(render_pipeline101);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1090.popDebugGroup();
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1070.setBindGroup(0, bind_group105);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder10100.setBindGroup(0, bind_group106);
    render_pass_encoder1070.setVertexBuffer(0, buffer1010);
    render_pass_encoder1070.draw(3);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline1027.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group107);
    render_pass_encoder1070.end();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group108);
    compute_pass_encoder1040.end();
    render_pass_encoder1000.setVertexBuffer(0, buffer1010);
    compute_pass_encoder1010.end();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1027, 0);
    compute_pass_encoder1060.end();
    render_pass_encoder10100.popDebugGroup();
    render_pass_encoder1000.end();
    command_encoder100.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1090.setBindGroup(0, bind_group109);
    compute_pass_encoder1021.end();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder10100.setVertexBuffer(0, buffer1010);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer104, command_buffer105, command_buffer108, ]);
    command_encoder106.popDebugGroup()
    render_pass_encoder10100.drawIndirect(buffer1011, 0);
    render_pass_encoder10100.end();
    const command_buffer106 = command_encoder106.finish();
    const command_buffer107 = command_encoder107.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer107, command_buffer1011, ]);
    const command_buffer1010 = command_encoder1010.finish();
    render_pass_encoder1090.setVertexBuffer(0, buffer1010);
    render_pass_encoder1090.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1090.end();
    device10.queue.submit([command_buffer1010, ]);
    const command_buffer109 = command_encoder109.finish();
    device10.queue.submit([command_buffer109, ]);
}