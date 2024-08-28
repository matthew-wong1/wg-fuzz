struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = -(reverseBits(min(~arg_0.x, arg_0.x)) >> (25728u % 32u));
    let var_1 = Struct_1(!vec4<bool>(true, all(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, true, false))));
    var var_2 = var_1.a.x;
    return ~(select(abs(vec2<i32>(var_0, arg_0.x)), -arg_0.xz, select(all(vec2<bool>(false, var_1.a.x)), any(var_1.a.xy), false)) & reverseBits(firstLeadingBit(abs(vec2<i32>(var_0, arg_0.x)))));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec2<u32> {
    let var_0 = ~(vec2<i32>(1i, 1i) << (((vec2<u32>(13523u, 50997u) << (vec2<u32>(5705u, arg_1) % vec2<u32>(32u))) | vec2<u32>(7400u, 1u)) % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), -func_3(min(vec4<i32>(2147483647i, -1i, 56635i, -24661i), vec4<i32>(-2147483647i, -6222i, -1i, 1i))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * arg_0)))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 2165f, -435f, arg_0)))))), Struct_2(Struct_1(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x >= var_0.x, any(vec3<bool>(false, true, false)), true, any(vec4<bool>(true, false, true, false))), !(-1000f <= arg_0)), vec4<bool>(select(any(vec2<bool>(true, false)), arg_1 > arg_1, all(vec2<bool>(false, true))), true, true, true)));
    var var_3 = var_2;
    let var_4 = arg_1;
    return vec2<u32>(4294967295u << ((arg_1 ^ abs(~var_4)) % 32u), ~var_4);
}

fn func_4(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, -1723f, -530f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-254f, -637f, -975f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-250f, -1563f, 397f))), vec3<bool>(false, true, all(vec3<bool>(true, false, true))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1298f, -1022f, _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-228f, 468f, 372f), vec3<f32>(var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-302f, -1000f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1000f, var_0.x) * vec3<f32>(var_0.x, -1000f, var_0.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2857f, var_0.x, 582f) - vec3<f32>(var_0.x, -141f, -207f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-634f, 516f, 1621f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 862f, var_0.x)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1779f, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + -795f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -500f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -483f))), var_0.x)));
    let var_1 = Struct_4(-271f, Struct_3(vec4<f32>(530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1816f, var_0.x)) + _wgslsmith_f_op_f32(-1000f - 504f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), Struct_2(Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true))), vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_sub_u32(~_wgslsmith_add_u32(~_wgslsmith_add_u32(0u, u_input.a), 0u), ~0u);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1250f)) + var_0.x))), 930f, var_0.x, var_0.x), var_1.b.b, !select(var_1.b.c, var_1.b.b.a.a, false));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = abs(u_input.b);
    var_0 = ~firstLeadingBit(min(arg_1.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.x, 49285u), arg_2.x)));
    let var_1 = ~(-func_3(vec4<i32>(_wgslsmith_clamp_i32(-59998i, -60146i, 60026i), firstTrailingBit(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -490i, -1i), vec3<i32>(-34499i, -2147483647i, -1i)), -2147483647i)).x);
    var_0 = u_input.b;
    let var_2 = arg_0.b.c.x;
    return Struct_4(arg_0.a, arg_0.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> Struct_3 {
    let var_0 = func_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-820f)) + _wgslsmith_f_op_f32(-456f - 230f)), func_4(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.b), func_2(-503f, u_input.b)))), vec4<u32>(u_input.a, 4294967295u, ~u_input.a, 4294967295u), select((vec4<u32>(17642u, 7098u, 0u, 24360u) | vec4<u32>(u_input.b, u_input.a, u_input.a, 35988u)) << (select(vec4<u32>(u_input.b, u_input.a, 5156u, u_input.a), vec4<u32>(4294967295u, 23640u, 71438u, 0u), true) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b) >> (countOneBits(vec4<u32>(0u, u_input.b, u_input.a, 59795u)) % vec4<u32>(32u)), select(vec4<bool>(true, true, false, false), arg_0, false)) << (~((vec4<u32>(71066u, u_input.a, 87801u, u_input.b) & vec4<u32>(u_input.a, 54543u, 0u, 0u)) ^ max(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(30824u, u_input.b, u_input.b, 4294967295u))) % vec4<u32>(32u)));
    let var_1 = var_0.b;
    let var_2 = Struct_5(var_0.b, firstLeadingBit(abs(_wgslsmith_add_i32(-3675i, arg_1))), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, arg_1, 7546i, -29620i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-33436i, arg_1, -7592i, arg_1), vec4<i32>(arg_1, 10993i, arg_1, -2147483647i), vec4<i32>(-1i, arg_1, arg_1, arg_1))), -(~arg_1) ^ (func_3(vec4<i32>(arg_1, -26183i, arg_1, -1i)).x & _wgslsmith_div_i32(2147483647i, -16750i))), -14650i);
    let var_3 = Struct_1(vec4<bool>(true && var_2.a.c.x, -1015f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.a.x))), arg_0.x, select(true, all(var_2.a.c), func_5(Struct_4(-1520f, var_2.a), vec4<u32>(u_input.b, u_input.b, 1u, 25551u), vec4<u32>(u_input.b, 16943u, 1u, 77311u)).b.c.x != true)));
    let var_4 = var_0.b;
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_4.a, vec4<f32>(var_4.a.x, -991f, var_2.a.a.x, -1000f), false)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, 1069f, 1000f, var_4.a.x)))))) + var_1.a), var_2.a.b, !vec4<bool>(u_input.b < 1u, func_4(vec2<u32>(u_input.a, 38233u)).c.x & false, true, all(select(var_2.a.c.xz, var_1.c.zz, vec2<bool>(var_2.a.b.a.a.x, false)))));
}

fn func_6(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<bool>) -> bool {
    let var_0 = func_5(Struct_4(_wgslsmith_f_op_f32(arg_0.a * -1642f), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1060f, arg_0.b.a.x, -271f, arg_0.a)), arg_0.b.b, func_4(~vec2<u32>(u_input.b, u_input.a)).b.a.a)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(min(74118u, 0u), max(u_input.a, u_input.b), firstTrailingBit(48857u), 1u & u_input.b), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, 4294967295u), vec4<u32>(0u, u_input.b, u_input.a, 0u)), 28528u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 9043u), vec3<u32>(u_input.b, u_input.a, 0u)), _wgslsmith_div_u32(u_input.a, u_input.b))), vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 6709u, u_input.b), vec3<u32>(u_input.a, u_input.b, u_input.b))), u_input.a, ~_wgslsmith_sub_u32(min(u_input.a, 45505u), 45630u), u_input.a));
    let var_1 = Struct_5(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-1f), arg_0.a, _wgslsmith_div_f32(arg_0.b.a.x, _wgslsmith_f_op_f32(trunc(1225f))), arg_0.a), var_0.b.b, var_0.b.b.a.a), 7232i, -max(vec2<i32>(~(-9449i), _wgslsmith_clamp_i32(arg_1.x, arg_1.x, -50778i)), -select(arg_1.xx, arg_1.zx, arg_2.x)), -func_3(max(~vec4<i32>(arg_1.x, -40391i, arg_1.x, arg_1.x), ~vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))).x);
    let var_2 = _wgslsmith_add_i32(~12793i, select(_wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_1.x, -2147483647i, 1i), vec3<i32>(40128i, 54386i, var_1.d)) ^ vec3<i32>(-12829i, 2147483647i, var_1.b), arg_1), -1i, var_1.a.b.a.a.x));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(493f, -603f) * -120f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x * 324f)) - var_1.a.a.x))));
    let var_4 = Struct_5(arg_0.b, _wgslsmith_dot_vec2_i32(min(max(arg_1.zx, vec2<i32>(8226i, var_2)), arg_1.yx), ~(-abs(arg_1.xy))), var_1.c, -firstLeadingBit(var_1.b));
    return var_1.a.b.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(true, true, _wgslsmith_clamp_i32(~20292i, 1i, min(9829i, 16443i)) <= ~(-59139i)));
    var_0 = true;
    var_0 = true;
    let var_1 = vec2<i32>(-3605i, 14398i);
    var_0 = !(func_6(Struct_4(_wgslsmith_div_f32(-417f, -1194f), func_1(vec4<bool>(true, true, true, false), 1i)), vec3<i32>(40690i, var_1.x, -28172i) | ~vec3<i32>(9969i, 13306i, 1i), select(func_1(vec4<bool>(true, true, false, false), 2147483647i).b.a.a.xz, vec2<bool>(true, true), false)) && all(vec2<bool>(true, true)));
    var var_2 = -vec2<i32>(var_1.x, ~(i32(-1i) * -2147483647i)) | var_1;
    let var_3 = Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(20690u, 0u), vec2<u32>(13418u, 1u), vec2<u32>(4294967295u, u_input.b))).a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -358f), -2094f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) * func_4(vec2<u32>(u_input.a, 80394u)).a.x), 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), 321f, _wgslsmith_f_op_f32(-238f * -1105f), _wgslsmith_f_op_f32(1000f * -195f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1322f, -1070f, 1082f, -2115f))))), func_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1000f) - _wgslsmith_f_op_f32(-389f - 530f)), Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(1220f, 251f, -1709f, 214f), vec4<f32>(310f, -639f, -766f, -504f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false))), func_1(vec4<bool>(false, true, false, true), var_1.x).c)), ~vec4<u32>(_wgslsmith_add_u32(165296u, 63850u), _wgslsmith_sub_u32(u_input.b, 46861u), u_input.b, ~u_input.b), vec4<u32>(~u_input.b, u_input.a, 1u, u_input.b) << ((vec4<u32>(u_input.a, u_input.a, 12432u, 27776u) << (abs(vec4<u32>(16579u, 56351u, u_input.a, 76267u)) % vec4<u32>(32u))) % vec4<u32>(32u))).b.b, vec4<bool>(true || (abs(var_2.x) > _wgslsmith_mod_i32(17436i, var_1.x)), var_2.x <= var_1.x, true && any(vec3<bool>(true, true, true)), true & any(vec4<bool>(false, true, false, true))));
    var var_4 = select(vec2<u32>(4294967295u, ~45189u) ^ func_2(-266f, _wgslsmith_clamp_u32(u_input.b, 7046u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, ~19228u), vec2<u32>(u_input.a, ~23036u)), !func_5(Struct_4(344f, var_3), min(vec4<u32>(30872u, 5404u, 33707u, u_input.a), vec4<u32>(u_input.b, 22918u, 4294967295u, u_input.b)), ~vec4<u32>(4915u, 4294967295u, 4294967295u, 5997u)).b.c.yz) & vec2<u32>(u_input.a, 36969u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-countOneBits(vec3<i32>(var_1.x, var_2.x, var_2.x))), var_1.x, ~vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b), countOneBits(firstTrailingBit(1u))), ~var_4.x);
}

