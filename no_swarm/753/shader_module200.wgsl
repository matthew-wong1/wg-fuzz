struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-422f, 872f, 881f), vec3<f32>(-1421f, -647f, 774f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2237f, 160f, -297f)))) * vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, -990f)), _wgslsmith_div_f32(-772f, _wgslsmith_f_op_f32(-738f + 937f)), -427f)));
    let var_1 = ~max(i32(-1i) * -_wgslsmith_clamp_i32(-27990i, 218i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -23883i, -9597i, 1i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, -34113i, -32517i, u_input.a), vec4<i32>(u_input.a, u_input.a, 34377i, 31394i), abs(vec4<i32>(0i, u_input.a, u_input.a, 0i)))));
    return _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(~var_1, -u_input.a, i32(-1i) * -65188i), ~(-1i)), ~(vec2<i32>(~(-38210i), u_input.a) >> (select(vec2<u32>(56384u, arg_0), vec2<u32>(1u, arg_0) ^ vec2<u32>(arg_0, arg_0), select(vec2<bool>(false, false), vec2<bool>(false, false), true)) % vec2<u32>(32u))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec3<f32>(1719f, -665f, -1000f), (vec2<i32>(0i, u_input.a) | vec2<i32>(17487i, abs(u_input.a))) ^ (vec2<i32>(u_input.a, _wgslsmith_div_i32(-16332i, u_input.a)) | func_3(_wgslsmith_add_u32(61469u, 0u))), vec3<u32>(select(~4294967295u, firstTrailingBit(_wgslsmith_div_u32(0u, 4294967295u)), select(true, false, false)), 16108u, abs(11031u)), vec3<u32>(238u, 58575u, _wgslsmith_clamp_u32(~64432u, _wgslsmith_div_u32(56405u, 1u), 1u) & ~(~4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1020f, 805f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-638f)))), _wgslsmith_f_op_f32(step(-383f, _wgslsmith_f_op_f32(select(-431f, _wgslsmith_div_f32(176f, -714f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(917f)), _wgslsmith_f_op_f32(774f + -263f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1183f), vec4<f32>(var_0.e.x, 185f, -259f, 306f))), vec4<f32>(var_0.e.x, -867f, var_0.e.x, var_0.e.x), var_0.e.x <= -924f)))));
    var var_2 = var_0;
    let var_3 = vec2<bool>(true, select(0u > var_2.d.x, false, (_wgslsmith_sub_u32(var_2.d.x, 1u) == 0u) | (_wgslsmith_f_op_f32(f32(-1f) * -343f) != _wgslsmith_f_op_f32(trunc(-183f)))));
    let var_4 = var_0;
    return 47857u;
}

fn func_1() -> Struct_1 {
    var var_0 = select(_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 5039u), vec4<u32>(4110u, 4294967295u, 1u, 15805u), vec4<u32>(5685u, 1u, 27618u, 2163u)), ~vec4<u32>(5207u, 4294967295u, 4294967295u, 7175u))), vec4<u32>(1u, _wgslsmith_mult_u32(41254u, 0u), ~6503u, _wgslsmith_mod_u32(28959u, 59603u)) & vec4<u32>(func_2(), ~1u, ~39888u, 1u)), vec4<u32>(func_2(), abs(1u), max(1u, 40850u), ~(~12207u) & _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 46434u, 4294967295u), 0u)), !vec4<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true)), true, -u_input.a >= -23893i));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(963f)), _wgslsmith_f_op_f32(sign(-2227f))), _wgslsmith_div_f32(1000f, -1249f)), 1643f), -min(-vec2<i32>(u_input.a, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-1i, -1i))) << (var_0.yy % vec2<u32>(32u)), ~(~var_0.yyw), var_0.zzx, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1484f, -1132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-752f + -305f) - _wgslsmith_f_op_f32(f32(-1f) * -1574f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f))))));
    let var_2 = 9819u;
    var var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.e.x))))), var_1.e.x, _wgslsmith_f_op_f32(var_1.e.x - var_1.e.x))));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1155f, -309f)) + _wgslsmith_f_op_f32(select(var_1.e.x, var_3.x, true)))));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_3.yyz))), vec2<i32>(u_input.a, arg_1.b.x), vec3<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(~1u, arg_2.x), ~arg_1.c.x), func_2()), _wgslsmith_add_vec3_u32(abs(reverseBits(max(arg_1.c, vec3<u32>(49703u, 62351u, 885u)))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(arg_1.c), ~arg_1.d), func_1().c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - arg_3.x), _wgslsmith_f_op_f32(-arg_1.e.x), arg_3.x, -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, -155f, arg_3.x, 414f), _wgslsmith_f_op_vec4_f32(ceil(arg_1.e)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)))) + vec4<f32>(-1449f, _wgslsmith_f_op_f32(f32(-1f) * -635f), -546f, _wgslsmith_f_op_f32(arg_1.a.x * 660f)))));
    let var_1 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_2 = true;
    var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_3.xxz, arg_3.ywz), _wgslsmith_f_op_vec3_f32(-var_0.a), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, true), var_1))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.e.wwz, vec3<f32>(arg_3.x, arg_0, 2049f)))))), abs(var_0.b), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, 28646u, 51274u), reverseBits(vec3<u32>(21401u, 63721u, var_0.c.x))) & ~(~(~vec3<u32>(arg_2.x, 1u, arg_2.x))), vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(41618u, 9895u), 0u, arg_1.d.x), ~(_wgslsmith_add_u32(18372u, arg_2.x) << (var_0.d.x % 32u)), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.a.x)))), -591f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(196f * -474f))))));
    return var_3;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.e.x, 1360f, arg_2.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-764f, -1990f, arg_1.e.x) - vec3<f32>(arg_0, arg_1.e.x, arg_0))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.e.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1238f))))), arg_2.e.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.e.x, arg_2.a.x)), 638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(-3311f, arg_2, _wgslsmith_mult_vec2_u32(arg_2.d.yx, vec2<u32>(arg_2.d.x, 4294967295u)), func_1().e).a.x)));
    var_0 = arg_2.a;
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_2.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1163f, var_0.x)) * 1783f)), -1228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - arg_1.e.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_1.a.x) * 1f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1146f, _wgslsmith_f_op_f32(-func_1().a.x), _wgslsmith_div_f32(-1188f, 1903f)))), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, true, false))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, false))))));
    return vec3<bool>(all(select(vec2<bool>(85736u <= arg_2.c.x, true), vec2<bool>(true, true), (arg_2.b.x < arg_1.b.x) | (29186i == u_input.a))), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1047f, -1465f, -262f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-452f, -3196f, 1627f) * vec3<f32>(455f, 576f, -923f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(var_0));
    var var_2 = !(!select(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true)));
    var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + -127f))), func_4(_wgslsmith_f_op_f32(-var_0.x), func_1(), ~_wgslsmith_add_vec2_u32(select(vec2<u32>(72359u, 17653u), vec2<u32>(28488u, 0u), var_2.xz), vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec4_f32(round(func_1().e))), func_4(var_0.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), 942f, _wgslsmith_f_op_f32(abs(var_1.x))), firstTrailingBit(vec2<i32>(27722i, -24997i)), ~vec3<u32>(1u, 1u, 1u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 87739u, 0u), vec3<u32>(4294967295u, 37268u, 18300u)), vec3<u32>(1u, 1u, 1u), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -2604f, -1000f, var_1.x) + vec4<f32>(-693f, var_1.x, -1812f, 1118f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, 682f, 1593f, var_0.x)))), vec2<u32>(1u, 28907u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(abs(-421f)))), ((firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a)) | abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a))) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -17350i, -22240i, u_input.a), vec4<i32>(-15370i, 89i, -1627i, 0i))) ^ (vec4<i32>(_wgslsmith_mult_i32(8238i, u_input.a), ~u_input.a, u_input.a, 2147483647i) | (firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a)) << (reverseBits(vec4<u32>(4294967295u, 0u, 94107u, 0u)) % vec4<u32>(32u)))));
    let var_3 = Struct_1(var_1, vec2<i32>(u_input.a, -2147483647i), select(~(firstLeadingBit(vec3<u32>(16996u, 55350u, 27332u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), select(~vec3<u32>(1u, 10872u, 4294967295u), vec3<u32>(1u, 1u, 1u), true), !select(select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, false, true), var_2.x), !vec3<bool>(var_2.x, var_2.x, true), any(var_2.zy))), countOneBits(_wgslsmith_div_vec3_u32(reverseBits(countOneBits(vec3<u32>(8295u, 17504u, 41593u))), select(~vec3<u32>(45126u, 30214u, 85153u), vec3<u32>(63403u, 47154u, 1u), !var_2.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f + var_1.x)), -820f))));
    var_2 = vec3<bool>(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_3, var_3, select(~(-vec4<i32>(var_3.b.x, 9776i, 1i, -1i)), ~select(vec4<i32>(1i, var_3.b.x, u_input.a, u_input.a), vec4<i32>(var_3.b.x, 1i, u_input.a, 14432i), vec4<bool>(var_2.x, var_2.x, var_2.x, false)), func_5(_wgslsmith_f_op_f32(var_1.x * var_1.x), func_4(var_3.e.x, var_3, var_3.c.yx, vec4<f32>(1476f, 132f, 220f, var_1.x)), func_1(), -vec4<i32>(u_input.a, -521i, u_input.a, var_3.b.x)).x)).x, _wgslsmith_dot_vec2_u32(~var_3.c.xy, reverseBits(var_3.c.yx) | var_3.d.xx) == var_3.c.x, (abs(abs(var_3.d.x)) <= var_3.d.x) | var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b.x, var_3.b.x, -45420i), reverseBits(firstTrailingBit(vec3<i32>(2147483647i, -51176i, var_3.b.x)))));
}

