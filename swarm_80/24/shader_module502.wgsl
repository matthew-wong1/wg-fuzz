struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec2<u32>(~arg_0.a.x, ~arg_0.a.x);
    var var_1 = Struct_1(vec4<u32>(18416u, arg_0.b, ~_wgslsmith_dot_vec3_u32(arg_0.a.yzz ^ vec3<u32>(arg_0.a.x, 1u, var_0.x), max(arg_0.a.wwx, arg_0.a.zyx)), ~1u), arg_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(arg_0.c + -885f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-846f + -161f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1600f, -961f)), 1630f)))));
    let var_2 = ~2273i <= ~_wgslsmith_mod_i32(-u_input.b, min(-26236i, u_input.a.x));
    let var_3 = arg_0;
    var_1 = Struct_1(_wgslsmith_sub_vec4_u32(var_1.a, var_3.a), ~(~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1371f))));
    return select(vec4<bool>(var_2, var_2, true, !(var_2 != false)), select(select(vec4<bool>(!var_2, true, true, true), select(!vec4<bool>(var_2, false, false, true), vec4<bool>(false, var_2, false, var_2), !vec4<bool>(true, var_2, false, true)), any(!vec2<bool>(var_2, false))), select(!(!vec4<bool>(false, var_2, var_2, true)), vec4<bool>(true, var_2, false, any(vec4<bool>(var_2, var_2, var_2, true))), var_2), vec4<bool>(true, true, u_input.b >= u_input.a.x, !(var_3.c >= var_3.c))), vec4<bool>(any(!(!vec4<bool>(false, false, false, var_2))), any(!(!vec3<bool>(var_2, var_2, var_2))), true, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(~reverseBits(~vec4<u32>(4294967295u, arg_0.a.x, 1u, 0u)), 13847u, _wgslsmith_f_op_f32(select(arg_0.c, 792f, any(vec4<bool>(select(true, false, true), true, true, true)))));
    var var_2 = var_0;
    let var_3 = select(vec4<bool>(!(!any(vec2<bool>(true, false))), true, true, false), vec4<bool>(true, true, any(vec2<bool>(true, true)), all(func_3(Struct_1(vec4<u32>(4294967295u, var_1.a.x, 0u, arg_0.b), 12777u, arg_0.c)))), vec4<bool>(true, true, true, true));
    let var_4 = Struct_1(~arg_1.a, 26601u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1623f)), 1560f)));
    return _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~(~var_4.a.zx)), firstLeadingBit(select(vec2<u32>(11180u, 96310u) | var_1.a.xx, var_1.a.wz, false)), select(var_3.yx, !var_3.zx, true)), ~var_0.a.xy);
}

fn func_1() -> u32 {
    let var_0 = Struct_1(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 1u, 31917u, 28448u), vec4<u32>(1u, 18755u, 24758u, 61910u), false), abs(vec4<u32>(1u, 18237u, 8742u, 1u))), func_2(Struct_1(vec4<u32>(1u, 1u, 6103u, 39815u), 0u, -1035f), Struct_1(vec4<u32>(16704u, 0u, 19211u, 8777u), 19157u, 1213f), ~vec2<i32>(21572i, u_input.a.x)), _wgslsmith_add_u32(60639u, 6467u), countOneBits(func_2(Struct_1(vec4<u32>(1143u, 1u, 4294967295u, 0u), 0u, -546f), Struct_1(vec4<u32>(45099u, 4294967295u, 15866u, 65474u), 1u, 1568f), u_input.a)))), func_2(Struct_1(vec4<u32>(_wgslsmith_mult_u32(24178u, 1u), ~25300u, _wgslsmith_add_u32(37444u, 1u), firstTrailingBit(58608u)), 1u, _wgslsmith_f_op_f32(step(-251f, _wgslsmith_f_op_f32(f32(-1f) * -1016f)))), Struct_1(abs(abs(vec4<u32>(4294967295u, 72866u, 4294967295u, 0u))), ~2563u, _wgslsmith_f_op_f32(1f - -2033f)), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1088f)));
    let var_1 = Struct_1(vec4<u32>(33574u | _wgslsmith_mult_u32(firstLeadingBit(80053u), ~var_0.b), ~((var_0.b << (var_0.b % 32u)) << (4294967295u % 32u)), var_0.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.b, 0u), min(var_0.a.zwz, var_0.a.yxz))), var_0.b, var_0.c);
    let var_2 = select(select(select(vec3<bool>(all(vec3<bool>(true, true, false)), true, u_input.a.x == 15105i), vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(false, false, true, false)), any(vec4<bool>(true, true, true, true)), true), select(func_3(Struct_1(var_0.a, 13629u, var_1.c)).wyy, select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), true), func_3(var_1).wzw)), !(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))), _wgslsmith_f_op_f32(-1246f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(494f, var_1.c)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f - -382f) - _wgslsmith_f_op_f32(ceil(var_1.c))) * _wgslsmith_f_op_f32(select(233f, _wgslsmith_f_op_f32(floor(var_1.c)), true))));
    let var_3 = var_0;
    var var_4 = var_3;
    return var_4.b;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    var var_0 = true;
    var_0 = true || (-(~_wgslsmith_add_i32(1i, 0i)) <= u_input.a.x);
    var_0 = true;
    let var_1 = select(select(reverseBits(vec3<i32>(u_input.a.x & u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, -2289i), vec4<i32>(-1i, 18651i, 2147483647i, u_input.a.x)))), ~vec3<i32>(u_input.b & 11020i, _wgslsmith_mult_i32(0i, u_input.b), 13652i), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, u_input.b >> (arg_1 % 32u), -u_input.a.x), max(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.b, u_input.b, -2147483647i)), ~vec3<i32>(u_input.a.x, -2147483647i, -17951i)), select(-vec3<i32>(u_input.a.x, 1i, -2147483647i), ~vec3<i32>(-2147483647i, u_input.a.x, u_input.b), vec3<bool>(false, true, false))), ~vec3<i32>(u_input.b, abs(-1i), select(u_input.a.x, 1i, false))), false);
    let var_2 = reverseBits(~(var_1.xz | -vec2<i32>(28157i, u_input.b)));
    return true;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1005f);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1266f - -435f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-836f, 396f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -173f)))), arg_1) * 2099f);
    let var_3 = max(vec4<i32>(-1i) * -(~vec4<i32>(0i, 62673i, 15833i, arg_3.x)), vec4<i32>(~arg_3.x, 1i, u_input.b >> (109134u % 32u), firstTrailingBit(arg_3.x)) >> (select(firstLeadingBit(vec4<u32>(0u, 73391u, 1u, 4294967295u)), abs(vec4<u32>(1u, 17342u, 1u, 24594u)), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)) % vec4<u32>(32u))) & countOneBits(_wgslsmith_mod_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.x, -2147483647i, -1i, 0i), vec4<i32>(44593i, arg_3.x, u_input.a.x, arg_3.x)), vec4<i32>(arg_3.x, u_input.a.x, u_input.a.x, -14972i), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), firstLeadingBit(vec4<i32>(12047i, u_input.b, arg_3.x, arg_3.x))));
    return firstTrailingBit(_wgslsmith_add_u32(~(~4561u), 0u)) & 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, ~abs(1u)), ~select(~1u, ~20856u, max(23293i, u_input.a.x) >= -9062i), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-121f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(590f, -1165f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -975f)) + _wgslsmith_f_op_f32(258f - -344f))), vec3<bool>(func_4(~51270u, func_1(), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(vec4<u32>(0u, 1u, 1u, 1u), 10253u, 526f)), true, true), abs(-vec3<i32>(1i, u_input.a.x, u_input.b) >> (_wgslsmith_div_vec3_u32(vec3<u32>(9747u, 0u, 4294967295u), vec3<u32>(8752u, 20957u, 65240u)) % vec3<u32>(32u)))));
    let var_1 = any(vec3<bool>(false, true, false));
    var var_2 = !select(!select(vec3<bool>(var_1, var_1, false), !vec3<bool>(var_1, false, var_1), true), vec3<bool>(var_1, var_1, true), select(!vec3<bool>(var_1, false, false), select(func_3(Struct_1(vec4<u32>(4294967295u, 81988u, 35376u, 0u), 0u, -1754f)).wwz, select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, var_1, true)), 0i == u_input.a.x), !(!vec3<bool>(var_1, var_1, false))));
    var_2 = select(vec3<bool>(!var_2.x, func_2(Struct_1(vec4<u32>(33932u, 0u, 59265u, 82954u), 33709u, -1470f), Struct_1(vec4<u32>(1u, 28134u, 4294967295u, 25379u), 0u, -212f), vec2<i32>(u_input.a.x, u_input.a.x)) < _wgslsmith_mod_u32(func_5(-1225f, -1511f, vec3<bool>(true, true, false), vec3<i32>(u_input.a.x, -23054i, 2147483647i)), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) * _wgslsmith_f_op_f32(select(1000f, 1137f, true))) == _wgslsmith_f_op_f32(1133f + -202f)), select(!select(select(vec3<bool>(true, true, var_1), vec3<bool>(true, true, true), vec3<bool>(false, var_2.x, var_1)), !vec3<bool>(true, false, var_2.x), true), !vec3<bool>(select(var_2.x, true, false), var_2.x, true), all(vec4<bool>(var_1, false, true, true))), !(!(!select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_1, var_2.x, false), true))));
    let var_3 = Struct_1(_wgslsmith_add_vec4_u32(~max(~vec4<u32>(27310u, 4797u, 92356u, 4294967295u), abs(vec4<u32>(0u, 34353u, 68472u, 40343u))), vec4<u32>(min(0u, 1u) & firstTrailingBit(0u), ~max(14973u, 75423u), 13795u, _wgslsmith_div_u32(25458u, ~156672u))), select(reverseBits(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_mod_u32(5208u, 69149u), 17583u, 84634u)), any(vec4<bool>(true, !var_2.x, var_2.x, any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_1))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f)))));
    let var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(~var_3.a.x, max(var_3.a.x, 1u), reverseBits(4045u), select(var_3.b, 0u, var_2.x)), var_3.a, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 6494u, 16480u, var_3.a.x), ~vec4<u32>(var_3.b, var_3.a.x, 471u, 4294967295u)), ~(~var_3.a))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_3.b, _wgslsmith_mod_u32(15775u, var_3.b) << (max(var_3.b, var_3.b) % 32u), ~abs(35476u)), select(var_3.a.x, _wgslsmith_div_u32(var_3.a.x << (4294967295u % 32u), ~7785u), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) - 192f));
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.c)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -193f)))))), var_3.c, var_1));
    let var_6 = firstTrailingBit(4294967295u << (var_4.b % 32u)) << (4294967295u % 32u);
    var_0 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -21240i, ~(~vec3<i32>(6184i, ~u_input.b, u_input.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, var_5)) * vec2<f32>(-1000f, -1769f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(264f, var_5) + _wgslsmith_div_vec2_f32(vec2<f32>(var_5, -1355f), vec2<f32>(1241f, var_5)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c, var_5))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, var_3.c))))));
}

