struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 7>;

var<private> global2: bool;

var<private> global3: array<i32, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec3<u32>(~arg_0.b.b, (firstTrailingBit(~27867u) & u_input.c.x) & ~arg_0.b.b, u_input.c.x);
    global0 = ~_wgslsmith_sub_i32(-2147483647i, -2147483647i);
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = abs(u_input.b);
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-852f)))) * 954f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1625f) + _wgslsmith_f_op_f32(-arg_0)))))));
    let var_3 = 1u << ((1u >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 1u, arg_2.b.b, 4294967295u), vec4<u32>(4294967295u, u_input.e.x, arg_2.b.b, u_input.e.x)), select(vec4<u32>(1u, u_input.c.x, 56998u, u_input.c.x), abs(vec4<u32>(4294967295u, u_input.e.x, 2340u, u_input.c.x)), vec4<bool>(false, false, true, arg_1.x))) % 32u)) % 32u);
    return _wgslsmith_f_op_f32(-190f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(-337f)), arg_0.a.c, func_2(Struct_2(arg_1.c.x, arg_1, u_input.a.yww)))), true)) + 170f);
    var var_2 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)))));
    global2 = !arg_1.c.x;
    let var_3 = Struct_4(arg_0.a, (_wgslsmith_sub_i32(2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, 13142u), 21u)]) << (_wgslsmith_mod_u32(u_input.c.x, 21570u) % 32u)) >> (arg_1.b % 32u), arg_1.b, true, arg_0.e);
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(func_1(global1[_wgslsmith_index_u32(28007u, 7u)], Struct_1(true, u_input.e.x, vec2<bool>(false, false), false)), any(func_2(Struct_2(false, Struct_1(true, u_input.e.x, vec2<bool>(true, true), true), u_input.a.zwy)).b.c)));
    global2 = false;
    global0 = abs(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, -1348i), _wgslsmith_mod_i32(0i, -24421i), 1i) & -55786i));
    var var_1 = select(select(select(select(!vec4<bool>(true, true, false, var_0.x), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x), !vec4<bool>(var_0.x, false, true, false)), select(!vec4<bool>(false, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x), vec4<bool>(true, var_0.x, u_input.b < 0i, true)), select(vec4<bool>(!var_0.x, !var_0.x, true, false), vec4<bool>(true, var_0.x, u_input.b >= 2147483647i, true), var_0.x || (u_input.b <= 2147483647i)), vec4<bool>(select(var_0.x, false | var_0.x, true), true, true, select(all(vec2<bool>(var_0.x, var_0.x)), var_0.x, !var_0.x))), select(vec4<bool>(!(var_0.x && false), true, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !(var_0.x | true)), vec4<bool>(var_0.x, all(select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), false)), var_0.x, var_0.x), false), vec4<bool>(any(select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), var_0.x), vec3<bool>(var_0.x, var_0.x, true))), func_1(global1[_wgslsmith_index_u32(min(u_input.e.x ^ 1u, ~u_input.e.x), 7u)], func_2(func_2(Struct_2(var_0.x, Struct_1(var_0.x, u_input.e.x, vec2<bool>(true, var_0.x), false), vec3<i32>(19811i, -32115i, -9950i)))).b), _wgslsmith_f_op_f32(673f + -829f) <= _wgslsmith_f_op_f32(round(-139f)), all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)) != var_0.x));
    var var_2 = vec3<u32>(abs((59607u ^ u_input.c.x) | 3101u), ~countOneBits(0u), u_input.e.x);
    var var_3 = _wgslsmith_f_op_f32(-1633f + -1275f);
    global2 = ~(~firstLeadingBit(func_2(Struct_2(var_1.x, Struct_1(true, var_2.x, vec2<bool>(var_0.x, false), var_1.x), vec3<i32>(global3[_wgslsmith_index_u32(71354u, 21u)], u_input.a.x, 0i))).b.b)) != ~(var_2.x | 41451u);
    let x = u_input.a;
    s_output = StorageBuffer(1115f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f + 1000f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f))))));
}

