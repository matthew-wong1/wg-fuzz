struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-318f, -295f, 202f, 242f));

var<private> global2: array<Struct_4, 13>;

var<private> global3: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(4294967295u, 3955u, 0u, 67776u), vec4<u32>(17342u, 0u, 54540u, 87090u), vec4<u32>(1u, 8397u, 4294967295u, 12207u), vec4<u32>(4294967295u, 3650u, 101541u, 1u), vec4<u32>(0u, 1u, 15338u, 0u), vec4<u32>(70150u, 37590u, 4294967295u, 68889u), vec4<u32>(124400u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 14655u, 146476u, 81502u), vec4<u32>(1u, 0u, 4294967295u, 24942u), vec4<u32>(2848u, 9899u, 8302u, 94869u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(0u, 19401u, 65211u, 1u), vec4<u32>(66630u, 29369u, 1u, 0u), vec4<u32>(97647u, 117281u, 10419u, 45928u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.x + global0[_wgslsmith_index_u32(0u, 12u)]))))))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(arg_3.c, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(arg_3.c.a, _wgslsmith_f_op_vec4_f32(floor(global1.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, -314f, arg_3.b.x, arg_3.b.x))))), ~(arg_3.a >> (1u % 32u)));
    var var_1 = arg_0;
    global2 = array<Struct_4, 13>();
    global0 = array<f32, 12>();
    global1 = arg_3.c;
    return arg_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = func_2(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(arg_0.xww, vec3<u32>(arg_3, arg_0.x, arg_0.x)) << (firstLeadingBit(arg_0.x) % 32u)), 12u)]), Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_1.c), vec3<i32>(u_input.a.x, arg_1.c, 2147483647i)) & (u_input.a.x & u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, 0u), 12u)])), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(151857u, 12u)], arg_2.b.x) * 137f), 1015f), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.c.a, vec4<f32>(-629f, global0[_wgslsmith_index_u32(36308u, 12u)], global0[_wgslsmith_index_u32(40140u, 12u)], global0[_wgslsmith_index_u32(arg_0.x, 12u)]))))));
    let var_1 = select(vec4<bool>(false, _wgslsmith_add_u32(4294967295u, arg_3) > _wgslsmith_add_u32(0u, ~56925u), false, true), vec4<bool>((~(-2147483647i) << (_wgslsmith_clamp_u32(arg_3, arg_0.x, arg_0.x) % 32u)) > max(2147483647i, -arg_1.c), all(vec2<bool>(true, true)), (~(-1i) & select(var_0.c, var_0.c, true)) < _wgslsmith_sub_i32(-17025i, -1i), true), vec4<bool>(2147483647i == _wgslsmith_add_i32(var_0.c, arg_2.a), false, false, all(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true))));
    global3 = array<vec4<u32>, 15>();
    global2 = array<Struct_4, 13>();
    global3 = array<vec4<u32>, 15>();
    return !any(!(!vec2<bool>(true, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1673f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(1000f + global1.a.x)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 12u)] * 725f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global1.a.x))), global0[_wgslsmith_index_u32(select(1u << (firstTrailingBit(16699u) % 32u), abs(0u), func_3(~global3[_wgslsmith_index_u32(34734u, 15u)], func_2(Struct_2(Struct_1(vec4<f32>(global1.a.x, -1323f, global1.a.x, global0[_wgslsmith_index_u32(0u, 12u)])), Struct_1(global1.a), u_input.a.x), global1.a.x, global0[_wgslsmith_index_u32(0u, 12u)], Struct_3(u_input.a.x, global1.a, Struct_1(vec4<f32>(414f, 1008f, 534f, 1360f)))), Struct_3(u_input.b.x, vec4<f32>(-587f, global1.a.x, 1783f, global0[_wgslsmith_index_u32(1u, 12u)]), Struct_1(vec4<f32>(global1.a.x, global1.a.x, -677f, global0[_wgslsmith_index_u32(0u, 12u)]))), ~1u)), 12u)]));
    global0 = array<f32, 12>();
    global2 = array<Struct_4, 13>();
    global3 = array<vec4<u32>, 15>();
    var var_0 = Struct_2(func_2(func_2(func_2(func_2(Struct_2(Struct_1(vec4<f32>(-2006f, global1.a.x, 365f, -898f)), Struct_1(vec4<f32>(global1.a.x, 1798f, global0[_wgslsmith_index_u32(1u, 12u)], -625f)), -1i), 1000f, -883f, Struct_3(1024i, vec4<f32>(635f, 657f, -1319f, 208f), Struct_1(global1.a))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 12u)], global1.a.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_3(-36472i, global1.a, Struct_1(vec4<f32>(global1.a.x, -821f, global0[_wgslsmith_index_u32(1u, 12u)], global1.a.x)))), -148f, global1.a.x, Struct_3(~2147483647i, global1.a, func_2(Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(63645u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], 386f, -2367f)), Struct_1(global1.a), 2147483647i), -1898f, global1.a.x, Struct_3(u_input.b.x, vec4<f32>(-144f, 1239f, global0[_wgslsmith_index_u32(32312u, 12u)], 343f), Struct_1(global1.a))).b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 12u)]) * _wgslsmith_f_op_f32(abs(658f)))), global1.a.x, Struct_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, global0[_wgslsmith_index_u32(1u, 12u)], global1.a.x, -750f)), func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(vec4<f32>(global1.a.x, global0[_wgslsmith_index_u32(7198u, 12u)], global1.a.x, -984f)), -1927i), 1219f, 964f, Struct_3(u_input.c, global1.a, Struct_1(vec4<f32>(1744f, 583f, -141f, -227f)))), -364f, global0[_wgslsmith_index_u32(firstTrailingBit(37835u), 12u)], Struct_3(u_input.c, global1.a, Struct_1(vec4<f32>(592f, global0[_wgslsmith_index_u32(38448u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], -581f)))).b)).b, func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(global1.a), -2147483647i), -893f, 513f, Struct_3(1i, global1.a, Struct_1(vec4<f32>(542f, -1000f, 749f, 1150f)))), -1000f, global0[_wgslsmith_index_u32(24673u, 12u)], Struct_3(-1i, global1.a, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(11331u, 12u)], -647f, -150f)))).a, func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(vec4<f32>(global1.a.x, 1074f, global0[_wgslsmith_index_u32(38266u, 12u)], global1.a.x)), u_input.c), global1.a.x, global1.a.x, Struct_3(1i, vec4<f32>(global1.a.x, 325f, 1062f, global1.a.x), Struct_1(global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_div_f32(-3923f, global1.a.x), Struct_3(26262i, global1.a, Struct_1(global1.a))).a, -1i), global0[_wgslsmith_index_u32(~abs(1u), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-796f * global1.a.x))), Struct_3(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(max(161f, global0[_wgslsmith_index_u32(101667u, 12u)])), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 12u)])), global1.a.x, -601f), func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(vec4<f32>(-696f, global1.a.x, global1.a.x, 1235f)), -28626i), -1196f, -250f, Struct_3(2147483647i, global1.a, Struct_1(vec4<f32>(-253f, 968f, -953f, global0[_wgslsmith_index_u32(6233u, 12u)])))), _wgslsmith_f_op_f32(floor(-1069f)), -585f, Struct_3(u_input.b.x, vec4<f32>(623f, 604f, 114f, global1.a.x), Struct_1(vec4<f32>(1296f, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], -796f)))).b)).a, (~(-u_input.c) | 2147483647i) << (~(~(~78650u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~57313u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(0u, 15u)], vec4<u32>(1926u, 3826u, 4294967295u, 4294967295u)), global3[_wgslsmith_index_u32(firstTrailingBit(3275u), 15u)]), max(vec4<u32>(62829u, 1u, 25492u, 0u) | global3[_wgslsmith_index_u32(0u, 15u)], ~vec4<u32>(1u, 4294967295u, 26232u, 1u)))), -8967i, ~(~_wgslsmith_clamp_u32(52730u, _wgslsmith_mult_u32(1u, 4294967295u), 45595u)));
}

