struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1000f), Struct_1(-160f), Struct_1(1000f), Struct_1(501f), Struct_1(-747f), Struct_1(-109f), Struct_1(1490f), Struct_1(-1164f), Struct_1(1031f), Struct_1(1000f), Struct_1(767f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<Struct_1, 24>();
    let var_0 = 0u;
    var var_1 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(969f * 1527f), true)) > 661f);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(183f * 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_div_f32(756f, 231f)), 834f)), 1292f, _wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(820f - 356f), _wgslsmith_f_op_f32(step(508f, -122f))))))));
    global0 = array<Struct_1, 24>();
    return global1[_wgslsmith_index_u32(0u, 11u)];
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    let var_0 = func_2(~u_input.a);
    var var_1 = (_wgslsmith_mod_u32(u_input.b.x, ~u_input.a) & 0u) < 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1984f));
    let var_3 = func_2(u_input.b.x);
    var var_4 = select(select(select(vec3<bool>(690f < var_2.a, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(true, false)), select(false, true, false), true)), select(vec3<bool>(select(true, true, false), true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false)))), !vec3<bool>(var_0.a == -150f, false, true)), select(!vec3<bool>(true, false, any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)))), select(vec3<bool>(arg_0 <= ~(-1i), any(vec3<bool>(false, false, true)), true), !vec3<bool>(all(vec3<bool>(false, false, true)), false, true), vec3<bool>(true, true, true)));
    return vec3<bool>(true, select(any(var_4.yy), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) != var_0.a), var_4.x);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = func_2(4294967295u);
    var var_2 = vec3<bool>(select(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), true), true, !(!all(vec4<bool>(true, true, false, false))));
    var var_3 = !vec3<bool>(var_2.x, true, all(func_3(u_input.c, global0[_wgslsmith_index_u32(u_input.a, 24u)], var_1.a)) && false);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1754f)))));
    return global0[_wgslsmith_index_u32(arg_0.x, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(935f);
    let var_1 = -225f;
    var var_2 = func_1(~firstLeadingBit(vec4<u32>(u_input.b.x ^ u_input.b.x, ~75642u, u_input.a, u_input.b.x ^ u_input.a)));
    let var_3 = func_2(_wgslsmith_clamp_u32(68208u | u_input.a, u_input.a << (countOneBits(63659u) % 32u), countOneBits(~1726u)));
    let var_4 = vec3<i32>(u_input.c, 25502i, 26594i);
    var var_5 = 54183i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.x), vec2<f32>(-824f, _wgslsmith_f_op_f32(373f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.a))), 1i);
}

