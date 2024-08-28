struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_sub_u32(firstLeadingBit(max(1u, ~(~0u))), max(~max(~4294967295u, u_input.b.x << (u_input.c % 32u)), u_input.b.x));
    let var_1 = Struct_2(Struct_1((global0[_wgslsmith_index_u32(u_input.c, 5u)] & all(vec2<bool>(false, false))) || global0[_wgslsmith_index_u32(~u_input.c, 5u)]), Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(7727u, 41118u), 5u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(410f)) + -1269f), 313f)), Struct_1(any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(var_0, 5u)], true, true), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], false))))));
    let var_2 = Struct_2(var_1.b, Struct_1(global0[_wgslsmith_index_u32(var_0 ^ 4294967295u, 5u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(963f, 747f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-115f)))) - var_1.c), Struct_1(true));
    let var_3 = Struct_2(var_2.b, Struct_1(var_1.d.a), var_2.c, var_2.d);
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.x))) + _wgslsmith_f_op_f32(-var_3.c.x))) * 634f);
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 5>();
    let var_0 = ~vec2<i32>(-16118i, u_input.a);
    let var_1 = !(!select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(44485u, 5u)]), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], true)), vec2<bool>(true, true), true));
    let var_2 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(-1i, u_input.a)), abs(vec2<i32>(var_0.x, -2147483647i))), firstLeadingBit(-vec2<i32>(var_0.x, -11425i)));
    global0 = array<bool, 5>();
    return Struct_2(Struct_1(true), Struct_1(((var_1.x && var_1.x) & global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, u_input.c), 5u)]) & !(global0[_wgslsmith_index_u32(88733u, 5u)] && false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(404f, 2037f), _wgslsmith_f_op_f32(1000f + -1525f), _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, 1000f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1115f, 1504f, false))), _wgslsmith_f_op_f32(-529f + _wgslsmith_f_op_f32(878f * 728f)), 136f)), Struct_1(true));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_0 = Struct_1(true);
    let var_1 = 13723u;
    global0 = array<bool, 5>();
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.xy) * vec2<f32>(arg_2.c.x, arg_2.c.x)), arg_2.c.zz))));
    return func_4(func_2(), -1713f, arg_2);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<f32> {
    global0 = array<bool, 5>();
    var var_0 = 40617i;
    var var_1 = Struct_1(true);
    let var_2 = select(u_input.c, 0u, true) << (max(_wgslsmith_mod_u32(firstTrailingBit(~u_input.c), u_input.c), u_input.b.x >> (~(u_input.b.x | 55656u) % 32u)) % 32u);
    var var_3 = false;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(657f - 1435f))) + arg_0.x)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = ~vec3<u32>(min(~1u, reverseBits(arg_2)), ~(~u_input.b.x), u_input.c) | (~u_input.b.zzz & firstTrailingBit(u_input.b.zyz));
    global0 = array<bool, 5>();
    var var_1 = !global0[_wgslsmith_index_u32(16897u, 5u)];
    var var_2 = Struct_2(arg_1, func_2().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(func_4(func_4(Struct_2(Struct_1(true), Struct_1(global0[_wgslsmith_index_u32(1u, 5u)]), vec3<f32>(1030f, arg_0.x, -2212f), arg_1), arg_0.x, Struct_2(arg_1, Struct_1(true), vec3<f32>(arg_0.x, 1297f, -947f), arg_1)), _wgslsmith_f_op_f32(ceil(arg_0.x)), Struct_2(Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(25685u, 5u)]), vec3<f32>(arg_0.x, arg_0.x, -852f), arg_1)).c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -920f, arg_0.x)))))), func_4(func_2(), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0.x)))))), Struct_2(Struct_1(true), func_2().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1459f, -823f, 826f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 393f, -892f) - vec3<f32>(139f, -1915f, 1376f))), arg_1)).a);
    var_1 = func_4(func_1(Struct_1(var_2.b.a), abs(-1i), func_2()), 1602f, Struct_2(func_2().a, func_1(Struct_1(true), _wgslsmith_mult_i32(u_input.a, arg_3.x), Struct_2(func_1(Struct_1(true), arg_3.x, Struct_2(arg_1, Struct_1(false), vec3<f32>(425f, -836f, arg_0.x), Struct_1(false))).d, func_1(Struct_1(arg_1.a), 1i, Struct_2(Struct_1(true), Struct_1(global0[_wgslsmith_index_u32(arg_2, 5u)]), var_2.c, Struct_1(true))).d, _wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(-635f, arg_0.x, -1000f)), Struct_1(var_2.d.a))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.c, var_2.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c + vec3<f32>(1000f, arg_0.x, var_2.c.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-612f, var_2.c.x, var_2.c.x), vec3<f32>(-148f, 1000f, arg_0.x)))), Struct_1(var_2.a.a))).a.a;
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    var var_0 = u_input.c;
    let var_1 = -reverseBits(vec3<i32>(max(u_input.a, u_input.a) | _wgslsmith_mod_i32(u_input.a, 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -8256i), vec2<i32>(-18925i, u_input.a)), vec2<i32>(u_input.a, u_input.a)), 0i));
    global0 = array<bool, 5>();
    var var_2 = Struct_2(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1488f, -179f, 565f)), func_1(Struct_1(global0[_wgslsmith_index_u32(41455u, 5u)]), u_input.a, Struct_2(Struct_1(true), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<f32>(-1373f, -2080f, -574f), Struct_1(true))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1124f, 1105f) * vec2<f32>(170f, -623f))))), func_4(func_4(Struct_2(Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<f32>(1949f, 723f, 710f), Struct_1(global0[_wgslsmith_index_u32(55709u, 5u)])), -490f, Struct_2(Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<f32>(511f, 200f, 1386f), Struct_1(false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-691f * 959f) - _wgslsmith_div_f32(1918f, -1249f)), func_4(func_1(Struct_1(global0[_wgslsmith_index_u32(19057u, 5u)]), u_input.a, Struct_2(Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(0u, 5u)]), vec3<f32>(-159f, -1359f, 534f), Struct_1(global0[_wgslsmith_index_u32(0u, 5u)]))), 463f, func_2())).a, countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(78140u, 4294967295u, 5488u, 54972u), u_input.b)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(var_1.xz, vec2<i32>(2147483647i, var_1.x)), var_1.xx), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-18462i, var_1.x), var_1.yx, global0[_wgslsmith_index_u32(0u, 5u)]), vec2<i32>(2147483647i, 0i)))), Struct_1(true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2().c), _wgslsmith_f_op_vec3_f32(-func_1(Struct_1(global0[_wgslsmith_index_u32(0u, 5u)]), var_1.x, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)]), Struct_1(true), vec3<f32>(1114f, 119f, 832f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)]))).c))), func_1(Struct_1(_wgslsmith_f_op_f32(step(-641f, 487f)) >= 1f), 1i, func_1(Struct_1(any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]))), _wgslsmith_clamp_i32(-u_input.a, firstLeadingBit(var_1.x), _wgslsmith_div_i32(u_input.a, -41009i)), Struct_2(func_4(Struct_2(Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<f32>(1000f, -1680f, -1000f), Struct_1(true)), -540f, Struct_2(Struct_1(true), Struct_1(false), vec3<f32>(-261f, 504f, -2174f), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 5u)]))).d, func_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<f32>(-757f, -1125f, 199f), Struct_1(global0[_wgslsmith_index_u32(1u, 5u)])), 1554f, Struct_2(Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(0u, 5u)]), vec3<f32>(1569f, 103f, 478f), Struct_1(true))).d, vec3<f32>(-745f, -2075f, -796f), func_1(Struct_1(true), var_1.x, Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 5u)]), Struct_1(true), vec3<f32>(-786f, -104f, 1804f), Struct_1(true))).b))).b);
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(~var_1.x | firstLeadingBit(_wgslsmith_div_i32(var_1.x, u_input.a)), 0i), vec2<i32>(-1i) * -vec2<i32>(607i, 9717i));
    var var_4 = Struct_2(func_2().b, var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.c)), _wgslsmith_f_op_vec3_f32(step(var_2.c, var_2.c)))) - _wgslsmith_div_vec3_f32(var_2.c, vec3<f32>(_wgslsmith_div_f32(575f, -697f), 1279f, var_2.c.x))), var_2.a);
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(~(-64827i)), 17699i), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~(vec4<i32>(var_1.x, u_input.a, u_input.a, var_1.x) >> (u_input.b % vec4<u32>(32u))), ~vec4<i32>(-29632i, 27292i, u_input.a, -2147483647i) << (_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 11268u, u_input.b.x, u_input.c)) % vec4<u32>(32u))), -vec4<i32>(abs(var_1.x), max(-32056i, u_input.a), u_input.a ^ var_1.x, _wgslsmith_sub_i32(u_input.a, -2147483647i))), u_input.c, ~(~(~(~u_input.b))));
}

