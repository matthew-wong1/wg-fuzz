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
    
    const array0 = new Float32Array([0.25, -0.25, -0.75, -1.0, 0.0, 0.5, 0.0, -0.25, -0.25, 0.5, 0.5, -0.5, 0.0, -0.25, 0.25, 0.75, 0.5, -0.25, -0.25, -0.75, 0.25, -0.25, -0.5, -0.75, -0.5, 1.0, -1.0, 0.25, -1.0, -0.5, -0.5, 0.25, -0.25, 0.75, 0.5, -0.5, 0.0, 0.5, -0.5, 0.0, 0.75, 0.5, -0.75, -0.25, 1.0, -0.5, -0.5, 0.0, -0.25, 0.5, 0.75, -0.5, -0.25, 0.25, -0.5, 0.5, -0.75, 1.0, 0.5, 0.75, -0.25, -0.75, 0.5, 0.0, 0.75, -0.5, 0.5, -0.25, 0.25, 1.0, 0.75, -1.0, 0.25, -0.5, 1.0, 1.0, 0.0, -0.5, 0.0, 0.25, -0.25, 0.75, -0.25, 0.25, 0.0, 0.0, -1.0, 0.5, -1.0, -0.5, -0.75, -0.5, 0.0, 0.75, 0.5, 0.75, -0.25, 0.75, -0.25, 1.0, ]);
    const array1 = new Float32Array([-0.25, 0.25, 0.75, 0.75, 0.75, -0.75, -0.5, 1.0, -0.75, 0.75, 0.5, 0.5, -1.0, 0.0, 0.0, -1.0, -0.25, 0.0, 0.75, -0.5, -0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.5, -1.0, 0.75, 0.25, 0.0, 0.75, 0.75, 0.0, 0.25, -0.75, 0.75, -0.75, -0.75, -1.0, 0.25, 1.0, -0.75, -0.75, 0.75, 0.75, -0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.0, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.25, 1.0, -0.5, -0.25, -0.5, 0.5, -1.0, 0.75, -1.0, 0.5, -0.5, -0.25, -0.25, -1.0, -0.25, 1.0, -0.25, 0.25, -1.0, 1.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.25, -0.75, 0.5, 0.0, 0.75, 0.25, 0.75, -0.25, -0.25, -0.75, -0.5, 0.75, -0.5, 0.0, -0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    
    const array2 = new Float32Array([0.75, -1.0, 0.5, 0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 1.0, 0.75, 1.0, 1.0, -0.25, 1.0, 0.0, 0.5, 0.0, 0.75, 0.75, 0.0, 0.5, -0.5, -0.75, -0.25, -0.75, 0.5, -1.0, -0.25, 0.0, -1.0, -0.75, 1.0, 0.25, -0.75, -0.75, -0.75, 0.0, -0.25, -1.0, -0.5, 0.5, -1.0, -0.25, -0.5, -1.0, -0.25, 1.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.25, 0.25, -0.25, 1.0, 0.0, 0.75, -0.25, 0.25, 0.75, 0.25, -0.75, -0.5, 0.0, -0.25, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, -0.5, 1.0, -1.0, 1.0, 0.5, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, -0.5, 0.25, -1.0, 0.0, -0.5, 0.25, 1.0, -0.75, -0.5, -1.0, 1.0, -1.0, 0.25, -1.0, 0.0, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device40.pushErrorScope("validation");
    
    const array3 = new Float32Array([0.25, 0.0, -0.25, -0.75, -0.75, -0.75, 1.0, -0.5, 0.25, 0.5, 0.0, 0.25, -0.25, 0.25, 0.75, 0.75, -0.25, 0.0, 0.75, 0.75, -1.0, 0.25, -0.25, -1.0, -0.5, 0.75, 0.0, -0.25, 1.0, -0.25, -0.5, 1.0, -0.5, -0.25, -1.0, 0.25, 0.25, -0.25, 1.0, 0.5, -0.75, 0.5, 0.25, -0.75, -1.0, 0.0, -0.75, -0.5, -1.0, 0.75, 0.0, -0.75, -0.25, -0.75, -1.0, -1.0, -1.0, -1.0, 0.25, 0.75, -1.0, -0.75, -0.25, -1.0, -0.5, 0.75, -0.5, -0.75, -0.75, -0.25, 0.0, -0.25, 1.0, 0.0, 0.25, -0.5, -0.5, 0.5, -0.75, 1.0, 1.0, 0.5, -1.0, -0.5, 1.0, 0.0, 1.0, 0.0, -0.75, 0.5, 0.0, 0.0, -1.0, -0.25, 0.75, 0.25, 0.25, 0.5, 0.25, 0.0, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    device00.pushErrorScope("out-of-memory");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("internal");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    query002.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    texture000.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    query002.destroy()
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder400.popDebugGroup();
    
    query001.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const array4 = new Float32Array([0.0, 0.25, 1.0, 0.75, 0.0, 0.25, 0.75, 0.0, -1.0, 0.75, 0.75, 0.0, -0.75, 0.0, 0.5, -0.75, 0.5, -1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.25, -0.25, -1.0, 1.0, 1.0, -0.5, 1.0, -1.0, 0.5, 0.75, 0.0, 1.0, -0.25, 0.75, 1.0, 0.0, -0.75, 0.25, 1.0, -0.25, 1.0, 1.0, 0.0, 0.5, 1.0, -0.5, -1.0, -1.0, 0.0, -1.0, 1.0, -0.25, -0.5, 1.0, 0.25, -1.0, 0.25, -1.0, -0.75, 0.25, -0.25, 1.0, -0.25, -0.75, 0.25, 1.0, 0.5, -1.0, -0.75, 0.0, 1.0, 0.75, -1.0, 0.5, -1.0, -1.0, 0.25, 0.0, 1.0, 0.75, -0.5, 1.0, -0.75, 1.0, -0.5, -0.25, -0.5, 0.0, 0.0, 1.0, 0.25, -0.75, -1.0, -0.5, -1.0, 0.0, -0.25, ]);
    const array5 = new Float32Array([1.0, 0.0, -0.25, 0.75, 1.0, 0.25, -0.5, -1.0, 1.0, -0.25, 1.0, 0.5, 0.0, 0.0, 1.0, -0.25, 0.75, 1.0, -0.75, -1.0, 1.0, 0.5, -0.5, -0.5, 1.0, -0.25, -0.5, 1.0, -0.75, 0.25, -0.25, 0.25, 0.5, 1.0, 0.0, 0.25, 0.5, 0.5, 1.0, 0.75, -0.5, -1.0, -0.25, -1.0, -1.0, 0.5, 1.0, -0.75, 0.75, 1.0, 0.5, -1.0, 1.0, -0.75, 0.5, -0.25, 0.25, 0.75, -1.0, -0.25, -1.0, 0.0, 0.0, -0.25, 0.25, 1.0, 0.5, -1.0, -0.75, 0.75, -0.5, 0.0, 0.5, -0.75, 0.0, -0.75, -1.0, 0.75, 0.75, 1.0, 1.0, 0.5, 0.0, 0.25, 0.5, 1.0, -0.5, -1.0, -0.75, -0.75, -1.0, 1.0, -0.75, 0.5, 0.25, 0.25, -0.75, -0.25, -0.75, 0.25, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array6 = new Float32Array([-0.5, -1.0, 0.0, 0.75, 0.25, 0.25, -1.0, 1.0, -0.5, -0.75, -1.0, 1.0, -0.5, 0.5, -0.75, -0.25, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, -0.25, -0.5, -0.75, -0.25, -0.75, 0.5, 0.5, 0.25, -0.5, -0.25, -0.5, 1.0, -1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, -0.25, -0.5, -1.0, 0.25, 0.75, 0.75, 0.5, -0.5, -0.75, 0.5, 0.0, 0.5, -1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.75, -0.25, -0.25, 0.0, -0.5, 1.0, 0.75, 0.75, 0.0, 0.75, 1.0, -0.75, 0.0, 1.0, 0.25, -1.0, -0.5, -0.25, -0.5, 0.25, -0.25, -0.25, -0.5, -0.5, 1.0, -1.0, -1.0, 0.5, 1.0, -0.75, 0.75, 0.75, 0.25, 0.0, 0.5, -0.25, 0.0, -0.75, ]);
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device60.pushErrorScope("internal");
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    device20.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer001.destroy()
    
    buffer400.destroy()
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const command_buffer402 = command_encoder402.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query000.destroy()
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device60.pushErrorScope("out-of-memory");
    device50.destroy();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query601.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device40.queue.submit([command_buffer402, ]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device40.pushErrorScope("validation");
    compute_pass_encoder0000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer100.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder400.popDebugGroup();
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    texture700.destroy();
    
    const command_buffer700 = command_encoder700.finish();
    
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    
    
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.pushErrorScope("validation");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
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
    command_encoder600.clearBuffer(buffer601);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    
    
    buffer002.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_buffer701 = command_encoder701.finish();
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    query600.destroy()
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
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer600.destroy()
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    buffer003.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder100.popDebugGroup();
    query100.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_bundle_encoder600.setPipeline(render_pipeline601);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    command_encoder702.insertDebugMarker("mymarker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
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
    device40.pushErrorScope("out-of-memory");
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
    
    
    query402.destroy()
    query402.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder4010.popDebugGroup()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    query601.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder601.setPipeline(render_pipeline601);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder701.setPipeline(render_pipeline702);
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group700);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    buffer602.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    buffer701.destroy()
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    texture600.destroy();
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
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
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    compute_pass_encoder4010.insertDebugMarker("marker")
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    command_encoder702.pushDebugGroup("mygroupmarker")
    query401.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    query100.destroy()
    texture400.destroy();
    query602.destroy()
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.destroy();
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    query602.destroy()
    
    buffer004.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    
    render_bundle_encoder700.popDebugGroup();
    
    query002.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query403.destroy()
    const array7 = new Float32Array([-0.5, 1.0, 0.75, 0.25, -0.5, -0.75, 0.75, -0.5, 0.5, 0.75, -0.5, 1.0, -0.75, 0.75, 0.0, 0.5, -0.25, 1.0, -0.5, -0.75, 0.75, 0.25, -0.75, -0.25, 0.0, 0.0, 0.75, -1.0, -0.75, -0.25, -0.25, -0.25, 0.75, 0.25, -0.5, 0.75, 0.75, 1.0, -0.5, 0.5, -0.25, -0.75, 0.0, -1.0, 1.0, 0.0, -0.25, 0.0, 1.0, 1.0, -1.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.5, -0.75, -1.0, 0.75, 1.0, 0.25, -0.5, 0.25, 0.5, 1.0, -0.75, 0.0, -1.0, -0.25, -0.75, 0.75, -0.5, -0.75, 0.0, 0.0, -0.75, -0.25, -0.5, -1.0, -0.25, 1.0, -0.25, 0.25, 1.0, 1.0, 0.75, 0.25, -0.25, -0.5, 0.0, -0.25, -0.5, 0.0, -1.0, -0.25, -0.5, ]);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    query403.destroy()
    render_bundle_encoder402.popDebugGroup();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query600.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    buffer005.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array8 = new Float32Array([0.0, 0.5, -0.25, -0.25, -0.25, -0.5, -0.75, -1.0, 1.0, -0.5, -1.0, -1.0, -0.5, 0.0, 0.25, -0.25, 1.0, 0.25, -1.0, 0.25, -0.75, 0.75, -0.75, -1.0, -1.0, -0.25, 0.75, 0.5, -0.75, -0.75, 0.75, -0.25, -1.0, 0.0, 0.5, 0.5, 0.75, -0.25, 0.5, 0.25, 1.0, 0.75, -0.5, 0.75, -0.75, 0.5, -0.75, 0.0, 0.25, -0.25, -0.25, 1.0, -0.75, 0.25, 0.5, -0.5, -1.0, 0.75, 0.75, 0.25, 0.75, -0.5, 1.0, 0.25, -0.75, 0.75, -1.0, 0.75, -0.75, -0.5, -0.25, 1.0, -1.0, -0.25, 0.75, 0.75, 0.5, 0.5, 1.0, -0.5, 0.75, -0.5, -0.25, -0.25, -1.0, 0.5, -0.25, -0.75, 0.0, -0.5, 0.75, 0.0, -0.25, 0.25, 0.0, -0.5, -0.25, -1.0, 0.0, -0.25, ]);
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("out-of-memory");
    query601.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    command_encoder702.popDebugGroup()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    compute_pass_encoder6000.popDebugGroup()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder702.setPipeline(render_pipeline701);
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    render_bundle_encoder700.setPipeline(render_pipeline701);
    
    
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
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
    query401.destroy()
    device70.pushErrorScope("out-of-memory");
    
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0010, 0);
    compute_pass_encoder6000.end();
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
}