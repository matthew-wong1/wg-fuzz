struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 38172i, vec2<bool>(false, true));

var<private> global1: Struct_1 = Struct_1(true, 5877i, vec2<bool>(false, false));

var<private> global2: Struct_2 = Struct_2(-1000f, 840f, Struct_1(true, -6283i, vec2<bool>(false, true)), Struct_1(true, -1246i, vec2<bool>(false, false)));

var<private> global3: vec3<f32> = vec3<f32>(-1000f, -709f, -1830f);

var<private> global4: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 39698u), vec2<u32>(19524u, 0u), vec2<u32>(1u, 1u), vec2<u32>(69580u, 61230u), vec2<u32>(59371u, 87652u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 52790u), vec2<u32>(1u, 4294967295u), vec2<u32>(10096u, 49807u), vec2<u32>(7496u, 43901u), vec2<u32>(15120u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(24743u, 0u), vec2<u32>(0u, 0u), vec2<u32>(18486u, 1u), vec2<u32>(1u, 20662u), vec2<u32>(51293u, 1u), vec2<u32>(24272u, 29260u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(46652u, 27132u), vec2<u32>(141506u, 4294967295u), vec2<u32>(145u, 42123u), vec2<u32>(0u, 66099u), vec2<u32>(0u, 11214u), vec2<u32>(61573u, 4294967295u), vec2<u32>(316u, 18421u), vec2<u32>(0u, 56699u), vec2<u32>(0u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = abs(firstLeadingBit(16421u));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) - global2.a), global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - global2.b) + global2.a)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-515f, 239f, -753f), vec3<f32>(1246f, -1089f, 260f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, global2.b, -1000f))))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1195f, 374f, true))), global2.b))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, _wgslsmith_div_f32(-2155f, global2.a), 936f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(389f, global3.x, 1260f) * vec3<f32>(-941f, -1000f, -407f)))))));
    global4 = array<vec2<u32>, 28>();
    global4 = array<vec2<u32>, 28>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -993f)))));
}

fn func_2() -> Struct_1 {
    global2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true))) * _wgslsmith_f_op_f32(trunc(global3.x)))), global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(abs(-1965f)))), Struct_1(1u != ~_wgslsmith_dot_vec3_u32(vec3<u32>(42126u, 4294967295u, 4294967295u), vec3<u32>(8790u, 4294967295u, 133099u)), firstTrailingBit(firstTrailingBit(-1i)) | (1i >> (1u % 32u)), !global1.c), Struct_1(global0.c.x, min(~abs(u_input.a.x), -global1.b), vec2<bool>(true, global0.c.x)));
    global4 = array<vec2<u32>, 28>();
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(select(vec3<bool>(false, global2.c.c.x, global0.c.x), vec3<bool>(false, global1.c.x, true), vec3<bool>(global2.d.a, false, false)), vec3<bool>(true, true, true), false)))), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * 239f))))));
    var var_0 = false;
    return global2.c;
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = ~vec3<u32>(1u, ~(~4294967295u), 4294967295u);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(978f, -1110f))), global2.b) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x - 746f))) + global3.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global3.x)))))), _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(962f, 1080f), 252f, 613f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-427f, global3.x, var_2.x) + vec3<f32>(var_2.x, 613f, global3.x))))));
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(1u, abs(_wgslsmith_add_u32(46749u, var_1.x) >> (~var_1.x % 32u))), select(var_1.x, 4294967295u, global1.c.x), 0u);
    return -2147483647i;
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(684f, 2132f, func_2(), Struct_1(true, min(1861i, min(u_input.b.x, -arg_0)), vec2<bool>(global1.c.x, global0.c.x)));
    var var_1 = global2.c;
    global4 = array<vec2<u32>, 28>();
    let var_2 = max(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(38017i, min(-4795i, global2.d.b), ~var_1.b, -34142i)), _wgslsmith_add_vec4_i32(vec4<i32>(min(-709i, arg_0), countOneBits(-17859i), global0.b, 1583i), vec4<i32>(-4677i, reverseBits(global0.b), arg_0, _wgslsmith_div_i32(u_input.a.x, -73995i)))), global2.d.b);
    global4 = array<vec2<u32>, 28>();
    return Struct_1(global0.a, 18099i, select(global2.c.c, vec2<bool>(true | var_1.a, true), all(!select(vec3<bool>(false, global0.c.x, false), vec3<bool>(false, global1.a, true), global0.c.x))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = ~(-(~_wgslsmith_add_i32(~arg_0.d.b, _wgslsmith_div_i32(1i, var_0.c.b))));
    var var_2 = global0.b ^ ((global2.c.b >> (58234u % 32u)) | _wgslsmith_add_i32(global1.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(49494u, 0u, 0u), vec3<u32>(44749u, 0u, 0u)) % 32u), -2147483647i));
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1714f, -487f))))));
    global2 = Struct_2(_wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1349f)), _wgslsmith_f_op_f32(-595f - global2.b)) * 353f), -1413f), var_0.d, func_4(global1.b));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(Struct_2(_wgslsmith_f_op_f32(step(-623f, 1826f)), -1458f, global2.c, func_4(_wgslsmith_add_i32(func_1(), firstLeadingBit(global0.b)))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(607f)) + -951f))))), -1154f, func_5(func_5(func_5(func_5(Struct_2(-1000f, -1139f, Struct_1(global1.a, -14649i, vec2<bool>(false, global2.c.a)), global2.d))))).c, Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(46814u, 124751u), vec2<u32>(1u, 19867u)) > ~_wgslsmith_mult_u32(57880u, 19399u), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global0.b, global1.b, -2147483647i, global2.c.b)), vec4<i32>(countOneBits(u_input.a.x), 2147483647i, ~(-2147483647i), global2.c.b)), !(!(!global0.c))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-107f, _wgslsmith_f_op_f32(ceil(global2.a)))), var_0.a))), -243f, var_0.a, -297f);
    global4 = array<vec2<u32>, 28>();
    let var_2 = vec4<bool>(global1.a, false, global1.c.x, true);
    global0 = global2.d;
    global2 = func_5(Struct_2(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_2(global3.x, global3.x, Struct_1(var_2.x, 8956i, global1.c), var_0.c)).b)), global2.d, global2.c));
    var var_3 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_f32(abs(-1137f))), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -(~func_4(global1.b).b)), ~vec4<u32>(firstTrailingBit(29819u) | select(4294967295u, 0u, false), ~10533u, countOneBits(0u), ~1u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-398f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(908f, global3.x))), 662f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, -517f))), 679f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 1059f) + _wgslsmith_f_op_f32(sign(-306f)))))));
}

