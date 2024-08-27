struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool>;

var<private> global3: array<f32, 10>;

var<private> global4: array<vec4<bool>, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = u_input.a;
    var var_1 = arg_2.c;
    let var_2 = _wgslsmith_clamp_i32(global1.c, arg_2.d.c << (countOneBits(_wgslsmith_add_u32(global1.b, 13902u) ^ ~0u) % 32u), -1i);
    let var_3 = !(!(!(!select(arg_1.b.zy, arg_2.a, true))));
    var var_4 = ~_wgslsmith_dot_vec3_u32(arg_1.e, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, _wgslsmith_div_vec2_u32(u_input.b.zx, arg_1.e.zy)), 5191u, abs(firstLeadingBit(6642u))));
    return reverseBits(_wgslsmith_div_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.e.x, arg_0, -30265i, 0i), vec4<i32>(-1i, arg_0, -2147483647i, var_0), vec4<i32>(arg_1.c.b.x, -1i, -1i, 0i)), vec4<i32>(arg_1.a, 59135i, -10821i, arg_2.b.x), vec4<bool>(var_3.x, true, true, var_3.x)), firstLeadingBit(-vec4<i32>(var_1.e.x, var_2, arg_1.a, -2147483647i))) << (~((vec4<u32>(arg_2.d.b, arg_1.c.d.b, u_input.c, arg_2.c.b) | vec4<u32>(arg_2.d.a, 93721u, arg_2.d.b, 1u)) & (vec4<u32>(59531u, 65278u, 1u, arg_1.e.x) | vec4<u32>(var_1.b, var_1.a, 5756u, u_input.d))) % vec4<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_u32(u_input.b.zy, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(arg_2, ~8933u)), u_input.b.xx), vec2<u32>(arg_1.d.b, 4294967295u));
    var var_1 = Struct_3(-global1.c, !vec3<bool>(_wgslsmith_f_op_f32(floor(-1721f)) != 1718f, !(!arg_1.c.d), all(select(vec3<bool>(false, true, global1.d), vec3<bool>(arg_1.c.d, global2.x, arg_1.d.d), vec3<bool>(arg_1.d.d, global2.x, global2.x)))), Struct_2(arg_1.a, vec2<i32>(min(4558i, global1.e.x) << (var_0.x % 32u), _wgslsmith_dot_vec4_i32(-global1.e, _wgslsmith_add_vec4_i32(global1.e, vec4<i32>(global1.e.x, -12124i, 2147483647i, -32242i)))), Struct_1(_wgslsmith_add_u32(reverseBits(4294967295u), abs(global1.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.b, arg_2, global1.a), vec4<u32>(4294967295u, 5604u, var_0.x, 1u)) << (1u % 32u), _wgslsmith_div_i32(arg_1.b.x << (1u % 32u), -3781i), true, firstTrailingBit(func_3(global1.c, Struct_3(-2147483647i, vec3<bool>(true, global1.d, global2.x), arg_1, vec2<f32>(-362f, 780f), u_input.b), arg_1))), arg_1.c), vec2<f32>(2719f, _wgslsmith_f_op_f32(min(arg_0, arg_0))), min(vec3<u32>(select(~50511u, _wgslsmith_div_u32(arg_1.d.a, var_0.x), global2.x), countOneBits(~6712u), arg_2), u_input.b));
    var_1 = Struct_3(~max(u_input.a, 29189i), vec3<bool>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(u_input.c, var_1.e.x)) != ~arg_1.d.b, var_1.b.x, false), arg_1, vec2<f32>(arg_0, arg_0), max(var_1.e, vec3<u32>(0u, 41282u, abs(max(var_0.x, 0u)))));
    var var_2 = Struct_3(-((firstLeadingBit(global1.e.x) << (_wgslsmith_div_u32(u_input.d, 4294967295u) % 32u)) & (2147483647i >> (_wgslsmith_div_u32(arg_2, global1.a) % 32u))), !(!(!select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, global1.d), vec3<bool>(false, arg_1.c.d, true)))), Struct_2(!select(vec2<bool>(true, arg_1.d.d), !var_1.c.a, select(vec2<bool>(global2.x, global2.x), vec2<bool>(arg_1.a.x, global2.x), arg_1.a)), ~global1.e.wy & vec2<i32>(1i, ~var_1.a), Struct_1(_wgslsmith_div_u32(~4294967295u, countOneBits(34002u)), ~global1.b, var_1.c.c.e.x, all(var_1.c.a) || !global1.d, var_1.c.d.e), arg_1.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-890f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d.x)) + _wgslsmith_f_op_f32(arg_0 + 608f))), _wgslsmith_div_vec2_f32(var_1.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-459f, global3[_wgslsmith_index_u32(0u, 10u)]) + vec2<f32>(1392f, 1098f))))), var_1.b.xy)), ~firstLeadingBit(~u_input.b));
    global0 = array<Struct_3, 15>();
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global3 = array<f32, 10>();
    let var_0 = -reverseBits(-31420i);
    global0 = array<Struct_3, 15>();
    global3 = array<f32, 10>();
    global4 = array<vec4<bool>, 21>();
    return true;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec3<f32> {
    var var_0 = select(!(!(!vec2<bool>(true, arg_2.x))), vec2<bool>(!func_4(func_2(-895f, Struct_2(vec2<bool>(false, global2.x), arg_1, Struct_1(0u, 1u, 2147483647i, global2.x, vec4<i32>(arg_1.x, 14924i, u_input.a, 21726i)), Struct_1(4294967295u, 41291u, global1.c, true, vec4<i32>(1i, u_input.a, u_input.a, global1.c))), 27010u), func_2(global3[_wgslsmith_index_u32(u_input.c, 10u)], Struct_2(vec2<bool>(global2.x, true), vec2<i32>(arg_1.x, 2362i), Struct_1(62736u, 1u, -39769i, arg_0, global1.e), Struct_1(global1.a, 84397u, global1.c, global1.d, global1.e)), u_input.b.x).d), !global2.x), false);
    let var_1 = 0u;
    var var_2 = any(arg_2);
    let var_3 = global3[_wgslsmith_index_u32(u_input.b.x, 10u)];
    var var_4 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(select(2384f, 450f, global1.d)), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(0u, 10u)]))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1776f, global3[_wgslsmith_index_u32(25035u, 10u)], 107f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - 428f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1585u, 10u)]), _wgslsmith_f_op_f32(floor(275f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(39962u, 10u)], -2117f, global3[_wgslsmith_index_u32(4294967295u, 10u)]))))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), 113f, _wgslsmith_f_op_f32(-712f - global3[_wgslsmith_index_u32(42265u, 10u)])), vec3<f32>(1265f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 10u)]), global3[_wgslsmith_index_u32(global1.b, 10u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global1.b, 10u)], 298f, global3[_wgslsmith_index_u32(u_input.c, 10u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(45340u, 10u)], -729f, global3[_wgslsmith_index_u32(u_input.d, 10u)]) + vec3<f32>(global3[_wgslsmith_index_u32(global1.a, 10u)], 266f, -218f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 10>();
    global0 = array<Struct_3, 15>();
    var var_0 = Struct_1(~global1.a, 18970u, countOneBits(~1i), !global2.x == select(!global2.x, true, !global2.x), vec4<i32>(~((2147483647i ^ u_input.a) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global1.c, -18344i), vec3<i32>(24571i, global1.e.x, global1.e.x))), abs(u_input.a), u_input.a, select(global1.e.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, global1.e.x, global1.e.x, global1.e.x), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 0i, 0i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-1377f, -347f), 1142f, _wgslsmith_f_op_f32(430f + global3[_wgslsmith_index_u32(u_input.b.x, 10u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(15855u, 10u)], global3[_wgslsmith_index_u32(749u, 10u)])))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global1.d, firstLeadingBit(vec2<i32>(0i, -18210i)) >> (u_input.b.zz % vec2<u32>(32u)), vec3<bool>(all(vec3<bool>(global1.d, global2.x, false)), all(vec3<bool>(global2.x, global2.x, var_0.d)), var_0.d)))));
    var var_2 = select(vec3<bool>(true, _wgslsmith_sub_i32(~u_input.a, -u_input.a) != -(~(-181i)), !(!global1.d)), select(select(!(!vec3<bool>(false, global1.d, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, false)), vec3<bool>(global1.d, true, true), vec3<bool>(false, false, false)), true), select(!(!vec3<bool>(true, global2.x, false)), select(!vec3<bool>(var_0.d, global1.d, var_0.d), !vec3<bool>(true, true, var_0.d), !vec3<bool>(true, false, global1.d)), select(select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(false, false, false), vec3<bool>(global1.d, var_0.d, true)), !vec3<bool>(global1.d, var_0.d, var_0.d), global2.x)), true), select(!vec3<bool>(true, global1.d, var_0.d), !vec3<bool>(true, global2.x, true), false));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_div_f32(652f, var_1.x))), global3[_wgslsmith_index_u32(~90500u, 10u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(374f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(!global2.x, min(vec2<i32>(7477i, var_0.e.x), vec2<i32>(-14906i, var_0.e.x)), select(vec3<bool>(false, var_0.d, true), vec3<bool>(false, global1.d, false), global1.d))).x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-524f, -773f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(404f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(select(16563u, var_0.a, var_0.d), ~global1.b, -3507f == var_1.x), 10u)]))));
}

