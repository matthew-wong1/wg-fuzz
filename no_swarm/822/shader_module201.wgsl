struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(1677f, -1664f, -1000f, -373f, 994f, 435f, -485f, 1065f, -546f, -946f, 577f);

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(1u, vec4<u32>(41794u, 4294967295u, 20588u, 12699u), -2364f), Struct_1(62606u, vec4<u32>(27464u, 0u, 5190u, 73318u), -1000f), Struct_1(1u, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), 984f), Struct_1(2900u, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), -186f), Struct_1(34572u, vec4<u32>(47531u, 9756u, 31641u, 65562u), -633f), Struct_1(4294967295u, vec4<u32>(4294967295u, 46414u, 1u, 27407u), 829f), Struct_1(4294967295u, vec4<u32>(27838u, 0u, 0u, 143u), 393f), Struct_1(1u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 18181u), -1557f), Struct_1(0u, vec4<u32>(37736u, 56383u, 4294967295u, 0u), 673f), Struct_1(11030u, vec4<u32>(36998u, 0u, 44618u, 4294967295u), -748f), Struct_1(0u, vec4<u32>(22241u, 29853u, 1u, 22387u), -1000f), Struct_1(4294967295u, vec4<u32>(1u, 30765u, 14646u, 15206u), -427f), Struct_1(4294967295u, vec4<u32>(1u, 0u, 33429u, 0u), 533f), Struct_1(0u, vec4<u32>(41533u, 39721u, 0u, 4294967295u), -548f), Struct_1(32262u, vec4<u32>(0u, 0u, 1u, 35603u), -674f), Struct_1(0u, vec4<u32>(4294967295u, 19891u, 34229u, 46659u), 1000f), Struct_1(51697u, vec4<u32>(19178u, 0u, 279u, 1u), 1583f), Struct_1(14458u, vec4<u32>(0u, 30862u, 1u, 4294967295u), 109f), Struct_1(1u, vec4<u32>(1u, 35782u, 1u, 11460u), -1000f), Struct_1(2504u, vec4<u32>(11506u, 599u, 4294967295u, 3197u), -131f), Struct_1(38493u, vec4<u32>(41046u, 1u, 43593u, 34148u), -1000f), Struct_1(59102u, vec4<u32>(15567u, 1u, 0u, 43091u), -1213f), Struct_1(48509u, vec4<u32>(28287u, 0u, 3368u, 8167u), -1033f), Struct_1(1u, vec4<u32>(17487u, 4294967295u, 0u, 1u), 2271f), Struct_1(29425u, vec4<u32>(38700u, 79699u, 69755u, 1u), 1590f), Struct_1(1u, vec4<u32>(0u, 1u, 1u, 9937u), 842f), Struct_1(0u, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), -1000f));

var<private> global3: u32;

var<private> global4: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_u32(u_input.a, ~(u_input.a | min(u_input.a, 36248u))), arg_0.b, arg_0.c);
    var var_1 = var_0.b.x;
    let var_2 = Struct_2(arg_0, Struct_1(_wgslsmith_dot_vec3_u32(max(vec3<u32>(23395u, var_0.b.x, var_0.a), select(var_0.b.yyx, arg_0.b.zxy, vec3<bool>(false, true, false))), ~arg_0.b.xxz), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, -501f))) * 756f)));
    var_0 = arg_0;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -636f, arg_0.c, var_2.a.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(818f, var_0.c, arg_0.c, -413f) * vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], arg_0.c, var_2.a.c, -409f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(561f, 1238f, 759f, var_2.a.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, global4.x, 1325f, -152f)), vec4<bool>(true, true, true, true)))))));
    return _wgslsmith_mod_u32(~var_0.b.x ^ ~_wgslsmith_add_u32(var_2.a.b.x, 1u >> (u_input.a % 32u)), ~countOneBits(4294967295u));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = global4.zz;
    let var_1 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(firstLeadingBit(~20517u), 27u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, firstTrailingBit(arg_0)), 26243u), 27u)]), Struct_1(~(~0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(26275u, arg_0, _wgslsmith_div_u32(u_input.a, 4294967295u), func_3(Struct_1(36748u, vec4<u32>(u_input.a, 1u, arg_0, 33820u), global0[_wgslsmith_index_u32(3777u, 11u)]))), (vec4<u32>(1u, arg_0, 0u, 1u) << (vec4<u32>(44982u, u_input.a, u_input.a, 72998u) % vec4<u32>(32u))) ^ (vec4<u32>(u_input.a, 50440u, 4294967295u, u_input.a) >> (vec4<u32>(arg_0, u_input.a, 11649u, 20197u) % vec4<u32>(32u))), ~(~vec4<u32>(50609u, 1u, arg_0, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(589f, global0[_wgslsmith_index_u32(arg_0, 11u)])))))), Struct_2(global2[_wgslsmith_index_u32(4295u, 27u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 24743u, arg_0), vec3<u32>(44296u, 30303u, arg_0), false), abs(vec3<u32>(28343u, 1u, arg_0)))), 27u)]), select(u_input.a, firstLeadingBit(max(u_input.a, u_input.a)), 8484u < _wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(u_input.a, 1u))));
    global0 = array<f32, 11>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(46696u, _wgslsmith_sub_u32(~(~arg_0), arg_0)), min(45580u, 1u)), 27u)];
    let var_3 = var_1;
    return !(!vec2<bool>(true, -1134f >= _wgslsmith_f_op_f32(var_3.c.b.c + -393f)));
}

fn func_4(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(347f * global0[_wgslsmith_index_u32(func_3(global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(0u)), 27u)]), 11u)]));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(43206u, ~(abs(58075u) >> (~u_input.a % 32u))), 27u)], Struct_1(u_input.a, vec4<u32>(~_wgslsmith_div_u32(4294967295u, u_input.a), 0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 0u), u_input.a), u_input.a), var_0));
    global3 = min(95523u, 4353u);
    var var_2 = Struct_1(min(u_input.a, 0u), ~var_1.a.b & _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 34659u, u_input.a, u_input.a), vec4<u32>(u_input.a, 62061u | u_input.a, u_input.a, var_1.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f * var_1.b.c)) - var_0));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(u_input.a, 10u)] & ~_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a, u_input.a), vec2<u32>(4294967295u, var_2.a)), ~countOneBits(global1[_wgslsmith_index_u32(var_1.b.a, 10u)] << (var_1.a.b.zw % vec2<u32>(32u)))), (vec4<u32>(53036u, var_1.b.b.x, ~u_input.a, select(15876u, var_1.a.a, true)) | vec4<u32>(~0u, var_2.b.x ^ var_1.a.b.x, ~1u, u_input.a)) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_2.b.x, u_input.a, 1u), var_1.b.b | var_2.b)) % vec4<u32>(32u)), var_2.c);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1046f, 1763f, var_3.c, var_2.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, -466f, -2490f, -161f)), select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(false, false, false, true), arg_0.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.b.c, var_2.c), _wgslsmith_f_op_f32(floor(1000f)))), 1f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.b.b.zyx, vec3<u32>(var_3.b.x, 0u, 4294967295u)), 11u)] + var_2.c))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f) + global0[_wgslsmith_index_u32(var_1.a.b.x << (1u % 32u), 11u)]), _wgslsmith_f_op_f32(223f + var_0), _wgslsmith_f_op_f32(step(1065f, -2070f)), var_3.c))), vec4<bool>(false, true, true, !(!arg_0.x))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> vec3<bool> {
    global4 = _wgslsmith_f_op_vec4_f32(func_4(select(func_2(_wgslsmith_mod_u32(0u, arg_0) << (countOneBits(50022u) % 32u), vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 11u)], _wgslsmith_f_op_f32(floor(-605f)))), !select(select(vec2<bool>(true, true), vec2<bool>(arg_2, false), true), vec2<bool>(arg_2, false), vec2<bool>(true, arg_2)), (false || arg_2) && !func_2(0u, vec2<f32>(global0[_wgslsmith_index_u32(20427u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)])).x)));
    var var_0 = !arg_2;
    global1 = array<vec2<u32>, 10>();
    let var_1 = global2[_wgslsmith_index_u32(abs(min(_wgslsmith_add_u32(1u, arg_0), 4294967295u << (_wgslsmith_mod_u32(arg_1, arg_1) % 32u))), 27u)];
    var_0 = false;
    return vec3<bool>(any(vec3<bool>(!(arg_0 <= 54752u), any(vec4<bool>(true, true, true, true)), false)), (func_2(_wgslsmith_mult_u32(3925u, arg_1), vec2<f32>(889f, var_1.c)).x || (5836i > abs(u_input.c))) || !arg_2, any(!vec2<bool>(false, global4.x != global0[_wgslsmith_index_u32(arg_0, 11u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 27>();
    let var_0 = func_1(u_input.a, 10395u, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(1182f * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 61661u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 11u)]), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(var_0.x, var_0.x))).x, 292f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 570f, global0[_wgslsmith_index_u32(u_input.a, 11u)], 159f))))), reverseBits(~87864u));
}

