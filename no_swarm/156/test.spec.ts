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
    const array0 = new Float32Array([0.0, 0.5, 0.0, -0.25, -1.0, -1.0, -0.5, -0.75, 1.0, -1.0, -0.5, -0.25, -1.0, -0.75, 0.75, -0.75, 0.5, -0.25, -0.75, 0.25, 0.0, -0.25, -0.25, 0.25, 0.25, -0.25, 0.75, -0.5, -0.25, 0.5, 1.0, 0.25, -1.0, 0.0, 0.5, 0.0, 1.0, 0.75, -0.5, 0.75, 0.75, 0.75, 0.75, 1.0, -0.25, -0.75, 0.0, -1.0, 0.75, -0.25, -0.75, -0.5, 1.0, 0.25, -1.0, -0.25, 0.25, 0.25, -1.0, 0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -0.75, -1.0, -0.25, 0.5, -0.75, -0.75, 0.25, 0.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.25, 0.25, -1.0, 0.0, -0.25, -0.25, 0.75, -0.75, -0.25, -0.5, -0.5, -1.0, 1.0, 0.75, -0.5, -0.75, -0.75, -0.25, -0.25, -0.75, 0.75, -0.75, ]);
    const array1 = new Float32Array([-0.25, 0.0, 0.25, 0.25, -0.25, -0.25, -0.75, 0.5, 0.5, -0.25, -0.5, -1.0, 0.5, -0.75, -0.75, 0.25, 0.5, -0.5, -0.75, 0.25, 0.25, -0.25, -0.75, 0.0, -0.75, 0.25, -0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.25, -0.5, -0.5, 0.25, 1.0, 1.0, 0.75, -0.5, -0.75, 0.25, 0.75, 0.75, 0.5, 1.0, -0.5, 1.0, 1.0, -0.25, 1.0, 0.25, 0.5, 0.0, 0.5, -0.5, 0.75, 1.0, 0.5, 1.0, -0.5, -0.5, 0.25, 0.0, -1.0, -0.5, -0.5, -0.5, 0.5, 0.0, -1.0, 0.5, -0.5, 0.5, -0.5, -0.5, 0.0, -0.5, -1.0, -0.75, -1.0, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -0.5, 0.5, -0.25, -1.0, 0.75, 1.0, -0.25, 0.75, -0.5, -1.0, 1.0, 1.0, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([-0.5, -0.25, 0.5, -0.5, -0.5, -1.0, -0.75, -0.25, -1.0, -0.5, 0.5, 0.75, -0.25, -0.25, -1.0, 1.0, -0.5, 0.0, 0.0, -0.75, 1.0, 0.25, -0.75, 0.75, 0.25, -0.5, -1.0, -0.5, 0.25, 0.5, 0.75, 1.0, 0.75, 0.0, 0.75, -0.5, 0.5, -1.0, 0.5, -1.0, -1.0, 0.25, 1.0, -0.5, 0.0, 0.75, 0.5, 0.25, 0.25, -0.75, -1.0, 0.0, 0.0, 0.25, 1.0, 0.75, 0.0, 0.0, -1.0, 0.5, -0.75, 1.0, 0.5, 0.25, -0.25, -0.5, 0.25, 0.0, -0.75, -0.75, -0.75, 0.25, 0.75, -1.0, 0.25, -0.25, -1.0, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, -0.5, 1.0, -0.75, -0.25, -0.5, 1.0, 0.25, -0.75, -1.0, 0.25, 0.0, -1.0, -0.25, 0.0, 0.75, -0.5, -0.75, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.destroy();
    const array3 = new Float32Array([0.75, -0.25, -0.5, -0.75, 1.0, 1.0, -0.75, 0.75, 0.0, 0.0, 1.0, 1.0, 1.0, 0.0, -0.25, 0.0, -1.0, -0.75, 1.0, 1.0, 0.0, -0.75, -0.75, -0.75, -0.5, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, 0.5, -0.25, 0.75, 1.0, 1.0, 0.75, -1.0, 0.25, 0.75, 0.5, 1.0, -0.5, 0.0, 1.0, 0.75, -0.5, -0.75, 0.0, 0.25, -1.0, -0.25, 0.0, 0.0, 1.0, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, -0.5, -0.5, 0.25, -0.25, 0.5, -0.5, 0.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.25, -0.5, 0.25, 0.0, 1.0, 1.0, -0.75, 0.75, 0.0, -0.5, -0.75, 0.25, 0.5, -0.25, 0.25, 1.0, 0.5, 0.25, -0.5, 0.5, 1.0, 0.25, 0.5, 0.75, 0.5, 1.0, 0.75, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array4 = new Float32Array([0.25, -1.0, -1.0, 0.0, -0.25, -1.0, -1.0, -0.25, -0.25, 0.0, -0.75, 0.75, 0.25, -0.25, -0.75, -0.75, -0.75, 0.25, 0.25, -0.5, 1.0, 0.5, -0.75, -0.5, 1.0, -1.0, -0.25, -0.5, 0.75, 1.0, 0.75, 0.25, -0.75, 0.75, 0.25, -0.5, 0.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.75, 0.0, 1.0, 0.75, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, 0.25, 0.25, 0.5, 0.0, 0.0, 0.25, -0.5, -0.75, -0.5, 0.0, 0.5, 0.0, 0.0, 0.5, -1.0, 0.75, 0.25, 1.0, 0.25, -0.75, 0.0, -0.5, 0.0, -0.25, 0.0, -1.0, 0.5, -1.0, -0.25, 0.25, 0.0, -1.0, -0.25, 0.25, -0.75, 1.0, 0.25, -0.5, 0.75, -1.0, 0.25, 0.0, -0.5, 0.0, -0.25, -0.75, 0.5, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer001.destroy()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.75, 0.0, 1.0, -1.0, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 0.75, -0.25, -0.75, 0.0, -0.25, 1.0, 0.0, 1.0, -0.75, 0.25, -0.25, 0.0, -0.5, 0.75, -1.0, 0.75, -0.5, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.75, 0.0, -0.25, 1.0, -1.0, 0.25, 0.5, 0.0, 0.25, -0.75, 0.0, -0.25, -0.25, 0.25, 0.75, 0.5, 0.25, -1.0, 0.25, 1.0, -1.0, 1.0, 1.0, -1.0, -1.0, -0.5, -0.75, 0.25, 0.75, -0.75, 0.75, 0.0, 0.75, -0.5, -0.75, 0.75, 0.75, 0.25, 1.0, 0.25, 0.75, 0.75, 0.0, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, -1.0, 0.5, 1.0, 0.0, -1.0, 1.0, 0.75, 0.25, 1.0, -0.5, 0.5, 1.0, 0.75, 0.0, 0.75, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array6 = new Float32Array([1.0, -0.5, 0.5, -0.5, 0.75, 0.75, 0.25, -0.25, 0.75, 0.25, 0.0, 0.5, 1.0, -0.5, -0.5, 1.0, 0.5, -0.75, 0.0, -0.25, 1.0, -0.5, 0.0, -0.25, 0.25, -1.0, -0.5, 0.5, 0.5, -0.25, 0.75, -0.25, -0.75, -1.0, -0.5, 0.25, -1.0, -0.75, 1.0, 1.0, 0.25, 0.5, -0.5, -0.75, 0.0, 0.5, -1.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.0, -1.0, 0.0, 0.75, -0.75, 1.0, 0.25, 0.75, -0.75, 1.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.25, 0.0, -0.25, 0.5, 0.5, 0.25, -0.5, -0.25, -0.25, -0.25, 0.0, 0.0, 0.0, 0.25, -1.0, -0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 0.5, 1.0, -0.5, 0.25, 0.5, 1.0, 0.25, -0.25, -0.75, ]);
    device00.pushErrorScope("validation");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    query000.destroy()
    
    const array7 = new Float32Array([-0.75, -0.5, 0.0, 0.25, -0.75, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, -0.75, -0.75, -1.0, 0.5, -1.0, 0.25, 0.75, 0.25, -1.0, 0.25, 0.0, 0.5, -0.25, -0.75, -0.25, 1.0, 0.0, -0.5, 0.25, 1.0, -0.5, -0.25, 0.75, 0.0, -1.0, 0.5, 0.25, -0.25, 1.0, 0.25, 1.0, 0.0, 0.5, 0.75, -0.5, 0.5, -0.25, -0.75, 1.0, -0.5, -0.5, 0.5, 0.75, -0.5, -0.75, 1.0, -0.75, -1.0, -0.5, 0.0, -0.75, 0.75, -1.0, -0.5, 0.5, -1.0, 1.0, 0.25, -0.5, 0.75, -0.75, -0.75, 1.0, 1.0, -0.75, -0.5, 0.75, 1.0, -0.25, -0.75, 0.0, -0.75, -0.75, 0.25, 0.0, 1.0, -0.75, 0.25, 0.75, -0.25, -0.5, 0.5, -0.75, 0.25, -0.5, 0.0, 0.0, 0.0, -0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    query000.destroy()
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    
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
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    buffer000.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    texture200.destroy();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.destroy();
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
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder000.popDebugGroup();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query002.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device00.queue.submit([command_buffer000, ]);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const array8 = new Float32Array([-0.75, -0.75, 0.5, -0.25, -0.25, -1.0, -0.25, 0.0, 1.0, 0.75, 0.0, 0.5, -0.25, -0.75, 0.25, 1.0, 0.75, -0.25, -0.5, -0.5, -0.75, 0.75, 0.5, 1.0, 0.25, -0.5, 0.25, -0.75, -0.5, 0.25, -1.0, 1.0, 0.25, 0.25, 0.25, -0.25, 1.0, -0.75, 0.75, 0.5, 0.5, 0.25, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 1.0, 0.25, -0.25, 0.25, -0.75, 0.25, -0.25, -1.0, -0.25, 1.0, 1.0, 1.0, -0.5, 1.0, -1.0, -1.0, 0.25, -1.0, -0.5, 0.25, 0.25, -1.0, 0.75, -0.25, 0.5, -0.5, 1.0, 0.75, -1.0, -1.0, 0.5, 0.75, 0.75, 0.5, 0.25, -0.25, 0.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 0.25, -0.5, -0.5, -1.0, 1.0, 0.75, -1.0, 0.5, ]);
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array8, 0, array8.length);
    
    
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const array9 = new Float32Array([0.0, 0.5, 0.75, -0.5, 1.0, 0.5, 0.5, -1.0, 0.5, -0.5, -0.75, 0.25, 0.5, 1.0, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, -0.75, 1.0, 1.0, 0.25, 0.0, 0.75, -0.75, 0.5, 0.75, 0.0, 1.0, 0.75, 0.5, -0.75, 0.0, -0.5, 1.0, 0.5, 0.5, 0.75, 0.75, -0.75, 0.25, -0.25, -1.0, -0.25, 0.5, -0.75, 0.75, -1.0, 0.0, 0.75, 0.75, 0.25, -0.75, 0.25, 1.0, -0.5, 0.25, 0.5, -0.5, -0.75, -1.0, 0.0, -1.0, 0.5, -0.75, -0.5, 0.5, 0.5, 0.0, -1.0, 1.0, 0.25, -0.5, -0.75, -0.75, 0.0, 1.0, 0.25, -0.75, -0.25, -1.0, -1.0, 1.0, 0.75, 1.0, 0.5, 0.0, -1.0, -0.75, -1.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.5, -1.0, 0.0, ]);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    const array10 = new Float32Array([-0.75, 0.75, 0.0, 0.75, -0.5, -1.0, -0.25, -0.25, 0.5, -0.25, -0.25, -0.75, 0.25, -1.0, -0.75, -0.25, -1.0, -1.0, 0.25, -1.0, 0.75, -0.75, 0.75, 0.0, -0.75, -0.75, -0.25, -0.25, -0.5, 0.0, -0.75, -0.5, 0.0, -1.0, -0.25, 0.75, -1.0, -0.75, 0.75, -0.75, -0.25, 0.75, -1.0, -1.0, 1.0, 0.75, 0.75, -1.0, -0.5, -0.25, 0.25, -0.5, -0.75, 1.0, -0.25, 1.0, -0.25, 0.25, -0.75, -0.25, -0.75, 0.0, -1.0, -0.25, -0.5, -0.75, 0.0, -0.25, 0.5, -1.0, 0.75, -0.25, -0.5, 0.75, 0.0, 0.25, -0.25, -1.0, -0.25, -0.75, 0.75, -0.75, 0.5, -0.75, -0.75, 1.0, -0.5, 0.5, -0.75, 0.25, 0.5, 0.75, -0.25, -0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 0.25, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    const array11 = new Float32Array([-0.5, -0.5, 0.0, 0.25, 0.0, 0.25, -1.0, 1.0, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, -1.0, 1.0, 0.5, 1.0, 0.0, 0.0, 0.25, -0.25, 0.5, 0.5, 0.5, 0.75, 0.0, 0.5, 0.5, -1.0, 0.0, -0.5, -0.5, -0.25, -0.5, -0.75, 1.0, -1.0, -1.0, 0.0, 0.25, -0.25, -0.75, -0.25, -1.0, -0.25, 0.5, -0.25, 0.25, 1.0, -0.25, 0.75, -0.75, 0.5, -0.5, -0.75, 0.25, 0.75, 0.25, -0.5, 0.25, 0.0, 1.0, -1.0, 0.0, -1.0, 0.75, -0.75, 0.25, 0.75, -0.75, -0.75, -1.0, 0.0, -0.75, -0.25, -0.5, -0.25, -0.5, 0.75, -1.0, 0.75, -1.0, 0.75, 0.0, 0.25, 0.0, 1.0, 1.0, 0.25, -1.0, -1.0, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, 1.0, -0.75, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture500.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    buffer502.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("internal");
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture501.destroy();
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
        occlusionQuerySet: query502
    });
    
    query500.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    
    buffer500.destroy()
    query502.destroy()
    buffer501.destroy()
    const array12 = new Float32Array([0.0, 0.75, 0.75, 0.0, -0.75, 0.75, -1.0, 0.0, 0.25, 0.0, 0.5, 1.0, -0.75, 1.0, -0.75, 0.5, -1.0, -1.0, -0.75, 0.75, 0.5, -0.75, 0.0, 0.75, 0.75, -1.0, 1.0, -0.5, 0.75, 0.0, -1.0, -0.5, -0.5, 0.75, -1.0, 1.0, -1.0, 0.25, 0.0, 0.5, 0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 1.0, -0.75, -0.75, -0.75, -1.0, -0.75, -0.5, 0.0, -1.0, -1.0, -1.0, -1.0, 0.75, -0.5, -0.25, -1.0, 0.5, -0.25, 0.25, -0.75, 0.5, 0.25, 0.75, 0.75, -0.25, -0.5, 1.0, 1.0, -1.0, 0.75, -1.0, 0.5, -0.75, 0.25, 1.0, -0.25, -0.75, 0.25, -0.5, -1.0, -0.5, 0.0, -0.25, 0.5, 0.0, -0.5, 0.0, 0.25, -0.25, -0.25, -0.75, -1.0, -0.25, -0.75, ]);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query502.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const array13 = new Float32Array([0.0, -0.25, 0.25, -1.0, -0.5, 0.0, -1.0, -1.0, 0.25, 0.5, 0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 0.25, 0.25, 0.0, 1.0, -1.0, 1.0, 0.5, -0.5, 0.25, -0.75, -1.0, 0.25, -0.75, 1.0, 0.75, -1.0, -0.5, -0.5, 0.5, -1.0, 0.75, 0.5, -0.5, 0.0, -1.0, -0.5, 0.5, 0.5, -0.25, -1.0, 1.0, -0.25, -1.0, 0.0, 0.5, 0.75, 0.25, -0.75, 0.25, -0.25, 0.25, 1.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.75, -0.75, -0.5, 0.0, 0.5, -0.5, -0.5, 0.75, -1.0, -1.0, 0.25, 0.25, 0.0, 1.0, 0.25, 1.0, -0.25, 0.0, 0.5, -0.25, -0.25, 0.25, -0.5, 1.0, -1.0, -0.75, -0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -0.25, 0.0, ]);
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    render_pass_encoder5000.setPipeline(render_pipeline500);
    device50.pushErrorScope("validation");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.destroy();
    render_pass_encoder5000.pushDebugGroup("group_marker");
    query502.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
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
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder500.popDebugGroup();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    query500.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    texture502.destroy();
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    
    
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    
    
    buffer504.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device50.queue.writeBuffer(buffer503, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query500.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_pass_encoder5000.setStencilReference(1);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer503, 0, array8, 0, array8.length);
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    command_encoder401.pushDebugGroup("mygroupmarker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    buffer506.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    device50.queue.writeBuffer(buffer503, 0, array9, 0, array9.length);
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    
    device50.queue.writeBuffer(buffer503, 0, array11, 0, array11.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer503, 0, array12, 0, array12.length);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    query401.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.setPipeline(render_pipeline503);
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    query502.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    device50.queue.writeBuffer(buffer503, 0, array3, 0, array3.length);
    query402.destroy()
    device50.queue.writeBuffer(buffer503, 0, array13, 0, array13.length);
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    
    device50.queue.writeBuffer(buffer503, 0, array9, 0, array9.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device50.queue.writeBuffer(buffer503, 0, array9, 0, array9.length);
    
    render_bundle_encoder402.setPipeline(render_pipeline401);
    device40.pushErrorScope("internal");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    render_pass_encoder5000.setStencilReference(1);
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    
    
    render_pass_encoder5010.pushDebugGroup("group_marker");
    
    render_pass_encoder5010.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    device50.queue.writeBuffer(buffer503, 0, array13, 0, array13.length);
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeBuffer(buffer503, 0, array9, 0, array9.length);
    render_pass_encoder5010.popDebugGroup();
    
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer503, 0, array7, 0, array7.length);
    render_pass_encoder5010.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer503, 0, array6, 0, array6.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer401.destroy()
    const array14 = new Float32Array([0.75, -0.5, -0.5, -0.5, -0.25, 0.5, -0.5, 1.0, -0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 0.75, 0.0, -0.25, 0.0, -0.25, 1.0, 0.25, 0.0, -1.0, 0.0, 0.5, -0.25, 0.25, 1.0, 0.0, -1.0, 0.0, -0.5, 1.0, -1.0, -0.5, -0.75, 0.25, 0.5, 1.0, 0.0, -0.75, -1.0, 1.0, -0.25, 0.5, -1.0, 0.75, 0.75, 0.25, -0.75, 0.0, 0.75, 0.25, -0.25, -0.5, 0.0, 0.25, 0.0, 1.0, 1.0, 0.25, 0.5, -0.75, 1.0, 1.0, 0.75, 0.5, 0.25, 0.75, 0.0, -0.75, 0.5, -0.5, 0.0, -0.5, 1.0, -0.5, 0.25, -0.5, 1.0, -1.0, 0.75, 1.0, 0.0, 0.75, -0.5, 1.0, 0.75, 0.5, 0.25, 0.75, -1.0, -1.0, -1.0, -0.25, 0.25, -0.5, -0.5, 0.25, 0.5, ]);
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
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
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    buffer503.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    render_bundle_encoder401.popDebugGroup();
    command_encoder401.insertDebugMarker("mymarker");
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder400.setPipeline(render_pipeline403);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer505.destroy()
    buffer402.destroy()
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
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
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline503.getBindGroupLayout(0),
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

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder5000.popDebugGroup();
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    query501.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_pass_encoder5010.insertDebugMarker("marker");
    
    
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    buffer509.destroy()
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5000.setStencilReference(1);
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_bundle_encoder501.setPipeline(render_pipeline508);
    buffer400.destroy()
    
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
    query502.destroy()
    query505.destroy()
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
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder502.setPipeline(render_pipeline5011);
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5000.insertDebugMarker("marker");
    render_pass_encoder5020.setPipeline(render_pipeline504);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
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
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline5011.getBindGroupLayout(0),
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

    render_bundle_encoder502.setBindGroup(0, bind_group503);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
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
    device70.destroy();
    
    query500.destroy()
    
    texture400.destroy();
    buffer405.destroy()
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    render_pass_encoder5020.insertDebugMarker("marker");
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer5011.destroy()
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout502,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder400.popDebugGroup();
    query502.destroy()
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    texture503.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
        layout: render_pipeline508.getBindGroupLayout(0),
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

    render_bundle_encoder501.setBindGroup(0, bind_group504);
    buffer5014.destroy()
    
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    
    buffer507.destroy()
    query400.destroy()
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    
    render_bundle_encoder502.popDebugGroup();
    
    render_pass_encoder5020.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5018,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group505);
}