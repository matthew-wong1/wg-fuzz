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
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.popDebugGroup()
    command_encoder000.clearBuffer(buffer001);
    query000.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_buffer002 = command_encoder002.finish();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    command_encoder001.clearBuffer(buffer001);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer001.destroy()
    device00.pushErrorScope("internal");
    
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder003.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    texture000.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder003.popDebugGroup()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query000.destroy()
    command_encoder003.insertDebugMarker("mymarker");
    
    const command_buffer001 = command_encoder001.finish();
    query001.destroy()
    
    
    const command_buffer003 = command_encoder003.finish();
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.pushErrorScope("validation");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder000.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder002.popDebugGroup();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer001, ]);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query000.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.destroy();
    
    
    buffer002.destroy()
    query002.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query001.destroy()
    
    
    render_bundle_encoder001.popDebugGroup();
    
    
    query003.destroy()
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder000.popDebugGroup()
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    command_encoder004.insertDebugMarker("mymarker");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.popDebugGroup();
    query001.destroy()
    
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder004.pushDebugGroup("mygroupmarker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query000.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    command_encoder000.clearBuffer(buffer004);
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer004,
        0,
        400
    );
    
    device00.pushErrorScope("internal");
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer004.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder002.popDebugGroup();
    command_encoder004.popDebugGroup()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    
    buffer005.destroy()
    command_encoder004.pushDebugGroup("mygroupmarker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query003.destroy()
    
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder004.insertDebugMarker("mymarker");
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
    command_encoder005.pushDebugGroup("mygroupmarker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder004.insertDebugMarker("mymarker");
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    command_encoder004.insertDebugMarker("mymarker");
    
    query003.destroy()
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    query000.destroy()
    query003.destroy()
    query003.destroy()
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    device00.pushErrorScope("validation");
    
    
    query001.destroy()
    
    
    command_encoder000.popDebugGroup()
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
    query002.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.popDebugGroup();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    render_bundle_encoder002.popDebugGroup();
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    texture002.destroy();
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query006.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder006.insertDebugMarker("mymarker");
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder000.popDebugGroup();
    query001.destroy()
    
    
    query006.destroy()
    command_encoder006.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer003.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device30.pushErrorScope("out-of-memory");
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    
    query000.destroy()
    query002.destroy()
    
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder002.popDebugGroup();
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    query002.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    query003.destroy()
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query001.destroy()
    device00.pushErrorScope("out-of-memory");
    
    command_encoder005.insertDebugMarker("mymarker");
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    command_encoder006.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder001.popDebugGroup();
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    command_encoder000.insertDebugMarker("mymarker");
    buffer008.destroy()
    
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const command_buffer000 = command_encoder000.finish();
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query005.destroy()
    
    query002.destroy()
    query004.destroy()
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder008.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    texture003.destroy();
    const command_buffer008 = command_encoder008.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    
    command_encoder004.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder007.insertDebugMarker("mymarker");
    
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    
    command_encoder006.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    query002.destroy()
    query001.destroy()
    command_encoder007.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    
    buffer301.destroy()
    
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer006.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query006.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    query007.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder005.insertDebugMarker("mymarker");
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module0017_code = "";
    try {
        shader_module0017_code = await fs.readFile(__dirname + '/shader_module0017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0017 = await device00.createShaderModule({ label: "shader_module0017", code: shader_module0017_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    query005.destroy()
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    command_encoder007.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    
    
    
    
    
    
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    query007.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    query001.destroy()
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query006.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder006.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    texture004.destroy();
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder004.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder004.popDebugGroup()
    
    device50.pushErrorScope("internal");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    buffer302.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    
    
    
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer007,
        0
    )
    const command_buffer007 = command_encoder007.finish();
    command_encoder005.popDebugGroup()
    command_encoder200.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    const command_buffer005 = command_encoder005.finish();
    const command_buffer501 = command_encoder501.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer200 = command_encoder200.finish();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer006 = command_encoder006.finish();
    const command_buffer004 = command_encoder004.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
}