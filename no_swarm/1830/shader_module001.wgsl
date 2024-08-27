struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(73260u, 19u)];
    let var_1 = reverseBits(vec3<i32>(-u_input.a & abs(u_input.a), u_input.a, 1i));
    let var_2 = firstTrailingBit(arg_0);
    global1 = array<Struct_1, 19>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -119f))), _wgslsmith_f_op_f32(f32(-1f) * -425f))), -394f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.b.x)), 1504f, true))));
    return StorageBuffer(~(~(~(arg_0 >> (arg_0 % 32u)))), vec3<i32>(34235i, _wgslsmith_dot_vec2_i32(var_1.xz >> (~vec2<u32>(4166u, var_2) % vec2<u32>(32u)), vec2<i32>(-2795i, var_1.x)), 18028i), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    var var_0 = global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(~(select(vec2<u32>(4294967295u, 25304u), vec2<u32>(15778u, 1u), vec2<bool>(global0[_wgslsmith_index_u32(59324u, 7u)], false)) ^ vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), 12753u), 7u)];
    global0 = array<bool, 7>();
    let var_1 = vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 0u), ~vec2<u32>(142658u, 3931u)), vec2<u32>(1u, 1u)));
    global1 = array<Struct_1, 19>();
    global0 = array<bool, 7>();
    let var_2 = select(vec4<bool>((var_1.x != var_1.x) || true, true || all(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x, 7u)])), true, (var_1.x << (_wgslsmith_clamp_u32(var_1.x, 14070u, 1u) % 32u)) != 20143u), select(vec4<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(13309u, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)], true)), global0[_wgslsmith_index_u32(1u, 7u)], !global0[_wgslsmith_index_u32(~var_1.x, 7u)], reverseBits(u_input.a) > -1i), vec4<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)])), false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~7248u, ~var_1.x), 7u)]), global0[_wgslsmith_index_u32(~0u >> (~(~1u) % 32u), 7u)]), true);
    global1 = array<Struct_1, 19>();
    let var_3 = _wgslsmith_div_f32(996f, 3022f);
    let x = u_input.a;
    s_output = func_1(var_1.x, vec2<bool>(true, true));
}

