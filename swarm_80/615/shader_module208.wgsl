struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 1>;

var<private> global2: Struct_2;

var<private> global3: array<vec3<bool>, 11>;

var<private> global4: array<vec4<bool>, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global3 = array<vec3<bool>, 11>();
    global0 = u_input.a;
    global0 = max(u_input.a, ~abs(select(vec3<u32>(u_input.b, global0.x, 12450u), ~vec3<u32>(global0.x, global0.x, global0.x), !global2.b)));
    global3 = array<vec3<bool>, 11>();
    let var_0 = u_input.d.x;
    return ~18701u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(!select(countOneBits(global0.x) >= 100538u, any(select(global2.b.yx, global2.b.xz, global2.b.x)), true), select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a, global2.a, global2.a, 0u), vec4<u32>(u_input.c.x, u_input.b, global0.x, 21214u)), 1u)], global2.b.x, true, any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)])) && true), select(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(88204u, 0u)), 13u)], vec4<bool>(global1[_wgslsmith_index_u32(93u, 1u)] | true, true, global2.b.x, global1[_wgslsmith_index_u32(~0u, 1u)]), select(!global4[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(24382u, 13u)], !global4[_wgslsmith_index_u32(u_input.b, 13u)])), vec4<bool>(true, true, true, true)));
    let var_1 = ~u_input.d.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(-u_input.d.wwx, var_0, _wgslsmith_f_op_f32(f32(-1f) * -1502f)), abs(_wgslsmith_clamp_u32(u_input.b, 41629u, 8817u)), ~global0.x), select(vec3<u32>(64980u | u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(25488u, global0.x, global0.x)), 4294967295u), select(vec3<u32>(96257u, global2.a, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 87397u), u_input.a), select(global3[_wgslsmith_index_u32(global0.x, 11u)], global2.b, vec3<bool>(global2.b.x, true, false))), global1[_wgslsmith_index_u32(11845u, 1u)] & all(var_0.b.xy))) % 32u);
    let var_2 = -min(u_input.d.x, u_input.d.x | ((u_input.d.x << (global2.a % 32u)) << (_wgslsmith_sub_u32(global2.a, u_input.b) % 32u)));
    var var_3 = global4[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_4 = Struct_2(~min(~19696u, ~(~2128u)), select(var_0.b.wxz, vec3<bool>(false, any(select(global2.b.yx, vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.b, 1u)])), !any(global3[_wgslsmith_index_u32(u_input.c.x, 11u)])), vec3<bool>(global1[_wgslsmith_index_u32(88201u, 1u)] && true, min(-11919i, 1835i) < _wgslsmith_sub_i32(-2147483647i, var_1), any(var_0.b))));
    return Struct_2(_wgslsmith_sub_u32(1u, ~var_4.a), select(vec3<bool>(!select(global1[_wgslsmith_index_u32(0u, 1u)], false, true), false, var_3.x), select(select(select(var_0.b.wxz, var_4.b, false), select(vec3<bool>(global2.b.x, var_4.b.x, global2.b.x), global3[_wgslsmith_index_u32(1u, 11u)], vec3<bool>(true, false, var_4.b.x)), !var_3.xzw), var_4.b, all(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_4.a, 1u)]))), vec3<bool>(true, any(var_4.b.xy), var_3.x)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = ~(firstLeadingBit(1i & -u_input.d.x) | arg_0);
    var var_3 = ~global0.yx;
    global0 = u_input.a;
    return Struct_1(false, !global4[_wgslsmith_index_u32(firstLeadingBit(func_2().a), 13u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = select(!func_2().b.xx, select(select(arg_2.b.yx, arg_1.b.zz, (32672u > global0.x) && !global1[_wgslsmith_index_u32(global2.a, 1u)]), vec2<bool>(arg_0.b.x, arg_1.b.x), all(vec4<bool>(!arg_1.b.x, false, true, false))), !(!select(vec2<bool>(false, true), arg_2.b.wy, vec2<bool>(arg_0.b.x, true))));
    global2 = func_2();
    global3 = array<vec3<bool>, 11>();
    var var_1 = ~reverseBits(vec3<u32>(arg_0.a, 4294967295u, arg_1.a));
    let var_2 = _wgslsmith_add_vec4_u32(min(~(~vec4<u32>(65931u, 146585u, 9292u, 45192u)), ~vec4<u32>(u_input.c.x, u_input.b, ~var_1.x, 1u)), vec4<u32>(global2.a, global2.a, ~72850u, var_1.x));
    return var_2.x | ((global2.a & firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 15096u))) >> (_wgslsmith_sub_u32(countOneBits(_wgslsmith_add_u32(var_1.x, arg_0.a)), func_2().a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    let var_0 = Struct_2(_wgslsmith_div_u32(func_4(Struct_2(~32375u, global2.b), Struct_2(1045u, global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 11u)]), func_1(-31174i, u_input.d.yyw)), global0.x), select(vec3<bool>(func_1(~(-72826i), u_input.d.zwx).b.x, true, all(vec3<bool>(false, true, true)) || true), vec3<bool>(true, any(vec2<bool>(true, false)), true), func_1(_wgslsmith_add_i32(~u_input.d.x, firstTrailingBit(u_input.d.x)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 0i, 47866i), vec3<i32>(-1i, u_input.d.x, 2147483647i), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))).b.yzx));
    global0 = ~vec3<u32>(~func_2().a, 81309u, 0u);
    global3 = array<vec3<bool>, 11>();
    var var_1 = i32(-1i) * -1i;
    let var_2 = Struct_1(!global1[_wgslsmith_index_u32(~(~(~1u)), 1u)], global4[_wgslsmith_index_u32(32306u, 13u)]);
    var var_3 = vec4<bool>(~abs(global0.x << (46288u % 32u)) > firstTrailingBit(abs(1u)), global2.b.x, ~reverseBits(~u_input.d.x) == u_input.d.x, func_1(-1i, u_input.d.wzw).b.x);
    global2 = var_0;
    var var_4 = _wgslsmith_div_u32(4294967295u, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f))))), -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(1087f * 1274f), _wgslsmith_div_f32(1000f, -190f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f - -1243f)), 2333f, -1751f)));
}

