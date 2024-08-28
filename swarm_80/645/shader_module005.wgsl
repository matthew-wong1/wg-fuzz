struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1105f;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f * 135f), -1891f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(1150f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2071f), -447f))));
    var var_1 = Struct_1(true, -927f, _wgslsmith_f_op_f32(f32(-1f) * -1437f));
    var var_2 = 2896u;
    var var_3 = firstLeadingBit(firstTrailingBit(max(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 24683u), vec3<u32>(1u, 4294967295u, 13244u)), _wgslsmith_mod_u32(1u, 4294967295u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_0.x))))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)) * _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(max(-1000f, 260f))))), -248f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(939f, var_1.c)) - var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -293f));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>) -> f32 {
    var var_0 = Struct_5(arg_1);
    let var_1 = -2147483647i;
    let var_2 = vec2<i32>(-2147483647i, arg_2.x >> (firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_0), vec3<u32>(69835u, 22749u, var_0.a.d.x))) % 32u));
    var var_3 = 0u;
    let var_4 = Struct_2(Struct_1(arg_1.a.a.a, var_0.a.a.a.c, _wgslsmith_f_op_f32(floor(-248f))));
    return arg_1.a.a.b;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_u32(~1u, 1u << (_wgslsmith_clamp_u32(40124u, 4294967295u, 1u) % 32u)) ^ abs(firstLeadingBit(_wgslsmith_clamp_u32(0u, 35697u, 0u))), Struct_3(Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-3468f - 2314f), _wgslsmith_f_op_f32(f32(-1f) * -2152f))), Struct_1(true, _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-1635f, -359f))), max(vec4<i32>(u_input.a, 1i, u_input.a & -7576i, 2147483647i), ~vec4<i32>(-61616i, 32854i, arg_0.x, 34953i) & vec4<i32>(u_input.a, arg_0.x, arg_0.x, 41249i)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(firstLeadingBit(1u), ~0u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-arg_0.x, -2142i, arg_0.x ^ 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_0.x, arg_0.x), -1i, firstTrailingBit(arg_0.x)), vec3<i32>(-1i) * -vec3<i32>(arg_0.x, arg_0.x, -1i)), ~(-vec3<i32>(arg_0.x, -961i, -21869i)) >> (min(max(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 4294967295u, 1u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-135f, -524f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f + 270f) * _wgslsmith_div_f32(400f, -340f)))));
    let var_1 = -14353i;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f)));
    let var_2 = arg_0.x;
    return Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -505f)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_div_f32(256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(205f)))), arg_1.a.b, _wgslsmith_div_f32(-879f, func_2(~vec2<i32>(u_input.a, u_input.a)).a.b), arg_1.a.b), Struct_3(func_2(countOneBits(vec2<i32>(u_input.a, 14367i) & vec2<i32>(u_input.a, -1i))), func_2(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, 0i) & vec2<i32>(-1i, u_input.a))).a, vec4<i32>(~_wgslsmith_mod_i32(u_input.a, 0i), u_input.a, ~_wgslsmith_mult_i32(u_input.a, u_input.a), select(26693i, min(0i, 20827i), false)), firstLeadingBit(vec2<u32>(1u, 1u))), _wgslsmith_sub_u32(4294967295u, 1u), Struct_3(arg_1, Struct_1(true, _wgslsmith_f_op_f32(step(-103f, _wgslsmith_div_f32(arg_1.a.c, arg_1.a.b))), 293f), vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), max(vec2<i32>(0i, -16707i), vec2<i32>(u_input.a, 0i))), _wgslsmith_div_i32(u_input.a, u_input.a) >> (firstLeadingBit(1u) % 32u), -_wgslsmith_div_i32(u_input.a, -54324i)), abs(vec2<u32>(~24300u, countOneBits(4294967295u)))), 1i);
    global0 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.c + 372f) + 2310f));
    global0 = 725f;
    let var_1 = arg_1;
    var var_2 = var_0.c;
    return 4294967295u;
}

fn func_1() -> f32 {
    let var_0 = ~func_5(vec3<bool>(_wgslsmith_f_op_f32(select(1304f, 1000f, false)) < 418f, false, true), func_2(vec2<i32>(_wgslsmith_div_i32(u_input.a, 37261i), _wgslsmith_dot_vec4_i32(vec4<i32>(5311i, u_input.a, -46872i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)))));
    let var_1 = 1622f;
    var var_2 = _wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_0, var_0, var_0) | vec3<u32>(var_0, var_0, var_0), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0, var_0), vec3<u32>(0u, var_0, 4294967295u))) << (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(555u, var_0, 21374u)), ~vec3<u32>(var_0, var_0, 48054u)) % vec3<u32>(32u)), vec3<u32>(~57258u, ~1u, reverseBits(0u)), max(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(150956u, 70628u, 0u), vec3<u32>(var_0, 21300u, 0u)), vec3<u32>(1u, 64048u, 1u)), ~select(vec3<u32>(var_0, 1u, 775u), vec3<u32>(var_0, var_0, 19139u), vec3<bool>(false, true, false)))) << (vec3<u32>(max(46010u, reverseBits(1u)), var_0, var_0) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_1));
    var var_3 = 18785u;
    return -304f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a, u_input.a & -(~(-47942i)), 2147483647i);
    global0 = 574f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-172f, 1003f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2654f - _wgslsmith_f_op_f32(func_4(min(0u, 65071u), Struct_3(Struct_2(Struct_1(true, -689f, 1168f)), Struct_1(false, -679f, 1133f), vec4<i32>(-52423i, u_input.a, u_input.a, var_0.x), vec2<u32>(4294967295u, 0u)), vec3<i32>(1i, 55608i, var_0.x))))) - 1509f);
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1399f))));
    let var_1 = vec4<f32>(555f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(805f)), -1078f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-599f * 1263f), _wgslsmith_f_op_f32(abs(-794f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2040f)))), -443f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)))), 1f)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(913f, var_1.x, 2173f, 139f), var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))))), Struct_3(func_2(min(-var_0.xy, -var_0.xy)), func_2(var_0.xy).a, firstLeadingBit(~select(vec4<i32>(3185i, u_input.a, u_input.a, -1i), vec4<i32>(13427i, -1i, 80196i, u_input.a), true)), select(countOneBits(~vec2<u32>(0u, 4294967295u)), ~vec2<u32>(15273u, 504u), select(vec2<bool>(true, true), vec2<bool>(true, false), var_1.x <= var_1.x))), 14883u >> (_wgslsmith_add_u32(min(1u, select(1u, 42458u, false)), 1u) % 32u), Struct_3(func_2(vec2<i32>(~(-2147483647i), u_input.a)), func_2(var_0.zz).a, select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -11291i, -2147483647i) << (vec4<u32>(0u, 7475u, 46863u, 17248u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 48095i, -2178i, var_0.x), vec4<i32>(u_input.a, var_0.x, -1i, -88598i))), ~vec4<i32>(-21705i, 0i, -15682i, 38740i), false), vec2<u32>(~0u, 1u)), -38331i);
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e);
}

