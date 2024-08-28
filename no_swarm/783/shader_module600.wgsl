struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.b.xy)) - arg_0.b.yx), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b - arg_0.b) * vec3<f32>(arg_0.a.x, arg_0.b.x, -1511f)), vec3<f32>(-263f, _wgslsmith_f_op_f32(sign(245f)), arg_0.b.x), vec3<bool>(true, true, true))), arg_0.b));
    var var_1 = _wgslsmith_div_vec4_i32(~(-reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, -59506i, arg_1.x) & arg_1)), _wgslsmith_sub_vec4_i32(u_input.c, abs(arg_1)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_2.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(802f)), arg_0.b.x))))));
    var var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2, 18863u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, arg_2, u_input.a.x, 23902u) % vec4<u32>(32u)), select(vec4<u32>(0u, 121419u, 58802u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, arg_2), vec4<bool>(true, false, false, true)) ^ ~vec4<u32>(arg_2, arg_2, 0u, arg_2), min(vec4<u32>(arg_2, arg_2, 39237u, 4294967295u) ^ vec4<u32>(arg_2, 0u, 4294967295u, 31476u), ~vec4<u32>(17623u, 20815u, arg_2, u_input.a.x))), ~reverseBits(firstLeadingBit(vec4<u32>(u_input.a.x, arg_2, arg_2, arg_2)))), u_input.a.x, ~(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_2, u_input.a.x), vec3<u32>(4294967295u, arg_2, 0u)), max(vec3<u32>(u_input.a.x, 12905u, 4294967295u), vec3<u32>(4294967295u, 71576u, u_input.a.x))) | min(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 12648u << (1u % 32u))));
    return !(!vec4<bool>(true, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x) > -var_1.x, _wgslsmith_mod_i32(u_input.c.x, 57818i) > _wgslsmith_div_i32(u_input.b.x, arg_1.x), true));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1716f + 549f) - _wgslsmith_f_op_f32(-521f - 131f)), _wgslsmith_f_op_f32(select(1f, -1000f, arg_1.x))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(576f, 569f))), _wgslsmith_div_vec2_f32(vec2<f32>(145f, 2300f), vec2<f32>(791f, 1129f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-532f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(236f, -1479f)) * _wgslsmith_f_op_f32(f32(-1f) * -878f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2026f - -647f) * _wgslsmith_f_op_f32(1130f + 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1999f, -1053f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(532f, -244f), _wgslsmith_div_f32(606f, 1080f), false))))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.b.x) + var_0.b.yx))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x + var_0.b.x))), var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x - -1183f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, var_0.a.x, var_0.b.x)))) + var_0.b)));
    var var_3 = ~_wgslsmith_mod_i32(u_input.b.x, ~1i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x));
    return ~_wgslsmith_sub_vec3_u32(abs(select(vec3<u32>(2351u, u_input.a.x, 13176u), vec3<u32>(4294967295u, 37058u, 12109u), arg_1.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(8283u, u_input.a.x, u_input.a.x), ~vec3<u32>(0u, u_input.a.x, 45647u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = ~select(~reverseBits(vec3<u32>(1u, 34154u, 0u)), _wgslsmith_add_vec3_u32(func_4(_wgslsmith_add_i32(-11843i, u_input.b.x), func_3(arg_2, u_input.c, 0u)), ~abs(vec3<u32>(0u, 17395u, u_input.a.x))), !vec3<bool>(true, arg_0.x, all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), 847f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1050f, -1584f, _wgslsmith_f_op_f32(f32(-1f) * -1149f))));
    var var_2 = _wgslsmith_f_op_f32(arg_2.a.x + -1469f);
    var var_3 = ~(~select(reverseBits(abs(var_0.x)), _wgslsmith_clamp_u32(~1u, 1u, 4294967295u), _wgslsmith_div_f32(696f, var_1.a.x) <= var_1.a.x));
    let var_4 = reverseBits(countOneBits(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x)), u_input.b)));
    return false;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = false;
    var_0 = !any(arg_1) & arg_1.x;
    var var_1 = !any(!func_3(Struct_1(vec2<f32>(-689f, 1027f), vec3<f32>(-957f, -1578f, 1131f)), u_input.c, ~1u).ywx);
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f) - _wgslsmith_f_op_f32(floor(1531f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1010f + 169f), _wgslsmith_f_op_f32(-1662f - -1417f)))))), -336f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(144f + -968f), 1518f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(979f, 326f), vec2<f32>(876f, -1376f))), true)))), vec3<f32>(1f, 1f, 1f));
}

fn func_1() -> bool {
    var var_0 = ~u_input.a;
    var var_1 = -293f;
    var_0 = ~firstTrailingBit(u_input.a);
    let var_2 = firstLeadingBit(_wgslsmith_mod_u32(35788u, ~(~_wgslsmith_sub_u32(87694u, u_input.a.x))));
    var var_3 = func_5(_wgslsmith_add_i32(-1i, 1i), select(vec3<bool>(!func_2(vec3<bool>(true, false, false), 1157f, Struct_1(vec2<f32>(-1000f, -170f), vec3<f32>(-1108f, 112f, 1716f))), _wgslsmith_sub_u32(var_2, 1u) > ~0u, true), !func_3(Struct_1(vec2<f32>(-2137f, 1298f), vec3<f32>(-396f, 261f, -277f)), countOneBits(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 1i)), ~var_0.x).xyx, !vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true)), !func_3(Struct_1(vec2<f32>(1029f, 1366f), _wgslsmith_f_op_vec3_f32(vec3<f32>(3378f, 119f, -876f) * vec3<f32>(-917f, 1000f, 925f))), -_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(0i, 0i, u_input.b.x, 2147483647i)), countOneBits(_wgslsmith_div_u32(0u, var_2))));
    return !any(vec3<bool>(true, true, any(func_3(Struct_1(var_3.b.zx, vec3<f32>(1419f, var_3.a.x, var_3.b.x)), u_input.c, var_2).xy)));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: bool) -> vec3<bool> {
    let var_0 = -arg_1;
    var var_1 = func_3(func_5(-5354i, vec3<bool>(true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), true)), !arg_2)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.c.x, -19335i), ~(-844i), ~var_0.x), vec4<i32>(~10905i, ~(-2147483647i), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -5850i), arg_1))), ((vec4<i32>(1i, var_0.x, var_0.x, 2147483647i) >> (vec4<u32>(0u, 4294967295u, 1u, 0u) % vec4<u32>(32u))) ^ reverseBits(vec4<i32>(-1i, var_0.x, -11475i, -25709i))) | ~(-vec4<i32>(0i, u_input.b.x, var_0.x, arg_1.x))), u_input.a.x);
    var var_2 = ~vec2<u32>(abs(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), func_4(_wgslsmith_mult_i32(reverseBits(-2147483647i), select(-1i, u_input.c.x, var_1.x)), func_3(func_5(var_0.x, var_1.xwx, vec4<bool>(false, arg_2, true, arg_2)), reverseBits(u_input.c), u_input.a.x)).x);
    let var_3 = -arg_1 | vec2<i32>(0i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(countOneBits(arg_1.x), 1i), -64806i, _wgslsmith_add_i32(~var_0.x, _wgslsmith_clamp_i32(u_input.c.x, arg_1.x, 44290i))));
    var_2 = u_input.a;
    return vec3<bool>(true, select(func_2(select(select(vec3<bool>(arg_2, false, false), var_1.wwy, arg_2), var_1.zxw, var_1.wzx), arg_0.x, func_5(9138i, !vec3<bool>(false, false, var_1.x), !vec4<bool>(arg_2, false, true, true))), !var_1.x, (u_input.a.x ^ firstTrailingBit(var_2.x)) < 51127u), !(!((var_1.x == false) || (true != arg_2))));
}

fn func_7(arg_0: vec3<bool>, arg_1: i32, arg_2: bool) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-999f, -569f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, -1000f))), vec2<f32>(1515f, -790f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1050f, -319f, 1000f))) - func_5(-2147483647i, vec3<bool>(all(arg_0.yx), true, select(arg_0.x, false, arg_2)), !(!vec4<bool>(arg_0.x, true, arg_0.x, false))).b));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.b.x)))))), _wgslsmith_f_op_vec3_f32(ceil(var_0.b)));
    var var_1 = -firstTrailingBit(23924i);
    var_1 = _wgslsmith_sub_i32(-68506i, arg_1);
    var var_2 = abs(2291i);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(!func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-732f, -1058f, -409f, -1290f) - vec4<f32>(676f, -758f, 215f, 623f))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 27446i), -u_input.b.xx), func_1()), -1i, false || all(vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, u_input.a.x >= u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(839f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)) + _wgslsmith_f_op_f32(round(-2394f)))) * -193f);
    let var_2 = u_input.c.x;
    var var_3 = func_5(u_input.c.x, !func_6(vec4<f32>(-808f, -1068f, _wgslsmith_f_op_f32(sign(-1716f)), _wgslsmith_f_op_f32(min(1877f, -370f))), countOneBits(vec2<i32>(-2147483647i, -42142i)), !select(true, false, false)), vec4<bool>(any(vec3<bool>(true, true, true)), true, func_6(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -660f), -184f, _wgslsmith_f_op_f32(-249f * -328f)), vec2<i32>(u_input.c.x << (4294967295u % 32u), -var_0.x), false).x, true));
    let var_4 = 37309u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-985f, -234f, var_3.b.x, -1840f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(958f, var_3.a.x, 710f, -237f))))))));
}

