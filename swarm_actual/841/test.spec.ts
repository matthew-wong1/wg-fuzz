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
    const array0 = new Float32Array([0.0, -0.25, 0.75, -0.75, 0.5, 0.5, 0.0, -0.5, 0.5, 0.0, 0.25, 0.0, 0.75, -0.25, 0.25, 0.0, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, 0.25, -0.75, -1.0, 0.25, 0.0, 0.75, -0.75, 0.75, 0.25, 0.5, 1.0, 0.5, -0.25, 0.25, -0.25, 1.0, 0.75, -0.5, 0.0, 0.75, -0.75, -0.75, 0.0, 0.75, 1.0, 1.0, 0.5, -0.5, 0.5, 0.75, 0.5, -0.25, -0.75, 0.5, 0.75, 0.0, 0.5, 0.25, 0.75, 0.0, 0.5, 0.0, -1.0, 0.25, 0.0, 0.0, -0.25, 0.0, 0.75, 0.0, 0.5, 0.75, -0.75, 0.25, 1.0, 0.75, -0.75, -0.5, -0.75, -0.75, 1.0, -0.5, -0.75, 1.0, 0.5, 0.75, -0.25, -0.5, 0.5, -0.5, 0.25, 0.0, -0.25, -0.75, -0.75, 0.0, 0.75, -1.0, ]);
    
    const array1 = new Float32Array([0.75, 0.75, 0.5, -0.25, -0.5, -0.75, 0.5, -0.75, -0.75, 0.25, 1.0, 0.75, 0.0, -0.75, -0.75, -0.5, 0.25, 1.0, 0.25, 0.5, 0.75, 1.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 0.5, -0.25, 0.25, 0.5, 0.0, 0.75, 0.75, -0.5, 0.0, 0.5, 0.5, -0.25, 0.0, 0.0, 0.75, 0.0, -1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -0.25, -0.75, -0.25, 0.5, -1.0, 0.0, 0.75, -0.5, -0.5, 1.0, 1.0, -0.25, 0.0, 0.25, 0.5, 0.0, 0.0, -1.0, 0.5, -0.5, -0.75, -1.0, -0.75, -1.0, -0.5, -0.75, -0.25, 0.75, 0.25, -0.25, -0.5, 0.75, -1.0, 0.0, -0.5, 0.5, 0.25, -1.0, -0.75, -0.25, 0.5, -0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([0.5, 0.75, 0.0, 0.5, -1.0, -0.75, -0.25, 0.0, 0.0, -0.25, -0.75, -0.75, 0.75, 0.75, 1.0, -0.5, 1.0, 0.5, -0.75, -0.75, -0.5, 0.5, 0.5, -0.5, 0.75, 0.75, -0.5, -0.75, 0.25, 0.5, 0.75, -0.75, -0.75, 0.25, -0.25, 0.0, -0.5, -0.75, 1.0, 0.0, -1.0, 0.5, -0.75, 0.5, -0.5, 0.5, -0.75, -1.0, -0.75, 0.0, -0.5, 0.75, -0.5, 1.0, -0.75, 1.0, -1.0, -0.5, 1.0, 0.25, -0.25, 0.0, 1.0, 0.0, -0.25, 0.75, -0.5, 0.25, 0.25, 0.0, 0.75, 0.0, 0.25, 0.25, 0.5, -0.25, -0.5, -0.25, -0.25, 0.0, -1.0, 0.75, -1.0, 0.75, -0.25, -0.75, -1.0, -0.25, 0.75, -1.0, 0.5, 0.0, -1.0, -0.25, 0.5, -0.25, 0.0, -1.0, -0.25, -0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.pushErrorScope("internal");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    const array3 = new Float32Array([0.5, -0.5, 0.25, 1.0, 0.5, 1.0, -0.5, 0.25, 0.25, 1.0, 0.0, 0.5, 0.25, -0.25, 0.0, -0.75, -1.0, 0.5, -1.0, -0.75, -0.25, -0.75, -1.0, -1.0, 1.0, 0.75, 0.5, 0.75, 0.25, 0.25, -0.75, 0.0, -0.25, -1.0, 1.0, 1.0, -0.25, 0.5, -0.75, -0.5, 0.25, 0.25, 1.0, 0.5, -0.75, 0.75, 0.25, -0.75, -0.75, 0.25, -0.75, -1.0, 0.5, 0.25, 0.0, -0.75, -0.75, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, 0.25, 0.0, 0.0, -0.25, 0.5, 0.0, 0.5, 0.5, -0.75, 1.0, -1.0, -0.75, -1.0, -0.25, 0.0, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -0.25, -0.25, 0.25, 1.0, 1.0, -1.0, 0.0, 0.75, 0.25, 0.75, 0.75, 0.75, -0.25, 0.75, -0.25, -0.5, ]);
    texture100.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture000.destroy();
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    texture101.destroy();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    texture102.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.5, -0.5, 0.0, 1.0, 0.5, -0.5, 1.0, 0.0, -0.5, -1.0, 0.25, -0.75, -0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 1.0, -0.25, 0.5, -0.75, 0.25, 0.75, 0.5, -0.5, -0.25, 0.5, 0.75, -0.75, 1.0, 0.25, -0.25, 0.0, 0.75, 0.5, -0.75, 0.0, -1.0, 0.25, 0.5, 1.0, 0.5, -0.5, -0.5, -0.25, -0.5, 0.75, 0.5, -0.75, 0.25, 1.0, -0.25, 1.0, 0.5, 0.5, 0.0, -0.5, -0.5, 1.0, 0.75, -1.0, -1.0, -0.5, 1.0, 0.25, 0.0, 0.75, 0.5, -0.25, -0.5, -0.75, 0.5, 0.25, 0.75, 1.0, -1.0, -0.5, 0.5, 0.25, 0.5, 0.0, 0.25, -0.5, -0.25, 1.0, -0.25, 0.75, 0.5, 0.5, 0.0, 1.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.25, -0.5, -0.5, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
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
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.5, -0.5, 0.5, 0.25, 1.0, -0.75, -1.0, -1.0, -1.0, 1.0, -0.5, 0.25, -0.25, 0.5, 0.0, 0.0, 0.0, 0.25, -1.0, 0.0, 0.75, 0.75, -1.0, 1.0, -0.25, -0.75, 0.25, 0.75, -0.25, 0.0, 0.25, -0.75, -0.75, 0.75, -0.75, 0.5, -0.5, -1.0, -0.5, 0.0, -1.0, 0.0, 0.25, 1.0, 0.75, 0.25, -1.0, -0.25, 1.0, -0.5, 0.75, -1.0, 0.0, 0.5, -0.75, -0.75, -0.5, 0.0, 0.0, -0.75, 0.5, 0.75, 1.0, -0.25, -1.0, -1.0, 0.75, -1.0, 0.75, 1.0, 0.0, 0.0, -0.75, -1.0, -0.25, -0.5, -0.5, -1.0, -0.25, 0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.5, -1.0, 0.75, -0.75, -0.75, 1.0, 0.0, -0.25, -1.0, 0.75, -0.75, 0.25, -0.25, 0.5, -0.5, ]);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device00.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([0.0, 0.25, 0.5, 1.0, -0.25, 0.5, -0.5, -0.25, -1.0, -0.75, 0.0, 0.75, 0.5, 0.5, -1.0, -1.0, 0.75, -0.75, 0.75, -0.75, 0.5, -0.25, 0.25, -0.75, 0.75, -0.75, 0.5, -0.25, 0.0, 0.5, 0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 0.0, 1.0, 0.5, 0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.75, 0.0, 0.0, -0.5, -0.75, 0.75, 0.0, -0.25, 0.75, -1.0, 1.0, -0.5, -0.75, -0.5, -0.5, 0.0, 0.25, -0.25, 0.0, 0.25, 0.75, -1.0, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -1.0, 0.75, 1.0, 0.0, -0.75, -0.25, -1.0, 0.0, 0.0, -1.0, -1.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.75, 0.25, -1.0, -0.5, 0.25, -0.75, -0.25, 0.25, -0.75, -1.0, 0.0, ]);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    
    
    
    
    const array7 = new Float32Array([0.75, -0.5, 0.5, 0.75, -0.5, 0.25, -0.5, 1.0, 0.25, 0.25, 1.0, -0.75, -0.25, -1.0, -0.25, -0.5, 1.0, 0.25, 0.0, 0.0, 0.5, -0.25, 1.0, -0.25, -0.25, 0.75, 0.75, 1.0, -0.25, 0.5, -0.25, 0.75, 0.5, 1.0, -0.75, -0.75, 0.75, 1.0, 0.5, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, -0.25, -0.5, -0.75, -0.25, 1.0, -0.25, -0.75, 0.25, -1.0, 0.75, 0.25, -0.25, -0.25, 0.5, 0.0, 1.0, 0.75, 0.25, 1.0, 0.75, -0.25, 0.75, 1.0, 1.0, 1.0, 0.5, -0.25, 0.75, 0.0, -0.75, 0.5, -0.75, -0.25, 0.0, -0.25, -0.5, -0.75, -1.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.0, 0.5, 0.5, -0.25, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.75, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.75, 0.25, 0.75, 0.5, -0.25, 0.0, -0.5, 1.0, 0.75, -1.0, 0.0, 0.25, 0.5, 0.75, 0.5, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, -0.75, 1.0, 0.0, 0.5, -0.5, -0.5, 0.25, -1.0, -0.75, 0.25, 1.0, 0.75, 0.0, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 1.0, 0.75, 0.0, 0.75, 0.5, -1.0, 0.25, 0.75, 1.0, 1.0, -0.25, 1.0, 1.0, 0.25, 0.0, 0.0, -0.25, -1.0, 0.25, 0.75, 0.0, -0.5, -0.75, 0.5, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, -0.5, -0.75, 0.75, 0.0, 0.25, -0.75, -0.5, -0.25, 0.25, -0.5, 0.25, 0.0, 1.0, 0.5, 0.75, -0.5, 0.75, 1.0, 0.25, 0.5, -1.0, -0.75, -1.0, -1.0, 0.25, 0.5, -0.25, 0.75, -0.5, ]);
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array9 = new Float32Array([-0.5, 0.5, 0.25, -0.75, 1.0, 0.25, -1.0, 0.75, 1.0, 1.0, -0.5, -0.5, 0.75, 1.0, -1.0, -0.5, 1.0, 0.75, -0.5, 0.25, -0.25, -0.5, -1.0, 0.0, 0.5, 0.5, 0.75, 0.0, 0.0, -0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 0.0, 0.0, 1.0, 0.0, -0.75, 0.0, 0.75, 0.25, 0.5, 0.5, -0.5, -1.0, -0.75, 0.25, 0.5, -0.5, -0.25, 0.0, -0.5, 0.0, 1.0, 0.25, 0.0, 0.75, -0.75, 1.0, -1.0, -0.75, 0.25, -1.0, 1.0, -1.0, -0.5, -1.0, 0.5, 0.75, 0.5, 0.75, -0.75, -0.25, 1.0, 0.25, -0.25, -0.25, 0.75, 0.5, 0.75, 0.0, 0.75, -0.75, 0.75, 0.75, 0.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.0, 1.0, -0.5, 1.0, -0.5, 0.5, -0.5, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("out-of-memory");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const array10 = new Float32Array([0.5, -0.5, -0.5, 1.0, -0.25, 1.0, 0.25, 1.0, -0.25, -1.0, 0.75, -0.75, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, 0.25, 0.25, -1.0, 0.25, -0.75, -0.5, -1.0, -0.25, 0.25, 1.0, -0.5, 0.75, -0.75, 1.0, 0.0, -0.25, -1.0, -0.5, -0.75, -0.25, -1.0, 0.5, 0.75, 1.0, 0.25, -0.25, 0.75, 0.25, 0.0, -0.75, -0.75, -0.5, 0.75, 0.75, 0.75, 0.0, 0.75, -0.75, 0.75, 0.25, 0.0, 0.0, -0.75, -1.0, 1.0, 1.0, 0.5, 0.75, 1.0, -1.0, -0.25, 0.5, -1.0, 0.0, 0.0, 1.0, -0.75, -1.0, 0.0, -1.0, 0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 1.0, 0.75, 0.25, 0.0, -1.0, -0.5, 0.25, -1.0, -0.75, 0.5, 0.25, 1.0, 0.5, -0.75, -0.5, 0.0, ]);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("out-of-memory");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    texture401.destroy();
    texture602.destroy();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device70.destroy();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.pushErrorScope("out-of-memory");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    
    
    const array11 = new Float32Array([-0.75, -0.25, 0.0, 0.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.25, 1.0, -1.0, 0.75, 0.75, -0.5, -0.75, 1.0, -0.25, -0.5, -0.5, 1.0, -0.25, -1.0, 0.5, -1.0, -1.0, 0.5, 1.0, 0.0, 1.0, 0.75, 0.75, 0.0, -0.75, -0.75, 0.25, 0.25, 0.5, -1.0, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.75, -0.5, 0.25, -0.25, -0.5, -0.5, 0.75, -0.5, 0.25, 0.5, -0.75, -0.25, -1.0, 0.5, 0.0, 0.0, 0.5, -0.25, 0.5, -0.25, 0.5, 1.0, -0.25, 1.0, -0.25, -0.25, 0.75, 1.0, 1.0, 0.25, -0.75, 0.25, 1.0, -1.0, 0.25, 0.25, -0.5, 0.25, 0.5, 0.75, 0.5, -1.0, 1.0, -0.75, -0.5, -0.5, -0.75, 0.75, 0.5, -0.25, 0.25, 0.25, 1.0, 0.25, ]);
    device60.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.destroy();
    const array12 = new Float32Array([-0.75, -1.0, 0.25, -0.25, 1.0, 1.0, 0.75, 0.0, 0.25, 0.75, 1.0, -0.75, 1.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.0, -0.5, -0.25, 0.5, 0.75, 1.0, -1.0, 0.5, 1.0, -0.75, -0.75, 1.0, 0.75, -0.5, -0.75, -0.5, 0.25, 0.0, -0.5, -0.25, -0.75, -0.75, -1.0, -1.0, 0.0, 1.0, 0.75, -0.5, -0.25, 1.0, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 0.75, -0.25, 1.0, -0.25, 1.0, 1.0, 0.5, 1.0, 0.0, -0.25, -0.25, 0.5, -0.75, -0.25, -1.0, 1.0, 0.0, 0.75, 1.0, -0.5, 0.25, -0.75, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, 0.25, 0.75, 0.5, -1.0, 0.25, -0.5, -1.0, 0.5, 0.75, 0.25, 0.75, -0.75, 0.75, 1.0, 1.0, -0.5, -0.75, -0.75, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const array13 = new Float32Array([-0.5, 0.5, 0.5, -1.0, -1.0, -0.5, 0.5, 1.0, 0.5, 1.0, -0.5, 1.0, 0.5, -0.5, -0.75, 0.75, -1.0, 1.0, -0.75, -0.5, 0.5, 0.75, 0.5, -0.5, 0.0, 0.0, 0.75, -0.5, -0.75, 0.5, 0.5, -0.75, 0.0, -0.75, 0.75, -1.0, 0.75, 0.25, 0.5, -0.75, 1.0, 0.5, 0.75, 1.0, 0.5, -1.0, 1.0, 0.5, 0.25, 0.25, 0.75, -0.25, -0.5, -0.75, -0.25, 0.25, -0.75, -1.0, -1.0, 0.25, 0.0, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, 0.75, -1.0, 0.75, -0.75, -0.25, 0.0, -0.5, 0.25, 0.5, 1.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.25, 1.0, 0.75, -0.75, -1.0, 1.0, 0.75, 0.75, 0.75, 0.0, -0.25, 0.5, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, ]);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array14 = new Float32Array([0.5, 1.0, 0.75, -0.75, 1.0, 0.75, 1.0, -0.25, 0.5, -0.75, 0.5, -0.5, -1.0, 1.0, -0.5, -0.75, 0.25, -1.0, -0.75, 0.0, -0.75, -0.25, 0.0, 1.0, 0.25, -0.75, 1.0, 0.5, 0.0, -0.5, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, -0.25, 0.5, -0.75, 0.75, 0.25, -0.5, -1.0, 0.5, -0.5, -0.75, -0.75, 0.5, -0.75, 1.0, -0.25, 0.0, -0.5, 0.75, 0.5, 0.25, 0.5, -0.25, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, 0.25, 0.25, 0.75, -0.25, 0.25, 1.0, -0.75, 0.5, -0.5, -0.5, -0.25, 0.25, 0.0, 0.5, -0.75, -1.0, -0.25, 0.5, 1.0, -0.5, -1.0, -0.75, -0.75, -0.25, 0.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.75, 0.5, -0.25, -1.0, 1.0, 0.5, ]);
    
    
    
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device100.pushErrorScope("validation");
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const array15 = new Float32Array([0.5, -0.25, 0.0, -0.5, -0.5, 0.25, -0.5, -1.0, -0.25, 0.0, 1.0, -0.25, 0.5, 0.0, 0.25, -0.25, -0.75, -0.75, 0.75, -0.75, 0.0, -0.5, 0.25, -1.0, -0.25, -0.75, 0.75, -0.5, 1.0, 0.25, -0.5, 0.5, -0.25, 1.0, -0.5, 0.75, 0.25, -0.75, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, 0.25, -1.0, 0.25, 1.0, -1.0, 0.5, 1.0, 0.25, 0.25, 0.5, -0.5, -1.0, -0.25, 0.75, 0.75, -0.5, 0.5, 0.25, 0.25, 0.5, 0.5, -1.0, -0.25, 0.25, 0.75, -1.0, -0.5, 0.75, 0.25, 0.75, 0.5, -0.5, 1.0, 0.5, -0.25, 1.0, 0.5, -0.5, 0.5, 0.0, -0.75, 0.25, -0.75, -0.75, 0.0, 0.5, 1.0, -0.25, 0.25, 0.5, 0.0, 0.5, -0.75, -0.75, 1.0, 1.0, ]);
    
    device40.pushErrorScope("validation");
    
    texture500.destroy();
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    device110.destroy();
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    texture1000.destroy();
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    texture501.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device100.pushErrorScope("validation");
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    texture502.destroy();
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array16 = new Float32Array([0.0, 0.25, -0.25, 0.5, -1.0, -0.75, 0.5, -0.75, -0.5, -0.75, -1.0, -1.0, -1.0, -1.0, 1.0, -0.25, -0.5, 0.75, 0.75, -1.0, -0.25, -1.0, -0.25, 1.0, -0.75, -0.25, -1.0, -0.25, 0.5, -0.25, -0.75, 0.75, -0.75, 0.5, 1.0, 0.0, -0.25, -0.25, 0.75, -1.0, -0.25, 0.0, 1.0, 0.5, -0.25, -0.25, -0.75, -0.5, -1.0, -0.25, 0.25, 0.5, 1.0, -0.25, 0.5, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, -0.25, 1.0, -0.75, 0.0, 0.5, 0.25, -0.75, 0.25, 0.75, -1.0, 0.5, -1.0, -0.5, 0.5, 0.5, 0.75, 0.0, -1.0, 0.0, 1.0, 0.5, -1.0, -0.75, -0.5, -0.5, -0.25, -0.75, -0.25, 1.0, -0.5, 0.75, -0.75, 0.75, 0.5, -0.25, ]);
    device90.pushErrorScope("internal");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    texture1001.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    texture503.destroy();
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    device130.pushErrorScope("out-of-memory");
    device100.destroy();
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    texture504.destroy();
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device130.pushErrorScope("validation");
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array17 = new Float32Array([0.5, 0.75, 0.25, 0.5, 0.0, -0.5, -0.5, -1.0, 0.5, 0.0, -0.5, 0.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.25, -0.5, -0.25, 0.5, -0.25, 0.5, 0.25, -0.75, 0.5, 1.0, -0.5, 1.0, 0.75, -1.0, 0.0, -0.25, -0.5, 0.5, 0.5, 0.0, -1.0, 0.75, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, 0.5, -0.5, 0.5, 1.0, 1.0, 0.5, -0.5, -0.75, -0.25, 0.0, -0.5, -1.0, 0.25, 0.25, 0.25, -0.75, 0.0, 1.0, 0.25, 0.5, -0.75, 0.25, -0.5, -0.75, 0.5, -0.5, 1.0, 0.75, 0.5, -0.75, 0.25, 1.0, 0.5, -0.25, 0.5, 0.5, -1.0, -0.5, -0.5, 0.25, 0.25, 0.25, 0.0, -0.5, 0.75, 0.25, -1.0, 0.5, -0.75, 0.75, 0.75, -0.5, -0.25, 0.25, -0.75, ]);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device130.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device90.destroy();
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    texture505.destroy();
    
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const query507 = device50.createQuerySet({
        label: "query507",
        type: "occlusion",
        count: 32,
    });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    const query508 = device50.createQuerySet({
        label: "query508",
        type: "occlusion",
        count: 32,
    });
    
    device140.destroy();
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query509 = device50.createQuerySet({
        label: "query509",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.pushErrorScope("out-of-memory");
    device150.pushErrorScope("out-of-memory");
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    
    
    
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    
    
    
    
    
    
    const query5010 = device50.createQuerySet({
        label: "query5010",
        type: "occlusion",
        count: 32,
    });
    
    const query5011 = device50.createQuerySet({
        label: "query5011",
        type: "occlusion",
        count: 32,
    });
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device50.pushErrorScope("internal");
    
    texture506.destroy();
    const array18 = new Float32Array([-0.75, -0.5, -0.75, 0.75, 0.25, 0.5, -0.5, -1.0, 0.25, 0.5, 0.0, 0.25, 0.75, 0.5, 1.0, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, -1.0, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, 0.75, 0.25, -0.25, -0.5, 1.0, 0.0, -0.25, -0.75, -0.75, -1.0, 0.5, -0.25, -0.25, -1.0, -1.0, -0.5, 0.75, 0.25, -1.0, 0.5, -1.0, -0.25, -1.0, 0.25, -0.25, 0.5, 0.75, 0.5, 0.25, -1.0, 0.75, -1.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.75, -0.75, 0.0, 0.5, -0.75, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, 0.25, 0.25, 0.25, -0.75, -0.75, 0.25, -0.25, -0.5, 0.25, -0.75, 0.25, 1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 0.25, 1.0, -0.25, 0.0, -1.0, 0.25, -0.25, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.pushErrorScope("internal");
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device120.pushErrorScope("validation");
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/shader_module1501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile(__dirname + '/shader_module1502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    
    var shader_module1503_code = "";
    try {
        shader_module1503_code = await fs.readFile(__dirname + '/shader_module1503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1503 = await device150.createShaderModule({ label: "shader_module1503", code: shader_module1503_code })
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1200.destroy();
    
    
    
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1504_code = "";
    try {
        shader_module1504_code = await fs.readFile(__dirname + '/shader_module1504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1504 = await device150.createShaderModule({ label: "shader_module1504", code: shader_module1504_code })
    
    
    
    texture1600.destroy();
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    texture1500.destroy();
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1505_code = "";
    try {
        shader_module1505_code = await fs.readFile(__dirname + '/shader_module1505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1505 = await device150.createShaderModule({ label: "shader_module1505", code: shader_module1505_code })
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    
    const texture1700 = device170.createTexture({
        label: "texture1700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    
    
    device160.pushErrorScope("internal");
    const query5012 = device50.createQuerySet({
        label: "query5012",
        type: "occlusion",
        count: 32,
    });
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    texture1501.destroy();
    
    
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1502 = device150.createSampler( { label: "sampler1502" } );
    const sampler1503 = device150.createSampler( { label: "sampler1503" } );
    texture1202.destroy();
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array19 = new Float32Array([1.0, 0.25, 0.0, -0.75, 0.25, -0.5, -1.0, -0.75, 1.0, 0.75, 1.0, -1.0, 1.0, 1.0, 0.75, -1.0, -1.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 1.0, 0.25, -0.75, -0.25, 1.0, 0.25, 0.5, 0.5, 0.25, 0.5, 1.0, -1.0, -0.25, -1.0, 1.0, 0.0, 0.5, -0.5, 1.0, 0.25, 0.25, 1.0, -0.25, -0.75, 1.0, 0.25, -0.25, 0.0, -0.5, 0.25, 0.25, 0.0, -0.75, -0.75, 0.25, 0.75, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, 0.25, -0.75, -0.25, 0.25, 0.25, -0.25, 0.25, -0.25, 0.0, 0.5, 0.0, 0.75, -1.0, -0.75, 0.0, 0.25, 0.25, 0.75, 0.75, -0.75, 0.0, 0.0, -0.5, -0.5, 1.0, -0.75, 0.5, 0.25, 0.0, -0.75, -0.5, 0.75, -0.75, ]);
    
    device150.destroy();
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("validation");
    device120.pushErrorScope("internal");
    
    
    texture1201.destroy();
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device170.pushErrorScope("validation");
    
    
    
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture1204 = device120.createTexture({
        label: "texture1204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device160.destroy();
    
    const texture1701 = device170.createTexture({
        label: "texture1701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device170.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}