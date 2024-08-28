struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: array<bool, 15>;

var<private> global3: array<f32, 11> = array<f32, 11>(-607f, -212f, 205f, 151f, 360f, -554f, 633f, -760f, -2378f, -361f, -974f);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-125f, 2036f, 837f, global3[_wgslsmith_index_u32(u_input.c, 11u)]), vec4<f32>(-1733f, global3[_wgslsmith_index_u32(71777u, 11u)], -523f, 419f)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -610f))), 2128f, -284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(12451u, 11u)] * global3[_wgslsmith_index_u32(u_input.c, 11u)]) * _wgslsmith_f_op_f32(floor(444f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)));
}

fn func_2() -> f32 {
    global0 = array<u32, 29>();
    var var_0 = Struct_1(!global2[_wgslsmith_index_u32(~reverseBits(~26109u), 15u)]);
    let var_1 = -_wgslsmith_add_vec4_i32(~vec4<i32>(0i, u_input.a.x, u_input.a.x, firstTrailingBit(-44672i)), u_input.d);
    global2 = array<bool, 15>();
    global1 = array<vec4<u32>, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, vec2<bool>(var_0.a, var_1.x == _wgslsmith_dot_vec2_i32(var_1.zw, u_input.b.zz)))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global3 = array<f32, 11>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(abs(-934f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 11u)], arg_0.a, arg_0.a)) - vec3<f32>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 11u)], -857f)))) - vec3<f32>(_wgslsmith_f_op_f32(func_2()), global3[_wgslsmith_index_u32(~countOneBits(75355u), 11u)], -584f))));
    var var_3 = 436f;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_2 {
    global4 = func_1(Struct_2(-1155f, arg_0, Struct_1(!any(vec2<bool>(arg_0.a, true)))), _wgslsmith_mult_i32(-39534i, 4818i), func_1(Struct_2(global3[_wgslsmith_index_u32(abs(arg_3), 11u)], Struct_1(arg_2 <= arg_2), func_1(Struct_2(arg_2, arg_0, arg_0), u_input.b.x, arg_0)), 35173i, arg_0));
    let var_0 = abs(select(global1[_wgslsmith_index_u32(~1u & _wgslsmith_mod_u32(u_input.c, 17953u), 23u)], global1[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(0u, 29u)] & 1u), 23u)], !(!vec4<bool>(global2[_wgslsmith_index_u32(45157u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], true, arg_1)))) << ((global1[_wgslsmith_index_u32(~1u, 23u)] >> (~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3, 29u)], 29u)], 23u)] << (global1[_wgslsmith_index_u32(32288u, 23u)] % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = array<vec4<u32>, 23>();
    global3 = array<f32, 11>();
    var var_1 = select(select(!vec4<bool>(all(vec2<bool>(true, arg_1)), global4.a, !arg_1, false), !vec4<bool>(true, global4.a == false, arg_0.a | arg_1, func_1(Struct_2(641f, arg_0, arg_0), -2147483647i, Struct_1(arg_0.a)).a), true), vec4<bool>(select(_wgslsmith_mod_u32(0u, 1u) != ~var_0.x, !func_1(Struct_2(global3[_wgslsmith_index_u32(1u, 11u)], Struct_1(true), Struct_1(false)), 18555i, Struct_1(false)).a, !(!arg_0.a)), true, all(!vec2<bool>(global2[_wgslsmith_index_u32(4197u, 15u)], false)), global2[_wgslsmith_index_u32(~(~106097u), 15u)]), select(vec4<bool>(false, ~(-34999i) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 35628i, u_input.a.x), vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x)), false, select(0u != u_input.c, u_input.b.x > 2147483647i, global4.a)), vec4<bool>(global4.a, !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(59588u, 1u, true), 29u)], 15u)], all(!vec4<bool>(false, global4.a, global4.a, true)), arg_2 == _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_f32(arg_2 - 1488f) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_2))))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(~4294967295u, 11u)])) + _wgslsmith_f_op_f32(max(352f, global3[_wgslsmith_index_u32(~arg_3, 11u)]))), Struct_1(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(countOneBits(26185u)), 29u)], 15u)]), arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1141f, arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 11u)]))), global3[_wgslsmith_index_u32(countOneBits(u_input.c << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)] % 32u)), 11u)])));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(true, vec2<bool>(true, true))), 3067f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))) - vec3<f32>(-896f, 353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, vec2<bool>(false, global4.a))) + 1389f)))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.c, 15u)];
    global1 = array<vec4<u32>, 23>();
    var var_2 = -944f;
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>) -> Struct_2 {
    global1 = array<vec4<u32>, 23>();
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-307f, _wgslsmith_div_f32(arg_0.a, -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 11u)])))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 263f, -1077f))))), !vec3<bool>(true, 1i == u_input.a.x, !arg_0.c.a))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_1, 518f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, 215f, 543f) + vec3<f32>(2079f, 261f, global3[_wgslsmith_index_u32(7043u, 11u)]))) + vec3<f32>(-202f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 29u)], 29u)], 11u)]), _wgslsmith_div_f32(arg_0.a, 792f))))));
    global1 = array<vec4<u32>, 23>();
    let var_2 = true;
    return func_4(arg_0.c, false, arg_1, var_0 ^ _wgslsmith_sub_u32(~3372u, _wgslsmith_div_u32(u_input.c, global0[_wgslsmith_index_u32(19335u, 29u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(func_1(Struct_2(global3[_wgslsmith_index_u32(675u, 11u)], Struct_1(global4.a), Struct_1(global2[_wgslsmith_index_u32(0u, 15u)])), 2147483647i, Struct_1(false)), false, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 11u)] + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 11u)])), ~(~global0[_wgslsmith_index_u32(u_input.c, 29u)])), func_4(func_1(func_4(Struct_1(true), false, global3[_wgslsmith_index_u32(1u, 11u)], 15330u), u_input.a.x, Struct_1(true)), func_4(Struct_1(global2[_wgslsmith_index_u32(1u, 15u)]), global3[_wgslsmith_index_u32(u_input.c, 11u)] <= global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52194u, 29u)], 11u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 11u)] - 261f), _wgslsmith_sub_u32(58786u, global0[_wgslsmith_index_u32(u_input.c, 29u)])).b.a, _wgslsmith_f_op_f32(-1237f * _wgslsmith_f_op_f32(344f + global3[_wgslsmith_index_u32(19500u, 11u)])), _wgslsmith_div_u32(u_input.c, abs(u_input.c)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 11u)]), select(u_input.b.ww, vec2<i32>(40533i & u_input.d.x, u_input.d.x), select(!select(vec2<bool>(true, global4.a), vec2<bool>(global4.a, true), vec2<bool>(false, true)), vec2<bool>(u_input.a.x >= u_input.d.x, false), true)));
    let var_1 = global0[_wgslsmith_index_u32(~(~reverseBits(u_input.c)), 29u)];
    let var_2 = func_6(var_0, -529f, vec2<i32>(abs(u_input.a.x), u_input.d.x));
    let var_3 = vec3<bool>(!all(vec4<bool>(false, var_0.c.a, u_input.d.x > u_input.d.x, any(vec4<bool>(true, var_0.b.a, global4.a, false)))), !global4.a, func_4(Struct_1(true), true & (~4294967295u == ~global0[_wgslsmith_index_u32(4294967295u, 29u)]), var_2.a, 2114u).c.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a, -608f, 1448f, 1000f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-645f, 1564f, global3[_wgslsmith_index_u32(639u, 11u)], -1978f))), vec4<bool>(true, var_0.c.a, var_0.b.a, false))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, var_0.a, _wgslsmith_f_op_f32(-var_0.a), func_6(var_2, 1669f, u_input.b.xw).a)) * vec4<f32>(282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - var_0.a) - 159f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.c, 11u)], var_2.a))), _wgslsmith_f_op_f32(-223f - _wgslsmith_f_op_f32(-var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(vec4<i32>(37962i, 1i, -2147483647i, -2147483647i))), _wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61138u, 29u)], 23u)], vec4<u32>(u_input.c, min(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 29u)], 940u, u_input.c, u_input.c), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 23u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2983u, 29u)], 29u)]), ~1u, _wgslsmith_mult_u32(9179u, u_input.c))));
}

