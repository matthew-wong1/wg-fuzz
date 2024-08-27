struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: u32 = 44863u;

var<private> global2: array<vec3<f32>, 6>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: bool) -> u32 {
    global2 = array<vec3<f32>, 6>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-879f - _wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(-234f - 307f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12697u, 32u)] * 1812f) + global0[_wgslsmith_index_u32(arg_2, 32u)]) + _wgslsmith_f_op_f32(trunc(2342f)))), global0[_wgslsmith_index_u32(~(~1u), 32u)], 927f, global0[_wgslsmith_index_u32(arg_2, 32u)]);
    global3 = Struct_1(global3.d.zww, all(select(global3.c.yx, select(vec2<bool>(false, arg_3), vec2<bool>(true, true), global3.a.x), !any(vec2<bool>(false, global3.c.x)))), !(!(!select(global3.c, global3.d, global3.d))), vec4<bool>(arg_3, true, any(global3.e), arg_3), global3.e);
    let var_1 = -1260f;
    var var_2 = Struct_1(!(!global3.c.wzy), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 + var_1)))) != _wgslsmith_f_op_f32(f32(-1f) * -163f), !vec4<bool>(global3.a.x, select(global3.e.x, false, global3.d.x | false), arg_3 & all(global3.d.xwz), false), global3.c, !select(select(global3.e, vec2<bool>(false, false), vec2<bool>(false, global3.c.x)), select(vec2<bool>(true, true), global3.a.zx, 1u >= arg_2), vec2<bool>(true, true)));
    return 62880u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_1(select(select(!vec3<bool>(arg_2.x, false, true), arg_1.d.zyw, !arg_1.a), vec3<bool>(true, !arg_2.x | false, true), all(!vec2<bool>(false, arg_2.x))), false, vec4<bool>(!((global3.a.x | arg_0.b) && true), (~30992u > func_3(vec4<i32>(u_input.a.x, u_input.c.x, u_input.b, 73514i), vec3<i32>(u_input.c.x, u_input.c.x, 0i), 45622u, arg_0.b)) || !all(global3.c), any(!arg_2), u_input.b == _wgslsmith_sub_i32(-u_input.c.x, 70984i)), arg_1.d, !(!(!arg_0.a.zx)));
    global1 = _wgslsmith_add_u32(1u, ~_wgslsmith_mult_u32(7141u, select(reverseBits(30104u), 1u, true)));
    var var_1 = 4294967295u;
    global0 = array<f32, 32>();
    var var_2 = Struct_1(select(!vec3<bool>(arg_0.a.x, var_0.d.x, true), var_0.d.xwx, !vec3<bool>(arg_0.c.x, !arg_1.d.x, global3.c.x | arg_2.x)), select(!all(arg_0.d.wz), 2147483647i != _wgslsmith_dot_vec4_i32(abs(u_input.a), abs(u_input.a)), var_0.c.x), select(vec4<bool>(true, select(false & var_0.a.x, arg_2.x, select(false, true, arg_0.c.x)), all(!global3.c), false), vec4<bool>(true, true, true, true), select(true, false, global3.c.x)), select(global3.c, vec4<bool>(true, var_0.e.x, true, (-25909i >> (1u % 32u)) == u_input.c.x), select(select(!arg_0.c, arg_1.d, false), arg_1.d, !select(vec4<bool>(true, var_0.d.x, true, var_0.c.x), arg_1.d, global3.d))), !(!(!vec2<bool>(arg_1.b, var_0.e.x))));
    return _wgslsmith_dot_vec3_u32(~firstTrailingBit(~vec3<u32>(1u, 1u, 1u)), countOneBits(vec3<u32>(1u, 1u, 1u)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    var var_0 = -(~u_input.c.x);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 19473u), max(0u, 10159u))), ~1u), ~vec2<u32>(~(~0u), func_2(Struct_1(vec3<bool>(global3.e.x, arg_0, true), global3.d.x, global3.d, vec4<bool>(true, false, arg_0, global3.c.x), vec2<bool>(global3.c.x, false)), Struct_1(global3.c.yzx, false, vec4<bool>(arg_0, global3.a.x, false, true), global3.c, vec2<bool>(true, arg_0)), select(global3.a, vec3<bool>(true, global3.c.x, arg_0), arg_0))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(abs(func_2(Struct_1(vec3<bool>(global3.c.x, true, global3.b), global3.a.x, vec4<bool>(arg_0, global3.b, true, false), vec4<bool>(true, arg_0, false, true), global3.a.yz), Struct_1(vec3<bool>(global3.e.x, false, true), true, vec4<bool>(false, arg_0, true, global3.b), vec4<bool>(global3.e.x, true, arg_0, false), global3.c.yy), vec3<bool>(arg_0, true, arg_0)))), 1u, abs(func_2(Struct_1(global3.c.zwz, global3.e.x, global3.d, global3.c, global3.e), Struct_1(global3.d.xww, global3.b, vec4<bool>(arg_0, arg_0, false, arg_0), global3.d, vec2<bool>(true, global3.a.x)), vec3<bool>(global3.a.x, false, true)))), vec3<u32>(~1u, 15647u, 4294967295u));
    let var_3 = -firstTrailingBit(-22993i) & ~(-(i32(-1i) * -1i));
    global2 = array<vec3<f32>, 6>();
    return 23881u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(select(!vec3<bool>(all(global3.c.ww), true, true), vec3<bool>(true, global3.b, !all(global3.d.zwx)), !(!(!vec3<bool>(false, false, global3.d.x)))), abs(_wgslsmith_clamp_u32(~28729u, ~9680u, func_1(global3.d.x, vec4<f32>(-208f, global0[_wgslsmith_index_u32(0u, 32u)], -1725f, global0[_wgslsmith_index_u32(70753u, 32u)])))) != 1u, global3.d, global3.c, !vec2<bool>(any(vec4<bool>(true, global3.a.x, true, true)), !global3.e.x));
    var var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(63811u, 32u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 32u)] + -809f)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~4294967295u, 32u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]));
    global3 = Struct_1(select(vec3<bool>(global3.e.x, true, all(global3.d) & true), select(select(global3.d.zzx, select(vec3<bool>(global3.e.x, global3.b, true), vec3<bool>(global3.e.x, global3.a.x, true), global3.d.x), false), vec3<bool>(any(global3.d.zy), global3.a.x, all(vec4<bool>(true, global3.d.x, global3.a.x, false))), global3.d.yzy), global3.d.x), !(!(u_input.a.x != 0i) | all(select(vec3<bool>(global3.b, global3.d.x, true), global3.d.xwx, global3.d.x))), vec4<bool>(global3.e.x, true, false, all(!select(vec2<bool>(true, true), global3.e, vec2<bool>(true, false)))), select(vec4<bool>(any(vec2<bool>(global3.a.x, false)), global3.e.x, any(global3.d), !(!global3.d.x)), vec4<bool>(var_0.x >= var_0.x, false, true, true), !global3.d.x), select(vec2<bool>(true, var_0.x <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(41723u, 32u)])), vec2<bool>(all(!vec2<bool>(global3.a.x, false)), all(!vec4<bool>(global3.e.x, global3.d.x, global3.e.x, global3.e.x))), global3.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(63769u, 22505u, vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]), var_0.x, _wgslsmith_f_op_f32(sign(-1000f)), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 86264u), vec3<u32>(0u, 40975u, 0u))), 32u)]));
}

