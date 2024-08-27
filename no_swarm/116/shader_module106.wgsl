struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<u32>(15639u, 1u, 37531u, 0u), vec3<bool>(true, true, true), 0i), Struct_3(vec4<u32>(4294967295u, 58328u, 1u, 4294967295u), vec3<bool>(false, true, false), 2147483647i), Struct_3(vec4<u32>(1u, 1u, 25647u, 41827u), vec3<bool>(true, false, false), i32(-2147483648)), Struct_3(vec4<u32>(17408u, 25917u, 1u, 114845u), vec3<bool>(true, true, true), 17452i), Struct_3(vec4<u32>(1u, 1u, 19086u, 7263u), vec3<bool>(false, true, false), -694i), Struct_3(vec4<u32>(0u, 2040u, 72724u, 32891u), vec3<bool>(false, true, true), 0i), Struct_3(vec4<u32>(0u, 3274u, 37862u, 10464u), vec3<bool>(true, true, true), -1i), Struct_3(vec4<u32>(60948u, 25676u, 106988u, 0u), vec3<bool>(true, false, false), 1i), Struct_3(vec4<u32>(1u, 0u, 4294967295u, 11103u), vec3<bool>(false, false, false), -51233i), Struct_3(vec4<u32>(4294967295u, 49780u, 44641u, 22045u), vec3<bool>(false, false, true), 1i), Struct_3(vec4<u32>(16178u, 4294967295u, 1u, 14867u), vec3<bool>(true, false, true), 60770i), Struct_3(vec4<u32>(1u, 54522u, 57949u, 0u), vec3<bool>(true, true, true), i32(-2147483648)));

var<private> global2: array<f32, 19> = array<f32, 19>(905f, -635f, 622f, -547f, 1084f, 975f, -670f, 581f, -878f, -343f, -1000f, 469f, -1026f, 2032f, 836f, 824f, -1000f, -659f, -169f);

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(48974u, Struct_1(vec2<f32>(-487f, -596f), vec3<bool>(false, false, false), vec2<f32>(1051f, -1054f)), vec2<f32>(1479f, 757f), Struct_1(vec2<f32>(983f, -1000f), vec3<bool>(false, true, false), vec2<f32>(1886f, 692f)), -57187i), Struct_2(4294967295u, Struct_1(vec2<f32>(1379f, -1000f), vec3<bool>(true, false, false), vec2<f32>(1000f, 1352f)), vec2<f32>(268f, 1396f), Struct_1(vec2<f32>(697f, -1212f), vec3<bool>(true, false, false), vec2<f32>(964f, -528f)), 35982i), Struct_2(61869u, Struct_1(vec2<f32>(-1493f, -975f), vec3<bool>(false, false, true), vec2<f32>(-1000f, 1317f)), vec2<f32>(218f, -1000f), Struct_1(vec2<f32>(606f, 290f), vec3<bool>(false, false, true), vec2<f32>(-545f, -1076f)), -53475i), Struct_2(71821u, Struct_1(vec2<f32>(1000f, 1000f), vec3<bool>(false, true, true), vec2<f32>(1941f, 244f)), vec2<f32>(-1022f, 305f), Struct_1(vec2<f32>(-874f, -254f), vec3<bool>(true, true, false), vec2<f32>(-146f, -118f)), -32802i), Struct_2(8784u, Struct_1(vec2<f32>(307f, 194f), vec3<bool>(false, false, false), vec2<f32>(125f, 2549f)), vec2<f32>(-839f, 2070f), Struct_1(vec2<f32>(-1258f, 188f), vec3<bool>(false, true, true), vec2<f32>(823f, 808f)), -44428i));

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-922f, arg_0.c.x, -941f), vec3<f32>(global2[_wgslsmith_index_u32(39898u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], arg_0.c.x))), vec3<f32>(-2690f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(48976u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_f_op_f32(f32(-1f) * -687f)), arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, global2[_wgslsmith_index_u32(0u, 19u)], 905f), vec3<f32>(arg_0.a.x, arg_0.c.x, -3117f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(20056u, 19u)], 918f, global2[_wgslsmith_index_u32(31911u, 19u)]) * vec3<f32>(global2[_wgslsmith_index_u32(30790u, 19u)], -969f, global2[_wgslsmith_index_u32(4294967295u, 19u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-869f, arg_0.a.x, 281f)))))));
    let var_1 = Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, ~0u)), Struct_2(_wgslsmith_sub_u32(~4294967295u, ~4294967295u) << (_wgslsmith_mult_u32(67454u, ~4294967295u) % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1065f))), vec3<bool>(any(arg_0.b.zx), true, true), vec2<f32>(-694f, 1f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.yx)) - var_0.zz), _wgslsmith_f_op_vec2_f32(round(arg_0.a))), arg_0, 0i >> (0u % 32u)), var_0.x, countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 9784u), vec3<u32>(36061u, 0u, 1u)))));
    global3 = array<Struct_2, 5>();
    global0 = array<vec4<u32>, 20>();
    global4 = array<Struct_2, 9>();
    return select(select(vec3<bool>(true && (u_input.a.x > var_1.b.e), !arg_0.b.x, all(!var_1.b.b.b.zz)), arg_0.b, !vec3<bool>(!var_1.b.b.b.x, !var_1.b.b.b.x, true)), select(vec3<bool>(true, var_1.b.d.b.x, ~var_1.b.a <= ~var_1.d), vec3<bool>(firstTrailingBit(0u) == firstTrailingBit(var_1.d), true, true), select(select(vec3<bool>(true, var_1.b.b.b.x, false), var_1.b.d.b, select(arg_0.b, arg_0.b, vec3<bool>(true, var_1.b.d.b.x, false))), select(arg_0.b, select(vec3<bool>(var_1.b.b.b.x, var_1.b.b.b.x, var_1.b.b.b.x), arg_0.b, vec3<bool>(false, arg_0.b.x, arg_0.b.x)), arg_0.b), false)), vec3<bool>(var_1.d < ~firstLeadingBit(var_1.b.a), any(var_1.b.d.b), all(arg_0.b)));
}

fn func_2(arg_0: u32) -> Struct_4 {
    return Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(countOneBits(arg_0), 19u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(34389u, 19u)] - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 19u)] * 523f))), select(vec3<bool>(all(vec3<bool>(true, true, false)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), func_3(Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(24285u, 19u)], 728f), vec3<bool>(true, false, false), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], 816f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(23951u, 19u)], global2[_wgslsmith_index_u32(arg_0, 19u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4257u, 19u)], 995f))))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, false, true)), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, select(true, false, false), true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, true), any(vec3<bool>(true, false, true)))), vec2<bool>(true, any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)))), ~firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, 21270i)), global2[_wgslsmith_index_u32(20796u, 19u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + global2[_wgslsmith_index_u32(~(~(~2570u)), 19u)]), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u >> (0u % 32u), 19u)]) - -1281f), _wgslsmith_f_op_f32(arg_0.a.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * global2[_wgslsmith_index_u32(49353u, 19u)]))), arg_0.c.x && true)));
    global1 = array<Struct_3, 12>();
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-1000f + -440f), -1879f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(135f, _wgslsmith_f_op_f32(floor(497f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 19u)] + global2[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_div_f32(arg_1.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, var_0.x, arg_0.a.a.x, var_0.x), vec4<f32>(-1955f, -1000f, 135f, var_0.x), arg_0.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(52407u, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(765f - var_0.x)), _wgslsmith_f_op_f32(step(var_0.x, arg_1.x)), -1000f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.a.x, -1000f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(0u, 19u)], arg_0.e), vec4<f32>(-1206f, arg_0.e, arg_1.x, var_0.x)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1079f, 374f, -1000f, -321f) + vec4<f32>(arg_1.x, -936f, -182f, arg_1.x)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(373f * global2[_wgslsmith_index_u32(0u, 19u)]), -114f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 19u)] + 1953f), _wgslsmith_f_op_f32(f32(-1f) * -1295f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1254f, var_0.x, -1113f, 1283f), vec4<f32>(-2921f, 478f, global2[_wgslsmith_index_u32(25715u, 19u)], arg_0.e))))))), !select(select(arg_0.b, !vec4<bool>(arg_0.b.x, arg_0.c.x, true, true), arg_0.b), !vec4<bool>(arg_0.a.b.x, arg_0.b.x, false, false), true)));
    var var_1 = _wgslsmith_mod_u32(reverseBits(~max(~22758u, ~1u)), 1u);
    return Struct_3(global0[_wgslsmith_index_u32(min(~0u, 1u), 20u)], func_2(0u).b.yxy, arg_0.d.x);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global1 = array<Struct_3, 12>();
    global4 = array<Struct_2, 9>();
    var var_0 = func_4(func_2(abs(~7422u & _wgslsmith_clamp_u32(0u, 1u, 4294967295u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(12268u, 19u)]))), -427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-367f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2295f * global2[_wgslsmith_index_u32(4294967295u, 19u)]), 1137f, -2413f), vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(9921u, 19u)], global2[_wgslsmith_index_u32(16294u, 19u)]), 2094f, -1000f)))));
    let var_1 = 1i >> (~max(4294967295u, ~(~44013u)) % 32u);
    let var_2 = global1[_wgslsmith_index_u32(var_0.a.x, 12u)];
    return _wgslsmith_dot_vec2_u32(var_0.a.zw, _wgslsmith_mod_vec2_u32(~(~countOneBits(var_0.a.wz)), ~reverseBits(var_0.a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~vec2<u32>(func_1(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), 1u), Struct_2(1u, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(402f, 1407f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1968f, -1439f))), vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, false)), u_input.a.x == -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(654f, global2[_wgslsmith_index_u32(2543u, 19u)]), vec2<f32>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(28546u, 19u)]), true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(38819u, 19u)] + -438f)) + vec2<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(97454u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)]))), func_2(1u).a, u_input.a.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(67358u, 19u)]), _wgslsmith_div_u32(1u, ~(_wgslsmith_mod_u32(15745u, 1u) << (1u % 32u))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.a.x, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), vec2<u32>(var_0.d, var_0.b.a)), 26272u, 24882u)), _wgslsmith_clamp_vec2_u32(var_0.a, ~(~(~var_0.a)), ~vec2<u32>(~var_0.b.a, ~4294967295u))), 19u)];
    global4 = array<Struct_2, 9>();
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 19u)], -1101f, 601f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1536f, var_0.c, -1000f), vec3<f32>(-594f, global2[_wgslsmith_index_u32(var_0.a.x, 19u)], global2[_wgslsmith_index_u32(var_0.d, 19u)])))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), -1000f, global2[_wgslsmith_index_u32(1u, 19u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec2_u32(var_0.a, ~var_0.a) << (var_0.b.a % 32u)), ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, var_0.a.x), ~var_0.a.x), 0u, var_0.a.x));
}

