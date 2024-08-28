struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<vec2<f32>, 20>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, arg_2.a.x, 127372u)), ~global4.a, false) << (~_wgslsmith_add_vec3_u32(vec3<u32>(global4.a.x, 9933u, 1u), vec3<u32>(42236u, 699u, 4294967295u)) % vec3<u32>(32u)), global4.a), _wgslsmith_f_op_f32(abs(arg_2.b)));
    var_0 = arg_2;
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(66506u, 35875u), firstLeadingBit(firstTrailingBit(1u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> bool {
    global4 = arg_1;
    let var_0 = Struct_1(vec3<u32>(~2253u, global4.a.x, ~(~1u)), _wgslsmith_f_op_f32(global4.b + -181f));
    let var_1 = u_input.b.zx;
    return false;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global1 = ~4294967295u >> (~func_2(~(-19212i), global4.b, Struct_1(~global4.a, global4.b)) % 32u);
    let var_0 = select(select(arg_0.zxw, !(!arg_0.xyx), any(select(vec3<bool>(arg_0.x, false, false), !arg_0.yyw, select(arg_0.yzy, vec3<bool>(true, false, arg_0.x), arg_0.x)))), arg_0.zxx, vec3<bool>(!(false & func_3(4294967295u, Struct_1(vec3<u32>(global4.a.x, 93782u, 47845u), global4.b), arg_0.x, global4.a)), select(arg_0.x, select(true, arg_0.x, arg_0.x) | !arg_0.x, arg_0.x), !(!any(arg_0.zxz))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.b)) + global4.b);
    global4 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.b.www, reverseBits(global4.a | global4.a)), min(~u_input.b.yyy, vec3<u32>(~0u, abs(36201u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 33328u), global4.a.xz)))), _wgslsmith_f_op_f32(min(global4.b, _wgslsmith_f_op_f32(f32(-1f) * -187f))));
    var var_2 = func_3(_wgslsmith_div_u32(1u, max(global4.a.x, _wgslsmith_mod_u32(~global4.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(52187u, u_input.b.x), global4.a.zz)))), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(func_2(-2147483647i, global4.b, Struct_1(global4.a, global4.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 9726u, global4.a.x), u_input.b), 4294967295u), firstLeadingBit(global4.a | u_input.b.wyx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f)))))), !any(select(select(vec3<bool>(arg_0.x, var_0.x, var_0.x), var_0, false), !arg_0.yzy, !var_0)), select(select(u_input.b.zzw, global4.a << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global4.a.x, 0u), vec3<u32>(0u, 0u, global4.a.x)) % vec3<u32>(32u)), var_0), _wgslsmith_mod_vec3_u32(~global4.a, u_input.b.zwx), !any(select(vec2<bool>(var_0.x, false), arg_0.ww, true))));
    return (!func_3(u_input.b.x, Struct_1(u_input.b.ywz, global4.b), arg_0.x, global4.a) || !all(arg_0.wxy)) || any(select(select(!arg_0.xw, !var_0.yz, all(arg_0.zz)), arg_0.yy, func_3(4294967295u, Struct_1(global4.a, 593f), false, u_input.b.zzz ^ u_input.b.xzz)));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = 61203u;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    global4 = func_4(-35443i, func_1(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false)), _wgslsmith_f_op_f32(-global4.b), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 16485u, global4.a.x) ^ vec3<u32>(u_input.b.x, global4.a.x, u_input.b.x), min(vec3<u32>(u_input.b.x, 4294967295u, global4.a.x), vec3<u32>(56894u, u_input.b.x, u_input.b.x))) << (reverseBits(select(u_input.b.zyy, vec3<u32>(global4.a.x, u_input.b.x, 4294967295u), vec3<bool>(true, true, true))) % vec3<u32>(32u)), global4.b));
    let var_0 = func_4(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-34114i, 91i, global0[_wgslsmith_index_u32(0u, 30u)], -46502i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], 4292i, -2147483647i, global0[_wgslsmith_index_u32(global4.a.x, 30u)]) | vec4<i32>(global0[_wgslsmith_index_u32(46613u, 30u)], global0[_wgslsmith_index_u32(global4.a.x, 30u)], 2147483647i, global0[_wgslsmith_index_u32(global4.a.x, 30u)])), vec4<i32>(1i << (u_input.b.x % 32u), 1i, -1i, 1i)), true, -592f, Struct_1(vec3<u32>(abs(~global4.a.x), ~14956u, 56258u), _wgslsmith_f_op_f32(-global4.b)));
    global1 = ~(_wgslsmith_div_u32(~u_input.b.x | global4.a.x, _wgslsmith_dot_vec3_u32(u_input.b.xyw, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_0.a.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u), global4.a))) >> (u_input.b.x % 32u));
    global3 = array<vec2<f32>, 20>();
    var var_1 = func_4(_wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(1i, u_input.a)), true, _wgslsmith_div_f32(-1432f, _wgslsmith_f_op_f32(-112f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1360f)))))), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(~0u, ~44963u, ~u_input.b.x), ~var_0.a), _wgslsmith_f_op_f32(select(global4.b, global4.b, any(vec3<bool>(true, true, true))))));
    let var_2 = Struct_1(select(~(~(var_1.a & vec3<u32>(1u, var_1.a.x, 1u))), (vec3<u32>(0u, 1u, 0u) >> (~u_input.b.wyx % vec3<u32>(32u))) | var_0.a, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b * 791f))));
    var var_3 = Struct_1(~vec3<u32>(~1u, 22986u, ~global4.a.x), var_0.b);
    global2 = !(!(!(917i <= u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, u_input.a);
}

