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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    texture001.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    texture002.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
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
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.clearBuffer(buffer100);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    texture101.destroy();
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    
    command_encoder100.clearBuffer(buffer101);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    texture004.destroy();
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder100.clearBuffer(buffer101);
    command_encoder003.pushDebugGroup("mygroupmarker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    texture200.destroy();
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder001.insertDebugMarker("mymarker");
    
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder100.clearBuffer(buffer101);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    
    
    command_encoder003.insertDebugMarker("mymarker");
    
    texture201.destroy();
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder202.pushDebugGroup("mygroupmarker")
    texture203.destroy();
    
    command_encoder002.insertDebugMarker("mymarker");
    
    
    command_encoder001.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder202.insertDebugMarker("mymarker");
    
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    command_encoder202.insertDebugMarker("mymarker");
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder001.insertDebugMarker("mymarker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.clearBuffer(buffer103);
    command_encoder204.insertDebugMarker("mymarker");
    
    command_encoder100.clearBuffer(buffer101);
    texture202.destroy();
    command_encoder100.clearBuffer(buffer103);
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder100.clearBuffer(buffer100);
    texture204.destroy();
    
    
    
    command_encoder203.insertDebugMarker("mymarker");
    
    
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder003.insertDebugMarker("mymarker");
    texture003.destroy();
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder100.clearBuffer(buffer103);
    texture006.destroy();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    command_encoder201.insertDebugMarker("mymarker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder100.clearBuffer(buffer100);
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder101.clearBuffer(buffer103);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder101.clearBuffer(buffer100);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder005.pushDebugGroup("mygroupmarker")
    command_encoder101.clearBuffer(buffer100);
    command_encoder102.insertDebugMarker("mymarker");
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder204.pushDebugGroup("mygroupmarker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    command_encoder101.clearBuffer(buffer101);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture206.destroy();
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder100.clearBuffer(buffer101);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    command_encoder003.insertDebugMarker("mymarker");
    texture102.destroy();
    command_encoder102.clearBuffer(buffer100);
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder006.insertDebugMarker("mymarker");
    
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    texture205.destroy();
    command_encoder100.clearBuffer(buffer100);
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    command_encoder101.clearBuffer(buffer103);
    
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    command_encoder207.insertDebugMarker("mymarker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder101.clearBuffer(buffer100);
    
    command_encoder101.clearBuffer(buffer103);
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder007.pushDebugGroup("mygroupmarker")
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    const texture_view2071 = texture207.createView({ label: "texture_view2071" });
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    
    
    command_encoder102.clearBuffer(buffer103);
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder006.insertDebugMarker("mymarker");
    const texture_view0053 = texture005.createView({ label: "texture_view0053" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    command_encoder206.pushDebugGroup("mygroupmarker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder007.clearBuffer(buffer006);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder005.clearBuffer(buffer006);
    command_encoder100.clearBuffer(buffer101);
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    command_encoder206.insertDebugMarker("mymarker");
    texture007.destroy();
    command_encoder101.clearBuffer(buffer100);
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
    
    
    
    command_encoder100.clearBuffer(buffer101);
    
    command_encoder003.clearBuffer(buffer006);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.insertDebugMarker("mymarker");
    
    
    command_encoder004.clearBuffer(buffer006);
    command_encoder400.insertDebugMarker("mymarker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder102.clearBuffer(buffer100);
    command_encoder400.pushDebugGroup("mygroupmarker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view0054 = texture005.createView({ label: "texture_view0054" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    texture207.destroy();
    command_encoder101.clearBuffer(buffer101);
    
    command_encoder002.clearBuffer(buffer006);
    
    texture103.destroy();
    
    
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder008.pushDebugGroup("mygroupmarker")
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder101.clearBuffer(buffer103);
    command_encoder002.insertDebugMarker("mymarker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    texture301.destroy();
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder002.insertDebugMarker("mymarker");
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder207.pushDebugGroup("mygroupmarker")
    command_encoder100.clearBuffer(buffer101);
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder206.insertDebugMarker("mymarker");
    
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder101.clearBuffer(buffer100);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    command_encoder203.insertDebugMarker("mymarker");
    
    command_encoder102.clearBuffer(buffer100);
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder000.clearBuffer(buffer006);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    command_encoder700.pushDebugGroup("mygroupmarker")
    const texture_view2080 = texture208.createView({ label: "texture_view2080" });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder004.clearBuffer(buffer006);
    const texture_view2090 = texture209.createView({ label: "texture_view2090" });
    command_encoder102.clearBuffer(buffer100);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.clearBuffer(buffer006);
    command_encoder007.insertDebugMarker("mymarker");
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    
    command_encoder001.insertDebugMarker("mymarker");
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    command_encoder002.clearBuffer(buffer006);
    command_encoder400.insertDebugMarker("mymarker");
    
    command_encoder001.clearBuffer(buffer006);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder004.clearBuffer(buffer006);
    command_encoder004.clearBuffer(buffer006);
    command_encoder100.clearBuffer(buffer100);
    const texture_view0055 = texture005.createView({ label: "texture_view0055" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    command_encoder701.clearBuffer(buffer701);
    const texture_view2081 = texture208.createView({ label: "texture_view2081" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture208.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    texture005.destroy();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    command_encoder208.insertDebugMarker("mymarker");
    texture209.destroy();
    
    texture400.destroy();
    
    command_encoder206.insertDebugMarker("mymarker");
    command_encoder005.clearBuffer(buffer006);
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder004.clearBuffer(buffer006);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder102.clearBuffer(buffer101);
    command_encoder100.clearBuffer(buffer101);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder101.clearBuffer(buffer100);
    command_encoder101.insertDebugMarker("mymarker");
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder700.clearBuffer(buffer701);
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    
    command_encoder100.clearBuffer(buffer100);
    
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder008.insertDebugMarker("mymarker");
    
    command_encoder004.clearBuffer(buffer006);
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder008.clearBuffer(buffer006);
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
}