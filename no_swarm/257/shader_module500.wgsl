struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: bool,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(786f, true, i32(-2147483648));

var<private> global2: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(297f, true, 20251i), true, -206f, i32(-2147483648), Struct_1(false, 1u, vec4<u32>(4294967295u, 0u, 4294967295u, 7357u), vec2<u32>(4294967295u, 35934u), vec4<bool>(true, false, false, false))), Struct_3(Struct_2(2742f, true, 0i), true, 725f, -8805i, Struct_1(false, 13874u, vec4<u32>(22941u, 847u, 1u, 4294967295u), vec2<u32>(0u, 0u), vec4<bool>(false, false, true, true))), Struct_3(Struct_2(279f, false, 1i), false, -118f, 0i, Struct_1(false, 35685u, vec4<u32>(4294967295u, 1u, 1u, 13549u), vec2<u32>(85257u, 1u), vec4<bool>(true, true, true, true))), Struct_3(Struct_2(-255f, true, -5967i), true, 690f, 2147483647i, Struct_1(true, 4294967295u, vec4<u32>(4294967295u, 4294967295u, 64163u, 103446u), vec2<u32>(52249u, 19350u), vec4<bool>(true, true, true, true))), Struct_3(Struct_2(320f, true, 2147483647i), false, 1859f, 40i, Struct_1(false, 28856u, vec4<u32>(4294967295u, 4294967295u, 47214u, 4294967295u), vec2<u32>(58387u, 0u), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(1827f, false, i32(-2147483648)), false, 364f, -1i, Struct_1(false, 1u, vec4<u32>(1u, 48642u, 71353u, 56120u), vec2<u32>(1u, 38728u), vec4<bool>(true, false, false, false))), Struct_3(Struct_2(-1000f, true, 0i), true, 994f, 2147483647i, Struct_1(true, 4294967295u, vec4<u32>(30160u, 4294967295u, 1u, 19780u), vec2<u32>(4294967295u, 20828u), vec4<bool>(true, true, true, true))), Struct_3(Struct_2(1264f, false, 1i), true, 1188f, 1i, Struct_1(true, 42966u, vec4<u32>(57609u, 87835u, 94389u, 1u), vec2<u32>(4294967295u, 0u), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(1000f, false, -48670i), false, -194f, 6092i, Struct_1(false, 1u, vec4<u32>(4294967295u, 0u, 16244u, 49447u), vec2<u32>(4294967295u, 0u), vec4<bool>(false, false, true, false))), Struct_3(Struct_2(760f, true, -32069i), true, -463f, 23275i, Struct_1(false, 4294967295u, vec4<u32>(4322u, 65039u, 33045u, 1u), vec2<u32>(1u, 18258u), vec4<bool>(false, true, false, false))), Struct_3(Struct_2(-252f, true, 19136i), true, 1796f, 2147483647i, Struct_1(false, 82292u, vec4<u32>(1u, 65887u, 1u, 50218u), vec2<u32>(1u, 12717u), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(-1750f, false, -16854i), false, 123f, 2147483647i, Struct_1(true, 4294967295u, vec4<u32>(13037u, 4868u, 1u, 58018u), vec2<u32>(52438u, 0u), vec4<bool>(false, true, false, false))), Struct_3(Struct_2(-514f, false, 10900i), false, -515f, 2212i, Struct_1(true, 28435u, vec4<u32>(4294967295u, 12280u, 18488u, 26880u), vec2<u32>(0u, 4294967295u), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(-1445f, false, 1i), true, 168f, 3264i, Struct_1(true, 0u, vec4<u32>(6475u, 34221u, 37696u, 4294967295u), vec2<u32>(20676u, 39847u), vec4<bool>(true, true, true, true))), Struct_3(Struct_2(366f, false, 26715i), true, 1141f, -13405i, Struct_1(false, 4294967295u, vec4<u32>(0u, 24251u, 1u, 1u), vec2<u32>(1u, 32845u), vec4<bool>(true, false, true, false))), Struct_3(Struct_2(-1014f, true, -1i), false, -2813f, 50042i, Struct_1(false, 11109u, vec4<u32>(1u, 35270u, 2814u, 0u), vec2<u32>(1u, 26449u), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(534f, true, 1i), false, 1159f, 2147483647i, Struct_1(true, 57890u, vec4<u32>(29246u, 4294967295u, 1u, 4294967295u), vec2<u32>(18774u, 4294967295u), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(-638f, false, 20760i), false, -246f, -54414i, Struct_1(true, 83109u, vec4<u32>(4294967295u, 46050u, 52634u, 4294967295u), vec2<u32>(4294967295u, 27437u), vec4<bool>(false, true, false, true))), Struct_3(Struct_2(276f, false, 24626i), false, 1737f, 1i, Struct_1(false, 647u, vec4<u32>(11505u, 4294967295u, 8767u, 17307u), vec2<u32>(0u, 0u), vec4<bool>(false, false, true, false))), Struct_3(Struct_2(-1295f, true, -1i), true, -1474f, 1i, Struct_1(true, 63059u, vec4<u32>(32280u, 4294967295u, 50681u, 7218u), vec2<u32>(50199u, 2021u), vec4<bool>(true, false, false, false))), Struct_3(Struct_2(318f, false, 4562i), true, 1394f, 12980i, Struct_1(false, 1u, vec4<u32>(43746u, 5705u, 1u, 1u), vec2<u32>(1u, 1u), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(-2268f, true, 1i), false, -576f, 2147483647i, Struct_1(true, 4294967295u, vec4<u32>(0u, 1629u, 0u, 0u), vec2<u32>(4294967295u, 0u), vec4<bool>(false, false, true, false))), Struct_3(Struct_2(-1839f, false, 33004i), false, -365f, -1i, Struct_1(true, 0u, vec4<u32>(94154u, 38910u, 1u, 40174u), vec2<u32>(101665u, 41758u), vec4<bool>(true, false, true, false))), Struct_3(Struct_2(-298f, false, i32(-2147483648)), false, -317f, 30819i, Struct_1(true, 37604u, vec4<u32>(9894u, 19906u, 4294967295u, 98819u), vec2<u32>(4294967295u, 0u), vec4<bool>(false, false, true, true))), Struct_3(Struct_2(-386f, false, 3209i), false, -643f, 23960i, Struct_1(false, 1u, vec4<u32>(1u, 1u, 1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(146f, false, 0i), false, 1328f, i32(-2147483648), Struct_1(false, 0u, vec4<u32>(39548u, 26219u, 1u, 32241u), vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(-330f, true, -1i), false, -503f, 3911i, Struct_1(true, 63509u, vec4<u32>(36893u, 2015u, 1u, 36207u), vec2<u32>(29726u, 7441u), vec4<bool>(true, false, true, false))), Struct_3(Struct_2(1000f, false, 37235i), true, -1138f, -46108i, Struct_1(true, 9471u, vec4<u32>(1u, 16292u, 151349u, 42395u), vec2<u32>(0u, 1u), vec4<bool>(false, false, true, false))), Struct_3(Struct_2(1755f, false, 10695i), false, -459f, -20134i, Struct_1(true, 0u, vec4<u32>(45395u, 0u, 18622u, 1u), vec2<u32>(43328u, 3026u), vec4<bool>(true, false, false, false))), Struct_3(Struct_2(-846f, false, 0i), false, 278f, 0i, Struct_1(true, 1u, vec4<u32>(52907u, 101862u, 0u, 11079u), vec2<u32>(1u, 0u), vec4<bool>(true, true, false, false))), Struct_3(Struct_2(292f, true, -2572i), false, -751f, -1i, Struct_1(true, 0u, vec4<u32>(1u, 4294967295u, 1u, 0u), vec2<u32>(10633u, 0u), vec4<bool>(false, false, true, false))), Struct_3(Struct_2(633f, true, -17008i), true, -446f, -34698i, Struct_1(true, 0u, vec4<u32>(1u, 1u, 0u, 14702u), vec2<u32>(0u, 4294967295u), vec4<bool>(true, false, false, false))));

var<private> global3: array<Struct_2, 6>;

var<private> global4: array<f32, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec4<bool>(global0.a, !any(select(global0.e, global0.e, select(global0.e, vec4<bool>(false, global1.b, false, true), global0.a))), any(vec3<bool>(true, global1.b, !all(vec4<bool>(global0.e.x, true, global0.e.x, true)))), false);
    var var_1 = 1184f;
    let var_2 = global2[_wgslsmith_index_u32(~(~global0.d.x << ((u_input.b >> (~(u_input.b ^ 0u) % 32u)) % 32u)), 32u)];
    global4 = array<f32, 18>();
    let var_3 = abs(_wgslsmith_div_vec4_u32(~(~global0.c >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.x, 42055u, var_2.e.b, global0.b), vec4<u32>(var_2.e.b, u_input.b, u_input.b, u_input.b), var_2.e.c) % vec4<u32>(32u))), var_2.e.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, global1.a, -189f))))))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> i32 {
    global0 = Struct_1(~(_wgslsmith_mod_i32(global1.c, -22544i) << (1u % 32u)) >= _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i), ~(~0u), ~reverseBits(abs(~vec4<u32>(14076u, global0.c.x, arg_0, 4294967295u))), global0.d, global0.e);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(-559f)), global1.b, global1.c);
    var var_1 = var_0.a;
    let var_2 = Struct_4(~global0.c.xy & vec2<u32>(~arg_1, 27338u), any(vec3<bool>(var_0.b, true && global1.b, var_0.b)) & true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3()))));
    let var_3 = var_2;
    return ~(~37041i);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = ~(~max(~u_input.b, 33078u) & arg_0.e.b);
    var var_1 = global3[_wgslsmith_index_u32(~global0.b, 6u)];
    let var_2 = ~(vec2<i32>((var_1.c & -2147483647i) << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_2), vec3<i32>(u_input.d.x, arg_2.x, -1361i))) << (global0.c.ww % vec2<u32>(32u)));
    let var_3 = select(select(!vec4<bool>(global0.e.x && true, global0.e.x, !global1.b, all(vec3<bool>(arg_0.a.b, false, global1.b))), !select(vec4<bool>(true, true, arg_1, var_1.b), arg_0.e.e, true), true), !arg_0.e.e, var_1.b);
    let var_4 = vec2<bool>(true, false);
    return vec2<u32>(~_wgslsmith_sub_u32(63850u, 1u), ~_wgslsmith_sub_u32(~(~arg_0.e.b), 46581u));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> vec2<u32> {
    global1 = arg_1.a;
    global2 = array<Struct_3, 32>();
    var var_0 = abs(~(~vec2<u32>(_wgslsmith_add_u32(0u, 1u), arg_2)));
    global0 = Struct_1(true, 0u, vec4<u32>(arg_2 << (17956u % 32u), abs(select(select(15299u, 1u, false), 0u, global0.a)), global0.b, 0u), arg_1.e.d, select(global0.e, !vec4<bool>(global1.b != global0.a, true, true, true), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, true)));
    let var_1 = arg_1.c < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0.c.x, 18u)] * 485f)))));
    return func_4(Struct_3(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global0.c.wzw, ~vec3<u32>(arg_1.e.b, 1u, u_input.b)), 6u)], true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f + arg_1.a.a)))), _wgslsmith_div_i32(~global1.c, 28905i), arg_1.e), global1.b, vec3<i32>(~func_2(0u, 66915u, _wgslsmith_f_op_f32(f32(-1f) * -735f)), ~_wgslsmith_mod_i32(select(global1.c, arg_1.d, var_1), _wgslsmith_dot_vec2_i32(u_input.d, u_input.c)), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, -1i, -20020i, global1.c), vec4<i32>(-30265i, -10756i, arg_1.d, global1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 32>();
    global4 = array<f32, 18>();
    var var_0 = global4[_wgslsmith_index_u32(global0.c.x, 18u)];
    var var_1 = countOneBits(~(~48715u));
    var var_2 = ~(-u_input.c.x & _wgslsmith_dot_vec3_i32((vec3<i32>(global1.c, global1.c, global1.c) ^ vec3<i32>(-35509i, u_input.a, global1.c)) | ~vec3<i32>(0i, global1.c, u_input.d.x), max(vec3<i32>(global1.c, -9335i, u_input.c.x), ~vec3<i32>(u_input.a, u_input.c.x, u_input.c.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1670f + global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(84073u, global0.c.x, 30648u, u_input.b), global0.c)), 18u)]), global1.a, 1175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -674f))), vec4<f32>(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(~28605u << ((global0.b ^ 4294967295u) % 32u), 18u)])), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(global0.c.x, 18u)], _wgslsmith_f_op_f32(-349f - _wgslsmith_div_f32(-1081f, global1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-395f + _wgslsmith_f_op_f32(-global1.a)), global4[_wgslsmith_index_u32(~1u, 18u)])), _wgslsmith_f_op_f32(246f + _wgslsmith_f_op_f32(291f + global1.a)))));
    let var_4 = global0.c;
    var_1 = ~_wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(global0.d, var_4.zw)), _wgslsmith_mod_vec2_u32(global0.c.ww, func_1(41164u, global2[_wgslsmith_index_u32(var_4.x, 32u)], var_4.x)) | _wgslsmith_mod_vec2_u32(global0.c.xz, vec2<u32>(u_input.b, 72092u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_3(Struct_2(-477f, global0.a, -20900i), global1.b, -170f, _wgslsmith_add_i32(global1.c, u_input.d.x), Struct_1(global0.a, global0.b, vec4<u32>(u_input.b, u_input.b, var_4.x, 1u), var_4.yx, global0.e)), false, vec3<i32>(u_input.d.x, -50620i, u_input.a) & (vec3<i32>(global1.c, global1.c, -1i) ^ vec3<i32>(u_input.d.x, -1i, u_input.c.x))).x | global0.c.x, _wgslsmith_f_op_vec4_f32(abs(var_3)), _wgslsmith_sub_u32(51867u, global0.d.x), var_3.x);
}

