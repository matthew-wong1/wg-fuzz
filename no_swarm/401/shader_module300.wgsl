struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21>;

var<private> global1: array<vec4<i32>, 27>;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<f32>(-1271f, 818f), vec2<i32>(-21780i, 2147483647i), Struct_1(true, -910f)), Struct_2(vec2<f32>(895f, -1000f), vec2<i32>(2147483647i, 1i), Struct_1(false, -582f)), Struct_2(vec2<f32>(-1052f, -1101f), vec2<i32>(14244i, -7061i), Struct_1(false, -494f)), Struct_2(vec2<f32>(-474f, -2099f), vec2<i32>(28509i, -14118i), Struct_1(false, -880f)), Struct_2(vec2<f32>(-1000f, -1851f), vec2<i32>(2147483647i, 18202i), Struct_1(false, 969f)), Struct_2(vec2<f32>(-1000f, -313f), vec2<i32>(i32(-2147483648), 1i), Struct_1(true, -224f)), Struct_2(vec2<f32>(559f, -219f), vec2<i32>(18515i, i32(-2147483648)), Struct_1(false, 143f)), Struct_2(vec2<f32>(-494f, 190f), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(true, -314f)), Struct_2(vec2<f32>(889f, -1456f), vec2<i32>(0i, 1i), Struct_1(true, 853f)), Struct_2(vec2<f32>(596f, -375f), vec2<i32>(-4945i, 2147483647i), Struct_1(false, 293f)), Struct_2(vec2<f32>(231f, 675f), vec2<i32>(-55798i, 2147483647i), Struct_1(true, 721f)), Struct_2(vec2<f32>(1155f, -507f), vec2<i32>(0i, 26115i), Struct_1(true, -186f)), Struct_2(vec2<f32>(795f, -1000f), vec2<i32>(-10748i, 2147483647i), Struct_1(false, -384f)), Struct_2(vec2<f32>(578f, 796f), vec2<i32>(-7137i, 29597i), Struct_1(true, -1362f)), Struct_2(vec2<f32>(694f, 656f), vec2<i32>(0i, 2147483647i), Struct_1(false, -505f)), Struct_2(vec2<f32>(1462f, -1270f), vec2<i32>(11112i, i32(-2147483648)), Struct_1(false, 296f)), Struct_2(vec2<f32>(1161f, -1887f), vec2<i32>(-33655i, 2147483647i), Struct_1(true, 1522f)), Struct_2(vec2<f32>(-877f, -554f), vec2<i32>(5154i, 28673i), Struct_1(true, 2481f)), Struct_2(vec2<f32>(572f, -914f), vec2<i32>(2147483647i, 52165i), Struct_1(false, 1000f)), Struct_2(vec2<f32>(-1051f, 1449f), vec2<i32>(77169i, -7281i), Struct_1(true, -1422f)), Struct_2(vec2<f32>(370f, -528f), vec2<i32>(-1i, 18604i), Struct_1(true, -567f)), Struct_2(vec2<f32>(831f, -1447f), vec2<i32>(2147483647i, 2147483647i), Struct_1(true, 437f)), Struct_2(vec2<f32>(525f, 548f), vec2<i32>(-8246i, -14836i), Struct_1(false, -972f)), Struct_2(vec2<f32>(-1485f, -1064f), vec2<i32>(2147483647i, 0i), Struct_1(false, 317f)), Struct_2(vec2<f32>(-351f, -869f), vec2<i32>(-14865i, -29195i), Struct_1(false, 586f)), Struct_2(vec2<f32>(-1838f, 391f), vec2<i32>(-72815i, -30569i), Struct_1(true, -889f)), Struct_2(vec2<f32>(-436f, 224f), vec2<i32>(23135i, -56484i), Struct_1(false, -985f)), Struct_2(vec2<f32>(-1180f, 896f), vec2<i32>(1i, 17723i), Struct_1(true, -1625f)), Struct_2(vec2<f32>(3218f, 785f), vec2<i32>(2147483647i, -19259i), Struct_1(false, 914f)), Struct_2(vec2<f32>(-1813f, -401f), vec2<i32>(13827i, i32(-2147483648)), Struct_1(false, 870f)), Struct_2(vec2<f32>(-1411f, -1383f), vec2<i32>(2147483647i, 1i), Struct_1(true, 1709f)), Struct_2(vec2<f32>(758f, 491f), vec2<i32>(-1i, -49800i), Struct_1(true, -1984f)));

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(1u, 24019u, 1u), vec3<u32>(4294967295u, 10232u, 11679u), vec3<u32>(22233u, 1u, 1u), vec3<u32>(4294967295u, 0u, 5257u), vec3<u32>(50852u, 32766u, 11939u), vec3<u32>(37188u, 23110u, 42028u), vec3<u32>(37846u, 33629u, 4294967295u));

var<private> global4: array<u32, 32> = array<u32, 32>(10701u, 0u, 29803u, 1u, 0u, 4294967295u, 0u, 126248u, 33463u, 4294967295u, 31103u, 0u, 0u, 45698u, 0u, 88036u, 2610u, 309u, 28394u, 1u, 1u, 4294967295u, 39250u, 1282u, 4294967295u, 17805u, 140771u, 0u, 10091u, 50520u, 0u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = true;
    return ~arg_0.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = ~firstTrailingBit(vec4<u32>(abs(0u), global4[_wgslsmith_index_u32(13602u, 32u)], max(1u, u_input.a.x), ~4294967295u)) ^ vec4<u32>(2270u, global4[_wgslsmith_index_u32(u_input.a.x & firstTrailingBit(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(46166u, 32u)], 6797u)), 32u)], func_3(vec2<u32>(u_input.a.x, u_input.a.x) ^ ~u_input.a), ~select(u_input.a.x, u_input.a.x ^ u_input.a.x, true));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, 986f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2105f, -1470f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, 513f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1223f, 1357f), -532f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(130f, -522f))))))), ~vec2<i32>(u_input.b, u_input.b), Struct_1(!any(select(arg_0.zzy, arg_0.zyx, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1874f * -1000f) + _wgslsmith_div_f32(-725f, 1714f)))));
    global0 = array<vec3<u32>, 21>();
    global2 = array<Struct_2, 32>();
    let var_2 = global2[_wgslsmith_index_u32(abs(firstTrailingBit(~4294967295u) ^ countOneBits(_wgslsmith_div_u32(var_0.x, u_input.a.x))) >> (4294967295u % 32u), 32u)];
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-364f, -678f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.a))));
}

fn func_1() -> Struct_1 {
    let var_0 = countOneBits(vec3<u32>(_wgslsmith_add_u32(1u, ~(~1u)), countOneBits(~u_input.a.x), 37552u));
    global4 = array<u32, 32>();
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, true, true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~9131u, 27u)])) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1188f, -634f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1000f), vec2<f32>(2323f, 2761f), vec2<bool>(false, true))))), vec2<i32>(0i, _wgslsmith_clamp_i32(firstTrailingBit(u_input.b), 1i, _wgslsmith_mod_i32(2147483647i, -1i))), Struct_1(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, false, true, true), vec2<bool>(false, true), global1[_wgslsmith_index_u32(15304u, 27u)])).x)))), Struct_1(true, _wgslsmith_f_op_f32(max(-114f, _wgslsmith_f_op_f32(sign(-527f))))), ~(~select(4294967295u >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(162u, 32u)], 35709u, 1u), true)), u_input.b, 2787f);
    var var_2 = _wgslsmith_sub_i32(u_input.b, reverseBits(78276i));
    var var_3 = _wgslsmith_clamp_i32(var_1.d, _wgslsmith_div_i32(-_wgslsmith_mod_i32(~var_1.a.b.x, reverseBits(var_1.a.b.x)), u_input.b), firstTrailingBit(-1i));
    return Struct_1(var_1.b.a, _wgslsmith_f_op_f32(-var_1.b.b));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_1;
    global2 = array<Struct_2, 32>();
    let var_1 = vec2<f32>(332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0)))));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-select(u_input.b, u_input.b << (1u % 32u), arg_1.a | arg_1.a), u_input.b), select(~vec2<i32>(-10989i, u_input.b) >> ((vec2<u32>(1u, arg_2.x) >> ((u_input.a << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.b, -u_input.b), vec2<i32>(-2147483647i, countOneBits(u_input.b))), true != arg_1.a));
    return -reverseBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_2.x, var_2.x), i32(-1i) * -14098i)) << (1u % 32u);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_1 {
    global4 = array<u32, 32>();
    global3 = array<vec3<u32>, 7>();
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(~u_input.a.x, 32u)], func_1(), _wgslsmith_mod_u32(4294967295u, 4294967295u), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().b)));
    var var_1 = var_0.b;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.b, var_0.b.b))), arg_1.zz, var_0.b), var_0.a.c, _wgslsmith_dot_vec2_u32(~countOneBits(u_input.a), vec2<u32>(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_sub_u32(~var_0.c, 61225u))), ~func_4(_wgslsmith_f_op_f32(-737f * _wgslsmith_f_op_f32(trunc(var_0.b.b))), var_0.a.c, abs(vec4<u32>(var_0.c, 17558u, 1u, 1u) << (vec4<u32>(u_input.a.x, 8019u, 1u, u_input.a.x) % vec4<u32>(32u)))), var_1.b);
    return var_2.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<i32>(u_input.b, 1026i), vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(21646i, -11952i), vec2<i32>(1i, u_input.b)), ~vec2<i32>(u_input.b, u_input.b)), min(func_4(_wgslsmith_div_f32(-698f, 1000f), func_1(), _wgslsmith_clamp_vec4_u32(vec4<u32>(37273u, u_input.a.x, 13959u, global4[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], 1u), vec4<u32>(45272u, 14176u, 16613u, u_input.a.x))), 2147483647i), ~_wgslsmith_clamp_i32(select(u_input.b, u_input.b, false), ~u_input.b, i32(-1i) * -2147483647i), firstLeadingBit(abs(-2852i))), vec3<i32>(28541i, -2147483647i, -1i));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(5133u, select(_wgslsmith_add_u32(3172u, 41924u), func_3(vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)])), false)), u_input.a), 32u)];
    let var_2 = true;
    global4 = array<u32, 32>();
    let var_3 = firstLeadingBit(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 32u)]);
    global3 = array<vec3<u32>, 7>();
    global1 = array<vec4<i32>, 27>();
    global3 = array<vec3<u32>, 7>();
    var var_4 = vec4<u32>(12280u, ~var_3, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], ~(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_3, var_3, 20180u)), select(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], u_input.a.x, 0u, global4[_wgslsmith_index_u32(25141u, 32u)]), vec4<u32>(4294967295u, var_3, 4294967295u, var_3), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.b, var_0.b), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1826f, _wgslsmith_f_op_f32(var_0.b - 1123f), all(vec4<bool>(var_0.a, var_0.a, true, var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1827f + var_0.b)), var_2 | true)), func_1().b, _wgslsmith_f_op_f32(ceil(487f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1894f))));
}

