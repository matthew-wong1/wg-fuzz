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
    const array0 = new Float32Array([0.5, 0.25, -0.5, -0.5, -0.5, -1.0, -0.25, -0.75, -1.0, 0.75, 1.0, 0.0, 1.0, -0.25, 0.75, -0.75, 0.75, -0.5, 0.0, 1.0, -0.75, 1.0, -0.25, 0.25, 1.0, -0.5, -0.25, -1.0, 0.5, -0.25, -0.75, -0.75, -0.25, -1.0, 0.25, -0.5, 0.5, 0.25, -1.0, 0.75, -0.25, 0.25, -0.25, 0.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.75, -1.0, 1.0, 0.5, 0.0, -1.0, 0.0, 1.0, 0.75, 0.25, -1.0, -0.25, 0.25, -0.75, 0.5, 0.25, 0.75, -0.25, 0.25, 0.0, -0.5, 0.75, -1.0, -1.0, 0.5, 0.25, 0.0, -1.0, 0.25, 0.5, 0.25, 1.0, 0.75, 1.0, 0.5, 0.5, -0.25, -0.75, 0.25, -0.75, 0.0, -0.25, 0.75, 1.0, 1.0, -1.0, -1.0, -1.0, -0.5, 0.0, -0.75, ]);
    const array1 = new Float32Array([-0.75, 0.75, -1.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.0, -1.0, -0.25, -1.0, 0.5, 1.0, 0.25, -0.25, 0.25, -1.0, 1.0, 0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 0.5, -1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 1.0, 0.5, -0.25, 0.75, -0.75, -0.5, 1.0, -0.5, -0.75, 0.0, 0.25, 0.75, 0.0, 0.5, -0.5, 0.75, 0.5, 1.0, 0.0, -0.75, -0.75, -1.0, 0.75, -0.25, 0.25, -0.75, -0.5, -1.0, 0.75, 0.25, -1.0, 1.0, -1.0, 1.0, -0.5, 0.0, 0.25, 1.0, 0.0, 0.75, 1.0, 0.25, 0.5, 0.25, -0.75, -0.5, 0.25, -1.0, 0.5, 0.75, 0.0, -0.5, -0.25, -0.75, -1.0, -0.25, 0.25, 0.0, 0.25, 0.25, 1.0, 0.5, -0.75, 0.0, -1.0, -0.75, -0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("out-of-memory");
    device00.pushErrorScope("out-of-memory");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder000.clearBuffer(buffer000);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.75, 0.5, 0.0, 0.75, 0.75, 1.0, -1.0, -0.5, -0.25, -0.25, 0.5, 0.75, -0.25, 0.75, -0.25, 0.25, 0.25, 0.0, 0.25, -1.0, 0.5, 1.0, 1.0, 0.0, 1.0, -0.25, 0.0, 0.25, 0.25, 1.0, 1.0, -0.5, 0.75, -0.25, -0.5, -0.25, -0.25, -0.5, -1.0, -0.75, -0.5, -0.5, 0.25, -0.5, -0.5, -0.75, -0.75, -1.0, 1.0, 0.5, -1.0, -0.25, -1.0, 0.5, -1.0, 1.0, 1.0, 0.25, -0.75, -0.75, 1.0, -1.0, 0.0, -0.75, -0.5, 0.75, -0.75, -0.5, -1.0, 1.0, 0.75, 0.75, 0.5, 0.5, -0.75, 0.25, 1.0, 0.25, -0.75, 0.0, -0.5, 1.0, 0.5, -0.75, 0.0, 0.25, 0.5, 0.0, 0.25, -0.25, 0.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.5, -0.25, 0.5, 0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    command_encoder000.clearBuffer(buffer000);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    command_encoder000.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.pushErrorScope("out-of-memory");
    const command_buffer000 = command_encoder000.finish();
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
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    device00.queue.submit([command_buffer000, ]);
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("out-of-memory");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const query100 = device10.createQuerySet({
        label: "query100",
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
    
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const array3 = new Float32Array([-0.25, 0.75, 0.25, 1.0, -1.0, 0.25, -1.0, 0.75, 0.25, 0.75, -1.0, -1.0, -1.0, 0.5, 0.5, -1.0, 0.75, 0.0, 0.0, 1.0, 0.25, -0.75, -0.25, 0.75, 1.0, 0.75, 0.75, 1.0, 1.0, 0.0, -0.5, 0.0, -0.25, 0.25, -0.5, 0.75, -1.0, 0.5, 1.0, -1.0, -0.25, 0.75, 0.0, -1.0, 0.5, -0.5, 0.0, 0.75, -0.25, -0.25, -0.5, 0.5, -0.25, 1.0, -1.0, 0.25, 1.0, 0.0, -1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 1.0, -0.25, -1.0, 0.0, -0.5, 0.5, -0.25, 1.0, -0.5, -0.75, -0.5, -0.5, -0.5, 0.5, -1.0, 0.5, 0.5, 1.0, -1.0, 0.25, 0.75, -0.5, -0.25, 1.0, -1.0, 0.25, -0.5, 0.25, 0.75, -1.0, 0.0, 0.75, 1.0, -0.5, 0.5, 0.25, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    query000.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    query000.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query000.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_buffer300 = command_encoder300.finish();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.pushErrorScope("validation");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder0010.popDebugGroup()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    query100.destroy()
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    
    device40.pushErrorScope("internal");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    device80.pushErrorScope("internal");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    device50.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const command_buffer101 = command_encoder101.finish();
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    command_encoder003.clearBuffer(buffer003);
    query101.destroy()
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder003.clearBuffer(buffer000);
    
    device70.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder003.clearBuffer(buffer003);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_buffer004 = command_encoder004.finish();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    query100.destroy()
    device30.queue.submit([command_buffer300, ]);
    command_encoder800.copyBufferToBuffer(
        buffer801,
        0,
        buffer803,
        0,
        400
    );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    compute_pass_encoder0020.popDebugGroup()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer800 = command_encoder800.finish();
    
    
    query101.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device00.pushErrorScope("internal");
    
    command_encoder005.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.queue.submit([command_buffer004, ]);
    command_encoder005.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    device80.queue.writeBuffer(buffer803, 0, array3, 0, array3.length);
    device30.destroy();
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.writeBuffer(buffer803, 0, array0, 0, array0.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder006.copyBufferToBuffer(
        buffer004,
        0,
        buffer000,
        0,
        400
    );
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    command_encoder005.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder801.insertDebugMarker("marker");
    command_encoder006.copyBufferToBuffer(
        buffer004,
        0,
        buffer005,
        0,
        400
    );
    command_encoder102.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    command_encoder005.clearBuffer(buffer000);
    const array4 = new Float32Array([-0.5, 0.75, 0.25, -0.75, -1.0, -0.25, 0.0, 0.25, 0.0, 0.5, -1.0, -1.0, -0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.75, -0.5, 1.0, 0.25, 0.75, -0.75, -0.75, 0.25, -0.25, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, 0.25, 0.75, 0.25, -0.25, 0.75, 0.5, 0.75, 0.75, 1.0, 0.5, 1.0, 0.75, 0.5, 0.5, -0.75, -1.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.75, -0.75, 1.0, 0.0, -0.5, 0.25, 0.5, 0.5, 0.25, -0.25, 0.5, 0.5, -1.0, -1.0, 1.0, -1.0, -0.75, 1.0, 0.0, 1.0, 0.75, -1.0, 0.0, -0.5, 1.0, 1.0, 0.5, -0.5, 0.0, -1.0, -0.5, -0.5, 0.0, 0.25, 0.5, -0.25, -1.0, 0.5, 0.75, -0.5, 0.75, 0.5, 0.0, -1.0, -0.75, -0.5, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const array5 = new Float32Array([-0.5, 0.0, 1.0, 0.25, -0.25, 0.25, 0.5, -0.5, 0.25, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, -0.25, 0.0, -0.25, 0.0, 1.0, 0.75, 0.0, -0.5, 0.25, -0.75, 0.0, -0.5, 0.5, -0.75, -0.75, 0.75, 1.0, -0.25, 1.0, 0.75, 0.25, 1.0, 0.0, 0.0, -1.0, 0.75, -0.25, 0.5, 0.5, -1.0, 0.5, 0.25, 0.5, 0.25, 0.75, -0.75, -0.25, -0.5, 0.25, 0.75, 0.0, -0.5, 0.75, -0.25, 0.25, -0.25, 0.75, 1.0, 0.5, -0.5, -0.5, -0.5, -0.5, 0.0, -1.0, -0.5, 0.5, 1.0, 1.0, -1.0, 0.0, -1.0, 0.25, -0.5, -1.0, -0.75, -0.75, -0.75, -0.75, 1.0, -1.0, 1.0, -0.25, -1.0, 0.0, -1.0, -0.25, 1.0, -1.0, 0.25, -0.75, 0.25, -0.75, 1.0, -0.5, ]);
    compute_pass_encoder0030.popDebugGroup()
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer803, 0, array1, 0, array1.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    query101.destroy()
    
    render_bundle_encoder801.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device80.queue.writeBuffer(buffer803, 0, array2, 0, array2.length);
    command_encoder006.clearBuffer(buffer000);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_buffer400 = command_encoder400.finish();
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device10.queue.submit([command_buffer101, ]);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    query003.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile(__dirname + '/shader_module0015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
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
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const command_buffer006 = command_encoder006.finish();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile(__dirname + '/shader_module0016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    query100.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device10.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    var shader_module0017_code = "";
    try {
        shader_module0017_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0017 = await device00.createShaderModule({ label: "shader_module0017", code: shader_module0017_code })
    
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    device40.queue.submit([command_buffer400, ]);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder801.insertDebugMarker("marker");
    compute_pass_encoder0050.popDebugGroup()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    command_encoder600.popDebugGroup()
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    device80.queue.submit([command_buffer800, ]);
    
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer601, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
}