struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = -399f;
    var_0 = arg_3.x;
    var var_1 = ~(~(~(~(~vec2<u32>(1u, 1u)))));
    var var_2 = ~10894u;
    var_1 = vec2<u32>(1u, 63286u);
    return reverseBits(~vec3<i32>(1i, -2147483647i, firstTrailingBit(select(1i, u_input.c, arg_2.x))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -670f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), -2088f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1026f))))), arg_1.x, true));
    let var_1 = Struct_5(Struct_4(Struct_1(~arg_2.e.a, func_3(arg_2.c.zy, -1289f, vec3<bool>(arg_2.b, arg_2.e.d, arg_2.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.e.c, 306f, 987f, arg_0), vec4<f32>(1000f, arg_0, arg_0, arg_1.x))), arg_1.x, select(false, true, false)), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - 1485f), 251f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1294f + -1000f)))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.e.b.zy, vec2<i32>(u_input.c, arg_2.e.b.x), vec2<i32>(12432i, -1i)), arg_2.e.b.xy), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, arg_2.e.b.x) | arg_2.e.b.zy, select(arg_2.e.b.zx, arg_2.e.b.yz, vec2<bool>(false, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.c + 958f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -257f), 1f, true))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2304f + -1461f))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-20111i, 2147483647i, -6444i, u_input.b) ^ vec4<i32>(4221i, 25044i, u_input.b, 26379i)) | (vec4<i32>(u_input.a, -16308i, u_input.c, u_input.c) ^ ~vec4<i32>(u_input.b, -26059i, u_input.c, -1i)), ~firstTrailingBit(countOneBits(vec4<i32>(1i, 25973i, -8497i, u_input.b)))), u_input.b, _wgslsmith_f_op_f32(max(-779f, 586f)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_f32(trunc(-1102f)), arg_3.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-458f - _wgslsmith_f_op_f32(f32(-1f) * -1406f)), arg_2.d), !(!(var_1.a.a.a == 0u)))));
    var_0 = -386f;
    var var_2 = arg_2;
    return arg_2.e.a;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> Struct_3 {
    let var_0 = func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(-1167f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -473f))), _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3 + 110f), _wgslsmith_f_op_f32(f32(-1f) * -732f)))))), !(!select(vec3<bool>(arg_1.x, false, true), !vec3<bool>(arg_1.x, true, true), arg_0 < 2387u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, arg_3, arg_3, arg_3) + _wgslsmith_f_op_vec4_f32(vec4<f32>(557f, -416f, arg_3, 372f) * vec4<f32>(arg_3, 773f, 637f, -293f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(456f, arg_3, arg_3, -669f), vec4<f32>(-960f, 150f, arg_3, arg_3), arg_1.x)))))).zz;
    var var_1 = _wgslsmith_f_op_f32(-293f + arg_3);
    var var_2 = Struct_2(vec4<bool>(true, !(!(arg_1.x | arg_1.x)), false, ~1i > ~(~var_0.x)), select(!(!arg_1.x), arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f + arg_3) + _wgslsmith_f_op_f32(step(1983f, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * arg_3)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(202f, arg_3), _wgslsmith_f_op_f32(arg_3 - -2256f), all(vec2<bool>(true, arg_1.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(470f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_3)), arg_3))) * -1617f), Struct_1(~_wgslsmith_clamp_u32(arg_0, arg_2 | arg_2, 10088u), firstLeadingBit(vec3<i32>(u_input.b, u_input.b, _wgslsmith_div_i32(var_0.x, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x));
    let var_3 = Struct_4(var_2.e, _wgslsmith_f_op_vec3_f32(trunc(var_2.c)), max(vec2<i32>(-1i, (u_input.a | -2147483647i) >> (1u % 32u)), var_2.e.b.yz), arg_3);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(172f, -782f), 194f)))), var_3.b.x);
    return Struct_3(_wgslsmith_f_op_f32(trunc(-1390f)), Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(var_2.e.a), _wgslsmith_sub_u32(11304u, arg_2)), var_3.a.a), min(_wgslsmith_div_vec3_i32(vec3<i32>(48986i, -1i, -42918i), var_2.e.b), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, -1908i, 1i), var_3.a.b >> (vec3<u32>(1u, 1u, var_2.e.a) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(trunc(563f)), all(arg_1)));
}

fn func_1() -> vec3<i32> {
    let var_0 = ~(~125733u);
    let var_1 = func_4(select(30301u, _wgslsmith_add_u32(~func_2(487f, vec2<f32>(132f, 231f), Struct_2(vec4<bool>(true, false, true, true), false, vec3<f32>(-619f, -1000f, 1167f), -283f, Struct_1(0u, vec3<i32>(u_input.a, u_input.a, -2147483647i), 1000f, false)), vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0) ^ vec2<u32>(var_0, var_0), ~vec2<u32>(49361u, var_0))), false), !select(vec2<bool>(true, var_0 != 0u), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false), true)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f - -1778f)) * _wgslsmith_f_op_f32(f32(-1f) * -824f))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(min(var_1.b.c, -1000f)), true)), Struct_1(var_1.b.a, var_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c) - 237f)), select(false, true, true)));
    var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1416f)))), Struct_1(19224u | ~var_1.b.a, var_1.b.b, _wgslsmith_f_op_f32(-454f - _wgslsmith_div_f32(-271f, var_2.a)), !(!(var_1.b.d && true))));
    let var_3 = ~abs(firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, var_2.b.a), ~vec2<u32>(var_2.b.a, 12010u))));
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f + -1190f)), 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, 1u, 1u, 1u), vec4<f32>(_wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(f32(-1f) * -253f)), func_4(~1u, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_div_u32(1u, 52389u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1769f, -1000f)) - _wgslsmith_f_op_f32(abs(-775f)))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) - _wgslsmith_f_op_f32(func_4(5384u, vec2<bool>(true, true), 17426u, -1043f).a + _wgslsmith_f_op_f32(-683f + -717f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(187f, -1713f))))), 108f);
}

