struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, vec4<bool>(true, false, true, false), -686f), Struct_1(true, vec4<bool>(false, true, true, false), -1383f), Struct_1(false, vec4<bool>(true, false, true, true), 2508f), Struct_1(true, vec4<bool>(true, true, true, true), -314f), Struct_1(false, vec4<bool>(true, true, true, false), -729f), Struct_1(true, vec4<bool>(false, false, true, false), 911f), Struct_1(true, vec4<bool>(true, false, true, false), -1409f), Struct_1(false, vec4<bool>(false, true, false, false), 180f), Struct_1(true, vec4<bool>(false, true, false, true), -210f), Struct_1(false, vec4<bool>(true, true, false, false), 836f), Struct_1(true, vec4<bool>(true, false, false, false), -733f), Struct_1(true, vec4<bool>(false, false, false, true), -1292f), Struct_1(true, vec4<bool>(false, true, true, false), 125f), Struct_1(true, vec4<bool>(true, false, true, false), -394f), Struct_1(true, vec4<bool>(true, false, true, false), 275f), Struct_1(false, vec4<bool>(false, false, false, false), -1041f), Struct_1(true, vec4<bool>(true, false, false, true), -212f), Struct_1(false, vec4<bool>(false, false, true, false), -752f), Struct_1(false, vec4<bool>(true, false, false, true), 836f), Struct_1(true, vec4<bool>(true, true, false, true), 1641f), Struct_1(true, vec4<bool>(false, false, false, true), -632f), Struct_1(true, vec4<bool>(false, false, true, true), -224f), Struct_1(true, vec4<bool>(false, true, false, true), -137f), Struct_1(false, vec4<bool>(false, false, false, true), -561f), Struct_1(true, vec4<bool>(true, false, true, true), -1325f), Struct_1(true, vec4<bool>(false, false, false, true), 1000f));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true, vec4<bool>(true, true, false, false), -1000f));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(select(198f, global3.c, !(~(-10960i) >= select(1i, -50064i, global3.a)))));
    global3 = Struct_1(select(global3.b.x, _wgslsmith_add_u32(1u, max(75397u, 83137u)) == u_input.a.x, true), vec4<bool>(global3.b.x, global3.b.x, false, select(any(vec4<bool>(true, global3.b.x, global3.b.x, true)) || true, !all(global3.b.zxy), all(vec2<bool>(true, global3.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c * -363f) + 480f));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(global0.zz));
    var var_2 = Struct_1(select(~_wgslsmith_sub_i32(2147483647i, 10284i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-17559i, 1i, -32550i), 1i), !global3.b.x) > 1i, select(vec4<bool>(true, false, any(vec2<bool>(global3.b.x, global3.a)), !global3.b.x), !global3.b, !(_wgslsmith_f_op_f32(trunc(global0.x)) <= _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(-var_1.x));
    var var_3 = _wgslsmith_dot_vec2_u32(u_input.a.yz >> (u_input.a.yy % vec2<u32>(32u)), ~(u_input.a.yz << (~(~u_input.a.yx) % vec2<u32>(32u))));
    return _wgslsmith_sub_i32(0i, abs(countOneBits(_wgslsmith_div_i32(17892i >> (u_input.a.x % 32u), 1i))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, 163f, -464f))))), vec3<f32>(-1220f, global3.c, _wgslsmith_f_op_f32(exp2(global0.x)))));
    let var_0 = arg_2.yw;
    global1 = array<Struct_1, 26>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1820f, 1082f, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(2897f)), global3.c, -1518f, _wgslsmith_f_op_f32(trunc(-2005f))) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.c * -786f), -1081f, -661f, _wgslsmith_f_op_f32(-global0.x))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    global1 = array<Struct_1, 26>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 1u)];
    var var_1 = var_0.b;
    var var_2 = arg_1.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1875f, global0.x, _wgslsmith_f_op_f32(-2232f * global0.x), _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_vec4_f32(func_4(func_3(), Struct_1(true, select(arg_0.b, vec4<bool>(true, true, arg_0.b.x, arg_0.a), global3.b.x), _wgslsmith_f_op_f32(-var_0.c)), ~vec4<u32>(u_input.a.x, 1u, 13747u, u_input.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-334f + 422f), -390f))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-902f * arg_0.c) + -169f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x - 446f)))))));
    return 4294967295u != u_input.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), global0.x)))));
    var var_0 = -abs(~vec2<i32>(_wgslsmith_clamp_i32(68205i, 15568i, 2147483647i), _wgslsmith_clamp_i32(14666i, 0i, 1i)));
    var var_1 = Struct_1(arg_0.b.x, vec4<bool>(false, false, false, arg_1.b.x), global0.x);
    var_1 = Struct_1(arg_2, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c, global0.x) + _wgslsmith_f_op_f32(-var_1.c)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 2117f)) + _wgslsmith_f_op_f32(global3.c + global3.c)), !any(select(var_1.b, vec4<bool>(arg_2, false, arg_0.b.x, var_1.a), arg_0.a)), true, true), 501f);
    var_0 = abs(countOneBits(abs((vec2<i32>(var_0.x, 332i) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))) | -vec2<i32>(2147483647i, var_0.x))));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(~13453u), 1u, 0u, ~324u), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 18835u, 41147u, 54165u), ~vec4<u32>(43289u, 0u, u_input.a.x, 12639u))), 155729u, ~_wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19186u, 1u, 1u), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))), ~0u);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> vec4<i32> {
    global1 = array<Struct_1, 26>();
    let var_0 = global2[_wgslsmith_index_u32(arg_2, 1u)];
    global1 = array<Struct_1, 26>();
    var var_1 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~39480u, ~(arg_2 | _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(arg_2, 51788u)))), 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], any(select(vec2<bool>(true, func_2(Struct_1(true, global3.b, var_0.c), vec3<i32>(-2147483647i, 0i, 11155i))), global3.b.yy, func_2(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], max(vec3<i32>(-2147483647i, 29183i, 1i), vec3<i32>(20581i, 3475i, -7940i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-305f, -440f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global3.c, 291f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(1i, Struct_1(arg_1, vec4<bool>(arg_1, false, arg_1, true), -1341f), ~vec4<u32>(arg_2, arg_2, 7019u, u_input.a.x))).x, -1763f)));
    return select(max(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(4639i, 39256i), _wgslsmith_dot_vec3_i32(vec3<i32>(-15995i, -17033i, 2147483647i), vec3<i32>(-47911i, -2147483647i, -7525i)), -40661i, _wgslsmith_mod_i32(-4970i, -2147483647i)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(10576i, -4284i, -2147483647i, 0i)), vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(-17198i, 0i, 28860i, ~1i)), vec4<i32>(-17761i, select(~(-11594i), i32(-1i) * -2147483647i, arg_1) << ((var_1.x & _wgslsmith_mult_u32(4294967295u, u_input.a.x)) % 32u), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, ~2147483647i, 2147483647i), _wgslsmith_div_i32(-2147483647i, i32(-1i) * -9035i)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(26884i, -1i, 2147483647i))), vec3<i32>(1i, 1i, 1i))), func_2(global1[_wgslsmith_index_u32(abs(102366u), 26u)], select(vec3<i32>(countOneBits(0i), 49799i, _wgslsmith_div_i32(-2147483647i, -50209i)), vec3<i32>(abs(22099i), _wgslsmith_div_i32(50112i, 3714i), -2147483647i), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~abs(u_input.a.zx)), reverseBits(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), 0u))), 1u)];
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yz)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(811f, 378f)))), true))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f * -217f) - _wgslsmith_f_op_f32(481f - var_0.c)), -767f, var_0.b.x)), 709f));
    let var_3 = _wgslsmith_mod_u32(countOneBits(firstLeadingBit(max(u_input.a.x, 0u))) >> (~(~(~36327u)) % 32u), u_input.a.x);
    global1 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(_wgslsmith_mult_u32(var_3, 1u), 15715u, u_input.a.x, u_input.a.x)), min(~_wgslsmith_div_vec4_i32(func_1(vec4<f32>(-1426f, global0.x, var_2.x, -692f), true, 73129u), -vec4<i32>(-1i, 0i, -37550i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(-1i, 10i, -2147483647i, 30719i)), max(vec4<i32>(0i, -21641i, 7332i, -22792i), vec4<i32>(-2147483647i, -2147483647i, -37759i, -1600i))) & firstLeadingBit(firstLeadingBit(vec4<i32>(1i, 2695i, -13492i, 1i)))));
}

