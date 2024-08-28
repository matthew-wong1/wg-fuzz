struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4 = Struct_4(12691u, Struct_1(968f, vec3<u32>(1u, 0u, 33777u)), vec4<bool>(true, true, true, true), false);

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<bool>(false, false), Struct_1(1000f, vec3<u32>(2492u, 1u, 9638u)), Struct_1(228f, vec3<u32>(36523u, 22371u, 1u)), 1432f), Struct_2(vec2<bool>(true, true), Struct_1(299f, vec3<u32>(12310u, 86795u, 25480u)), Struct_1(-557f, vec3<u32>(0u, 4294967295u, 1u)), -443f), Struct_2(vec2<bool>(true, false), Struct_1(-933f, vec3<u32>(1u, 5762u, 70573u)), Struct_1(-688f, vec3<u32>(1u, 35582u, 1u)), 734f), Struct_2(vec2<bool>(true, false), Struct_1(-1452f, vec3<u32>(23801u, 49777u, 0u)), Struct_1(580f, vec3<u32>(40336u, 5199u, 4294967295u)), 370f), Struct_2(vec2<bool>(true, false), Struct_1(-986f, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(-859f, vec3<u32>(0u, 42820u, 21652u)), -1242f), Struct_2(vec2<bool>(false, false), Struct_1(-936f, vec3<u32>(12278u, 54798u, 90800u)), Struct_1(-859f, vec3<u32>(0u, 49862u, 1u)), -403f), Struct_2(vec2<bool>(false, false), Struct_1(-851f, vec3<u32>(0u, 1u, 56588u)), Struct_1(516f, vec3<u32>(10860u, 4294967295u, 56270u)), 2129f), Struct_2(vec2<bool>(true, false), Struct_1(133f, vec3<u32>(79139u, 35501u, 75975u)), Struct_1(1653f, vec3<u32>(8280u, 15864u, 5127u)), 1171f), Struct_2(vec2<bool>(true, false), Struct_1(-2068f, vec3<u32>(33737u, 4294967295u, 0u)), Struct_1(162f, vec3<u32>(12456u, 23877u, 0u)), -527f), Struct_2(vec2<bool>(true, false), Struct_1(453f, vec3<u32>(10781u, 1u, 0u)), Struct_1(991f, vec3<u32>(0u, 42207u, 38485u)), -1000f), Struct_2(vec2<bool>(false, false), Struct_1(-795f, vec3<u32>(8131u, 4294967295u, 45455u)), Struct_1(-2065f, vec3<u32>(15374u, 0u, 22693u)), 489f), Struct_2(vec2<bool>(true, false), Struct_1(460f, vec3<u32>(1u, 0u, 1u)), Struct_1(-1391f, vec3<u32>(0u, 68440u, 1u)), 1209f));

var<private> global3: array<u32, 30>;

var<private> global4: array<i32, 32> = array<i32, 32>(2147483647i, 0i, -25071i, 2147483647i, 3823i, 2147483647i, 1i, i32(-2147483648), i32(-2147483648), -1i, 14518i, -28188i, -43675i, 11666i, i32(-2147483648), -51430i, -1i, i32(-2147483648), 47956i, i32(-2147483648), 29598i, -24960i, 35377i, 41712i, -1i, -45049i, 1i, 0i, -22689i, 1i, -22518i, -1i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_1 {
    global2 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1748f * arg_1.a) + _wgslsmith_f_op_f32(f32(-1f) * -343f)), _wgslsmith_f_op_f32(-arg_1.a)), arg_2.b.a))));
    var var_1 = -min(firstTrailingBit(abs(arg_0.zy)), ~arg_0.xy);
    global4 = array<i32, 32>();
    var var_2 = 1013f;
    return global0.b;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = -global4[_wgslsmith_index_u32(firstLeadingBit(0u), 32u)] >> (~firstLeadingBit(55293u ^ min(u_input.d, 38961u)) % 32u);
    var var_1 = select(_wgslsmith_sub_u32(reverseBits(5328u), 35897u), 0u, arg_2.a.x);
    let var_2 = Struct_4(~(~4294967295u), arg_0.c, global1.c, false);
    var_1 = max(47533u, ~(global3[_wgslsmith_index_u32(global1.b.b.x, 30u)] & (~4294967295u & global3[_wgslsmith_index_u32(global1.b.b.x, 30u)])));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a, 1034f, _wgslsmith_div_f32(_wgslsmith_div_f32(368f, 937f), _wgslsmith_f_op_f32(-arg_0.b.a)))));
    return select(!global1.c.yw, !arg_2.a, vec2<bool>(select(false, arg_2.c.a >= _wgslsmith_f_op_f32(f32(-1f) * -837f), false), select(~35597u, 1u, true) == global1.b.b.x));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_4(58913u, func_1(vec3<i32>(-global4[_wgslsmith_index_u32(global0.c.b.x, 32u)] ^ -17843i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(6076i, -1i, global4[_wgslsmith_index_u32(arg_1.b.x, 32u)]), vec3<i32>(16792i, 0i, 1i)), select(vec3<i32>(u_input.a, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_3.b.b.x, 30u)], 32u)], u_input.a), vec3<i32>(global4[_wgslsmith_index_u32(arg_0.c.b.x, 32u)], global4[_wgslsmith_index_u32(arg_1.b.x, 32u)], global4[_wgslsmith_index_u32(global1.b.b.x, 32u)]), vec3<bool>(true, global0.a.x, arg_3.c.x))), _wgslsmith_mod_i32(1i, global4[_wgslsmith_index_u32(1u, 32u)])), arg_1, Struct_4(u_input.d << (_wgslsmith_div_u32(global0.b.b.x, global1.a) % 32u), func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global4[_wgslsmith_index_u32(806u, 32u)], u_input.b.x), vec3<i32>(26823i, global4[_wgslsmith_index_u32(arg_3.b.b.x, 32u)], 0i)), arg_0.b, Struct_4(arg_2.b.x, arg_3.b, arg_3.c, global1.c.x), global1.c.wzx), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), all(global1.c.ww)), arg_3.c.x), !(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x))), !arg_3.c, global0.a.x);
    var var_1 = -global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(58761u, 1u, arg_0.c.b.x, global3[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<u32>(1u, 22821u, 59788u, arg_3.b.b.x), vec4<u32>(1u, 50118u, 16847u, global0.b.b.x)), ~(~vec4<u32>(arg_0.c.b.x, 36762u, 4294967295u, 1u))), ~abs(33375u) ^ reverseBits(global1.b.b.x & 40776u)), 32u)];
    let var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-500f, global0.c.a, arg_1.a), vec3<f32>(-855f, -689f, arg_2.a), select(vec3<bool>(false, var_0.c.x, true), global1.c.yww, false)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.a, var_0.b.a)), vec3<f32>(arg_2.a, arg_1.a, 179f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-610f)), _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(ceil(arg_2.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(762f, global0.c.a, arg_2.a), vec3<f32>(-502f, arg_3.b.a, 551f), var_0.d)), vec3<f32>(636f, 1712f, 1270f))))))));
    let var_4 = select(vec4<bool>(!any(!vec4<bool>(true, arg_0.a, false, true)), !(abs(-40523i) < global4[_wgslsmith_index_u32(0u, 32u)]), func_2(Struct_2(!var_0.c.zz, global1.b, Struct_1(-202f, vec3<u32>(arg_2.b.x, arg_3.a, arg_1.b.x)), _wgslsmith_f_op_f32(-arg_1.a)), -(~(-1i)), Struct_2(!var_0.c.zx, func_1(vec3<i32>(u_input.c.x, u_input.a, global4[_wgslsmith_index_u32(arg_3.a, 32u)]), Struct_1(var_0.b.a, arg_3.b.b), Struct_4(global1.a, arg_3.b, vec4<bool>(true, true, true, arg_3.d), global0.a.x), arg_3.c.xzy), Struct_1(431f, vec3<u32>(25925u, 50136u, arg_0.b.b.x)), _wgslsmith_f_op_f32(1000f * arg_3.b.a))).x, !(!any(var_0.c))), !vec4<bool>(true && (u_input.b.x < 0i), func_2(global2[_wgslsmith_index_u32(~arg_1.b.x, 12u)], _wgslsmith_div_i32(-1i, -2147483647i), global2[_wgslsmith_index_u32(u_input.d, 12u)]).x, u_input.d != arg_2.b.x, all(arg_3.c)), vec4<bool>(arg_3.d, !(u_input.d < 77084u) || all(!arg_3.c), true, any(global0.a)));
    return abs(_wgslsmith_div_u32(func_1(max(-vec3<i32>(-19231i, 51025i, global4[_wgslsmith_index_u32(var_0.a, 32u)]), firstLeadingBit(vec3<i32>(global4[_wgslsmith_index_u32(var_0.a, 32u)], 1i, 39810i))), arg_2, Struct_4(arg_2.b.x, func_1(vec3<i32>(1i, global4[_wgslsmith_index_u32(var_0.a, 32u)], global4[_wgslsmith_index_u32(var_2.b.x, 32u)]), var_0.b, Struct_4(var_0.a, global1.b, global1.c, global0.a.x), arg_3.c.yyw), vec4<bool>(true, true, true, true), !global1.c.x), var_0.c.ywx).b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.b.zx, global1.b.b.yy), global0.c.b.xx), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a * global0.b.a) * _wgslsmith_f_op_f32(f32(-1f) * -198f)))))), _wgslsmith_f_op_f32(-global0.d));
    global0 = Struct_2(select(global1.c.yw, func_2(Struct_2(!global1.c.wx, Struct_1(-1000f, global1.b.b), func_1(vec3<i32>(u_input.a, 1i, u_input.a), Struct_1(var_0.x, global0.c.b), Struct_4(global0.b.b.x, global0.b, global1.c, global1.d), vec3<bool>(global0.a.x, true, global0.a.x)), var_0.x), u_input.b.x, global2[_wgslsmith_index_u32(global0.b.b.x, 12u)]), vec2<bool>(_wgslsmith_f_op_f32(floor(global0.b.a)) > -635f, !(!global1.d))), func_1(vec3<i32>(-u_input.b.x, min(global4[_wgslsmith_index_u32(~2026u, 32u)], ~1i), 2147483647i), func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(10144i, -36502i, 1959i) | vec3<i32>(u_input.a, -1i, 2147483647i), -vec3<i32>(global4[_wgslsmith_index_u32(global0.b.b.x, 32u)], 22378i, global4[_wgslsmith_index_u32(0u, 32u)]), vec3<i32>(-1i, 61081i, global4[_wgslsmith_index_u32(u_input.d, 32u)])), global0.b, Struct_4(~12218u, Struct_1(var_0.x, global1.b.b), select(global1.c, vec4<bool>(true, true, true, global1.d), vec4<bool>(true, true, global1.c.x, global1.c.x)), all(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x))), select(global1.c.xwx, vec3<bool>(false, global1.c.x, true), vec3<bool>(true, true, true))), Struct_4(func_3(Struct_3(false, global0.c, Struct_1(global0.c.a, global0.c.b), 1u, var_0.x), Struct_1(global1.b.a, global0.b.b), Struct_1(global1.b.a, global0.b.b), Struct_4(18060u, Struct_1(var_0.x, global1.b.b), vec4<bool>(global1.d, true, global0.a.x, global0.a.x), false)), func_1(vec3<i32>(global4[_wgslsmith_index_u32(global0.c.b.x, 32u)], global4[_wgslsmith_index_u32(global0.c.b.x, 32u)], u_input.c.x), global0.b, Struct_4(global0.b.b.x, global1.b, global1.c, true), vec3<bool>(false, true, false)), vec4<bool>(any(global1.c), all(vec4<bool>(global1.d, global1.c.x, global0.a.x, false)), all(vec2<bool>(global0.a.x, global0.a.x)), !global0.a.x), _wgslsmith_f_op_f32(-global0.d) == _wgslsmith_f_op_f32(ceil(var_0.x))), select(select(!vec3<bool>(global1.c.x, true, global0.a.x), select(global1.c.zxx, global1.c.yyz, global0.a.x), global1.c.yyy), global1.c.xxx, -2152f <= var_0.x)), Struct_1(_wgslsmith_f_op_f32(-global0.b.a), ~(~global0.c.b) | global1.b.b), -773f);
    let var_1 = global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~(1u ^ firstTrailingBit(1u)), 30u)], 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(549i, global4[_wgslsmith_index_u32(1u, 32u)], -4809i)), -vec3<i32>(u_input.a, u_input.a, 2147483647i)) << ((vec3<u32>(func_3(Struct_3(false, Struct_1(1366f, vec3<u32>(var_1.b.b.x, global1.b.b.x, global1.a)), Struct_1(global1.b.a, vec3<u32>(16308u, var_1.c.b.x, 1u)), 4294967295u, var_0.x), global1.b, Struct_1(global1.b.a, global0.c.b), Struct_4(global3[_wgslsmith_index_u32(u_input.d, 30u)], Struct_1(759f, vec3<u32>(0u, 4294967295u, 4294967295u)), vec4<bool>(false, true, global0.a.x, false), false)), global1.b.b.x << (global3[_wgslsmith_index_u32(52050u, 30u)] % 32u), u_input.d) | vec3<u32>(1u, 1u, 28989u)) % vec3<u32>(32u)), u_input.d);
}

