struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<u32, 13> = array<u32, 13>(41417u, 1983u, 1u, 9520u, 47072u, 4294967295u, 11154u, 1u, 1u, 9548u, 37949u, 0u, 36344u);

var<private> global3: array<u32, 10> = array<u32, 10>(0u, 4294967295u, 2963u, 38558u, 0u, 1u, 0u, 33397u, 4294967295u, 84300u);

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    var var_0 = true;
    global1 = array<Struct_2, 31>();
    var var_1 = Struct_5(select(!select(select(vec3<bool>(arg_0.a.x, arg_0.c, false), arg_0.a.zyz, arg_0.a.x), select(vec3<bool>(true, arg_0.c, true), vec3<bool>(arg_0.c, arg_0.c, true), false), true), select(!(!vec3<bool>(arg_0.a.x, arg_0.d, arg_0.d)), select(arg_0.a.yzx, !vec3<bool>(false, false, arg_0.c), select(arg_0.a.www, vec3<bool>(true, arg_0.c, true), arg_0.c)), all(arg_0.a)), !(!(!arg_0.a.wzy))));
    var var_2 = 38701u;
    var var_3 = global1[_wgslsmith_index_u32(~4294967295u, 31u)];
    return 0u;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_mult_u32(u_input.a | abs(_wgslsmith_dot_vec3_u32(u_input.d.xxz, vec3<u32>(global3[_wgslsmith_index_u32(arg_1, 10u)], global2[_wgslsmith_index_u32(68939u, 13u)], 4294967295u)) ^ global4.x), global2[_wgslsmith_index_u32(0u, 13u)]);
    return _wgslsmith_dot_vec4_u32(u_input.d, ~(~vec4<u32>(69316u, func_2(arg_2.b, vec3<f32>(160f, -1095f, -711f), global3[_wgslsmith_index_u32(4294967295u, 10u)]), abs(4294967295u), 65810u)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_2(Struct_1(vec4<bool>(true, arg_0.x, false, true), 910f, false, arg_0.x), vec3<f32>(1000f, 439f, -1851f), _wgslsmith_mod_u32(global4.x, 0u)), 68830u), _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global4.x, 10u)] ^ global4.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(51051u, 4294967295u), _wgslsmith_div_u32(global4.x, 4294967295u)))), 10u)], 10u)];
    global1 = array<Struct_2, 31>();
    var var_1 = -2147483647i >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(~global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 10u)], global3[_wgslsmith_index_u32(global4.x, 10u)], func_3(774f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47329u, 10u)], 13u)], Struct_2(Struct_1(arg_0, 225f, false, arg_0.x), Struct_1(arg_0, -191f, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), Struct_1(vec4<bool>(false, arg_0.x, true, arg_0.x), -1279f, false, arg_0.x), vec3<u32>(u_input.c.x, global3[_wgslsmith_index_u32(global4.x, 10u)], 39140u)), global4.yz)), ~_wgslsmith_mult_vec3_u32(u_input.d.xwx, vec3<u32>(u_input.c.x, u_input.a, u_input.d.x))) % 32u);
    var var_2 = -global0.x;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(192f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(356f * _wgslsmith_f_op_f32(-1441f + _wgslsmith_f_op_f32(select(283f, -320f, true))))));
    return Struct_1(!vec4<bool>(~global3[_wgslsmith_index_u32(global4.x, 10u)] > (global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], 10u)], 13u)], 10u)] & u_input.c.x), arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x)), true), _wgslsmith_f_op_f32(ceil(-205f)), arg_0.x, arg_0.x);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, ~(abs(56826u) >> (_wgslsmith_mult_u32(u_input.a, 1u) % 32u)), 1u), u_input.d);
    let var_1 = Struct_5(select(select(!arg_3.d.a.xzy, !arg_3.b.a.wxw, arg_3.b.a.wwy), vec3<bool>(arg_3.c.x, !arg_3.c.x, all(arg_3.d.a)), func_1(arg_3.d.a).a.xww));
    global2 = array<u32, 13>();
    var var_2 = -global0.x;
    let var_3 = arg_3.e;
    return Struct_1(!arg_3.b.a, -862f, !arg_3.c.x, (~23243u != ~select(var_0.x, 16174u, true)) || any(vec3<bool>(func_1(vec4<bool>(false, arg_3.b.d, var_1.a.x, true)).c, var_1.a.x, all(arg_3.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(741f - _wgslsmith_f_op_f32(max(158f, 1014f))))), u_input.e, abs(1i), Struct_2(func_1(vec4<bool>(true, false, false, true)), func_1(func_1(vec4<bool>(false, false, true, false)).a), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_1(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), _wgslsmith_f_op_f32(-688f * -598f), true, true), u_input.d.yxx)), Struct_1(vec4<bool>(!(u_input.e < global0.x), true, true, select(any(vec4<bool>(true, true, false, false)), true, false)), _wgslsmith_f_op_f32(f32(-1f) * -873f), func_4(2346f, ~1i, u_input.e, Struct_2(Struct_1(vec4<bool>(false, true, false, false), -1000f, false, false), Struct_1(vec4<bool>(true, false, true, false), -1289f, true, false), vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, false, false, false), -552f, false, false), reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(6066u, 10u)], global2[_wgslsmith_index_u32(u_input.a, 13u)], 39291u)))).d, false), func_1(!vec4<bool>(false, true, true, any(vec2<bool>(true, false)))).a.yww, Struct_1(func_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))).a, _wgslsmith_f_op_f32(f32(-1f) * -1334f), true, select(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 45602i), global0.wx), -45945i, any(vec2<bool>(true, true))) <= ~(-u_input.e)), ~max(vec3<u32>(global4.x | global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 13u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44090u, 13u)], 13u)], 1u), ~u_input.d.yyx | firstLeadingBit(u_input.d.wwz)));
    var var_1 = Struct_3(-u_input.e, vec2<i32>(-13136i, global0.x), _wgslsmith_div_i32(u_input.b, ~(~(8681i >> (var_0.e.x % 32u)))));
    let var_2 = -select(var_1.b, var_1.b, !all(var_0.d.a));
    global1 = array<Struct_2, 31>();
    var var_3 = ~select(var_0.e, _wgslsmith_add_vec3_u32(var_0.e, u_input.d.zyz ^ ~var_0.e), !(31794u >= u_input.d.x));
    let var_4 = var_0.b.a;
    var_1 = Struct_3(_wgslsmith_clamp_i32(-var_2.x, 0i, reverseBits(var_1.a)), _wgslsmith_add_vec2_i32(select(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, var_1.c), firstLeadingBit(var_2)), var_2, func_4(_wgslsmith_f_op_f32(ceil(var_0.b.b)), var_1.c >> (global3[_wgslsmith_index_u32(global4.x, 10u)] % 32u), i32(-1i) * -2147483647i, var_0).d), firstTrailingBit(global0.zw | _wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, -27962i), vec2<i32>(25689i, var_1.c)))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_add_u32(1u, ~741u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(518f, var_0.d.b) - vec2<f32>(var_0.d.b, -1072f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, var_0.b.b)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-576f, -575f), vec2<f32>(-832f, var_0.b.b))))))));
}

