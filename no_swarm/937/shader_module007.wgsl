struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 57310u, 11895u), vec3<u32>(0u, 5498u, 47113u), vec3<u32>(0u, 0u, 37264u), vec3<u32>(84084u, 84757u, 38362u), vec3<u32>(0u, 1u, 17260u), vec3<u32>(1u, 6170u, 36858u), vec3<u32>(64239u, 9158u, 1u), vec3<u32>(51562u, 25896u, 45176u), vec3<u32>(1u, 1u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<i32>, arg_3: bool) -> bool {
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    let var_0 = Struct_4(select(!select(select(vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(arg_3, true, false, arg_3), vec4<bool>(true, true, true, arg_3)), !vec4<bool>(arg_3, arg_3, true, arg_3), arg_3), select(!vec4<bool>(true, false, arg_3, true), vec4<bool>(all(vec3<bool>(true, arg_3, arg_3)), true, arg_3 | true, all(vec4<bool>(arg_3, arg_3, arg_3, false))), !(!vec4<bool>(true, false, false, arg_3))), select(!vec4<bool>(true, arg_3, arg_3, false), vec4<bool>(11101i > arg_2.x, 48887u <= u_input.a, !arg_3, arg_3 || true), arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)) * _wgslsmith_f_op_f32(select(423f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1677f * 219f), _wgslsmith_f_op_f32(-1417f * 364f))), all(vec2<bool>(false, arg_3))))), firstTrailingBit(firstLeadingBit(_wgslsmith_sub_i32(arg_2.x, -2147483647i) & u_input.b)), Struct_3(Struct_2(Struct_1(arg_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1054f, 1337f))), Struct_1(false), Struct_1(all(vec2<bool>(false, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-692f * -502f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1433f, _wgslsmith_f_op_f32(590f * -1847f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(461f, -1000f)))), arg_2.zx), !select(!select(vec2<bool>(true, arg_3), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false), true), vec2<bool>(true, false), arg_3), vec2<bool>(true, false)));
    var var_1 = Struct_3(Struct_2(Struct_1(!var_0.d.a.c.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(374f, var_0.d.a.e)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-239f, -1315f))) + vec2<f32>(1642f, 343f))), var_0.d.a.c, Struct_1(!arg_3), var_0.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f * var_0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.b + var_0.b), _wgslsmith_f_op_f32(-var_0.b), 1u != arg_1)))) - -492f), vec2<i32>(-1i) * -(~arg_2.xx));
    return false;
}

fn func_2() -> bool {
    let var_0 = Struct_1(true);
    var var_1 = Struct_2(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, -1396f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-945f, 485f), vec2<f32>(1000f, -1075f), var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2003f, -2881f) - vec2<f32>(-165f, -1000f)), !vec2<bool>(var_0.a, var_0.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2872f, -182f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1004f, 515f)))) - vec2<f32>(_wgslsmith_f_op_f32(-334f + -543f), _wgslsmith_f_op_f32(step(-262f, 989f))))), Struct_1(func_3(vec4<u32>(u_input.a, 94863u, 29419u, 18407u), u_input.a, abs(vec3<i32>(4289i, u_input.b, -37386i)), true) & all(vec2<bool>(false, var_0.a))), Struct_1(true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) * _wgslsmith_f_op_f32(f32(-1f) * -1276f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 255f))));
    var var_2 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(1f)));
    var var_3 = 39918i;
    var var_4 = abs(firstLeadingBit(_wgslsmith_sub_u32(~4294967295u, reverseBits(u_input.a))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1((u_input.b & 2147483647i) < _wgslsmith_div_i32(~2147483647i, ~u_input.b)), _wgslsmith_f_op_vec2_f32(-arg_2), Struct_1(arg_0.a), Struct_1(!any(vec4<bool>(true, true, arg_0.a, false))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-745f * arg_2.x)), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
    return Struct_3(Struct_2(var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, -1000f))) * _wgslsmith_f_op_vec2_f32(sign(var_0.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, 226f) * _wgslsmith_f_op_vec2_f32(arg_2 + arg_2))), Struct_1(all(vec3<bool>(false, true, arg_0.a)) || (arg_0.a | false)), Struct_1(arg_0.a), -1012f), -405f, arg_1.wx & vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.x, arg_1.x), _wgslsmith_sub_i32(arg_1.x, u_input.b)), select(-2147483647i, -8218i, arg_0.a)));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_3 {
    global0 = array<vec3<u32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(547f)) * _wgslsmith_f_op_f32(arg_3.b - 233f));
    let var_1 = func_4(arg_3.a.c, ~(-(vec4<i32>(-1i) * -vec4<i32>(-15428i, arg_3.c.x, arg_3.c.x, arg_3.c.x))), vec2<f32>(arg_3.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a.e))))).a.d;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_3.b)))), _wgslsmith_f_op_f32(round(-351f)));
    let var_3 = countOneBits(u_input.a);
    return Struct_3(arg_3.a, _wgslsmith_div_f32(1443f, func_4(arg_3.a.c, reverseBits(arg_0 | vec4<i32>(1i, 33950i, arg_3.c.x, 26389i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_3.a.b)))).a.e), abs(~(vec2<i32>(arg_3.c.x, 23720i) | vec2<i32>(arg_3.c.x, arg_3.c.x))) ^ arg_3.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = func_5(-(~(-vec4<i32>(2147483647i, -2147483647i, -85286i, arg_3.d.c.x)) >> (vec4<u32>(4294967295u, ~316u, ~u_input.a, ~49436u) % vec4<u32>(32u))), min(_wgslsmith_mult_u32(u_input.a, ~(~4294967295u)), _wgslsmith_mult_u32(~(~45170u), max(u_input.a, 10845u))), vec2<bool>(arg_3.e.x, !all(vec4<bool>(true, arg_3.a.x, false, true))), func_4(Struct_1(func_2()), _wgslsmith_div_vec4_i32(~min(vec4<i32>(u_input.b, 0i, -2147483647i, arg_3.d.c.x), vec4<i32>(u_input.b, 0i, u_input.b, arg_3.c)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, arg_3.c, 2147483647i, 53303i), vec4<i32>(u_input.b, 1i, 2147483647i, 36274i))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(min(-3224f, 923f)))));
    var var_1 = 4294967295u;
    let var_2 = var_0.a.c.a;
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    return select(arg_1, arg_3.a.xwz, vec3<bool>(any(select(vec4<bool>(arg_2.c.a, false, arg_3.a.x, false), select(arg_3.a, vec4<bool>(arg_2.d.a, false, arg_1.x, true), arg_3.e.x), var_0.a.a.a && false)), (_wgslsmith_f_op_f32(trunc(388f)) == _wgslsmith_f_op_f32(step(arg_2.b.x, var_0.a.e))) | (firstLeadingBit(0i) >= ~var_0.c.x), all(vec4<bool>(arg_3.a.x, 1000f <= arg_2.e, arg_2.d.a, !arg_2.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~u_input.a));
    var_0 = u_input.a;
    var_0 = max(_wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_add_u32(61498u, ~(u_input.a >> (u_input.a % 32u))) | select(u_input.a, 69308u, true));
    global0 = array<vec3<u32>, 10>();
    var_0 = ~u_input.a;
    let var_1 = _wgslsmith_clamp_i32(u_input.b, -8998i, 73754i);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.b, -var_1, max(-2147483647i, var_1)), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, 21966i), vec3<i32>(u_input.b, u_input.b, 2147483647i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 16594i, var_1), vec3<i32>(var_1, u_input.b, var_1), vec3<i32>(-2147483647i, var_1, var_1)), vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(-24566i, -7579i, -50374i) ^ vec3<i32>(68934i, var_1, 1i))), ~(vec3<i32>(-26066i, 62401i, u_input.b) << (vec3<u32>(4406u, u_input.a, u_input.a) % vec3<u32>(32u))) | -(vec3<i32>(0i, 65951i, var_1) & vec3<i32>(-31521i, 2147483647i, 31740i)), select(select(vec3<bool>(true, true, true), func_1(vec4<f32>(-276f, 1489f, 769f, 863f), vec3<bool>(false, true, false), Struct_2(Struct_1(false), vec2<f32>(-1048f, -183f), Struct_1(true), Struct_1(false), 190f), Struct_4(vec4<bool>(true, true, true, true), 656f, u_input.b, Struct_3(Struct_2(Struct_1(true), vec2<f32>(539f, -987f), Struct_1(true), Struct_1(false), -654f), -251f, vec2<i32>(u_input.b, 2147483647i)), vec2<bool>(false, false))), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec2<bool>(true, false)), true), func_2())));
}

