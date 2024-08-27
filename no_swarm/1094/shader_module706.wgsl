struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    let var_0 = reverseBits(-1494i);
    var var_1 = select(!(!all(vec3<bool>(true, true, false))) && !all(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, false)));
    let var_2 = Struct_1(-reverseBits(u_input.a.x), vec4<f32>(1256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(104f * 1238f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(f32(-1f) * -376f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f * -1000f)), -244f, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(f32(-1f) * -242f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1091f, 1126f, 785f), vec3<f32>(624f, 162f, 1735f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1517f, 592f, -1186f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 246f)), !all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false))));
    var_1 = var_2.e;
    var_1 = true;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_2.d.yy, var_2.b.xx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, -427f)))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1030f, 519f), vec2<f32>(1000f, 1552f), vec2<bool>(false, false)))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))));
    var var_3 = false;
    let var_4 = arg_0.x;
    return Struct_2(Struct_1(-7335i, vec4<f32>(-538f, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(120f * -912f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), -1522f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-421f, 352f, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1011f, var_1.x, 223f) - vec3<f32>(var_1.x, -1000f, var_1.x)))) + vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -525f), -1000f)), true), max(max(~(-2147483647i), _wgslsmith_mult_i32(arg_0.x, 5043i) & ~arg_0.x), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_0.x | 27488i, 0i, _wgslsmith_dot_vec3_i32(arg_0.yww, vec3<i32>(2147483647i, var_4, -2147483647i)), _wgslsmith_div_i32(var_4, var_4)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -980i, -(arg_0.x ^ u_input.b.x)), ~vec3<i32>(arg_0.x, _wgslsmith_add_i32(1i, var_4), ~u_input.b.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(-u_input.c);
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(abs(var_0.d), var_0.b & u_input.a.x)), _wgslsmith_add_vec2_i32(abs(u_input.b.zz) >> (min(vec2<u32>(1291u, 4294967295u), vec2<u32>(4294967295u, 17301u)) % vec2<u32>(32u)), vec2<i32>(var_0.d, u_input.b.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec2<i32>(~u_input.b.x, _wgslsmith_mod_i32(var_0.a.a & -1i, ~var_0.a.a))), vec2<i32>(~abs(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), -2147483647i));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(ceil(-993f)))), _wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1576f)));
    var var_3 = (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 8009u, 4294967295u), ~vec4<u32>(104031u, 111326u, 0u, 17326u)) < _wgslsmith_sub_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u)))) & !(true | any(select(vec2<bool>(true, var_0.a.e), vec2<bool>(var_0.a.e, true), vec2<bool>(true, var_0.a.e))));
    var_3 = var_0.a.e | false;
    return Struct_3(~(vec2<u32>(1u, 1u) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(106249u, 0u, 32645u)), 4294967295u)), true, _wgslsmith_clamp_u32(1u, ~65850u, countOneBits(11055u)), vec2<i32>(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.b, ~(vec3<i32>(u_input.a.x, u_input.b.x, var_0.b) & u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = select(-(~u_input.a), ~_wgslsmith_mod_vec3_i32(select(abs(u_input.b), u_input.b, arg_1.b), _wgslsmith_mod_vec3_i32(vec3<i32>(3520i, 23865i, arg_1.d.x), vec3<i32>(-33821i, -5836i, 0i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, 0u), vec3<u32>(arg_1.a.x, 32681u, 28341u)) % vec3<u32>(32u))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, arg_1.b), !vec3<bool>(arg_1.b, false, false)), vec3<bool>(arg_1.b, arg_0.e, false)), !vec3<bool>(all(vec4<bool>(arg_0.e, arg_0.e, true, arg_0.e)), arg_1.d.x != arg_0.a, true), !(true || arg_1.b)));
    let var_1 = reverseBits(countOneBits(-(reverseBits(u_input.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c, arg_1.a.x, 46131u, arg_1.a.x), vec4<u32>(arg_1.a.x, arg_1.c, 4294967295u, 2135u)) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(abs(-322f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)))) * arg_0.b) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 - var_2), var_2)), _wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(-var_2), arg_0.c.x));
    let var_4 = Struct_4(func_2(select(vec4<i32>(-1i, ~arg_1.d.x, u_input.c.x, arg_1.d.x), -abs(u_input.c), arg_0.e)).a, func_1().c);
    return select(_wgslsmith_clamp_u32(~1u, func_1().a.x, _wgslsmith_add_u32(var_4.b, ~firstTrailingBit(0u))), var_4.b, 13292u < _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(var_4.b), abs(var_4.b), func_1().a.x), (vec3<u32>(arg_1.a.x, var_4.b, 42252u) | vec3<u32>(0u, arg_1.c, 4294967295u)) ^ ~vec3<u32>(0u, 0u, var_4.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(93265u, func_4(Struct_1(min(8819i, 0i), vec4<f32>(-764f, 1004f, 219f, -712f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(881f, 1446f, 369f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2061f, 1589f, -640f) * vec3<f32>(-1863f, 325f, -485f)), any(vec4<bool>(true, true, false, true))), func_1()), _wgslsmith_mod_u32(~4294967295u, ~1u)), 22577u, 56621u);
    var_0 = ~select(select(select(~vec3<u32>(var_0.x, 25713u, 0u), vec3<u32>(43315u, 0u, var_0.x), true), ~vec3<u32>(0u, var_0.x, 45275u), true & any(vec2<bool>(false, true))), vec3<u32>(abs(_wgslsmith_div_u32(4294967295u, var_0.x)), var_0.x, 0u), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)) == true);
    var var_1 = vec2<f32>(-350f, _wgslsmith_f_op_vec2_f32(func_3()).x);
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1647f) + _wgslsmith_f_op_f32(step(-491f, var_1.x))), func_2(firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, 7458i, u_input.a.x))).c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(812f, var_1.x) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(549f)), 1000f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1048f, -882f) + vec2<f32>(var_1.x, var_1.x))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-1000f, var_1.x), false)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(1689f, var_1.x)))) * vec2<f32>(_wgslsmith_f_op_f32(min(-1469f, 681f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-308f, -1090f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-255f, -1079f)))), !vec2<bool>(all(vec4<bool>(false, true, false, false)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(round(-686f)));
}

