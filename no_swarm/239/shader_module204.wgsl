struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: vec4<f32> = vec4<f32>(-994f, 967f, -457f, -1776f);

var<private> global2: array<vec4<f32>, 25>;

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<f32>(851f, -666f, -936f), vec2<u32>(34708u, 80921u)), Struct_2(vec3<f32>(-171f, -408f, -1497f), vec2<u32>(8899u, 4294967295u)), Struct_2(vec3<f32>(-103f, 2204f, -346f), vec2<u32>(4294967295u, 1u)), Struct_2(vec3<f32>(666f, 1844f, 1721f), vec2<u32>(4294967295u, 94846u)), Struct_2(vec3<f32>(-1000f, -429f, -1516f), vec2<u32>(4294967295u, 25230u)), Struct_2(vec3<f32>(-783f, -791f, -541f), vec2<u32>(1u, 0u)), Struct_2(vec3<f32>(1000f, -1474f, -1251f), vec2<u32>(4652u, 78173u)), Struct_2(vec3<f32>(-951f, 167f, -702f), vec2<u32>(0u, 1544u)), Struct_2(vec3<f32>(-1000f, 1485f, -706f), vec2<u32>(41847u, 0u)), Struct_2(vec3<f32>(313f, -160f, -1026f), vec2<u32>(91361u, 21468u)), Struct_2(vec3<f32>(-890f, 1600f, -793f), vec2<u32>(30452u, 0u)), Struct_2(vec3<f32>(393f, -1602f, -381f), vec2<u32>(4294967295u, 54250u)), Struct_2(vec3<f32>(300f, -1063f, -2075f), vec2<u32>(77056u, 8403u)));

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(37377u, vec2<bool>(false, true), -28269i), Struct_1(1u, vec2<bool>(false, false), 31024i), Struct_1(0u, vec2<bool>(true, true), 2147483647i), Struct_1(47082u, vec2<bool>(true, false), -13203i), Struct_1(22271u, vec2<bool>(false, true), -642i), Struct_1(1u, vec2<bool>(false, true), -1i), Struct_1(29656u, vec2<bool>(false, true), -5330i), Struct_1(0u, vec2<bool>(true, true), 0i), Struct_1(1u, vec2<bool>(false, true), 1i), Struct_1(4294967295u, vec2<bool>(true, false), 22443i), Struct_1(0u, vec2<bool>(true, false), 10056i), Struct_1(12383u, vec2<bool>(true, false), 62682i), Struct_1(26003u, vec2<bool>(false, false), 2147483647i), Struct_1(1u, vec2<bool>(true, true), -1i), Struct_1(14461u, vec2<bool>(false, true), -34973i), Struct_1(1u, vec2<bool>(false, false), 29791i), Struct_1(54349u, vec2<bool>(false, false), 1i), Struct_1(23241u, vec2<bool>(true, true), 0i), Struct_1(0u, vec2<bool>(false, true), 44875i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = min(_wgslsmith_mod_u32(1u, arg_0.a), 4294967295u);
    global0 = array<Struct_2, 31>();
    let var_1 = (max(-1i, -(~arg_0.c)) ^ select(2147483647i, firstTrailingBit(_wgslsmith_mult_i32(40071i, arg_0.c)), select(arg_0.a == 75792u, all(vec4<bool>(arg_0.b.x, arg_0.b.x, true, true)), arg_0.b.x))) | (firstTrailingBit(-firstTrailingBit(0i)) << (~(~(~arg_0.a)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(step(-586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1790f * global1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-293f)) - _wgslsmith_f_op_f32(global1.x - 1410f))))));
    var_0 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) ^ vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a, 19018u), ~vec4<u32>(u_input.a.x, u_input.a.x, 48621u, u_input.a.x)), abs(1u))) << (countOneBits(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 35400u, 0u, u_input.a.x)), ~vec4<u32>(0u, 4294967295u, arg_0.a, arg_0.a))) % 32u);
    return ~(~reverseBits(arg_0.c));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(~(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), vec2<bool>(true, true), func_3(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(31692u, u_input.a.x, u_input.a.x), vec3<u32>(50371u, u_input.a.x, u_input.a.x)), vec2<bool>(true, true), 0i)));
    global2 = array<vec4<f32>, 25>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global1 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 25u)]);
    return Struct_3(true, Struct_1(39058u, vec2<bool>(var_0.b.x, all(vec4<bool>(var_0.b.x, false, false, false))), 1i), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 17755u, 1u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, 1u, 42849u), vec4<u32>(var_0.a, 40478u, 31658u, 30026u)))), global4[_wgslsmith_index_u32(~1u, 19u)]);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~arg_3.d.a;
    var var_1 = arg_3;
    global3 = array<Struct_2, 13>();
    global4 = array<Struct_1, 19>();
    var var_2 = func_2().d;
    return Struct_2(vec3<f32>(292f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -610f))), arg_1.x), ~var_1.c.wy);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec3<f32> {
    global0 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_mod_vec4_u32(abs(~(~vec4<u32>(arg_0, 32865u, arg_0, u_input.a.x))), _wgslsmith_sub_vec4_u32(~vec4<u32>(~arg_1.x, abs(arg_1.x), ~arg_1.x, _wgslsmith_mult_u32(arg_1.x, 0u)), ~vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 78994u, u_input.a.x, 15485u), vec4<u32>(1u, u_input.a.x, arg_0, arg_1.x)), countOneBits(u_input.a.x), abs(arg_0))));
    let var_1 = func_4(abs(max(4294967295u, 8145u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.zyy, global1.zzz) + global1.yzz))), i32(-1i) * -reverseBits(~(-55023i)), func_2());
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(select(var_1.a.x, -582f, false)))), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-591f)) - _wgslsmith_f_op_f32(abs(-540f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1402f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.a.x)), 734f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-435f + 787f))));
    global3 = array<Struct_2, 13>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8319u;
    let var_1 = global1.x;
    let var_2 = true;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.zwy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-885f, -1073f, global1.x), vec3<f32>(-546f, global1.x, 873f))))) + _wgslsmith_f_op_vec3_f32(func_1(~u_input.a.x, u_input.a))), ~func_4(var_0, vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), 1066f, -1795f), ~(~(-9005i)), Struct_3(true, global4[_wgslsmith_index_u32(60860u, 19u)], func_2().c, Struct_1(u_input.a.x, vec2<bool>(true, false), 2147483647i))).b);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(u_input.a.x, var_3.a, 1i, Struct_3(false, Struct_1(var_0, vec2<bool>(var_2, true), -1i), vec4<u32>(11823u, u_input.a.x, var_0, 4294967295u), Struct_1(var_3.b.x, vec2<bool>(true, false), -14330i))).a.x, _wgslsmith_f_op_f32(-var_3.a.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-224f - var_3.a.x), _wgslsmith_f_op_f32(var_3.a.x + 353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(min(-1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2222f + global1.x))))), var_3.a.x);
    global4 = array<Struct_1, 19>();
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(31915u, u_input.a.x, 31222u), vec3<u32>(var_3.b.x, 22517u, 4294967295u)), vec3<u32>(4294967295u, var_0, var_0))), ~countOneBits(12327u), func_2().b.a) ^ countOneBits(var_3.b.x), 25u)];
    var var_5 = func_2();
    let var_6 = select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_2, var_2, var_5.a), vec4<bool>(false, var_2, true, false), vec4<bool>(false, var_5.a, true, false)), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(false, false, false, var_2), vec4<bool>(var_2, var_5.d.b.x, false, var_5.d.b.x), var_2), vec4<bool>(true, true, true, var_2), select(vec4<bool>(true, var_5.d.b.x, false, true), vec4<bool>(var_5.b.b.x, var_2, false, false), vec4<bool>(false, true, true, var_2))), vec4<bool>(var_2, !var_5.a, any(vec4<bool>(var_2, false, var_5.b.b.x, true)), func_2().a), select(select(vec4<bool>(var_5.a, true, false, true), vec4<bool>(var_5.d.b.x, var_2, var_2, false), var_5.b.b.x), select(vec4<bool>(var_2, true, var_2, true), vec4<bool>(true, true, var_5.b.b.x, true), var_5.d.b.x), !vec4<bool>(false, var_2, false, false))), !(!select(vec4<bool>(var_2, var_2, var_5.d.b.x, true), vec4<bool>(var_5.a, true, var_5.a, false), var_2))), select(!select(select(vec4<bool>(true, var_2, true, true), vec4<bool>(false, false, var_2, var_2), var_5.a), !vec4<bool>(true, true, var_2, false), any(vec2<bool>(false, var_2))), vec4<bool>(false, all(select(vec4<bool>(true, true, var_5.a, var_2), vec4<bool>(true, true, var_5.b.b.x, false), var_5.a)), true, select(select(false, var_5.a, false), var_5.a, false)), vec4<bool>(any(vec3<bool>(false, true, false)), select(true, var_4.x > var_4.x, all(vec3<bool>(var_5.b.b.x, true, false))), !all(vec3<bool>(true, false, var_2)), var_5.b.c > (var_5.d.c & var_5.d.c))), vec4<bool>(true, !all(vec3<bool>(true, var_5.b.b.x, true)), !any(select(vec3<bool>(var_2, var_5.b.b.x, var_5.d.b.x), vec3<bool>(var_5.d.b.x, var_5.d.b.x, var_2), vec3<bool>(true, false, var_2))), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(754f, global1.x))), global1.x, _wgslsmith_div_u32(2216u, var_0) == ~25182u)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1118f, 2335f))))), ~var_0, 1i, min(-1i, -(var_5.d.c >> (var_3.b.x % 32u)) << (_wgslsmith_sub_u32(var_3.b.x, var_5.c.x | 0u) % 32u)));
}

