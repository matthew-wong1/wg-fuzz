struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(5183u, 0u, 0u, 1u), vec4<u32>(4294967295u, 1u, 88842u, 4294967295u), vec4<u32>(33412u, 0u, 1u, 77924u), vec4<u32>(16932u, 4294967295u, 0u, 1u), vec4<u32>(0u, 24584u, 0u, 0u), vec4<u32>(92075u, 0u, 1u, 58408u), vec4<u32>(1040u, 4294967295u, 1u, 9170u), vec4<u32>(1u, 20924u, 1u, 32814u), vec4<u32>(1u, 12050u, 1u, 27810u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(8727u, 1u, 7869u, 4294967295u), vec4<u32>(4294967295u, 89299u, 1u, 1u), vec4<u32>(28051u, 1u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 45017u), vec4<u32>(1u, 8353u, 0u, 1u), vec4<u32>(10438u, 36356u, 37273u, 1u), vec4<u32>(0u, 10862u, 4294967295u, 61454u), vec4<u32>(24808u, 4294967295u, 1u, 14177u), vec4<u32>(46849u, 55200u, 2040u, 88593u), vec4<u32>(0u, 31443u, 34958u, 10881u), vec4<u32>(4294967295u, 540u, 4294967295u, 0u));

var<private> global1: Struct_2 = Struct_2(Struct_1(i32(-2147483648), vec4<u32>(26362u, 0u, 7463u, 0u), 3818u, 61496i, vec4<u32>(15215u, 1u, 63584u, 4294967295u)), Struct_1(0i, vec4<u32>(4294967295u, 29164u, 72738u, 4227u), 75064u, 0i, vec4<u32>(9429u, 50342u, 0u, 4294967295u)), 16834u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-274f, -1000f)) * -657f), 1184f)), 3064i);
}

