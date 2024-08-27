struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = 0i | min(-u_input.b.x, u_input.b.x);
    let var_1 = select(any(vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), arg_0.xx) > abs(4294967295u), all(vec4<bool>(false, false, true, true)) || any(vec3<bool>(false, true, true)), true)), 1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1711f))), !any(vec3<bool>(true, true, 28305u > u_input.a.x)));
    let var_2 = vec4<bool>(false, !var_1, false && var_1, true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f - -421f))))));
    let var_4 = -116f;
    return any(var_2.yxw);
}

fn func_2() -> bool {
    var var_0 = func_3(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x & 22280u, u_input.a.x, reverseBits(u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 52788u) << ((vec4<u32>(41215u, u_input.a.x, 5371u, u_input.a.x) << (vec4<u32>(4294967295u, u_input.a.x, 55196u, 1986u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x ^ u_input.a.x, 4294967295u), reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), u_input.a.x, u_input.a.x)));
    var var_1 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, func_3(vec4<u32>(u_input.a.x, u_input.a.x, 25247u, 44211u))), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >= abs(u_input.a.x)), vec2<bool>(true, true), _wgslsmith_f_op_f32(sign(-373f)) != 1919f);
    let var_2 = Struct_2(Struct_1(vec4<bool>(u_input.b.x <= ~(-1167i), true, false, any(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, false), var_1.x))), abs(_wgslsmith_mult_vec2_i32(u_input.b, u_input.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(835f * 934f)))), false), Struct_1(!(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), false)), u_input.b, -868f, all(!select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, true, var_1.x), var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(518f, 185f, -1638f, -1513f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(281f, -263f, -517f, 399f) * vec4<f32>(547f, -1231f, -713f, 301f)))))));
    var var_3 = true;
    var var_4 = select(var_1.x && false, var_2.a.d, !var_2.a.d);
    return all(select(select(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), false), select(select(vec3<bool>(var_1.x, false, var_2.a.d), vec3<bool>(false, var_2.b.a.x, var_2.a.a.x), vec3<bool>(true, var_1.x, false)), !var_2.b.a.zyy, true), true), var_2.b.a.yxx, var_2.b.a.x));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    var var_0 = !func_2();
    var var_1 = max(select(_wgslsmith_dot_vec2_i32(-u_input.b, -vec2<i32>(1i, -11319i)), -1i, false), arg_1.x) | u_input.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), arg_0, true))))) < 1486f;
    let var_2 = 4294967295u ^ arg_2;
    var var_3 = _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(-u_input.b.x, -arg_1.x)), u_input.b);
    return Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 720f, arg_0) * vec3<f32>(757f, -1108f, -917f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(774f, -339f, -707f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-554f, arg_0, 1946f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(651f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_0) + arg_0), _wgslsmith_f_op_f32(step(-997f, _wgslsmith_f_op_f32(sign(arg_0))))))), _wgslsmith_add_vec3_u32(select(firstTrailingBit(~vec3<u32>(13268u, arg_2, 4294967295u)), ~(~vec3<u32>(arg_2, 4294967295u, arg_2)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(var_2, 0u, u_input.a.x)), ~vec3<u32>(45172u, arg_2, u_input.a.x))), Struct_2(Struct_1(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), -(~vec2<i32>(-36685i, -2147483647i)), -518f, !any(vec3<bool>(false, true, true))), Struct_1(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), ~max(u_input.b, vec2<i32>(-433i, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f - arg_0) - _wgslsmith_div_f32(arg_0, -930f)), true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1350f, arg_0, 725f) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1284f, arg_0, arg_0, 1064f) - vec4<f32>(206f, arg_0, arg_0, -456f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.a.c), arg_0.c.x));
    let var_1 = select(arg_1.b, max(~(vec3<u32>(u_input.a.x, 85902u, 9443u) << (vec3<u32>(u_input.a.x, arg_1.b.x, arg_1.b.x) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, arg_1.b.x, arg_1.b.x)), false);
    var var_2 = arg_1.b;
    var_2 = arg_1.b;
    let var_3 = func_1(arg_1.a.x, vec4<i32>(~arg_3.x, abs(-_wgslsmith_mult_i32(arg_2, arg_3.x)), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(35578i, -2147483647i), ~arg_1.c.b.b) & arg_2), 1u).c;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.b.c, 1194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f + _wgslsmith_f_op_f32(f32(-1f) * -812f)) - -308f), arg_2 <= arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1001f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(917f * -744f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-780f))))));
    let var_1 = !((var_0.x <= _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<bool>(true, false, true, true), u_input.b, -133f, false), Struct_1(vec4<bool>(false, true, true, true), u_input.b, -1933f, true), vec4<f32>(1563f, var_0.x, -306f, -296f)), func_1(var_0.x, vec4<i32>(u_input.b.x, 21i, u_input.b.x, -45382i), u_input.a.x), -42088i, -vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x)))) | all(vec2<bool>(true, true)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -194f))), -908f) * -168f), -1138f, var_0.x);
    var var_2 = abs(vec4<u32>(0u, 0u, reverseBits(_wgslsmith_mod_u32(30820u & u_input.a.x, ~u_input.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(68936u, 0u)), u_input.a) ^ func_1(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), -vec4<i32>(u_input.b.x, 2147483647i, 18490i, 25539i), 0u ^ u_input.a.x).b.x));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-861f, _wgslsmith_f_op_f32(min(-1189f, _wgslsmith_f_op_f32(ceil(417f)))), _wgslsmith_f_op_f32(-func_1(775f, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 38837i), 23102u).a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x))))));
    var var_3 = func_1(1000f, _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, max(1i, 1i), 1i, 1i), vec4<i32>(-1i, -44673i, -(939i << (u_input.a.x % 32u)), u_input.b.x)), firstTrailingBit(var_2.x)).c.c;
    var var_4 = -vec3<i32>(1i, u_input.b.x, -5716i) >> (~var_2.xyx % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_mod_u32(~var_2.x, _wgslsmith_mult_u32(u_input.a.x ^ 1u, u_input.a.x) ^ var_2.x), vec3<i32>(i32(-1i) * -var_4.x, ~(~30601i), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, var_4.x) >> (4294967295u % 32u))));
}

