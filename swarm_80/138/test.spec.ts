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
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer100.destroy()
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.pushErrorScope("internal");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture100.destroy();
    
    
    
    texture101.destroy();
    texture000.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    
    const array0 = new Float32Array([1.0, 0.25, 1.0, -1.0, 0.25, 0.5, -0.25, -1.0, 0.25, -0.25, 0.0, 1.0, -0.75, 0.0, 0.0, 0.25, -0.75, -0.5, -1.0, -0.75, -0.75, 1.0, -1.0, 0.5, 1.0, -0.5, -0.75, -0.25, -1.0, -0.5, 0.75, -0.25, 0.5, 0.5, -0.5, 1.0, 0.5, 0.75, -0.5, 1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -0.5, -1.0, 0.0, 0.5, 0.5, 0.5, -0.5, 1.0, -0.25, 0.25, -0.75, -1.0, 0.0, -0.25, 0.0, 0.5, -0.25, -0.5, -0.75, -0.25, 0.75, -1.0, 1.0, 1.0, -1.0, 0.0, -0.5, 0.75, 0.75, 0.25, 0.75, 0.25, -0.75, 0.5, -0.75, 0.75, 0.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.5, -0.25, 1.0, -0.25, 0.5, 0.25, -0.75, 0.25, -1.0, -0.75, -1.0, 0.0, 0.75, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    command_encoder100.clearBuffer(buffer101);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    texture001.destroy();
    const array1 = new Float32Array([-0.25, -0.5, -0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 1.0, -0.25, 0.5, -1.0, 0.5, 1.0, 0.0, 1.0, -0.5, 1.0, -0.75, -0.25, 0.0, -1.0, -0.75, -1.0, 0.5, 0.5, 1.0, -0.75, 1.0, -0.25, 0.75, -0.25, 0.5, 0.25, -0.5, 0.75, -0.5, 1.0, 1.0, 0.5, -0.5, 0.75, -0.75, -0.5, -1.0, 0.75, 0.75, 0.75, -0.75, 0.5, -0.5, -0.5, 1.0, 0.0, -0.25, -0.5, 0.0, 0.25, -1.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.5, -0.5, -1.0, 0.0, 0.75, -1.0, 0.25, -0.75, -0.5, -1.0, 0.75, 0.0, 0.5, -0.25, 0.75, 0.75, 1.0, 0.75, -0.75, -0.75, 0.0, -0.75, 1.0, -0.75, 0.0, 0.0, 0.5, -0.25, -0.75, 0.75, 0.5, -1.0, -0.5, 0.75, -1.0, -0.75, ]);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const command_buffer101 = command_encoder101.finish();
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0010.setStencilReference(1);
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_pass_encoder0010.popDebugGroup();
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    
    render_pass_encoder0010.setStencilReference(1);
    
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    texture002.destroy();
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    buffer104.destroy()
    device00.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    texture102.destroy();
    texture003.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0010.setStencilReference(1);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    buffer000.destroy()
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0010.popDebugGroup();
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    buffer103.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.popDebugGroup();
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.pushErrorScope("validation");
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.pushErrorScope("out-of-memory");
    
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer101.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0010.popDebugGroup();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    
    buffer001.destroy()
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_pass_encoder0010.setStencilReference(1);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0010.setStencilReference(1);
    
    
    
    device20.pushErrorScope("out-of-memory");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder0010.popDebugGroup();
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device50.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array2 = new Float32Array([-1.0, -0.25, -1.0, -0.5, -1.0, 0.5, -0.75, -1.0, 0.75, -0.75, -1.0, 0.5, 0.0, -1.0, -1.0, 0.0, 0.0, -1.0, 1.0, 0.5, -0.5, 0.75, 0.0, -0.75, 0.75, -1.0, 0.5, -0.75, -0.75, 0.25, 0.5, 0.5, -1.0, -0.75, 1.0, 0.25, -0.5, 0.75, -0.5, 1.0, -0.75, 0.25, 0.0, 0.5, -0.75, -0.5, 0.75, 0.0, -0.25, 0.25, -0.75, -0.5, 0.25, -0.5, 1.0, 0.0, -1.0, 1.0, -0.75, 0.25, -1.0, -0.5, 0.25, -0.75, 1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 1.0, 0.5, -0.25, 0.75, -0.25, -0.25, 0.5, -1.0, 0.5, 0.0, 0.5, -0.5, 0.5, 0.25, -0.75, 1.0, 0.0, 0.5, -0.75, -1.0, -1.0, 1.0, 0.0, 0.75, 0.0, 0.25, -1.0, 0.0, 0.75, -0.5, ]);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    command_encoder003.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    device30.pushErrorScope("internal");
    
    command_encoder201.insertDebugMarker("mymarker");
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    
    
    
    
    texture600.destroy();
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device50.pushErrorScope("out-of-memory");
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0030.beginOcclusionQuery(0)
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("out-of-memory");
    command_encoder200.insertDebugMarker("mymarker");
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.endOcclusionQuery()
    
    
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    buffer501.destroy()
    device60.pushErrorScope("out-of-memory");
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    
    
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    texture103.destroy();
    render_pass_encoder1040.setStencilReference(1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer101, ]);
    
    texture004.destroy();
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    device10.pushErrorScope("validation");
    texture300.destroy();
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_pass_encoder0040.setStencilReference(1);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    device70.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer300.destroy()
    render_pass_encoder1040.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1040.beginOcclusionQuery(0)
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.popDebugGroup();
    
    
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer302.destroy()
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1040.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_buffer300 = command_encoder300.finish();
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    buffer601.destroy()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1060.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    render_pass_encoder1060.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    render_pass_encoder1060.setStencilReference(1);
    
    
    const command_buffer500 = command_encoder500.finish();
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder1050.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    buffer400.destroy()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0040.setStencilReference(1);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture104.destroy();
    
    render_pass_encoder1060.setStencilReference(1);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    
    
    
    device40.queue.submit([command_buffer400, ]);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    
    device10.queue.submit([command_buffer100, ]);
    
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder1050.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0061,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder0040.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer105.destroy()
    
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer003.destroy()
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder601.resolveQuerySet(
        query602,
        0,
        32,
        buffer600,
        0
    )
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer501 = command_encoder501.finish();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer601 = command_encoder601.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer601, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
}