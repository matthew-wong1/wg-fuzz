struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = abs(select(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), -(select(vec3<i32>(43801i, 2147483647i, -1i), vec3<i32>(15144i, 0i, 0i), true) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 370i, -22567i), vec3<i32>(2147483647i, 21559i, 52233i), vec3<i32>(-34907i, 0i, -1i))), select(vec3<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(true, true))), vec3<bool>(true, false, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false)))));
    var var_1 = vec3<f32>(arg_0, -1000f, 1f);
    var var_2 = ~_wgslsmith_add_u32(1u, 79000u);
    let var_3 = var_1.x;
    var_2 = u_input.b;
    return ~(~(~_wgslsmith_mod_u32(~32031u, ~u_input.a.x)));
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_3(-523f, select(_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.a.x, u_input.b), select(vec2<u32>(u_input.b, u_input.b), u_input.a, arg_0.x)), countOneBits(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(4294967295u, 23979u)))), u_input.a, true), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(100f + -532f) + -759f))));
    return _wgslsmith_add_vec2_u32(~var_0.b, vec2<u32>(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x << (u_input.a.x % 32u), ~var_0.c)));
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = Struct_3(arg_0.a, abs(vec2<u32>(_wgslsmith_mod_u32(abs(62409u), 76686u), arg_0.b.x)), _wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(10546u, 0u, 27943u, u_input.a.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 5990u, 28542u, 0u), vec4<u32>(u_input.b, 20322u, arg_0.b.x, arg_0.c)) % vec4<u32>(32u))), ~vec4<u32>(71800u, u_input.a.x, 28909u, arg_0.c) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 27256u), vec4<u32>(arg_0.b.x, u_input.a.x, u_input.b, arg_0.b.x))));
    var var_1 = Struct_3(var_0.a, _wgslsmith_div_vec2_u32(arg_0.b, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, u_input.b), vec2<u32>(85776u, 14571u)) >> (~u_input.a % vec2<u32>(32u))), ~min(var_0.c, max(~55447u, ~48476u)));
    var var_2 = var_0.a != var_1.a;
    var_2 = false;
    let var_3 = firstLeadingBit(firstTrailingBit(firstTrailingBit(var_1.b))) & vec2<u32>(arg_0.b.x, _wgslsmith_div_u32(~(~var_0.b.x), 61467u));
    return vec4<bool>(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(var_0.c, arg_0.b.x)), vec2<u32>(var_0.b.x, firstTrailingBit(10972u))) <= ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4442u, 1u, var_1.c), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 39334u, var_1.c), vec3<u32>(var_3.x, 0u, 81141u))), true, true, all(!vec3<bool>(any(vec2<bool>(false, true)), true, -280f > arg_0.a)));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * -715f));
    let var_1 = _wgslsmith_div_f32(-1465f, arg_3.x);
    let var_2 = firstTrailingBit(countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1), vec2<i32>(arg_1, arg_1)), 1i))) > 25900i;
    let var_3 = abs(_wgslsmith_add_i32(select((11476i | arg_1) << (~u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-14680i, 2147483647i, arg_1), vec3<i32>(arg_1, arg_1, arg_1)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, 1i, 17504i), vec3<i32>(-1i, arg_1, arg_1))), func_4(Struct_3(1414f, vec2<u32>(80973u, u_input.a.x), 26505u)).x), 1i));
    var var_4 = _wgslsmith_f_op_f32(round(var_0));
    return Struct_2(func_4(Struct_3(arg_3.x, u_input.a, ~u_input.a.x)).x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 190f, 117f, 883f), vec4<f32>(arg_3.x, var_1, -928f, -657f), true)) + vec4<f32>(199f, -995f, 627f, 115f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1008f, 121f, var_0)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 502f, 880f, 550f) * vec4<f32>(var_1, 392f, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_1, -408f, arg_3.x)))))))), any(!arg_2.zwy) & any(arg_2.yw), Struct_1(arg_3.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = -firstTrailingBit(vec3<i32>(-(~7584i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, -2147483647i), abs(16032i), 18812i), _wgslsmith_mod_i32(1i, 6162i)));
    let var_1 = func_5(vec2<bool>(any(vec3<bool>(true, true, true)), !(!all(vec2<bool>(true, true)))), _wgslsmith_clamp_i32(i32(-1i) * -15492i, var_0.x, var_0.x), select(func_4(Struct_3(654f, func_2(vec4<bool>(true, true, false, true)), ~u_input.a.x)), vec4<bool>(true, true, true, true), func_4(Struct_3(arg_0, u_input.a & u_input.a, 30052u)).x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -713f), arg_0) + _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(395f + arg_0))), 802f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1170f - -1964f))))));
    let var_2 = func_5(func_4(Struct_3(-1188f, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a, vec2<u32>(u_input.b, 24962u)) & vec2<u32>(u_input.a.x, 15579u), 4294967295u)).zy, var_0.x, !func_4(Struct_3(_wgslsmith_div_f32(arg_0, var_1.b.x), vec2<u32>(11003u, 1u), _wgslsmith_mod_u32(0u, 32198u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(func_5(vec2<bool>(true, true), ~1i, vec4<bool>(true, var_1.a, var_1.c, var_1.a), _wgslsmith_div_vec3_f32(var_1.b.yzy, vec3<f32>(arg_0, arg_0, -218f))).b.xwz)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(var_1.b.x - 1138f), _wgslsmith_f_op_f32(round(-738f)))))).c;
    var_0 = max(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, _wgslsmith_mod_i32(16623i, var_0.x), -1i), vec3<i32>(~var_0.x, countOneBits(57875i), _wgslsmith_add_i32(min(2147483647i, var_0.x), var_0.x ^ 0i))), vec3<i32>(_wgslsmith_dot_vec3_i32(-(vec3<i32>(var_0.x, var_0.x, 2147483647i) & vec3<i32>(var_0.x, 35558i, var_0.x)), -(vec3<i32>(-2147483647i, var_0.x, -11934i) & vec3<i32>(var_0.x, 26797i, -1i))), ~_wgslsmith_add_i32(var_0.x, 2147483647i), reverseBits(var_0.x)));
    var var_3 = Struct_2(select(true, ~abs(u_input.a.x) >= _wgslsmith_mod_u32(_wgslsmith_clamp_u32(38353u, 28858u, u_input.a.x), 44423u), false), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(717f, -624f))) * func_5(vec2<bool>(false, false), ~var_0.x, !vec4<bool>(var_2, var_1.a, false, false), vec3<f32>(-181f, var_1.b.x, -1628f)).b.x), _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(310f, arg_0)))), var_1.d.a, 206f), true, func_5(!vec2<bool>(true, var_1.c), -1i, select(vec4<bool>(false & var_2, var_1.d.a < -1235f, true, all(vec3<bool>(false, var_2, var_1.c))), vec4<bool>(all(vec3<bool>(var_1.c, var_2, true)), !var_1.a, false, true), !vec4<bool>(var_2, var_2, var_1.c, var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.x, 387f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, var_1.b.x, 1813f))))).d);
    return Struct_1(var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1082f * _wgslsmith_f_op_f32(f32(-1f) * -2772f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1205f, var_0.a, -2657f, -1397f) + vec4<f32>(-395f, 876f, -580f, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-731f, var_0.a, var_0.a, var_0.a) * vec4<f32>(var_0.a, -1412f, var_0.a, var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -399f, 865f))), all(vec2<bool>(true, true))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1515f, var_0.a, var_0.a)) + vec4<f32>(_wgslsmith_f_op_f32(max(2779f, 691f)), _wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(-1271f * var_0.a), 558f)), func_5(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 41807i, 0i), vec3<i32>(13240i, 1i, 1i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1801f, var_0.a, var_0.a))))).b));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-988f, 510f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-961f)))) - 204f), any(vec2<bool>(true, true)))), vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 53996u, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(36507u, u_input.b, u_input.a.x)))), 4294967295u), u_input.a.x);
    var var_3 = -1i;
    let var_4 = func_5(vec2<bool>((-436f >= func_5(vec2<bool>(true, false), -30947i, vec4<bool>(true, true, false, false), vec3<f32>(-279f, var_0.a, var_2.a)).b.x) | true, true & any(vec3<bool>(true, true, true))), firstTrailingBit(1i) << (~abs(_wgslsmith_div_u32(71147u, 1u)) % 32u), select(func_4(var_2), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(526f - var_1.x))), func_1(var_0.a).a, var_2.a));
    var_3 = ~_wgslsmith_add_i32(select(_wgslsmith_clamp_i32(1i, 1i, abs(55234i)), (-5171i << (var_2.b.x % 32u)) | select(-2147483647i, 2147483647i, var_4.a), !func_5(vec2<bool>(var_4.c, true), 69504i, vec4<bool>(true, true, var_4.c, var_4.a), var_1.zyz).a), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, 0u, 54238u), 0u | u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 80109u, u_input.b), 4294967295u), vec4<u32>(~var_2.b.x, _wgslsmith_sub_u32(89554u, u_input.b), ~0u, u_input.b), ~vec4<u32>(var_2.b.x, 4294967295u, 0u, 4294967295u) ^ vec4<u32>(4294967295u, 4627u, var_2.c, u_input.b)), ~(~firstTrailingBit(vec4<u32>(1u, var_2.b.x, u_input.b, var_2.c))), !(!(!vec4<bool>(var_4.c, var_4.a, var_4.c, false)))), _wgslsmith_mod_u32(var_2.c, u_input.b));
}

