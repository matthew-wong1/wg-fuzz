struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 107989u, 0u, 4294967295u);

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: array<f32, 23>;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(24187u, 2147483647i), Struct_1(1u, 0i), Struct_1(1u, 40059i), Struct_1(37881u, 2147483647i), Struct_1(3413u, 2147483647i), Struct_1(38965u, 58651i), Struct_1(0u, -21125i), Struct_1(1u, -62468i), Struct_1(10037u, -40359i), Struct_1(0u, -1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.x, global0.x, 1u, global0.x)) ^ vec4<u32>(min(3273u, global0.x), global0.x, ~14923u, _wgslsmith_mult_u32(642u, global0.x)), ~vec4<u32>(3736u, global0.x, 0u, global0.x) | vec4<u32>(global0.x, ~3891u, global0.x, global0.x & global0.x)), max(~1u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 2661u, global0.x), vec4<u32>(54053u, global0.x, global0.x, global0.x)) & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 43246u), vec4<u32>(global0.x, global0.x, 27437u, 4294967295u)))), _wgslsmith_f_op_f32(-1220f * _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(global0.x, 23u)]))));
}

