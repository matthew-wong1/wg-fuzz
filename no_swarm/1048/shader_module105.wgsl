struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-1i, 20533i), vec2<i32>(2933i, 1i), vec2<i32>(-11321i, -13633i), vec2<i32>(-37273i, 30096i), vec2<i32>(2147483647i, -20919i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 12607i), vec2<i32>(-18501i, 2147483647i), vec2<i32>(-3748i, 39206i), vec2<i32>(-47327i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(6i, -15153i), vec2<i32>(1i, 9567i), vec2<i32>(1i, 1i), vec2<i32>(0i, -2197i), vec2<i32>(-44481i, 2147483647i), vec2<i32>(46272i, -45038i), vec2<i32>(21580i, i32(-2147483648)), vec2<i32>(6366i, -24568i), vec2<i32>(50106i, -1i), vec2<i32>(-12631i, 4484i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 10261i), vec2<i32>(-1i, -996i), vec2<i32>(-16085i, 947i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(20344i, -11350i), vec2<i32>(16i, 0i), vec2<i32>(-40750i, 16255i), vec2<i32>(0i, 2147483647i));

var<private> global1: array<u32, 8> = array<u32, 8>(1u, 4294967295u, 25842u, 4294967295u, 0u, 28165u, 4294967295u, 53359u);

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-512f, -1000f, 381f), vec3<f32>(724f, 1179f, -103f), vec3<f32>(-360f, 878f, 1805f), vec3<f32>(1000f, -848f, -375f), vec3<f32>(-583f, -744f, -358f), vec3<f32>(-544f, -477f, 1017f), vec3<f32>(503f, 196f, -153f), vec3<f32>(-1620f, -475f, 492f), vec3<f32>(321f, -968f, 500f), vec3<f32>(-150f, -1828f, -251f), vec3<f32>(-1138f, -376f, -1056f), vec3<f32>(719f, -973f, -1081f), vec3<f32>(-159f, -1000f, -1060f), vec3<f32>(-1815f, 848f, -1560f), vec3<f32>(253f, -2035f, -558f), vec3<f32>(-1243f, 253f, -624f), vec3<f32>(-278f, -1000f, 1390f), vec3<f32>(-376f, 464f, 469f), vec3<f32>(-264f, -342f, 1822f), vec3<f32>(1712f, 578f, -667f), vec3<f32>(170f, -2081f, 688f), vec3<f32>(-2179f, 888f, -1282f), vec3<f32>(-729f, 2288f, -1000f), vec3<f32>(679f, -639f, 663f), vec3<f32>(835f, -701f, 106f), vec3<f32>(-175f, 551f, 1341f), vec3<f32>(-1126f, 1142f, 1000f), vec3<f32>(1000f, -337f, -842f), vec3<f32>(196f, 825f, 234f));

var<private> global3: array<vec2<u32>, 19>;

var<private> global4: array<vec2<bool>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>) -> vec2<f32> {
    var var_0 = ~firstTrailingBit(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 8u)]) >> (global1[_wgslsmith_index_u32(reverseBits(4294967295u), 8u)] % 32u), 19u)]);
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    var var_1 = _wgslsmith_mod_u32(33910u, 16153u) & _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, global1[_wgslsmith_index_u32(31374u, 8u)], global1[_wgslsmith_index_u32(11523u, 8u)])), ~vec3<u32>(arg_1, 27822u, 0u)), 8u)], ~_wgslsmith_mod_u32(arg_1, _wgslsmith_add_u32(4294967295u, 0u)));
    var var_2 = 132f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, -740f), _wgslsmith_f_op_f32(floor(-812f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(502f, _wgslsmith_f_op_f32(1000f + -348f)))));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(1i, u_input.a), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global4[_wgslsmith_index_u32(120694u, 16u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2424f, 1403f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2291f, -1474f))), _wgslsmith_div_vec2_f32(vec2<f32>(-665f, -1000f), vec2<f32>(1933f, -915f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1034f, -2394f)))), countOneBits(reverseBits(min(vec4<u32>(global1[_wgslsmith_index_u32(19584u, 8u)], global1[_wgslsmith_index_u32(89804u, 8u)], 0u, 29566u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 19289u, 63292u))) << (~(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 0u, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(41457u, 8u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(11886u, 8u)], 15991u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(vec4<i32>(~_wgslsmith_mod_i32(37088i, -2147483647i), u_input.a | ~u_input.a, firstLeadingBit(-10417i), -u_input.a | select(u_input.a, u_input.a, false)), ~(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a) >> ((vec4<u32>(14878u, 0u, global1[_wgslsmith_index_u32(1u, 8u)], 1u) & vec4<u32>(0u, 3922u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51666u, 8u)], 8u)])) % vec4<u32>(32u))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = func_2().b.zxz;
    let var_1 = func_2();
    var var_2 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.x - -316f), 2111f)))), reverseBits(vec4<u32>(_wgslsmith_mult_u32(~var_1.b.x, 4294967295u), ~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(201u, 8u)], 8u)], var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, var_0.x), ~vec4<u32>(var_0.x, 12857u, var_0.x, 1u)), _wgslsmith_mod_u32(arg_2.b.x, 4294967295u))), _wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(var_1.c, vec4<i32>(arg_2.c.x, var_1.c.x, var_1.c.x, arg_2.c.x), var_1.c) | arg_2.c), -firstTrailingBit(min(var_1.c, var_1.c))));
    var var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(abs(var_0), var_2.b.wyy), vec3<u32>(1u, ~global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_2.b.x, 0u), 8u)], 30614u), min(min(firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(var_2.b.x, 8u)], var_2.b.x, 3401u)), ~abs(var_0)), func_2().b.xww));
    var var_4 = 1u;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, var_2.a.x, arg_2.a.x, arg_2.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_2.a.x, 1468f, arg_2.a.x) - vec4<f32>(arg_2.a.x, 1972f, var_1.a.x, arg_2.a.x))), vec4<f32>(992f, _wgslsmith_f_op_f32(step(arg_2.a.x, arg_2.a.x)), -1000f, _wgslsmith_f_op_f32(1707f + -1250f))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_div_f32(arg_0.x, -829f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_2.a.x)), vec2<f32>(arg_0.x, arg_1.a.x)))))), arg_1.b, ~arg_1.c);
    let var_2 = all(vec2<bool>(true, true));
    global4 = array<vec2<bool>, 16>();
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(var_0 + var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1648f + 1780f))), -1012f, arg_0.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(146f, 1377f, arg_1.a.x, 458f)), _wgslsmith_f_op_vec4_f32(func_4(arg_2.c.ww, arg_1.c.x == arg_2.c.x, func_2()))))))));
    return select(vec4<bool>(true, any(vec4<bool>(false, all(vec3<bool>(true, var_2, true)), var_2, any(vec2<bool>(var_2, var_2)))), false, var_2), !(!vec4<bool>(true, var_2, true, 19503i <= u_input.a)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1389f, 409f) - vec2<f32>(590f, -1116f)))))), ~select(vec4<u32>(global1[_wgslsmith_index_u32(0u, 8u)], ~0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(46247u, 8u)], global1[_wgslsmith_index_u32(29892u, 8u)]), 8u)], 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 46489u, 71573u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)]), select(vec4<u32>(global1[_wgslsmith_index_u32(45758u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], 27086u, global1[_wgslsmith_index_u32(38205u, 8u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30187u, 8u)], 8u)], 8u)], 4294967295u, 4294967295u, 26177u), false)), !func_1(vec4<f32>(108f, -670f, 604f, -813f), Struct_1(vec2<f32>(1000f, 1929f), vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(130415u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(1u, 8u)], 82769u), vec4<i32>(u_input.a, u_input.a, u_input.a, 18339i)), Struct_1(vec2<f32>(1544f, -324f), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37191u, 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20744u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)]), vec4<i32>(u_input.a, -5175i, u_input.a, u_input.a)))), ~min((vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 21996i, -7507i), vec4<i32>(2147483647i, 0i, 2147483647i, 78303i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -select(vec4<i32>(56490i, u_input.a, u_input.a, 0i), vec4<i32>(-2147483647i, 31059i, u_input.a, -44019i), vec4<bool>(true, true, true, false))));
    let var_1 = ~global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(abs(~14785u), ~17418u), 8u)], 19u)] ^ _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(min(16421u, 4294967295u), 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 8u)] | var_0.b.x, 8u)]), ~(~vec2<u32>(var_0.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)]))), _wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 8u)], 8u)] << (1u % 32u)), 19u)], reverseBits(vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 8u)]) | vec2<u32>(global1[_wgslsmith_index_u32(105357u, 8u)], var_0.b.x))));
    var var_2 = var_0;
    let var_3 = -var_0.c.xzx;
    var var_4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a, var_2.a), vec2<f32>(var_0.a.x, 557f)) + _wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.a.x, -2027f), vec2<f32>(var_0.a.x, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(func_4(abs(var_0.c.zw), (global1[_wgslsmith_index_u32(22395u, 8u)] > var_1.x) & false, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(var_2.a)), vec4<u32>(var_0.b.x, global1[_wgslsmith_index_u32(1u, 8u)], 34693u, 4294967295u), vec4<i32>(-1i, var_0.c.x, 0i, u_input.a)))).xy), var_0.b, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2().a.x), select(~_wgslsmith_clamp_u32(~18702u, 70703u, ~36650u), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b.x, var_4.b.x, 61067u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(75428u, 8u)], 51322u)), 8u)], true));
}

