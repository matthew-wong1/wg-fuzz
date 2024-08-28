struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, true, false, false);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1000f, -146f, 970f), true, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(168f)), -1900f, global1.a.x));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_u32(53482u, 2378u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, -1251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1482f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), true)), any(!vec3<bool>(any(vec4<bool>(arg_0, global1.d, arg_0, arg_0)), true, arg_0)), true, any(!vec4<bool>(u_input.b > 1u, true, u_input.c > -3265i, true)));
    var var_2 = select(select(vec3<bool>(89994u >= var_0, !any(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(var_0, 4u)], false)), global1.b), select(vec3<bool>(true, true, true), vec3<bool>(278f < var_1.a.x, global0[_wgslsmith_index_u32(67377u, 4u)], arg_0), select(!vec3<bool>(false, global1.d, false), !vec3<bool>(true, arg_0, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(9165u, 4u)]))), vec3<bool>(true, var_1.b, true)), select(vec3<bool>(global1.d, select(any(vec2<bool>(global1.c, true)), 1291f <= var_1.a.x, select(true, arg_0, var_1.c)), arg_0), !vec3<bool>(false, true, !arg_0), select(select(!vec3<bool>(global1.c, global1.b, var_1.b), !vec3<bool>(global1.d, true, global1.b), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 4u)], arg_0, true)), !select(vec3<bool>(var_1.d, true, true), vec3<bool>(false, arg_0, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false, global1.d)), select(false, false, true))), vec3<bool>(all(select(vec2<bool>(false, global1.d), vec2<bool>(false, global1.d), true)) & !(u_input.a >= u_input.a), true, any(!vec3<bool>(global1.d, false, global0[_wgslsmith_index_u32(var_0, 4u)])) == var_1.c));
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0, var_0, 25847u), vec4<u32>(26884u, 274u, var_0, var_0)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, u_input.b), ~vec2<u32>(4294967295u, 4294967295u)), u_input.b, ~(~var_0)), vec4<u32>(_wgslsmith_div_u32(var_0, u_input.b), 1u, var_0, _wgslsmith_div_u32(u_input.b, u_input.b)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 51223u, 4294967295u, u_input.b), vec4<u32>(u_input.b, var_0, 4294967295u, 42665u))), u_input.b);
    var_2 = select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(global1.c, all(!select(vec3<bool>(false, global1.c, global1.b), vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], var_2.x, global0[_wgslsmith_index_u32(var_3, 4u)]), false)), !all(vec4<bool>(false, false, global1.c, global1.b)) || !all(vec4<bool>(global1.d, var_2.x, false, true))), !(!vec3<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 4u)], false, global1.b)), arg_0 && global0[_wgslsmith_index_u32(7696u, 4u)], true)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), false, var_2.x, all(select(var_2.xx, vec2<bool>(false, global1.a.x == -2140f), vec2<bool>(true, true))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = ~(~u_input.b >> (u_input.b % 32u));
    global1 = func_2(true);
    global0 = array<bool, 4>();
    var var_1 = func_2(global0[_wgslsmith_index_u32(u_input.b, 4u)]);
    var var_2 = 899f;
    return Struct_1(global1.a, true, true, var_1.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.a.yz + arg_1.a.xz))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(456f)) - global1.a.x), 591f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1152f), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.x, -1455f), arg_1.a.x))));
    var var_1 = abs(~select(select(~vec3<u32>(4294967295u, arg_3, 64693u), select(vec3<u32>(537u, u_input.b, arg_3), vec3<u32>(u_input.b, 4294967295u, arg_3), arg_0.x), u_input.c == u_input.a), reverseBits(~vec3<u32>(u_input.b, arg_3, u_input.b)), vec3<bool>(true, arg_2, all(vec3<bool>(arg_0.x, true, true)))));
    global0 = array<bool, 4>();
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(414f, var_0.x, arg_1.b)), -517f)))), arg_1.a.yy));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))), global1.a, !(!(!vec3<bool>(true, arg_2, true))))), !arg_1.d, true, all(vec3<bool>(u_input.c >= u_input.c, true && all(vec4<bool>(false, arg_2, false, false)), !arg_0.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a.x * -1259f))), _wgslsmith_f_op_f32(max(1f, var_2.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.a.x, 1000f)), _wgslsmith_f_op_f32(-var_0.x), all(vec4<bool>(false, false, false, arg_0.x))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(781f, var_2.a.x, -1873f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, arg_1.a.x, -236f))))), 1i <= reverseBits(_wgslsmith_mult_i32(u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, 655f, _wgslsmith_f_op_f32(f32(-1f) * -255f)), _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, true), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1332f), u_input.b, u_input.c), false, _wgslsmith_clamp_u32(max(u_input.b, 0u), 1u, 4294967295u))), !(!vec3<bool>(false, false, global1.b)))), all(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(22230u, 4u)], false, global1.d, global1.d)))), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.x * global1.a.x))), 1000f, true)) > 102f);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a.x, -467f, var_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(467f + _wgslsmith_div_f32(global1.a.x, global1.a.x)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(min(global1.a.x, 376f)))))), global1.d, select(global1.c, any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 0u), 4u)], global1.b || global0[_wgslsmith_index_u32(u_input.b, 4u)], u_input.a == -30136i)), !global0[_wgslsmith_index_u32(1u, 4u)]), global1.a.x >= _wgslsmith_f_op_f32(f32(-1f) * -1234f));
    var var_1 = vec3<f32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_div_f32(-800f, var_0.a.x))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 1u) & ~vec2<u32>(u_input.b, u_input.b), abs(~vec2<u32>(1u, 4294967295u))), _wgslsmith_add_i32(countOneBits(3680i) >> (reverseBits(u_input.b) % 32u), -reverseBits(-30851i))).a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))), -1621f);
    var var_2 = !select(select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 4u)], global1.c), vec3<bool>(false, false, global1.c), global0[_wgslsmith_index_u32(0u, 4u)]), vec3<bool>(true, true, true), true), !(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false, global0[_wgslsmith_index_u32(u_input.b, 4u)])), vec3<bool>(true, var_0.d, true)), vec3<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], false)), func_1(_wgslsmith_f_op_f32(var_0.a.x + 1000f), 1u, -u_input.a).c, global0[_wgslsmith_index_u32(u_input.b << (4294967295u % 32u), 4u)]), vec3<bool>(true, (i32(-1i) * -2147483647i) >= u_input.a, false));
    var var_3 = func_2(var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_3.a))), _wgslsmith_f_op_f32(f32(-1f) * -1489f), u_input.b);
}

