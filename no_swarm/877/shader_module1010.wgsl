struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: Struct_2 = Struct_2(-7630i, 0u, Struct_1(1u, false, vec2<f32>(1846f, 784f), 45475u), Struct_1(94891u, true, vec2<f32>(-884f, 559f), 0u));

var<private> global2: f32 = 533f;

var<private> global3: array<u32, 29> = array<u32, 29>(33106u, 27999u, 61377u, 4294967295u, 1u, 0u, 31698u, 4294967295u, 3319u, 12089u, 0u, 83234u, 4294967295u, 26341u, 4294967295u, 1u, 1u, 33683u, 4294967295u, 41076u, 1859u, 1628u, 28210u, 39404u, 1310u, 10734u, 1u, 40680u, 0u);

var<private> global4: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(2147483647i, 0u, Struct_1(0u, true, vec2<f32>(-282f, 948f), 80424u), Struct_1(30600u, true, vec2<f32>(1000f, -171f), 11996u)), Struct_2(i32(-2147483648), 4294967295u, Struct_1(34123u, false, vec2<f32>(-1190f, 533f), 4294967295u), Struct_1(64006u, false, vec2<f32>(458f, 1074f), 746u)), Struct_2(63762i, 0u, Struct_1(52362u, false, vec2<f32>(-537f, 1000f), 4294967295u), Struct_1(0u, false, vec2<f32>(2199f, -291f), 45637u)), Struct_2(2147483647i, 25849u, Struct_1(0u, false, vec2<f32>(830f, 1000f), 70917u), Struct_1(48601u, true, vec2<f32>(699f, 1000f), 18875u)), Struct_2(30562i, 4294967295u, Struct_1(1u, true, vec2<f32>(-596f, 1860f), 4759u), Struct_1(4294967295u, false, vec2<f32>(1442f, 168f), 14196u)), Struct_2(i32(-2147483648), 9615u, Struct_1(8571u, true, vec2<f32>(1761f, 402f), 1u), Struct_1(4294967295u, false, vec2<f32>(-761f, -778f), 1u)), Struct_2(-4463i, 1u, Struct_1(1u, true, vec2<f32>(-1086f, -1091f), 1u), Struct_1(70657u, true, vec2<f32>(906f, -155f), 7286u)), Struct_2(-47964i, 1u, Struct_1(0u, false, vec2<f32>(-606f, -895f), 0u), Struct_1(21604u, true, vec2<f32>(906f, -946f), 1u)), Struct_2(-50204i, 4294967295u, Struct_1(0u, false, vec2<f32>(-846f, -551f), 1u), Struct_1(7484u, false, vec2<f32>(273f, -1821f), 1u)), Struct_2(-37612i, 52552u, Struct_1(68030u, true, vec2<f32>(-302f, 596f), 1u), Struct_1(0u, false, vec2<f32>(388f, -840f), 16126u)), Struct_2(37149i, 0u, Struct_1(7219u, false, vec2<f32>(-548f, -264f), 1u), Struct_1(56976u, false, vec2<f32>(691f, -711f), 0u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(544f, global1.c.c.x, global1.d.c.x), vec3<f32>(global1.d.c.x, global1.d.c.x, -951f), false)))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(324f * -1323f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1185f * _wgslsmith_f_op_f32(global1.c.c.x * 218f)))), -843f));
    var var_1 = 1000f;
    var var_2 = 1i;
    global0 = array<bool, 5>();
    var var_3 = global4[_wgslsmith_index_u32(u_input.b, 11u)];
    return -31451i;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -961f) <= _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-499f)))), !(!((global1.a >> (global1.d.a % 32u)) != 2147483647i)), !(15938u >= ~(global1.b ^ u_input.b)), false && all(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.d.d, 29u)], 29u)], 5u)], true), !vec3<bool>(global1.d.b, arg_0.b, true), all(vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27040u, 29u)], 5u)], arg_0.b, true)))));
    global0 = array<bool, 5>();
    var var_1 = 26806u;
    let var_2 = _wgslsmith_dot_vec3_u32(select((vec3<u32>(global1.d.d, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 29u)]) & vec3<u32>(1u, 1u, 1u)) | _wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 29u)], 28494u, 23341u) ^ vec3<u32>(arg_0.d, 0u, 16868u), vec3<u32>(1u, global1.d.d, u_input.a.x)), ~vec3<u32>(21013u, 29555u, global1.b) ^ vec3<u32>(~global3[_wgslsmith_index_u32(22083u, 29u)], 61239u, ~4294967295u), all(!(!vec4<bool>(false, global1.c.b, true, arg_0.b)))), firstTrailingBit(~vec3<u32>(4294967295u, 9542u, abs(arg_0.d))));
    let var_3 = 52462u;
    return 2044f;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    let var_0 = ~(abs(vec4<u32>(0u, arg_2.x, arg_2.x, abs(arg_2.x))) & ~vec4<u32>(60946u, _wgslsmith_div_u32(global1.c.d, u_input.b), 4294967295u, 71148u << (global3[_wgslsmith_index_u32(u_input.a.x, 29u)] % 32u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    global0 = array<bool, 5>();
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(arg_1 - arg_1) > _wgslsmith_f_op_f32(floor(514f));
    return _wgslsmith_f_op_f32(round(-1000f));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(func_4(u_input.c.x, arg_1, vec3<u32>(global1.b, u_input.d, _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], u_input.d), 21157u | global3[_wgslsmith_index_u32(global1.b & 0u, 29u)])), _wgslsmith_f_op_f32(-1885f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) - _wgslsmith_f_op_f32(func_3(global1.c)))) < _wgslsmith_f_op_f32(-377f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1336f * 660f) - _wgslsmith_f_op_f32(min(153f, -813f))))));
    var var_0 = -vec4<i32>(arg_0, ~reverseBits(-u_input.c.x), -global1.a, global1.a);
    global1 = Struct_2(0i, ~_wgslsmith_clamp_u32(1u, countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, 1u), 29u)]), global3[_wgslsmith_index_u32(1u, 29u)]), global1.d, global1.c);
    global1 = global4[_wgslsmith_index_u32(1u, 11u)];
    return Struct_2(~0i, max(global1.c.d, _wgslsmith_mult_u32(~(~14790u), global1.d.d)), global1.c, global1.d);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = ~select(u_input.a, vec2<u32>(_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(global1.b, 29u)], arg_0.a), _wgslsmith_sub_u32(u_input.a.x, func_2(arg_1.x, -483f).c.a)), all(vec4<bool>(true, true, !global1.c.b, u_input.a.x < 61221u)));
    global4 = array<Struct_2, 11>();
    var var_1 = vec3<u32>(26946u, _wgslsmith_dot_vec4_u32(vec4<u32>(3396u, global3[_wgslsmith_index_u32(12976u, 29u)], arg_0.d, select(global1.b, 30209u, false)), ~(vec4<u32>(arg_2.c.a, 4294967295u, 4294967295u, arg_0.a) ^ vec4<u32>(0u, 151989u, arg_2.c.d, 6972u))), 1u) << ((~(~reverseBits(vec3<u32>(20968u, 1u, 0u))) & ~(~(vec3<u32>(3816u, var_0.x, 4294967295u) << (vec3<u32>(4294967295u, global1.b, u_input.b) % vec3<u32>(32u))))) % vec3<u32>(32u));
    global3 = array<u32, 29>();
    var var_2 = 43925u;
    return arg_2.c;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<bool, 5>();
    var var_0 = u_input.a;
    let var_1 = func_5(Struct_1(min(firstTrailingBit(_wgslsmith_add_u32(global1.d.d, 1u)), ~arg_1.d), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(-13256i, arg_1.c.x, vec3<u32>(54682u, global3[_wgslsmith_index_u32(24490u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]), global0[_wgslsmith_index_u32(1u, 5u)])), arg_1.c.x)), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(42411u, global3[_wgslsmith_index_u32(42132u, 29u)]), 23556u)), vec4<i32>(-(global1.a & u_input.c.x), 6611i, _wgslsmith_dot_vec3_i32((u_input.c.yzx & vec3<i32>(global1.a, global1.a, -9939i)) | min(u_input.c.zxw, u_input.c.wwy), _wgslsmith_sub_vec3_i32(-u_input.c.xzz, ~u_input.c.yyx)), -countOneBits(_wgslsmith_dot_vec2_i32(u_input.c.zw, vec2<i32>(u_input.c.x, 3065i)))), global4[_wgslsmith_index_u32(71507u, 11u)], !vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b, 5u)], all(!vec4<bool>(false, arg_1.b, true, arg_0.x)), global1.a < (62634i & global1.a), global0[_wgslsmith_index_u32(global1.b, 5u)]));
    let var_2 = !(!vec4<bool>(true == (u_input.a.x != 4294967295u), true, arg_1.b, true));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))), _wgslsmith_f_op_f32(-global1.c.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.x, global1.d.c.x, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, -134f, arg_1.c.x)))), !any(select(vec3<bool>(false, var_2.x, global1.c.b), vec3<bool>(false, false, true), vec3<bool>(true, arg_0.x, var_1.b))))));
    return global4[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 35149u), ~u_input.a))), 11u)];
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = -(~u_input.c.zwz | -arg_1);
    global1 = arg_0;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.d.c.x;
    let var_0 = func_7(func_6(vec2<bool>(0u < ~global3[_wgslsmith_index_u32(1u, 29u)], any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), func_5(Struct_1(_wgslsmith_mod_u32(0u, global1.c.d), false, vec2<f32>(global1.c.c.x, -270f), global3[_wgslsmith_index_u32(57775u, 29u)] & 15632u), u_input.c, func_2(func_1(114810u, 13974u), global1.d.c.x), !select(vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 5u)]), vec4<bool>(global1.c.b, global0[_wgslsmith_index_u32(global1.d.d, 5u)], false, global1.d.b), vec4<bool>(false, false, false, true)))), u_input.c.xyz);
    var var_1 = _wgslsmith_f_op_f32(global1.d.c.x + 947f);
    let var_2 = Struct_2(firstLeadingBit(i32(-1i) * -2147483647i), u_input.d, var_0, Struct_1(~_wgslsmith_mod_u32(34182u, func_2(u_input.c.x, global1.d.c.x).d.a), select(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0.d, 1u), 5u)], true, global0[_wgslsmith_index_u32(74690u, 5u)] | (var_0.c.x > global1.c.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(375f, var_0.c.x) * _wgslsmith_f_op_vec2_f32(-var_0.c))), ~u_input.a.x));
    var var_3 = Struct_1(28199u, true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(366f, var_0.c.x, global1.c.b)), -495f))), -1384f), 36144u);
    global2 = _wgslsmith_f_op_f32(var_3.c.x + -247f);
    var var_4 = func_5(Struct_1(71352u, var_2.c.b, vec2<f32>(_wgslsmith_f_op_f32(select(-985f, _wgslsmith_f_op_f32(round(400f)), var_2.c.b)), func_5(var_0, ~vec4<i32>(-67617i, 33017i, -1i, 36713i), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a.x), 11u)], select(vec4<bool>(true, var_2.d.b, false, false), vec4<bool>(true, var_2.c.b, global0[_wgslsmith_index_u32(67384u, 5u)], var_0.b), var_3.b)).c.x), ~_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), global3[_wgslsmith_index_u32(func_6(vec2<bool>(global1.d.b, global1.d.b), var_0).c.a, 29u)])), ~(~select(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a, global1.a, 0i, global1.a), u_input.c), vec4<i32>(2147483647i, global1.a, -22181i, 1i), var_3.b)), var_2, vec4<bool>(true, func_5(var_0, _wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, u_input.c.x, -2147483647i, var_2.a), u_input.c), var_2, !vec4<bool>(true, false, var_3.b, global1.d.b)).b, all(!(!vec3<bool>(false, false, var_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * var_2.c.c.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.c.x))));
    var_4 = Struct_1(var_3.d, var_4.b, _wgslsmith_f_op_vec2_f32(-func_5(var_0, u_input.c << (~vec4<u32>(5386u, 1u, 2479u, 3568u) % vec4<u32>(32u)), Struct_2(var_2.a, u_input.a.x ^ 38660u, func_5(var_2.c, u_input.c, Struct_2(2147483647i, var_0.d, Struct_1(4294967295u, var_2.c.b, var_0.c, u_input.a.x), global1.c), vec4<bool>(global1.c.b, var_2.c.b, var_0.b, var_3.b)), func_6(vec2<bool>(true, true), Struct_1(var_4.d, false, var_4.c, 0u)).c), vec4<bool>(any(vec2<bool>(global1.c.b, true)), true, true, true)).c), ~max(_wgslsmith_sub_u32(~1u, 1u), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(44918u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, var_3.c.x, 1165f, var_4.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.c.x, -907f, var_4.c.x, -1060f)))), reverseBits(select(max(vec3<u32>(var_2.c.a, 36483u, 4294967295u), vec3<u32>(18165u, 51243u, var_0.a)), reverseBits(vec3<u32>(0u, 5614u, var_0.a)), false) << (abs(~vec3<u32>(u_input.d, global3[_wgslsmith_index_u32(52000u, 29u)], var_3.d)) % vec3<u32>(32u))), global1.c.d);
}

