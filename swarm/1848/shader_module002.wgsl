struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    let var_1 = 0i;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1205f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -228f), var_0.b.x)))));
    var_0 = Struct_1(arg_2.a >> (_wgslsmith_mod_u32(~4278u, arg_2.a) % 32u), arg_1.zyy);
    var_0 = arg_2;
    return _wgslsmith_sub_u32(var_0.a, ~44413u);
}

fn func_2() -> bool {
    let var_0 = 2147483647i >> (countOneBits(func_3(_wgslsmith_add_vec4_i32(~vec4<i32>(6633i, u_input.a.x, u_input.a.x, u_input.c.x), vec4<i32>(u_input.a.x, u_input.a.x, -43273i, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(555f, 1214f, -588f, 106f) * vec4<f32>(-122f, 165f, 1349f, -291f))), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(610f, 469f, -877f))))) % 32u);
    var var_1 = Struct_3(Struct_1(1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(172f, 1102f, -854f), vec3<f32>(-707f, 2166f, -1000f), vec3<bool>(false, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(894f * -1124f), _wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(2573f + 2125f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(615f - 1116f), -107f)) + _wgslsmith_f_op_f32(f32(-1f) * -1024f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f - -490f))), abs(u_input.b ^ u_input.b), Struct_2(false, select(vec2<bool>(true, true), vec2<bool>(true, false), !all(vec2<bool>(true, false)))), 392f);
    let var_2 = Struct_3(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(850f, var_1.a.b.x, var_1.a.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1.a.b))), select(select(vec3<bool>(var_1.d.b.x, true, true), vec3<bool>(true, var_1.d.b.x, var_1.d.b.x), vec3<bool>(true, var_1.d.b.x, true)), vec3<bool>(false, true, var_1.d.a), var_1.b <= -127f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f - _wgslsmith_f_op_f32(var_1.a.b.x + var_1.e)))), ~_wgslsmith_div_u32(abs(var_1.a.a) >> (0u % 32u), abs(~0u)), Struct_2(true, vec2<bool>(any(!vec3<bool>(var_1.d.b.x, var_1.d.b.x, var_1.d.b.x)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e - 1000f) + _wgslsmith_f_op_f32(trunc(var_1.b))) * _wgslsmith_f_op_f32(f32(-1f) * -321f)) - _wgslsmith_f_op_f32(f32(-1f) * -1642f)));
    var_1 = var_2;
    var_1 = var_2;
    return var_1.d.b.x;
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 403f, -919f)))))), -1000f, 12921u, Struct_2(true, vec2<bool>(arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)))), -233f);
    let var_1 = var_0.a.b;
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-812f, var_1.x)), -850f));
    var var_4 = Struct_1(var_0.a.a, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, 416f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_1.x, var_1.x) - var_0.a.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a.b))), any(arg_0)))));
    return Struct_3(Struct_1(35388u, var_4.b), -409f, 64877u, var_0.d, _wgslsmith_f_op_f32(2401f * var_3.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = select(true, !var_0.d.b.x, 4294967295u <= (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.a.a, var_0.c, 0u, arg_0.a.a)), vec4<u32>(1u, var_0.a.a, u_input.b, u_input.b)) | u_input.b));
    var var_2 = Struct_2(var_0.d.a, vec2<bool>(arg_0.d.b.x, arg_0.d.b.x));
    var var_3 = func_4(!(!vec4<bool>(3396u < var_0.c, var_2.b.x, var_2.b.x, -2147483647i == u_input.a.x)));
    let var_4 = Struct_2(true, select(select(!select(var_2.b, vec2<bool>(var_3.d.b.x, false), var_0.d.a), !var_2.b, vec2<bool>(false, all(vec3<bool>(var_0.d.a, var_2.b.x, false)))), !(!var_3.d.b), var_2.b));
    return var_3.d;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(select(vec4<bool>(false, any(vec3<bool>(true, true, false)), true, false), vec4<bool>(true, func_2(), true, true), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(984f, -1115f, -946f, -1139f)))))), vec4<f32>(-131f, _wgslsmith_f_op_f32(round(-721f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f * -1435f)) - 1422f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f))))));
    var var_1 = func_4(select(!(!vec4<bool>(false, false, var_0.b.x, var_0.b.x)), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(321f)) > _wgslsmith_f_op_f32(-287f + -1075f), var_0.b.x, true), true)).d;
    var var_2 = Struct_2(var_1.a, var_1.b);
    let var_3 = var_0;
    var var_4 = vec2<bool>(1u > u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-269f, 257f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-727f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1182f, 332f), -1285f, true)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(885f, -2439f))))));
    return func_4(!vec4<bool>(var_2.b.x, true, false, !(!var_1.a))).a;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    let var_0 = true && func_5(func_4(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1177f, 892f, arg_0.b.x, -550f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2415f, 201f, arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.x, 629f, 661f, arg_0.b.x))))))).a;
    let var_1 = Struct_2(false, vec2<bool>(true, true));
    var var_2 = func_5(Struct_3(Struct_1(countOneBits(u_input.b), arg_0.b), -1482f, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0.a, u_input.b)), max(vec2<u32>(arg_0.a, u_input.b), vec2<u32>(1u, arg_0.a))), func_5(func_4(vec4<bool>(false, var_0, var_1.a, var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-141f, arg_0.b.x, -1457f, arg_0.b.x), vec4<f32>(arg_0.b.x, arg_0.b.x, 1763f, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1165f, -815f, arg_0.b.x, 923f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -1000f, arg_0.b.x, 179f))))), arg_0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-354f, arg_0.b.x, arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-153f, -1798f, arg_0.b.x, -1280f)))))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.x)), arg_0.b.x, _wgslsmith_div_f32(-287f, 886f), arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -838f, arg_0.b.x, -1204f) + vec4<f32>(270f, 633f, 1761f, arg_0.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -556f, arg_0.b.x, arg_0.b.x)))))));
    var var_3 = func_4(!vec4<bool>(!(!var_0), func_5(Struct_3(arg_0, -779f, arg_0.a, Struct_2(true, var_1.b), arg_0.b.x), vec4<f32>(-1000f, 1000f, -1002f, 1009f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1325f, arg_0.b.x, arg_0.b.x, -1000f) - vec4<f32>(-604f, 193f, arg_0.b.x, 2100f))).a, true, _wgslsmith_mult_i32(u_input.c.x, 30160i) != ~u_input.a.x)).a;
    let var_4 = ~vec3<i32>(~(-2147483647i), abs(min(u_input.c.x, u_input.c.x)) << (u_input.b % 32u), -(u_input.c.x & _wgslsmith_div_i32(1i, u_input.c.x)));
    return Struct_3(func_4(select(select(select(vec4<bool>(var_1.b.x, false, var_1.a, var_2.a), vec4<bool>(var_0, var_2.b.x, var_1.b.x, false), vec4<bool>(var_0, true, var_1.b.x, true)), !vec4<bool>(false, false, var_1.b.x, true), vec4<bool>(false, var_1.b.x, false, var_2.b.x)), select(vec4<bool>(true, var_2.a, var_0, false), vec4<bool>(var_2.b.x, var_2.a, var_0, var_2.b.x), var_0), all(select(vec4<bool>(true, true, false, var_0), vec4<bool>(true, var_2.b.x, var_2.a, var_2.b.x), var_2.b.x)))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1920f + arg_0.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.b.x, var_3.b.x), _wgslsmith_f_op_f32(-arg_0.b.x)))), select(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 32731u), vec3<u32>(1u, 0u, arg_0.a))), 4294967295u, true), Struct_2(var_1.a, vec2<bool>(var_2.a, func_5(Struct_3(Struct_1(u_input.b, arg_0.b), -355f, var_3.a, var_1, 496f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, 169f, -1000f) + vec4<f32>(var_3.b.x, var_3.b.x, 1012f, 598f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1355f, arg_0.b.x, arg_0.b.x, var_3.b.x) + vec4<f32>(arg_0.b.x, -763f, -442f, -255f))).a)), -1273f);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1126f)))), 474f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e))), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(arg_0.b * -361f)), false)), -1000f));
    var var_1 = _wgslsmith_f_op_f32(arg_0.b * -700f);
    var_1 = _wgslsmith_f_op_f32(-arg_3.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.a.b)))), _wgslsmith_div_vec3_f32(func_6(func_4(!vec4<bool>(arg_0.d.a, true, true, true)).a).a.b, vec3<f32>(-125f, _wgslsmith_f_op_f32(f32(-1f) * -151f), arg_3.x))));
    let var_3 = Struct_3(Struct_1(~_wgslsmith_sub_u32(arg_0.c, u_input.b << (33851u % 32u)), func_4(!vec4<bool>(arg_1.a, arg_0.d.a, arg_0.d.b.x, arg_1.a)).a.b), _wgslsmith_f_op_f32(f32(-1f) * -826f), ~33048u, Struct_2(any(vec2<bool>(arg_1.a, arg_0.d.b.x)), select(arg_1.b, arg_1.b, arg_1.b.x)), _wgslsmith_f_op_f32(-arg_0.e));
    return var_3.a;
}

fn func_8(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = false;
    return Struct_2(select(func_4(vec4<bool>(true, u_input.b != arg_0.a, true, true)).d.a, true || all(vec3<bool>(true, true, true)), true), func_4(vec4<bool>(-1000f >= arg_0.b.x, all(vec2<bool>(true, true)), true, true)).d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_6(func_1()), func_5(func_6(func_6(Struct_1(0u, vec3<f32>(-331f, 1527f, 771f))).a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1048f, -377f, -369f, 788f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-942f, -680f, -224f, -1000f) - vec4<f32>(-442f, 438f, 814f, 555f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-101f, 140f, -1000f, -1000f), vec4<f32>(1269f, 1646f, -1000f, 916f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1152f, 271f, 420f, -546f))))), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-717f + 1f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(-164f, 229f)))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(767f, _wgslsmith_f_op_f32(612f - -133f))), _wgslsmith_f_op_f32(-859f + _wgslsmith_f_op_f32(-533f - -182f)), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(select(-1439f, 602f, func_5(func_6(Struct_1(u_input.b, vec3<f32>(-705f, -2626f, -969f))), vec4<f32>(-153f, 1161f, 307f, -2092f), _wgslsmith_div_vec4_f32(vec4<f32>(-1406f, 190f, -2338f, -674f), vec4<f32>(-1546f, -1169f, -675f, -887f))).b.x))));
    let var_1 = -1i;
    var var_2 = func_4(select(vec4<bool>(false, func_8(Struct_1(u_input.b, vec3<f32>(-143f, 1788f, -1922f)), vec2<f32>(750f, -381f)).a, false, func_6(Struct_1(u_input.b, vec3<f32>(333f, 569f, -1011f))).d.b.x), vec4<bool>(true, 2147483647i >= _wgslsmith_sub_i32(64488i, u_input.a.x), func_8(Struct_1(0u, vec3<f32>(-286f, -314f, 276f)), vec2<f32>(1f, 1f)).b.x, var_0.a | var_0.b.x), var_0.a)).c;
    var var_3 = -var_1;
    var var_4 = true && all(vec4<bool>(true, true, ~u_input.b >= 4050u, var_0.a));
    let var_5 = func_4(select(select(!select(vec4<bool>(false, true, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.b.x, var_0.a), vec4<bool>(true, var_0.b.x, true, false)), vec4<bool>(var_0.b.x, true, all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), true & var_0.a), select(vec4<bool>(true, var_0.a, false, var_0.a), select(vec4<bool>(var_0.a, true, true, true), vec4<bool>(false, true, var_0.a, false), var_0.b.x), var_0.a | true)), select(!vec4<bool>(false, var_0.b.x, false, var_0.a), !select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.b.x)), false), !vec4<bool>(any(vec4<bool>(var_0.b.x, false, false, var_0.a)), true, var_0.a, true)));
    var_4 = var_0.a;
    let var_6 = _wgslsmith_sub_u32(~(~55681u), 66182u | (_wgslsmith_add_u32(~4294967295u, ~u_input.b) ^ var_5.a.a));
    var_4 = any(!(!(!select(vec4<bool>(var_0.b.x, var_5.d.b.x, var_5.d.a, var_0.b.x), vec4<bool>(var_5.d.a, var_5.d.a, false, var_5.d.b.x), vec4<bool>(var_5.d.b.x, var_0.b.x, false, var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b, _wgslsmith_f_op_f32(961f * _wgslsmith_f_op_f32(-var_5.e)), _wgslsmith_f_op_f32(step(var_5.b, func_7(var_5, Struct_2(var_0.b.x, var_5.d.b), 63701u, var_5.a.b.xy).b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, 840f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.e, -1327f, 894f) * vec3<f32>(var_5.e, -887f, var_5.e))) * var_5.a.b)), -17683i, 272f);
}

