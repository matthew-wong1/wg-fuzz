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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer100.destroy()
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device10.destroy();
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    buffer303.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer302.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    buffer301.destroy()
    device30.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device60.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    device40.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device70.destroy();
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    
    
    device100.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device90.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    device50.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    
    
    
    
    buffer800.destroy()
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device80.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    
    
    
    
    
    
    
    
    
    
    
    
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture1103 = device110.createTexture({
        label: "texture1103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture1104 = device110.createTexture({
        label: "texture1104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    
    const texture_view11030 = texture1103.createView({ label: "texture_view11030" });
    
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    device110.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device120.destroy();
    
    
    
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    device140.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    device130.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    
    
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    
    
    device150.destroy();
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    
    
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    
    
    
    
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile(__dirname + '/shader_module1601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer1601.destroy()
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer1600.destroy()
    
    
    
    
    
    
    
    
    
    const sampler1602 = device160.createSampler( { label: "sampler1602" } );
    
    
    const sampler1603 = device160.createSampler( { label: "sampler1603" } );
    
    const sampler1604 = device160.createSampler( { label: "sampler1604" } );
    
    
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const buffer1602 = device160.createBuffer({
        label: "buffer1602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    const sampler1605 = device160.createSampler( { label: "sampler1605" } );
    const buffer1603 = device160.createBuffer({
        label: "buffer1603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/shader_module1700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    const buffer1604 = device160.createBuffer({
        label: "buffer1604",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    buffer1602.destroy()
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    
    const sampler1606 = device160.createSampler( { label: "sampler1606" } );
    
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile(__dirname + '/shader_module1800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    
    const buffer1801 = device180.createBuffer({
        label: "buffer1801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    device160.destroy();
    device180.destroy();
    
    
    
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
}