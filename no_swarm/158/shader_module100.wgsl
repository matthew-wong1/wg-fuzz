struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(25407u, 25897u, 1u, 25344u, 5268u, 37932u, 1u, 4294967295u, 0u, 4294967295u, 88731u, 12476u, 11120u, 0u, 0u, 35352u, 5712u, 28070u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<f32, 27> = array<f32, 27>(-763f, -1528f, -303f, -677f, 509f, 1252f, -140f, 171f, 925f, -699f, 764f, 429f, -669f, -378f, 366f, 2403f, -955f, -1057f, 325f, 246f, -115f, -412f, -321f, 536f, -182f, -112f, -162f);

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global4: array<i32, 6> = array<i32, 6>(i32(-2147483648), 2147483647i, 1306i, i32(-2147483648), 8473i, 2167i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_1 {
    global2 = array<f32, 27>();
    global0 = array<u32, 18>();
    var var_0 = 1099f;
    global3 = !(!vec4<bool>(select(arg_3.x, true, all(vec2<bool>(global3.x, arg_3.x))), global3.x, global3.x, false | (1u == global0[_wgslsmith_index_u32(42954u, 18u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, arg_2.x, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]))) - vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(58968u, 27u)], 1245f), _wgslsmith_f_op_f32(trunc(-1161f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)] * arg_2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(292f - -1000f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 27u)]), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(44995u, 27u)]))) - vec3<f32>(207f, _wgslsmith_f_op_f32(482f + arg_2.x), _wgslsmith_f_op_f32(select(-379f, -493f, true)))))));
    return Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1199f)))), 632f, _wgslsmith_f_op_f32(f32(-1f) * -2141f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    global2 = array<f32, 27>();
    global3 = !select(!select(select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), false), !vec4<bool>(true, global3.x, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(18029i > -arg_1.e, global3.x, global3.x, all(vec4<bool>(global3.x, false, false, false))), vec4<bool>(any(vec3<bool>(true, global3.x, global3.x)) && false, all(!vec4<bool>(global3.x, global3.x, false, global3.x)), true, any(select(vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(true, global3.x, false, true), global3.x))));
    let var_0 = global3.x;
    var var_1 = arg_1;
    global0 = array<u32, 18>();
    return -(2147483647i << (arg_0 % 32u));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(503f, _wgslsmith_f_op_f32(-arg_1.b.x));
    global1 = func_3(global0[_wgslsmith_index_u32(1u, 18u)], Struct_2(func_2((arg_2.e << (arg_1.c.x % 32u)) ^ (arg_2.e << (73039u % 32u)), arg_0.yxy, vec4<f32>(1486f, _wgslsmith_f_op_f32(-1203f * var_0), _wgslsmith_f_op_f32(floor(219f)), arg_3.x), vec2<bool>(global3.x || global3.x, any(vec2<bool>(global3.x, global3.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_2(0i, arg_0.wyy, vec4<f32>(-520f, -483f, arg_2.c, -666f), global3.wz).a * arg_1.a.a)), _wgslsmith_f_op_f32(-1659f - _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(round(1069f)))), arg_2.d, global4[_wgslsmith_index_u32(~73267u, 6u)]));
    var var_1 = Struct_1(arg_2.d.a);
    global2 = array<f32, 27>();
    let var_2 = ~(-63484i);
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> vec4<f32> {
    global1 = ~global4[_wgslsmith_index_u32(u_input.c, 6u)];
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c, 1u), ~2073u)), max(reverseBits(~u_input.b), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, u_input.b.x, 90802u)), u_input.b))) | vec3<u32>(arg_1.x, 4294967295u, 78001u);
    let var_1 = arg_0.b;
    global3 = vec4<bool>(true, !all(select(!vec3<bool>(true, global3.x, global3.x), !vec3<bool>(false, arg_2, global3.x), all(vec3<bool>(true, true, false)))), arg_2, any(!global3.wx));
    var var_2 = vec4<i32>(25239i, -2147483647i, ~arg_0.e, ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e, u_input.a.x, 0i, global4[_wgslsmith_index_u32(arg_1.x, 6u)]), -vec4<i32>(arg_0.e, arg_0.e, 0i, -1i))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -421f, -129f, arg_3.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 27u)]), _wgslsmith_f_op_f32(min(392f, -1133f)), _wgslsmith_f_op_f32(857f + arg_3.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a.x))), -350f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2140f, global2[_wgslsmith_index_u32(var_0.x, 27u)]))))), arg_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 27u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11403u, 18u)], 27u)], global2[_wgslsmith_index_u32(32101u, 27u)], global2[_wgslsmith_index_u32(u_input.c, 27u)]), vec4<f32>(439f, 191f, -474f, 732f))), Struct_3(Struct_1(vec4<f32>(-161f, 1104f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16055u, 18u)], 18u)], 27u)], -823f)), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 169f, 890f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6178u, 18u)], 27u)]), vec4<u32>(7679u, global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], 8559u), Struct_1(vec4<f32>(189f, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]))), Struct_2(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(28064u, 27u)], 1000f, global2[_wgslsmith_index_u32(7426u, 27u)], 668f)), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(74637u, 27u)], 1239f, -538f, -328f)), 783f, Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 27u)], global2[_wgslsmith_index_u32(u_input.c, 27u)], 1132f)), 2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(-199f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10637u, 18u)], 27u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 27u)]), vec3<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34756u, 18u)], 27u)], global2[_wgslsmith_index_u32(1885u, 27u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37989u, 18u)], 27u)]))), vec4<u32>(41575u, 71626u, global0[_wgslsmith_index_u32(47312u, 18u)], 53103u) ^ ~vec4<u32>(19602u, 1u, u_input.b.x, u_input.c), all(select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, false, false, true), true)), Struct_1(func_1(vec4<f32>(-783f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 27u)], 599f, -1250f), Struct_3(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(1u, 27u)], 1029f, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.c, 27u)])), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 1662f, 449f, global2[_wgslsmith_index_u32(1u, 27u)]), vec4<u32>(u_input.c, u_input.b.x, 16221u, 1u), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(0u, 27u)], -185f, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], -967f))), Struct_2(Struct_1(vec4<f32>(1476f, global2[_wgslsmith_index_u32(0u, 27u)], -2900f, global2[_wgslsmith_index_u32(u_input.b.x, 27u)])), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)], -1000f, -689f)), global2[_wgslsmith_index_u32(25612u, 27u)], Struct_1(vec4<f32>(1338f, global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(u_input.c, 27u)], global2[_wgslsmith_index_u32(0u, 27u)])), -18777i), vec3<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)], 18u)], 27u)], 942f, global2[_wgslsmith_index_u32(u_input.b.x, 27u)])).d.a))), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 20643u), 18u)], 27u)] - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 27u)])), 162f, global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 53271u, 4294967295u, 0u), vec4<u32>(43152u, global0[_wgslsmith_index_u32(3261u, 18u)], 1u, 1u))), 27u)], 510f))));
    global3 = vec4<bool>(true, !(~1u >= ~global0[_wgslsmith_index_u32(24616u, 18u)]) && all(global3.yyw), !(_wgslsmith_f_op_f32(-var_0.a.x) > var_0.a.x), global3.x);
    let var_1 = Struct_3(Struct_1(var_0.a), var_0.a, ~firstTrailingBit((vec4<u32>(global0[_wgslsmith_index_u32(20461u, 18u)], 25001u, global0[_wgslsmith_index_u32(1u, 18u)], 0u) & vec4<u32>(86613u, 1u, 51916u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2108u, 18u)], 18u)], 18u)], 18u)])) << (firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 4294967295u, 109541u, 1u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 18u)], 27u)], 1628f, global2[_wgslsmith_index_u32(max(17929u, 56943u), 27u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(6995u, 27u)], var_0.a.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-962f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.c.x, 27u)] * var_0.a.x), _wgslsmith_f_op_f32(max(-115f, -954f)))), 3133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(355f)) - global2[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(var_1.c.x, 18u)]), 27u)]))) * var_0.a);
    let var_3 = _wgslsmith_sub_vec2_i32(u_input.a.zz, ~_wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, global4[_wgslsmith_index_u32(u_input.c, 6u)]), u_input.a.zy), u_input.a.zz));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(var_2 * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) - 1558f), 1194f, _wgslsmith_div_f32(789f, 203f))));
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c.x, 18u)], 27u)])), -1260f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 27u)])), 912f) * var_1.a.a), var_4.a, !(!(!vec4<bool>(global3.x, global3.x, false, global3.x))))));
}

