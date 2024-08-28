struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 6>;

var<private> global2: array<vec2<i32>, 25>;

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, -17932i, 1i, -41633i);

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(30221u, vec3<bool>(false, false, false), 2370i, vec2<u32>(31418u, 4294967295u), -181f), Struct_1(47585u, vec3<bool>(true, false, false), -16427i, vec2<u32>(50565u, 27333u), -606f), Struct_1(9359u, vec3<bool>(true, false, false), 1i, vec2<u32>(5292u, 1u), 1378f), Struct_1(0u, vec3<bool>(false, false, false), 11876i, vec2<u32>(926u, 37609u), 1000f), Struct_1(1u, vec3<bool>(true, false, true), 1i, vec2<u32>(49000u, 4294967295u), -1388f), Struct_1(8986u, vec3<bool>(true, true, true), 0i, vec2<u32>(43020u, 37701u), -1543f), Struct_1(0u, vec3<bool>(false, false, true), 41573i, vec2<u32>(4294967295u, 0u), 245f), Struct_1(30273u, vec3<bool>(true, false, true), 0i, vec2<u32>(16104u, 31957u), -481f), Struct_1(4294967295u, vec3<bool>(true, true, true), 28659i, vec2<u32>(0u, 23644u), -592f), Struct_1(4294967295u, vec3<bool>(false, false, false), -15394i, vec2<u32>(1u, 93171u), 156f), Struct_1(41854u, vec3<bool>(false, true, false), 0i, vec2<u32>(20590u, 4294967295u), 474f), Struct_1(7622u, vec3<bool>(true, true, false), 2147483647i, vec2<u32>(1u, 0u), 1056f), Struct_1(56610u, vec3<bool>(true, true, false), 4441i, vec2<u32>(4294967295u, 4294967295u), 562f), Struct_1(0u, vec3<bool>(false, false, false), -1i, vec2<u32>(38803u, 1u), -741f), Struct_1(112961u, vec3<bool>(false, false, false), -1i, vec2<u32>(2284u, 1u), -599f), Struct_1(0u, vec3<bool>(false, true, false), 3981i, vec2<u32>(34899u, 27065u), -1358f), Struct_1(45567u, vec3<bool>(true, false, false), 1i, vec2<u32>(4294967295u, 0u), -1000f), Struct_1(98601u, vec3<bool>(false, true, false), 2147483647i, vec2<u32>(4294967295u, 89000u), -291f), Struct_1(88396u, vec3<bool>(true, true, true), 0i, vec2<u32>(106616u, 1u), 983f), Struct_1(0u, vec3<bool>(false, true, true), 34319i, vec2<u32>(29564u, 21606u), -1355f), Struct_1(21537u, vec3<bool>(true, true, true), 6185i, vec2<u32>(20020u, 23525u), 463f), Struct_1(44073u, vec3<bool>(true, false, false), 0i, vec2<u32>(6925u, 0u), -327f), Struct_1(28884u, vec3<bool>(false, false, false), 17143i, vec2<u32>(16730u, 1u), -117f), Struct_1(37676u, vec3<bool>(true, true, false), 42510i, vec2<u32>(5042u, 4294967295u), -350f), Struct_1(4294967295u, vec3<bool>(true, true, false), 2147483647i, vec2<u32>(13053u, 1u), 349f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> vec4<bool> {
    let var_0 = Struct_3(abs(u_input.a.x), !select(true, all(select(vec2<bool>(true, false), arg_1.d.b.xz, true)), -68149i < _wgslsmith_sub_i32(arg_0.c, global3.x)), !(!(!select(vec4<bool>(true, false, arg_1.b, true), vec4<bool>(arg_1.d.b.x, true, arg_0.b.x, true), vec4<bool>(false, arg_1.b, true, arg_1.b)))), (~arg_1.d.a << (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, arg_0.a), countOneBits(arg_1.a.a)) % 32u)) ^ max(4294967295u, arg_0.a), _wgslsmith_f_op_f32(sign(-1836f)));
    global1 = array<vec3<u32>, 6>();
    let var_1 = -133f;
    global2 = array<vec2<i32>, 25>();
    let var_2 = Struct_2(Struct_1(71747u, select(vec3<bool>(u_input.e.x >= arg_1.d.c, true, var_0.e > arg_0.e), !var_0.c.ywy, true), 0i, _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c.x, 0u), arg_0.d), _wgslsmith_f_op_f32(-var_0.e)));
    return var_0.c;
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(~(~u_input.b.x), _wgslsmith_sub_u32(1u, u_input.d)), u_input.d);
    var var_1 = 0i;
    var var_2 = select(!select(vec4<bool>(any(vec2<bool>(true, false)), func_2(vec4<f32>(-910f, -218f, 1168f, 1016f)), u_input.d >= u_input.d, true), select(func_3(global4[_wgslsmith_index_u32(2977u, 25u)], Struct_5(global4[_wgslsmith_index_u32(u_input.d, 25u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global4[_wgslsmith_index_u32(u_input.d, 25u)])), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), select(!vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), func_3(Struct_1(1u, vec3<bool>(true, true, false), global3.x & -41811i, abs(u_input.a.zz), _wgslsmith_f_op_f32(floor(1028f))), Struct_5(Struct_1(u_input.b.x, vec3<bool>(true, true, true), u_input.e.x, vec2<u32>(u_input.b.x, u_input.b.x), 1235f), true, global1[_wgslsmith_index_u32(21516u, 6u)] << (u_input.b.yxy % vec3<u32>(32u)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), 25u)]))), !select(vec4<bool>(true, true, func_3(global4[_wgslsmith_index_u32(38063u, 25u)], Struct_5(Struct_1(u_input.d, vec3<bool>(true, false, false), 89522i, u_input.b.zx, -843f), false, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], Struct_1(u_input.a.x, vec3<bool>(false, false, false), 0i, vec2<u32>(u_input.d, 49843u), 127f))).x, true), func_3(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], vec3<u32>(u_input.b.x, 0u, 1u)), 25u)], Struct_5(Struct_1(4294967295u, vec3<bool>(true, false, true), global3.x, vec2<u32>(0u, u_input.d), -216f), false, vec3<u32>(43066u, 1u, 64963u), global4[_wgslsmith_index_u32(u_input.a.x, 25u)])), vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1312f, 1278f)) * -919f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1019f + -882f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-457f - _wgslsmith_div_f32(1009f, 321f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1014f * -2104f), _wgslsmith_f_op_f32(207f * 420f)))))));
    global4 = array<Struct_1, 25>();
    return select(!select(!func_3(global4[_wgslsmith_index_u32(u_input.d, 25u)], Struct_5(global4[_wgslsmith_index_u32(u_input.d, 25u)], false, vec3<u32>(u_input.b.x, u_input.a.x, 0u), global4[_wgslsmith_index_u32(u_input.d, 25u)])), select(!vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, true, true), !vec4<bool>(var_2.x, true, false, true)), !(2147483647i > global3.x)), select(vec4<bool>(true, !(u_input.b.x >= 67218u), all(vec4<bool>(false, var_2.x, true, false)), all(!vec4<bool>(var_2.x, var_2.x, var_2.x, false))), vec4<bool>(var_2.x, any(!vec2<bool>(var_2.x, false)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, var_3, -433f) * vec4<f32>(-468f, var_3, -993f, var_3))), var_2.x || var_2.x), vec4<bool>(func_2(vec4<f32>(var_3, var_3, var_3, var_3)), !any(vec4<bool>(var_2.x, false, false, var_2.x)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, var_3, var_3, 1302f) + vec4<f32>(var_3, 131f, var_3, -316f))), var_2.x || true)), !select(!(!vec4<bool>(false, true, var_2.x, false)), vec4<bool>(false && var_2.x, true, any(vec4<bool>(true, true, true, false)), !var_2.x), !func_3(global4[_wgslsmith_index_u32(u_input.b.x, 25u)], Struct_5(global4[_wgslsmith_index_u32(0u, 25u)], true, vec3<u32>(15598u, u_input.a.x, 1976u), global4[_wgslsmith_index_u32(41966u, 25u)])).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = select(func_1(), vec4<bool>(false, true, true, true), false);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)))));
    let var_3 = vec4<u32>(~u_input.b.x, firstLeadingBit(0u), abs(~4294967295u), _wgslsmith_clamp_u32(u_input.d, _wgslsmith_add_u32(~max(12596u, var_0.x), 1u), 1u));
    let var_4 = Struct_5(Struct_1(_wgslsmith_add_u32(var_0.x << (~var_3.x % 32u), _wgslsmith_dot_vec3_u32(var_3.xwx, var_0.zwz)), func_3(global4[_wgslsmith_index_u32(u_input.b.x, 25u)], Struct_5(Struct_1(58824u, var_1.zwy, u_input.e.x, vec2<u32>(var_3.x, var_3.x), var_2), var_1.x, vec3<u32>(var_3.x, 0u, var_3.x) | vec3<u32>(0u, u_input.b.x, var_0.x), Struct_1(u_input.d, vec3<bool>(true, false, var_1.x), -2147483647i, vec2<u32>(689u, var_0.x), 2229f))).xwz, ~(-2147483647i), ~(_wgslsmith_div_vec2_u32(var_3.xw, vec2<u32>(u_input.a.x, u_input.d)) ^ countOneBits(vec2<u32>(3222u, var_3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1227f + _wgslsmith_f_op_f32(-611f * var_2)), -1270f)), !var_1.x, vec3<u32>(var_0.x, var_0.x, ~48616u), Struct_1(~_wgslsmith_sub_u32(u_input.d, 50214u), var_1.xyx, u_input.e.x, var_3.wy, 1604f));
    global0 = firstTrailingBit(_wgslsmith_sub_u32(max(var_3.x, 0u), ~1u));
    let var_5 = Struct_5(Struct_1(min(24990u, 4294967295u), !vec3<bool>(true, true, global3.x == -2147483647i), var_4.d.c, _wgslsmith_clamp_vec2_u32(abs(max(vec2<u32>(4294967295u, 4294967295u), var_4.a.d)), ~(~var_3.zy), vec2<u32>(~u_input.a.x, 1u)), _wgslsmith_f_op_f32(select(var_4.d.e, 1618f, any(func_1().zww)))), false, global1[_wgslsmith_index_u32(0u, 6u)], global4[_wgslsmith_index_u32(var_4.d.d.x, 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(var_5.c.x, ~var_5.d.a)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_3.x, 1u, var_0.x), vec3<u32>(44349u, var_0.x, 4294967295u) << (var_0.xzw % vec3<u32>(32u))), global1[_wgslsmith_index_u32(16600u, 6u)]));
}

