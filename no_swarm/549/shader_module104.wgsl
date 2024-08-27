struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = true;
    let var_1 = Struct_1(vec4<f32>(1f, 1f, 1f, 1f), -759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1535f) + -426f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(975f + -800f) - _wgslsmith_div_f32(206f, -483f)))), !(!all(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global0 = array<vec4<i32>, 21>();
    let var_2 = var_1;
    let var_3 = -_wgslsmith_div_i32((i32(-1i) * -33370i) << (_wgslsmith_dot_vec2_u32(~u_input.c.yx, vec2<u32>(u_input.b, u_input.b)) % 32u), ~_wgslsmith_mod_i32(0i, 1i));
    return 190f;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    var var_0 = -2514i;
    var var_1 = firstTrailingBit(vec3<i32>(min(-25640i, 12448i), 7544i, ~(~(~1019i))));
    let var_2 = true;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-567f - _wgslsmith_f_op_f32(297f * 1568f)), _wgslsmith_f_op_f32(func_3()), var_2)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -257f)));
    let var_2 = ~_wgslsmith_sub_u32(u_input.c.x, firstTrailingBit(~_wgslsmith_mod_u32(17606u, u_input.b)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f * _wgslsmith_f_op_f32(func_2(u_input.c.xxy)))) + -258f);
    global0 = array<vec4<i32>, 21>();
    return Struct_1(vec4<f32>(1069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-arg_0), var_0), -221f, 1301f, true, abs(abs(abs(0i))) == firstTrailingBit(-42370i));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    global0 = array<vec4<i32>, 21>();
    let var_0 = u_input.c;
    let var_1 = any(select(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_2.d, false), !vec2<bool>(arg_2.d, arg_1.d)), select(!vec2<bool>(arg_1.e, false), !vec2<bool>(arg_3, true), all(vec4<bool>(arg_3, arg_2.d, true, arg_2.e))), vec2<bool>(arg_2.d, any(vec3<bool>(arg_2.e, true, arg_2.e)))), select(vec2<bool>(false, false), select(select(vec2<bool>(arg_0, arg_2.d), vec2<bool>(arg_2.e, false), vec2<bool>(true, true)), select(vec2<bool>(arg_1.d, arg_1.e), vec2<bool>(arg_2.e, arg_3), vec2<bool>(arg_3, false)), vec2<bool>(arg_3, true)), select(vec2<bool>(arg_3, false), vec2<bool>(true, true), !vec2<bool>(arg_2.e, arg_1.e))), !vec2<bool>(!arg_2.d, arg_1.e | arg_1.d)));
    global0 = array<vec4<i32>, 21>();
    var var_2 = arg_2;
    return ~_wgslsmith_dot_vec2_u32(countOneBits(var_0.zy), vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(19910u, 30445u, 4294967295u)), vec3<u32>(1u, u_input.b, 1u)), _wgslsmith_dot_vec4_u32(~u_input.c, ~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.a);
    let var_1 = -10641i;
    let var_2 = ~(~u_input.b);
    var_0 = var_2;
    let var_3 = vec3<bool>(func_4(all(vec4<bool>(false, false, false, true)) | true, func_1(-672f), func_1(_wgslsmith_f_op_f32(1000f - -1261f)), any(vec2<bool>(true, true))) < ((reverseBits(var_2) >> (20476u % 32u)) & _wgslsmith_mod_u32(u_input.c.x, var_2)), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(63897u, 21u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, var_2), 21u)]) < _wgslsmith_sub_i32(-1i, abs(var_1)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_4 = var_2;
    let var_5 = vec2<u32>(countOneBits(1u), 66508u) >> (u_input.c.wx % vec2<u32>(32u));
    var var_6 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(-1809f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(44528u, var_2, var_5.x)), vec3<u32>(~var_2 | min(0u, u_input.a), 1u, _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(u_input.c.x, 57770u, 4294967295u, 49225u)))), var_1, 15311u | (9917u & func_4(false, func_1(488f), func_1(162f), all(var_3.xx))), vec3<i32>(1i, select(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_1, var_1), vec2<i32>(var_1, var_1), var_3.yy), vec2<i32>(-2147483647i, var_1) ^ vec2<i32>(-2147483647i, -27279i)), ~(-2020i), func_1(451f).d && true), var_1 | abs(-28262i)));
}

