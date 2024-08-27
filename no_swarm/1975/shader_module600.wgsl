struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_1(vec4<f32>(105f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1473f + arg_1.x) + 1f))), _wgslsmith_div_f32(546f, -462f), _wgslsmith_f_op_f32(f32(-1f) * -300f)), false, 156f);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1168f), arg_2.x, -1253f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -196f, arg_2.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.a.wyy - arg_2.yzx), _wgslsmith_f_op_vec3_f32(select(var_0.a.yzy, vec3<f32>(arg_1.x, -1112f, -1000f), var_1.b)), arg_3))))) - var_0.a.yzw);
    var var_3 = var_0.a;
    var_0 = Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2374f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-446f * var_1.a.x), 663f))), -1155f), arg_3.x, arg_0.a.x);
    return true | arg_0.b;
}

fn func_2() -> bool {
    var var_0 = all(vec4<bool>(!all(vec2<bool>(false, true)), func_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-765f, -202f, -516f, 632f), vec4<f32>(217f, 261f, 136f, -318f)), true, _wgslsmith_f_op_f32(-358f * -718f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2113f, 284f), vec2<f32>(-1107f, 440f)) + vec2<f32>(-109f, 551f)), vec4<f32>(_wgslsmith_f_op_f32(-962f + -1000f), _wgslsmith_f_op_f32(min(377f, -398f)), 171f, _wgslsmith_div_f32(1169f, -430f)), vec3<bool>(true, true, true)), !(true || func_3(Struct_1(vec4<f32>(730f, -362f, 198f, 1611f), true, -1000f), vec2<f32>(638f, -1650f), vec4<f32>(343f, 889f, 965f, 1960f), vec3<bool>(false, false, true))), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) * _wgslsmith_f_op_f32(-1000f - -105f)), 1782f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(857f - 1067f))) * vec4<f32>(_wgslsmith_f_op_f32(1176f * -595f), _wgslsmith_f_op_f32(sign(-286f)), _wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(f32(-1f) * -537f))), any(vec3<bool>(!func_3(Struct_1(vec4<f32>(269f, -1830f, -2096f, -713f), false, -119f), vec2<f32>(-1155f, -1132f), vec4<f32>(-2133f, 235f, -2091f, -1210f), vec3<bool>(true, false, true)), true, _wgslsmith_f_op_f32(ceil(-553f)) != _wgslsmith_div_f32(-473f, 1000f))), 621f);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) + vec4<f32>(var_1.a.x, var_1.c, var_1.c, 215f)), _wgslsmith_f_op_vec4_f32(-var_1.a)))), !var_1.b, _wgslsmith_f_op_f32(-var_1.c));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), var_1.b, var_1.a.x);
    var var_2 = !select(!select(!vec4<bool>(var_1.b, false, false, true), vec4<bool>(true, var_1.b, var_1.b, var_1.b), all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, 1i > countOneBits(u_input.c)), vec4<bool>(var_1.b, func_3(Struct_1(vec4<f32>(-649f, var_1.a.x, var_1.c, 1082f), var_1.b, 1378f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -2318f)), _wgslsmith_f_op_vec4_f32(exp2(var_1.a)), select(vec3<bool>(false, var_1.b, true), vec3<bool>(false, true, var_1.b), var_1.b)), false, !(u_input.c > u_input.c)));
    return var_1.a.x > _wgslsmith_f_op_f32(1352f + 110f);
}

fn func_1() -> vec3<bool> {
    let var_0 = select(select(select(vec4<bool>(true, true, true, func_2()), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), select(true, false, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, true))), !(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false))), select(select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true)), !vec4<bool>(true, u_input.b.x >= u_input.b.x, any(vec2<bool>(false, false)), false)));
    var var_1 = -min(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.c, 1i, u_input.c), u_input.c), vec2<i32>(~u_input.c, -2147483647i)), vec2<i32>(44457i, u_input.c) >> (vec2<u32>(select(u_input.b.x, u_input.b.x, false), abs(u_input.a)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -20477i, var_1.x, u_input.c), vec4<i32>(u_input.c, u_input.c, var_1.x, u_input.c)), ~vec4<i32>(var_1.x, u_input.c, 0i, u_input.c)) & ~vec4<i32>(u_input.c, var_1.x, u_input.c, var_1.x), -(vec4<i32>(var_1.x, -1i, var_1.x, -9941i) | -vec4<i32>(u_input.c, 0i, var_1.x, 1i))), select(vec4<i32>(max(u_input.c | -2147483647i, i32(-1i) * -16772i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.x, u_input.c, 71691i), vec4<i32>(60410i, -1425i, -14352i, 1i)), 1897i, -u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, 27858i, var_1.x) ^ vec4<i32>(u_input.c, var_1.x, var_1.x, var_1.x), countOneBits(vec4<i32>(u_input.c, u_input.c, 2147483647i, -17266i))) << (max(vec4<u32>(25738u, 17110u, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), !any(vec4<bool>(false, var_0.x, false, true))));
    let var_3 = min(~var_2, 2147483647i);
    let var_4 = ~u_input.b.x >> (_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(reverseBits(select(u_input.a, 69185u, true)), ~u_input.a), 886u) % 32u);
    return !(!select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !select(vec3<bool>(var_0.x, var_0.x, true), var_0.wyx, var_0.x), !(true && var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.c, ~firstLeadingBit(u_input.c), -2147483647i);
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), -4925i <= u_input.c), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), true), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), false), !(39173i == ~var_0.x)), !func_1());
    var_0 = vec3<i32>(-1i) * -(~(abs(vec3<i32>(-23870i, var_0.x, -246i)) ^ -vec3<i32>(-1i, var_0.x, var_0.x)));
    let var_2 = vec3<bool>(!all(vec3<bool>(var_1.x, true, var_1.x)) | !((i32(-1i) * -26853i) >= min(1i, u_input.c)), !any(vec2<bool>(false, var_1.x)), false);
    let var_3 = _wgslsmith_div_vec4_i32(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-39175i, 1i, u_input.c, var_0.x) | vec4<i32>(-17831i, var_0.x, -4311i, -1i), ~vec4<i32>(u_input.c, var_0.x, u_input.c, 0i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, _wgslsmith_div_i32(-52292i, u_input.c), -var_0.x), ~vec4<i32>(var_0.x, -38765i, 45552i, var_0.x) << (vec4<u32>(31849u, 4294967295u, 4294967295u, 3394u) % vec4<u32>(32u))));
    var var_4 = var_2.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(334f, -459f))) * -717f), 1f)));
}

