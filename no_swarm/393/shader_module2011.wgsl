struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> i32 {
    return -(~max(58820i, 1i)) & u_input.e;
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(vec2<bool>(false, false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 2074f))), _wgslsmith_f_op_f32(f32(-1f) * -579f)), vec3<i32>(abs(-min(u_input.e, u_input.e)), -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e, u_input.e), -vec2<i32>(-15427i, u_input.e)), -69i), max(4294967295u, u_input.b));
    let var_1 = var_0;
    var var_2 = !(!select(select(vec4<bool>(var_1.a.x, var_1.a.x, false, var_0.a.x), vec4<bool>(false, var_0.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(var_1.a.x, false, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, true, var_0.a.x, var_0.a.x))), vec4<bool>(true, var_0.a.x, true, var_1.a.x), vec4<bool>(var_0.a.x, true, !var_1.a.x, !var_0.a.x)));
    var_2 = select(!(!vec4<bool>(all(vec4<bool>(true, var_1.a.x, var_2.x, var_2.x)), true, true, all(vec2<bool>(false, true)))), vec4<bool>(true & var_1.a.x, var_1.a.x, true, true), select(select(!(!vec4<bool>(false, var_2.x, var_2.x, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, var_1.a.x, var_1.a.x), !var_1.a.x), true), !vec4<bool>(any(var_2.yzx), select(false, var_0.a.x, var_1.a.x), false, true), select(vec4<bool>(var_1.a.x, var_0.a.x, any(vec3<bool>(true, var_2.x, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_1.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, false, false, var_2.x), false), vec4<bool>(true, var_1.a.x, false, true)), !select(false, var_0.a.x, false))));
    var var_3 = Struct_1(var_2.yw, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 748f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -415f)))))), vec3<i32>(~_wgslsmith_div_i32(u_input.e, var_0.c.x), select(4681i, max(u_input.e, 2147483647i), !var_2.x), max(0i, select(var_1.c.x, 2147483647i, true))) & var_0.c, var_1.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-951f, _wgslsmith_f_op_f32(var_3.b.x * var_3.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.b.x, -376f), _wgslsmith_f_op_vec2_f32(ceil(var_0.b))), true)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(func_2(), ~2147483647i), -(i32(-1i) * -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(3040i, _wgslsmith_mod_i32(u_input.e, u_input.e)), vec2<i32>(u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(2480i, 2147483647i)))));
    var var_1 = u_input.a.x;
    let var_2 = arg_0.xz;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-911f))) + _wgslsmith_f_op_f32(-1712f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) * arg_1))), Struct_2(select(var_2, select(select(vec2<bool>(arg_0.x, var_2.x), vec2<bool>(arg_0.x, true), arg_0.x), arg_0.zz, var_2), false), Struct_1(vec2<bool>(!arg_0.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1039f, arg_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-903f, 708f))), reverseBits(~vec3<i32>(24792i, var_0.x, var_0.x)), 2087u), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-453f, 430f)))), -(vec3<i32>(-47586i, var_0.x, u_input.e) >> (vec3<u32>(u_input.b, u_input.c.x, 0u) % vec3<u32>(32u))), 3050u)), Struct_1(!(!arg_0.xz), _wgslsmith_f_op_vec2_f32(func_3()), ~(~vec3<i32>(-1951i, u_input.e, u_input.e)) & -firstTrailingBit(vec3<i32>(0i, var_0.x, 2287i)), u_input.a.x & firstLeadingBit(42443u)));
    var var_4 = var_3.b.c.c.xx << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~1u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_3.b.b.d, 4294967295u), u_input.a.yx) % vec2<u32>(32u)), ~min(u_input.c, _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(u_input.b, u_input.a.x)))) % vec2<u32>(32u));
    return Struct_2(select(select(var_2, arg_0.zy, select(!vec2<bool>(false, var_3.b.a.x), !vec2<bool>(var_3.b.c.a.x, arg_0.x), vec2<bool>(var_3.b.c.a.x, arg_0.x))), vec2<bool>(all(vec2<bool>(true, false)) == true, var_2.x), vec2<bool>(false, (u_input.a.x == u_input.b) & !arg_0.x)), Struct_1(arg_0.zx, var_3.c.b, var_3.b.c.c, u_input.a.x), var_3.b.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(!select(select(vec2<bool>(arg_2.c.a.x, false), vec2<bool>(false, true), vec2<bool>(false, arg_2.c.a.x)), select(vec2<bool>(false, arg_1), !vec2<bool>(arg_0.x, arg_0.x), select(vec2<bool>(arg_0.x, arg_1), arg_2.c.a, arg_0)), arg_0.x), func_1(select(!vec3<bool>(true, arg_2.c.a.x, arg_2.c.a.x), select(select(vec3<bool>(arg_2.b.a.x, false, false), vec3<bool>(arg_2.b.c.a.x, arg_0.x, true), vec3<bool>(false, false, false)), vec3<bool>(arg_1, arg_0.x, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_2.b.c.a.x, false))), -451f).b, arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(true, true), true, Struct_3(-1228f, func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(852f)))), func_1(vec3<bool>(true, true, true), -1882f).b));
    var var_1 = _wgslsmith_sub_i32(u_input.e, min(_wgslsmith_add_i32(1i, u_input.e), i32(-1i) * -u_input.e));
    var var_2 = var_0.b;
    let var_3 = func_4(vec2<bool>(func_1(select(vec3<bool>(false, true, true), vec3<bool>(false, var_2.a.x, var_2.a.x), true), _wgslsmith_f_op_f32(-538f - 918f)).c.a.x && all(!vec4<bool>(var_0.b.a.x, false, var_0.c.a.x, var_2.a.x)), !func_4(var_2.a, var_0.c.a.x, Struct_3(-590f, Struct_2(var_0.c.a, var_0.b, Struct_1(var_2.a, var_0.b.b, var_2.c, 0u)), Struct_1(vec2<bool>(false, var_2.a.x), vec2<f32>(var_2.b.x, 113f), vec3<i32>(2147483647i, -1i, u_input.e), 0u))).c.a.x), true, Struct_3(_wgslsmith_f_op_f32(sign(func_4(vec2<bool>(var_2.a.x, false), all(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true)), Struct_3(185f, var_0, var_0.c)).b.b.x)), func_4(vec2<bool>(true, all(vec2<bool>(true, false))), 0i >= u_input.e, Struct_3(_wgslsmith_f_op_f32(-var_0.c.b.x), func_4(var_2.a, true, Struct_3(var_2.b.x, var_0, var_0.c)), var_0.c)), var_0.c)).b;
    var var_4 = var_3;
    var_4 = func_1(select(!(!vec3<bool>(var_4.a.x, false, var_0.a.x)), vec3<bool>(!(!var_3.a.x), !var_3.a.x, var_2.a.x), select(var_4.a.x, var_2.a.x, var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1333f)).b;
    var_4 = func_4(func_1(!vec3<bool>(var_2.b.x <= var_3.b.x, all(var_0.b.a), var_4.a.x), var_3.b.x).b.a, var_0.c.a.x == var_4.a.x, Struct_3(_wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.b.x + 592f)))), var_0, func_1(vec3<bool>(select(var_2.a.x, var_0.a.x, true), false, var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-237f)) + -722f)).c)).b;
    var var_5 = var_0.b;
    var var_6 = func_4(var_4.a, true, Struct_3(-1846f, var_0, func_4(vec2<bool>(any(vec3<bool>(var_0.b.a.x, var_2.a.x, false)), func_4(var_3.a, var_0.a.x, Struct_3(var_2.b.x, var_0, Struct_1(var_2.a, vec2<f32>(var_5.b.x, -1234f), var_3.c, var_0.c.d))).c.a.x), true, Struct_3(var_0.c.b.x, Struct_2(vec2<bool>(var_5.a.x, true), var_0.c, Struct_1(vec2<bool>(false, var_4.a.x), var_4.b, var_3.c, var_4.d)), var_0.b)).b)).b;
    let x = u_input.a;
    s_output = StorageBuffer(0i, min(max(max(vec3<u32>(1u, var_5.d, 26438u), u_input.d.xyw), vec3<u32>(75065u, 1u, 1u)) ^ reverseBits(u_input.a), ~max(~vec3<u32>(0u, 4294967295u, var_3.d), _wgslsmith_mod_vec3_u32(u_input.a, u_input.d.zxw))), _wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1220f, -1000f)) - var_5.b.x), _wgslsmith_f_op_f32(1312f - 839f)), u_input.d.zzx);
}

