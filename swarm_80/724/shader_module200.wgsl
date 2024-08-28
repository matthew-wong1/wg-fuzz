struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(25806u, 38973u, 46581u, 30181u), vec4<f32>(-1000f, 1248f, -1104f, 1405f)), Struct_1(vec4<u32>(53843u, 4294967295u, 4294967295u, 1u), vec4<f32>(181f, 943f, 1513f, 454f)), Struct_1(vec4<u32>(4294967295u, 28690u, 23760u, 17358u), vec4<f32>(-199f, -570f, 671f, -1259f)), Struct_1(vec4<u32>(10851u, 6386u, 4294967295u, 0u), vec4<f32>(1000f, -456f, 1000f, -1757f)), Struct_1(vec4<u32>(0u, 1u, 120891u, 35721u), vec4<f32>(1558f, -2210f, -318f, 1207f)), Struct_1(vec4<u32>(90753u, 0u, 1u, 13421u), vec4<f32>(-597f, 1128f, 1707f, -863f)), Struct_1(vec4<u32>(51927u, 0u, 1u, 0u), vec4<f32>(1313f, -511f, -670f, 539f)), Struct_1(vec4<u32>(7582u, 14831u, 38384u, 1u), vec4<f32>(-1306f, 1000f, 1859f, -1857f)), Struct_1(vec4<u32>(95222u, 37920u, 0u, 4294967295u), vec4<f32>(-1033f, -1000f, 1000f, 1008f)), Struct_1(vec4<u32>(1u, 4294967295u, 25868u, 1u), vec4<f32>(535f, 651f, 1017f, 404f)), Struct_1(vec4<u32>(29711u, 0u, 4294967295u, 3922u), vec4<f32>(1567f, -754f, -1576f, -1306f)), Struct_1(vec4<u32>(0u, 1u, 0u, 47452u), vec4<f32>(1254f, -542f, -1489f, -1337f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_clamp_u32(~u_input.c, ~(~31692u), _wgslsmith_mult_u32(~u_input.a, 25986u));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(u_input.b.zx), u_input.b.yx) << (~(~u_input.d) % vec2<u32>(32u)));
}

