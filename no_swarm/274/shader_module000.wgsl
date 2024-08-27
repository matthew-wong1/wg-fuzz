struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = arg_1.xy;
    var var_1 = _wgslsmith_f_op_f32(ceil(469f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) - 1440f)));
    var var_2 = arg_0;
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = -(~(~(vec4<i32>(-1i) * -vec4<i32>(-809i, 13101i, 41301i, -1i))));
    var var_1 = 27394i;
    var var_2 = arg_1;
    let var_3 = arg_1;
    var var_4 = func_1(Struct_1(false), select(vec4<bool>(!all(vec3<bool>(var_2.a, var_2.a, var_2.a)), arg_1.a, any(vec2<bool>(var_3.a, arg_1.a)), var_2.a), vec4<bool>(true, true, var_2.a, false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, var_3.a, true, var_3.a), u_input.d <= var_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1787f - 1286f)) + -231f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(442f, -742f)), -742f))))));
}

fn func_3() -> bool {
    var var_0 = func_1(func_1(func_1(func_1(func_1(Struct_1(true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), u_input.a != 42925u)), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), (u_input.d != -1i) && true));
    var var_1 = Struct_1(_wgslsmith_mod_u32(u_input.c, u_input.a) <= u_input.c);
    let var_2 = vec2<i32>(u_input.b, ~2147483647i) >> ((vec2<u32>(~min(1u, 3648u), 4294967295u) << (vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), ~u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = Struct_1(!var_1.a);
    let var_4 = -7361i;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-871f, 617f))) - 592f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2098f)))))) - _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(965f * -227f), 265f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1355f)) + -617f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d, func_1(Struct_1(false), vec4<bool>(false, false, true, false)), firstLeadingBit(~41528u)))));
    var var_1 = vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(38981i, -19536i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 42342i), vec2<i32>(u_input.d, u_input.d))), ~1i), u_input.d);
    var var_2 = !func_3();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-520f, _wgslsmith_f_op_f32(func_2(abs(1i), Struct_1(true), ~u_input.c))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(589f * 1582f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1716f, var_0.x)))));
    var var_4 = func_1(Struct_1(true), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false)), vec4<bool>(all(vec3<bool>(false, true, false)), false, 28953i >= u_input.d, true), false), vec4<bool>(true, _wgslsmith_f_op_f32(-405f - -799f) <= _wgslsmith_f_op_f32(round(-342f)), any(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)) && true)));
    let var_5 = countOneBits(min(-vec3<i32>(abs(23762i), u_input.b, 5035i), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 54711i, -4114i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_1.x, u_input.d), vec3<i32>(0i, u_input.d, 12768i))), ~(~(-1i)))));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_5 << (vec3<u32>(1u, u_input.c, 0u) % vec3<u32>(32u)), firstLeadingBit(var_5)), -60539i), func_1(func_1(Struct_1(var_4.a), vec4<bool>(var_4.a, var_4.a, true, true)), vec4<bool>(var_4.a, true, !var_4.a, true)), ~min(u_input.c, 34251u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f) * var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-152f, var_3) * 1000f)) + _wgslsmith_f_op_f32(var_0.x - 217f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_1.x, ~var_1.x | _wgslsmith_div_i32(u_input.d, var_5.x)) ^ 2147483647i, ~0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, countOneBits(~21584u)), 0u));
}

