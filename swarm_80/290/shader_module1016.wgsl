struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(22942u, 0u), vec3<u32>(67148u, 33345u, 18587u), 1i, vec4<u32>(1u, 37204u, 1u, 4294967295u)), Struct_1(vec2<u32>(14679u, 0u), vec3<u32>(0u, 4294967295u, 49093u), 0i, vec4<u32>(50342u, 0u, 1u, 97794u)), Struct_1(vec2<u32>(40819u, 98589u), vec3<u32>(1u, 0u, 1u), -45771i, vec4<u32>(33629u, 4294967295u, 0u, 4294967295u)), Struct_1(vec2<u32>(0u, 32396u), vec3<u32>(36980u, 2822u, 8022u), 35837i, vec4<u32>(49292u, 14277u, 29748u, 8063u)), Struct_1(vec2<u32>(0u, 23457u), vec3<u32>(4294967295u, 4294967295u, 23159u), i32(-2147483648), vec4<u32>(0u, 11163u, 4294967295u, 46131u)), Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(104116u, 0u, 4294967295u), 1i, vec4<u32>(51938u, 64006u, 50562u, 29351u)), Struct_1(vec2<u32>(7224u, 4294967295u), vec3<u32>(20816u, 21010u, 21643u), 7675i, vec4<u32>(37308u, 31438u, 13636u, 0u)), Struct_1(vec2<u32>(4307u, 16188u), vec3<u32>(4294967295u, 43887u, 13146u), 31181i, vec4<u32>(4294967295u, 0u, 32707u, 1u)), Struct_1(vec2<u32>(22785u, 0u), vec3<u32>(1u, 9185u, 1u), -24346i, vec4<u32>(30936u, 60445u, 6871u, 4294967295u)), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(1u, 21691u, 1531u), 0i, vec4<u32>(57684u, 4294967295u, 22003u, 59749u)), Struct_1(vec2<u32>(82030u, 11949u), vec3<u32>(33128u, 1u, 4294967295u), 2147483647i, vec4<u32>(4294967295u, 49124u, 1u, 33707u)), Struct_1(vec2<u32>(64824u, 0u), vec3<u32>(152u, 14028u, 0u), 2147483647i, vec4<u32>(12318u, 1u, 43124u, 1u)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<u32>(1u, 4294967295u, 1u), 0i, vec4<u32>(1174u, 1u, 1u, 1u)), Struct_1(vec2<u32>(1u, 53861u), vec3<u32>(54056u, 4294967295u, 4294967295u), -34272i, vec4<u32>(96258u, 40312u, 42575u, 4294967295u)), Struct_1(vec2<u32>(42118u, 6793u), vec3<u32>(4294967295u, 23212u, 12946u), 2147483647i, vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_1(vec2<u32>(0u, 131434u), vec3<u32>(66822u, 18482u, 4294967295u), 17989i, vec4<u32>(29106u, 1u, 4294967295u, 18918u)), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(8385u, 30529u, 47840u), -1i, vec4<u32>(31214u, 3676u, 4294967295u, 4294967295u)), Struct_1(vec2<u32>(97507u, 22573u), vec3<u32>(4294967295u, 0u, 4294967295u), 18362i, vec4<u32>(1u, 9445u, 0u, 1u)), Struct_1(vec2<u32>(10071u, 37736u), vec3<u32>(4294967295u, 20088u, 1u), -33294i, vec4<u32>(1u, 1u, 0u, 93622u)));

var<private> global1: f32;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = ~u_input.b.xxy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f));
}

