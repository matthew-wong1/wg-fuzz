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
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    const array0 = new Float32Array([0.25, 1.0, 0.25, -0.25, -0.25, -0.75, 0.25, 0.5, 0.5, 0.25, 0.0, 0.75, 0.75, 0.25, 1.0, 0.5, 0.25, 0.0, -0.25, 0.5, -0.75, 0.25, 0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 0.75, 0.5, -1.0, -0.5, 0.0, -0.5, 0.5, -0.25, -0.75, 1.0, -0.75, -0.75, -0.75, 0.25, 0.5, -0.5, -0.5, 0.0, 0.25, -1.0, -0.25, -1.0, -0.75, 0.5, 0.75, -0.25, 0.5, -0.25, 0.75, 0.25, -0.25, -0.25, 0.5, -1.0, 1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.0, 0.5, 1.0, -0.5, -0.5, 0.25, 0.0, -0.25, 0.0, -0.25, 0.75, 0.5, -0.75, 0.0, 0.0, -0.25, 0.0, -0.5, -1.0, -0.5, -0.75, -0.75, -0.5, -0.25, 0.5, -0.25, -1.0, -0.25, 0.5, -0.75, -0.25, -0.25, ]);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query200.destroy()
    device00.pushErrorScope("out-of-memory");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    command_encoder101.insertDebugMarker("mymarker");
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
        occlusionQuerySet: query101
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    texture000.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    query000.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    query200.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.beginOcclusionQuery(0)
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    texture004.destroy();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1010.executeBundles([])
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture102.destroy();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder1010.executeBundles([])
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query200.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query001.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query001.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    
    render_pass_encoder1010.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_pass_encoder1010.executeBundles([])
    query000.destroy()
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query200.destroy()
    
    query200.destroy()
    
    compute_pass_encoder1000.popDebugGroup()
    
    
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    
    
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder1010.setStencilReference(1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query001.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query001.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.popDebugGroup()
    texture101.destroy();
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query100.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query002.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture005.width / 2, texture005.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    query300.destroy()
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8uint",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder1010.setStencilReference(1);
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder0000.pushDebugGroup("group_marker");
    texture008.destroy();
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query200.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device30.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    texture001.destroy();
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.executeBundles([])
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0010.setStencilReference(1);
    
    
    
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1030.setStencilReference(1);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    render_pass_encoder1020.executeBundles([])
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder0000.setViewport(0, 0, texture005.width / 2, texture005.height / 2, 0, 1);
    query000.destroy()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    texture007.destroy();
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder2010.popDebugGroup()
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    
    query302.destroy()
    
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    texture005.destroy();
    query102.destroy()
    render_pass_encoder1030.beginOcclusionQuery(0)
    
    
    texture003.destroy();
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    texture104.destroy();
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setViewport(0, 0, texture005.width / 2, texture005.height / 2, 0, 1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture100.destroy();
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const array1 = new Float32Array([0.5, 0.5, 0.25, 0.25, -0.75, 0.5, 0.0, -1.0, -1.0, -1.0, -0.75, -1.0, 0.0, -0.5, -1.0, -0.5, 0.75, 0.0, 0.0, 0.25, -1.0, -0.5, 0.0, -1.0, 0.5, 0.75, 0.5, -0.25, 0.25, 0.25, 0.75, -0.25, -1.0, 0.0, -0.25, 0.75, -0.25, -1.0, 0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.25, -0.5, 0.25, 0.75, 0.75, 1.0, 0.75, -0.75, 0.5, -1.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.5, -1.0, 1.0, -0.25, 0.25, 0.25, -1.0, 0.25, -0.25, -1.0, 0.75, -0.25, -0.75, -1.0, 0.25, -0.25, -1.0, 0.0, -0.25, 1.0, 0.75, 0.0, 0.75, 0.25, -0.5, 0.25, -0.75, -0.5, 0.0, 0.25, 0.0, 1.0, 0.0, 0.5, 1.0, 0.25, -1.0, 0.25, 1.0, 0.75, 0.5, ]);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view0090 = texture009.createView({ label: "texture_view0090" });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    query102.destroy()
    render_pass_encoder1030.executeBundles([])
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1040.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2020.popDebugGroup()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query100.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder2030.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query001.destroy()
    texture300.destroy();
    render_pass_encoder3010.popDebugGroup();
    
    render_pass_encoder1040.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    texture103.destroy();
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    render_pass_encoder1010.setStencilReference(1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query003.destroy()
    
    render_pass_encoder0010.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    render_pass_encoder1040.setStencilReference(1);
    
    
    render_pass_encoder0000.setStencilReference(1);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device30.pushErrorScope("out-of-memory");
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const array2 = new Float32Array([0.5, 0.5, -1.0, 0.75, 0.25, 0.5, 0.5, -0.75, -0.5, -1.0, 0.0, -0.75, -0.75, -0.25, 0.25, -1.0, 1.0, -0.75, -1.0, -0.75, 0.25, -0.25, 1.0, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, 0.5, 0.0, -0.5, -0.75, 1.0, 0.5, 1.0, -0.75, -0.75, -0.5, 0.0, 0.75, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.5, 0.5, -0.5, -1.0, 0.5, -1.0, -1.0, -0.5, -0.25, -1.0, 0.25, 0.5, 1.0, -0.25, -1.0, 0.0, 1.0, 0.75, 0.75, 0.25, 0.25, 0.0, -0.75, -0.25, 0.25, -0.5, -0.25, 0.75, 0.75, 0.75, -0.5, 0.0, 0.25, 0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 0.25, -0.25, -1.0, 0.5, -1.0, 0.75, -0.5, 0.25, 1.0, 0.25, 0.5, 1.0, -1.0, -0.75, ]);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder0010.executeBundles([])
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    query303.destroy()
    render_pass_encoder0000.executeBundles([])
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    
    query104.destroy()
    texture009.destroy();
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    texture006.destroy();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder1010.executeBundles([])
    
    texture301.destroy();
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture005.width / 2, texture005.height / 2, 0, 1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture200.destroy();
    render_pass_encoder1040.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    query102.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder1040.setStencilReference(1);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
}