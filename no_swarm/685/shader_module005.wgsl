struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = arg_0.a;
    let var_1 = ~u_input.b >> (vec2<u32>(_wgslsmith_mod_u32(42220u, ~u_input.b.x) >> ((u_input.b.x << (_wgslsmith_div_u32(38216u, u_input.b.x) % 32u)) % 32u), min(u_input.b.x, ~u_input.b.x) | ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)) % vec2<u32>(32u));
    let var_2 = arg_0;
    let var_3 = 1365f;
    let var_4 = u_input.a.x;
    return !(!((all(vec3<bool>(var_0.b.x, false, true)) & (arg_0.b.x && var_2.b.x)) | any(vec3<bool>(var_0.b.x, var_2.a.b.x, var_0.b.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = ((4294967295u > (~u_input.b.x & 0u)) && !all(vec2<bool>(true, true))) == true;
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(823f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f))), 282f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -787f)))), !vec3<bool>(true, func_3(Struct_2(Struct_1(vec3<f32>(-1000f, 1862f, -103f), vec3<bool>(false, true, false), vec3<f32>(-726f, -194f, 168f)), vec2<bool>(true, false)), _wgslsmith_f_op_f32(trunc(-443f)), _wgslsmith_f_op_f32(abs(893f))), true && func_3(Struct_2(Struct_1(vec3<f32>(-1964f, -741f, -709f), vec3<bool>(true, true, true), vec3<f32>(-1618f, -2205f, 1000f)), vec2<bool>(false, false)), -718f, 187f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-717f + -230f), -1212f) * _wgslsmith_f_op_f32(floor(-976f))), -483f, 1117f));
    var var_2 = Struct_2(Struct_1(vec3<f32>(512f, -1343f, 757f), select(var_1.b, select(var_1.b, select(vec3<bool>(false, var_1.b.x, true), var_1.b, var_1.b), select(vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(true, var_1.b.x, var_1.b.x), false)), !vec3<bool>(var_1.b.x, false, var_1.b.x)), vec3<f32>(_wgslsmith_f_op_f32(floor(374f)), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(853f, var_1.c.x, false))))), !select(!vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(var_1.b.x, true), vec2<bool>(true, true)));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -869f, -1037f)), var_1.a))), !var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, -651f, -379f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1077f, var_1.c.x, var_2.a.a.x))))), vec2<bool>(select(true, u_input.b.x == firstTrailingBit(0u), !(!var_1.b.x)), var_1.b.x));
    var_2 = Struct_2(var_2.a, var_2.a.b.yx);
    return var_2.a;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-18992i, 0i), vec2<i32>(u_input.a.x, -36473i), u_input.a.yz), -vec2<i32>(0i, u_input.a.x), true), u_input.a.yx);
    let var_1 = true;
    let var_2 = u_input.a.zy;
    var var_3 = Struct_2(arg_1, !select(select(vec2<bool>(true, var_1), select(arg_1.b.yx, vec2<bool>(var_1, arg_2), vec2<bool>(true, arg_2)), var_1), arg_1.b.yz, vec2<bool>(arg_3.x >= arg_3.x, false)));
    var var_4 = var_3.a.b.x;
    return Struct_2(func_2(), vec2<bool>(select(true, u_input.b.x > _wgslsmith_mod_u32(4294967295u, 2652u), -1i <= var_0), 7410u <= ~u_input.b.x));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(~u_input.b.x, ~_wgslsmith_mod_u32(u_input.b.x << (_wgslsmith_div_u32(21797u, u_input.b.x) % 32u), ~(124847u | u_input.b.x)), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u));
    let var_1 = -442f;
    let var_2 = func_4(all(!vec2<bool>(all(vec2<bool>(true, false)), true)), func_2(), false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1007f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, _wgslsmith_f_op_f32(abs(-581f)))))));
    let var_3 = !(!(!any(vec4<bool>(false, var_2.b.x, true, var_2.b.x))));
    let var_4 = vec3<u32>(~_wgslsmith_div_u32(u_input.b.x ^ ~u_input.b.x, select(45757u, u_input.b.x, var_2.b.x) << (u_input.b.x % 32u)), 0u, u_input.b.x);
    return Struct_2(var_2.a, select(var_2.a.b.yy, func_2().b.xy, func_4(true, var_2.a, any(var_2.b), _wgslsmith_f_op_vec2_f32(-arg_0.zw)).a.b.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b.x, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, u_input.b.x)), ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), ~(~abs(vec3<u32>(u_input.b.x, 1u, u_input.b.x)) << (~select(vec3<u32>(u_input.b.x, 2799u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<bool>(arg_0.a.b.x, false, arg_0.a.b.x)) % vec3<u32>(32u))));
    let var_1 = !arg_0.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2().a.zy * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, arg_3), arg_0.a.c.yy) + _wgslsmith_f_op_vec2_f32(min(arg_1.a.yz, arg_1.c.xx)))))));
    let var_3 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2843i, _wgslsmith_sub_i32(-1i, u_input.a.x)), vec2<i32>(abs(2147483647i), max(u_input.a.x, u_input.a.x)), u_input.a.yx), _wgslsmith_div_vec2_i32(u_input.a.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy >> (var_0.zz % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-2147483647i, -27568i)))), false), reverseBits(u_input.a.yz));
    return func_4(false, func_4(~1i <= firstTrailingBit(-25934i), func_4(all(arg_0.a.b), arg_0.a, true, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -2086f))).a, arg_1.b.x, arg_1.c.zy).a, arg_0.a.b.x, _wgslsmith_f_op_vec2_f32(-func_1(vec4<f32>(_wgslsmith_f_op_f32(1000f + arg_3), _wgslsmith_f_op_f32(436f + arg_3), _wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(-arg_2.x))).a.a.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2571f, -1000f, 876f, -740f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-175f, 1000f, -762f, -217f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, 489f, 1826f, 335f) - vec4<f32>(-603f, 407f, -769f, -254f)) * vec4<f32>(-939f, -220f, -124f, 1569f)))), func_4(true, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(963f, -1000f, 1813f, 358f), vec4<f32>(-449f, 456f, -2199f, 513f))))).a, true, vec2<f32>(_wgslsmith_f_op_f32(min(-202f, -718f)), 1008f)).a, vec2<f32>(_wgslsmith_f_op_f32(-153f + 1325f), -1018f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(469f, 200f)) * -264f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1619f * 942f), -1409f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1502f, 104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-3175f, 1198f))))));
    let var_1 = 0u;
    let var_2 = vec4<bool>(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, var_0.a.c.x, 816f, var_0.a.c.x) + vec4<f32>(-1000f, 458f, -496f, 142f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, -726f, -128f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, -1086f, 817f, -105f))))).b.x, u_input.a.x <= abs(_wgslsmith_mod_i32(countOneBits(2147483647i), u_input.a.x ^ 1i)), false, var_0.a.b.x);
    var var_3 = ~(~(~vec3<u32>(countOneBits(88176u), _wgslsmith_sub_u32(var_1, 43188u), 66173u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_2().a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, 173f, 472f) + vec3<f32>(1359f, 1000f, 574f))))));
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mult_u32(12532u, u_input.b.x), 28424u, 55030u, _wgslsmith_mod_u32(var_1 | 67716u, min(950u, var_1))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1, 1u, var_1, var_3.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, 11246u, 1u, var_3.x), vec4<u32>(var_3.x, var_1, 57581u, 4294967295u), vec4<u32>(31573u, 4294967295u, u_input.b.x, 15922u))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 0u, 66449u, 47646u), abs(vec4<u32>(20642u, var_3.x, var_1, 3694u))), ~(~vec4<u32>(var_3.x, var_3.x, var_3.x, 21855u))) % vec4<u32>(32u)));
}

