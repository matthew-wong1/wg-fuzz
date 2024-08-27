struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-1i, vec4<f32>(-495f, 146f, -301f, 1363f), vec2<u32>(82122u, 936u), 29570u, true), Struct_1(-8600i, vec4<f32>(1000f, -1374f, 1562f, 1000f), vec2<u32>(0u, 4294967295u), 4294967295u, true), Struct_1(5958i, vec4<f32>(1990f, 1102f, -885f, 213f), vec2<u32>(1u, 12984u), 4294967295u, false), Struct_1(1i, vec4<f32>(1071f, -2113f, 907f, -162f), vec2<u32>(0u, 0u), 4294967295u, false), Struct_1(1i, vec4<f32>(187f, 974f, 408f, -661f), vec2<u32>(4294967295u, 19152u), 1u, true), Struct_1(-15636i, vec4<f32>(-1034f, 1000f, -141f, -711f), vec2<u32>(16336u, 70780u), 4294967295u, false), Struct_1(43907i, vec4<f32>(-440f, 1437f, 1000f, 2264f), vec2<u32>(1u, 1u), 77927u, true), Struct_1(-6772i, vec4<f32>(-1000f, 190f, 378f, -128f), vec2<u32>(4294967295u, 992u), 33109u, false), Struct_1(0i, vec4<f32>(-932f, 291f, -1313f, 953f), vec2<u32>(47441u, 113280u), 47101u, false), Struct_1(19066i, vec4<f32>(1000f, -1230f, -926f, 1000f), vec2<u32>(4294967295u, 1u), 32528u, true), Struct_1(22779i, vec4<f32>(2055f, -638f, -198f, 556f), vec2<u32>(48203u, 3259u), 1u, true), Struct_1(1i, vec4<f32>(548f, -392f, 308f, 615f), vec2<u32>(1u, 102637u), 9224u, false), Struct_1(i32(-2147483648), vec4<f32>(555f, -131f, -361f, -1134f), vec2<u32>(0u, 0u), 1u, true), Struct_1(9699i, vec4<f32>(-904f, 368f, -1897f, 1680f), vec2<u32>(1u, 4294967295u), 1u, true), Struct_1(-22717i, vec4<f32>(1000f, 722f, -297f, 822f), vec2<u32>(4294967295u, 4294967295u), 1u, false), Struct_1(-13014i, vec4<f32>(-559f, 1000f, -732f, -1468f), vec2<u32>(4294967295u, 13283u), 4294967295u, false), Struct_1(-1i, vec4<f32>(-442f, 1560f, 1383f, 1726f), vec2<u32>(0u, 37398u), 4294967295u, true));

var<private> global1: Struct_1;

var<private> global2: f32 = 762f;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(1i, 0i, -14223i), vec4<i32>(-4889i, 1i, i32(-2147483648), 23648i), 11879i, Struct_1(i32(-2147483648), vec4<f32>(-998f, 568f, 104f, 130f), vec2<u32>(4294967295u, 1u), 42439u, true), -1161f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~max(reverseBits(u_input.a.x), _wgslsmith_clamp_i32(i32(-1i) * -2114i, ~1i, firstLeadingBit(u_input.a.x))), _wgslsmith_f_op_vec4_f32(-global1.b), vec2<u32>(~(~global1.d), global1.c.x & global3.d.c.x), global1.c.x, !(global3.d.c.x >= global1.c.x) || true);
    let x = u_input.a;
    s_output = StorageBuffer(-min(global1.a, countOneBits(countOneBits(1i))));
}

