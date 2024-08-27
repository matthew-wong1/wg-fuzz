struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = 0u;
    var_0 = u_input.b;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(43940u, ~abs(50872u), 0u), min(~vec3<u32>(u_input.a, u_input.b, min(41135u, 1u)), ~vec3<u32>(u_input.a, 7969u, abs(0u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1153f, arg_0.b, arg_0.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(920f, arg_0.b, arg_0.b, -807f))));
    let var_2 = Struct_3(vec4<bool>(-u_input.d.x > u_input.c.x, !(!select(arg_0.a.x, true, arg_0.a.x)), false, !arg_0.a.x), select(!(!select(arg_0.a, arg_0.a, vec3<bool>(arg_0.a.x, arg_0.a.x, false))), select(arg_0.a, select(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(false, arg_0.a.x, arg_0.a.x), false)), select(select(vec3<bool>(true, arg_0.a.x, false), arg_0.a, arg_0.a.x), select(arg_0.a, vec3<bool>(false, arg_0.a.x, true), vec3<bool>(true, arg_0.a.x, arg_0.a.x)), arg_0.a)), arg_0.a.x));
    return _wgslsmith_f_op_vec2_f32(var_1.zw - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-548f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -650f)))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = select(!(!vec4<bool>(arg_1.x, any(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), false, any(arg_1.xx))), select(!(!vec4<bool>(arg_1.x, arg_1.x, true, false)), vec4<bool>(all(!arg_1), all(vec2<bool>(false, true)), select(744i == arg_0.x, arg_1.x, true), all(vec4<bool>(arg_1.x, true, true, true)) || arg_1.x), !vec4<bool>(true, select(arg_1.x, arg_1.x, false), arg_1.x, arg_1.x)), select(select(select(!vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(true, true, arg_1.x, arg_1.x), true), select(!vec4<bool>(true, arg_1.x, false, false), select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(true, arg_1.x, true, false), arg_1.x), vec4<bool>(arg_1.x, true, true, true)), select(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), arg_1.x)), vec4<bool>(arg_1.x, all(select(vec3<bool>(false, false, arg_1.x), arg_1, arg_1.x)), true, false), !select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, true, false), arg_1.x)));
    let var_1 = Struct_4(Struct_3(select(!(!vec4<bool>(arg_1.x, false, true, var_0.x)), !vec4<bool>(false, true, arg_1.x, false), select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(var_0.x, arg_1.x, false, arg_1.x), !var_0.x)), select(var_0.xwx, vec3<bool>(true, false, true), true)));
    var var_2 = 38076i;
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(837f)), _wgslsmith_f_op_f32(194f - 258f)))), 290f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-357f, -452f) + vec2<f32>(-190f, -777f)))))));
    var_2 = reverseBits(50388i);
    return !(!var_1.a.a);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -435f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec3<bool>(false, false, false), _wgslsmith_f_op_f32(-var_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2047f, var_0))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-361f)))), _wgslsmith_f_op_f32(ceil(var_0))));
    let var_2 = Struct_4(Struct_3(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), func_3(u_input.d, vec3<bool>(false, true, true)), vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true)));
    let var_3 = var_1;
    var var_4 = Struct_4(var_2.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1152f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + var_3.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = -576f;
    var var_2 = u_input.c;
    var_2 = vec3<i32>(~_wgslsmith_div_i32(u_input.d.x, -1i), u_input.d.x, -2147483647i);
    return Struct_1(var_2.x, !(!arg_3.b), arg_3.a << (u_input.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -1149f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-153f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(379f, 1000f)), -519f), 1661f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, 1477f, 1418f, -513f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-227f, 789f, 1476f, 1509f) + vec4<f32>(1104f, 533f, 850f, 1973f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1126f, 369f, -830f, 386f))))), Struct_2(vec3<bool>(true, all(vec2<bool>(false, false)), 48322i > ~u_input.c.x), _wgslsmith_div_f32(-1671f, 466f)), Struct_1(_wgslsmith_mod_i32(0i, firstTrailingBit(min(u_input.d.x, u_input.d.x))), true, 3689i));
    var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2083f) * -1025f), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1653f)))), _wgslsmith_f_op_f32(303f - 188f)), vec4<f32>(_wgslsmith_f_op_f32(-1559f + 729f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1275f)) - _wgslsmith_f_op_f32(sign(1434f))) - 556f), 151f, 1000f), Struct_2(vec3<bool>(all(vec4<bool>(true, var_0.b, true, var_0.b)), _wgslsmith_f_op_f32(round(236f)) >= _wgslsmith_f_op_f32(floor(1549f)), !all(vec3<bool>(true, var_0.b, var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1457f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1194f, -2048f) - -1644f))), Struct_1(abs(_wgslsmith_div_i32(i32(-1i) * -4284i, -13816i)), var_0.b, _wgslsmith_dot_vec2_i32(firstTrailingBit(select(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.d.x, u_input.c.x), vec2<bool>(var_0.b, true))), vec2<i32>(abs(0i), var_0.a & u_input.d.x))));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(368f, -554f, 812f, 386f)))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec3<bool>(var_0.b, true, var_0.b), -699f))).x, _wgslsmith_f_op_f32(ceil(1923f)), -1006f, _wgslsmith_f_op_f32(-653f + _wgslsmith_f_op_f32(f32(-1f) * -1004f)))), Struct_2(vec3<bool>(_wgslsmith_f_op_f32(step(527f, 1375f)) == -470f, !(!var_0.b), var_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f - -1510f) - -281f)))), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(201f, -1309f, -1012f, 905f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), 1f, 597f, 1892f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-239f, 349f, 122f, 948f), _wgslsmith_div_vec4_f32(vec4<f32>(1276f, 1657f, 278f, -965f), vec4<f32>(-604f, 1173f, 1136f, 977f)))), Struct_2(vec3<bool>(var_0.b, false, var_0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1147f, -990f) + _wgslsmith_f_op_f32(f32(-1f) * -584f))), Struct_1(var_0.a, all(vec2<bool>(var_0.b, var_0.b)) | (-24837i != var_0.c), u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(firstLeadingBit(~vec2<u32>(44001u, 1u)), vec2<u32>(u_input.a | u_input.a, u_input.b)), _wgslsmith_sub_u32(~u_input.b, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec3<bool>(true, true, false), 457f))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1144f + 111f) + _wgslsmith_f_op_f32(-264f * -1090f)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-381f, _wgslsmith_f_op_f32(select(-1179f, -307f, false)), -119f, _wgslsmith_f_op_f32(-730f - -618f)))));
}

