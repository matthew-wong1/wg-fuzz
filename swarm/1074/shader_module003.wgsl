struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(29137u), Struct_2(70551u), Struct_2(1u), Struct_2(10850u), Struct_2(4294967295u));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(48965u), Struct_2(3006u), Struct_2(44840u), Struct_2(0u), Struct_2(4294967295u), Struct_2(25267u), Struct_2(4294967295u), Struct_2(886u), Struct_2(14021u), Struct_2(34109u), Struct_2(0u), Struct_2(9976u), Struct_2(47663u), Struct_2(8885u), Struct_2(26552u), Struct_2(4381u), Struct_2(0u), Struct_2(4294967295u));

var<private> global2: array<vec2<u32>, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(!arg_1.wwz, any(!select(vec2<bool>(true, false), vec2<bool>(arg_1.x, arg_2.b), arg_2.a.zy)));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(171f - -1179f), -1477f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-310f, -246f, 2799f), vec3<f32>(-416f, 984f, -2150f), var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1167f, 363f, 1852f), vec3<f32>(-1825f, 1886f, 1000f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 686f, 472f) + vec3<f32>(942f, -383f, 898f)))) - vec3<f32>(-251f, _wgslsmith_f_op_f32(select(-913f, -399f, true)), _wgslsmith_f_op_f32(f32(-1f) * -348f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -432f, var_2.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-986f, 917f, var_2.x)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, var_2.x, -1428f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)))))));
    let var_4 = Struct_2(u_input.a.x);
    return select(global2[_wgslsmith_index_u32(u_input.a.x >> (_wgslsmith_mult_u32(var_4.a, ~_wgslsmith_mod_u32(arg_0.a, 4294967295u)) % 32u), 27u)], u_input.a.xy, true || (~var_4.a > arg_0.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-670f, 791f), vec2<f32>(517f, 763f)) * vec2<f32>(-324f, 672f))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -578f))), 553f)), arg_0.x, Struct_1(select(!(!vec3<bool>(false, false, arg_1)), vec3<bool>(arg_1 == false, true, any(vec2<bool>(arg_1, arg_1))), select(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, true)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, true)), vec3<bool>(false, true, arg_1))), arg_1), global0[_wgslsmith_index_u32(1u, 5u)]);
    var var_1 = Struct_3(var_0.a, ~_wgslsmith_mult_u32(~(~0u), 1u), Struct_1(vec3<bool>(!var_0.c.a.x, true, !select(true, arg_1, false)), select(false, !var_0.c.b, any(!vec3<bool>(false, true, arg_1)))), global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(u_input.a.x, ~arg_0.x), u_input.a.x, all(!(!vec4<bool>(false, arg_1, false, true)))), 21u)]);
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(109f, var_1.a.x) + _wgslsmith_f_op_f32(floor(713f))), -1850f)), _wgslsmith_clamp_u32(var_0.d.a, ~firstLeadingBit(var_1.d.a | 32237u), ~abs(_wgslsmith_add_u32(arg_0.x, u_input.a.x))), var_1.c, Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a | u_input.a, u_input.a), 110634u)));
    var var_2 = vec4<i32>(u_input.b, 0i, 52992i, 2147483647i);
    var_1 = Struct_3(vec2<f32>(-1289f, var_0.a.x), arg_0.x, var_1.c, var_0.d);
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(step(-1173f, _wgslsmith_f_op_f32(max(var_0.a.x, -1922f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(var_1.a.x + var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1924f, var_1.a.x)), _wgslsmith_div_f32(-2071f, -1322f))), var_1.a.x)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(false, false, false), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(true, false)), true), true)));
    var var_1 = ~(~(~(~vec2<i32>(u_input.b, -27047i))));
    let var_2 = Struct_2(u_input.a.x);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_2(4294967295u), vec4<bool>(true, any(vec3<bool>(false, true, var_0.a.x)), var_0.b, var_0.b | var_0.b), var_0), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1012f, 1003f))), -1913f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-983f, 2132f) * _wgslsmith_div_f32(-587f, -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1163f))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-546f, -716f, 377f, -128f) + vec4<f32>(1087f, 484f, -903f, -463f))))))));
    var var_4 = var_2;
    return Struct_1(vec3<bool>(any(select(var_0.a.yx, !vec2<bool>(false, var_0.b), var_0.a.xy)), true, false), !var_0.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = (_wgslsmith_mod_u32(u_input.a.x, 65663u << (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)) == 0u) && select(true, any(!arg_0.a.xx), false);
    global0 = array<Struct_2, 5>();
    let var_1 = all(func_2(u_input.a ^ vec3<u32>(~0u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~u_input.a.x)).a);
    var var_2 = u_input.a;
    global1 = array<Struct_2, 21>();
    return firstTrailingBit(~(~u_input.b));
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, 213f, 524f, 862f) * vec4<f32>(-218f, -366f, -1450f, 674f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-561f, -666f, -495f, 518f) - vec4<f32>(872f, -864f, 707f, -723f)), arg_3))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-388f, 1730f, 689f, 262f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(687f, 219f, 811f, -1090f))), false))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(select(-966f, -729f, arg_3)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-220f + -865f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1045f))))), _wgslsmith_f_op_vec4_f32(func_4(countOneBits(~u_input.a.xy), false)))));
    let var_1 = func_2(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(~arg_2, 54653u, abs(1u)), vec3<u32>(arg_2 & u_input.a.x, ~22957u, func_3(global0[_wgslsmith_index_u32(arg_2, 5u)], vec4<bool>(true, false, arg_1, arg_3), Struct_1(vec3<bool>(false, false, arg_1), true)).x)))).a.xz;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1872f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(~global2[_wgslsmith_index_u32(115940u, 27u)], all(vec3<bool>(false, true, true)))).x - _wgslsmith_div_f32(1170f, -353f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1249f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(var_2.yz));
    let var_4 = !vec2<bool>(var_1.x, true);
    return Struct_3(var_2.zx, reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(55809u, min(arg_2, 42906u)), (arg_2 << (46113u % 32u)) ^ 83739u)), func_2(~vec3<u32>(7321u, 51118u, arg_2) >> ((u_input.a ^ vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u))), Struct_2(_wgslsmith_dot_vec4_u32((vec4<u32>(arg_2, 0u, u_input.a.x, u_input.a.x) >> (vec4<u32>(60996u, arg_2, 1u, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, arg_2, arg_2, arg_2) % vec4<u32>(32u)), vec4<u32>(0u, arg_2, _wgslsmith_mult_u32(u_input.a.x, 18891u), 73064u))));
}

fn func_7(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: u32) -> vec3<bool> {
    global2 = array<vec2<u32>, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.a);
    global0 = array<Struct_2, 5>();
    var var_1 = vec3<u32>(abs(countOneBits(u_input.a.x | 51707u) | ~func_3(Struct_2(u_input.a.x), vec4<bool>(arg_2.c.a.x, arg_1.x, false, false), Struct_1(arg_2.c.a, arg_1.x)).x), 0u, ~12166u);
    var var_2 = func_6(abs(-29085i), !arg_1.x, 14248u, arg_1.x).c.a.xx;
    return vec3<bool>(func_6(arg_0, arg_2.c.b, ~var_1.x, arg_2.c.b).d.a != min(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) >> (~1u % 32u)), !any(!vec4<bool>(arg_2.c.a.x, var_2.x, true, false)) | !(!var_2.x == true), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 40825u, 0u), vec3<u32>(var_1.x, var_1.x, var_1.x))) <= ((~u_input.a.x >> (~arg_2.b % 32u)) | 25984u));
}

fn func_1() -> bool {
    global2 = array<vec2<u32>, 27>();
    var var_0 = Struct_1(func_7(abs(u_input.b), vec3<bool>(true, true, true), func_6(func_5(func_2(vec3<u32>(4294967295u, 1u, u_input.a.x)), 1305i >> (u_input.a.x % 32u), u_input.b), false, countOneBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), !any(vec4<bool>(false, false, true, true))), u_input.a.x), true);
    return !var_0.a.x;
}

fn func_8(arg_0: u32, arg_1: vec4<bool>) -> vec3<i32> {
    global2 = array<vec2<u32>, 27>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(541f, -1000f), _wgslsmith_f_op_f32(round(775f)))), -115f)) + _wgslsmith_f_op_f32(floor(-145f)));
    var var_1 = firstLeadingBit(66174u);
    return vec3<i32>(firstTrailingBit(-_wgslsmith_add_i32(abs(u_input.b), u_input.b)), 27572i >> (_wgslsmith_add_u32(u_input.a.x, 34467u) % 32u), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 21>();
    var var_0 = -2007f;
    var var_1 = _wgslsmith_div_vec3_i32(func_8(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), vec4<bool>(!all(vec3<bool>(true, true, true)), false, func_1(), true)), vec3<i32>(reverseBits(u_input.b), _wgslsmith_sub_i32(~8250i ^ u_input.b, select(u_input.b >> (0u % 32u), func_8(1u, vec4<bool>(false, false, true, false)).x, func_6(-3901i, true, 2029u, true).c.b)), u_input.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(func_6(max(2147483647i, _wgslsmith_div_i32(-1i, var_1.x)), false, _wgslsmith_mult_u32(20464u, ~u_input.a.x), !func_6(var_1.x, true, 4294967295u, false).c.b).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(940f + -772f), _wgslsmith_f_op_f32(trunc(142f)), 48315u < u_input.a.x)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1615f) + _wgslsmith_f_op_vec4_f32(func_4(vec2<u32>(u_input.a.x, u_input.a.x), 0u >= u_input.a.x)).x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-991f))))));
    global1 = array<Struct_2, 21>();
    var_0 = var_2.x;
    var_1 = firstTrailingBit(abs(reverseBits(vec3<i32>(u_input.b, -39379i, 0i)))) >> (vec3<u32>(min(_wgslsmith_mult_u32(u_input.a.x, abs(43265u)), ~1u), 4294967295u ^ u_input.a.x, ~_wgslsmith_clamp_u32(u_input.a.x, firstTrailingBit(1u), func_3(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(true, false, true), true)).x)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

