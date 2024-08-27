struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), 849f);

var<private> global1: f32;

var<private> global2: f32 = -675f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(195f - 818f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = vec2<bool>(select(all(vec2<bool>(true, true)), true, ~24974u > u_input.d.x), false != any(global0.a));
    var var_1 = Struct_1(!(!(!select(vec3<bool>(var_0.x, true, false), arg_0.a, true))), arg_0.a.xx, arg_0.c);
    global0 = Struct_1(global0.a, vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + arg_0.c)))) * _wgslsmith_f_op_f32(func_3(-u_input.c, vec4<bool>(true, true, true, true), global0.b.x))));
    return abs(vec2<u32>(1u, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.d.xx), ~_wgslsmith_mult_u32(25995u, u_input.d.x), 4294967295u)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(Struct_1(select(vec3<bool>(global0.c < 406f, true, all(vec4<bool>(global0.b.x, global0.b.x, true, global0.a.x))), select(select(vec3<bool>(true, global0.a.x, false), vec3<bool>(global0.b.x, global0.b.x, global0.b.x), true), !global0.a, global0.b.x), global0.a.x && true), select(!(!global0.b), vec2<bool>(false, global0.b.x), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(926f - -1756f))), global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, vec4<bool>(global0.a.x, global0.b.x, false, global0.a.x), global0.b.x))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, global0.c, true)) - _wgslsmith_f_op_f32(-global0.c))))), vec4<i32>(-35487i, ~(~2733i), u_input.c, min(firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-4951i, u_input.b, 15506i), vec3<i32>(u_input.a, u_input.a, -26376i)), vec3<i32>(-1i, u_input.c, -1i)))));
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.d.yx, ~u_input.d.zx);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(237f, global0.c, true)) - global0.c) * global0.c);
    let var_2 = global0.b.x;
    global0 = Struct_1(!global0.a, !(!global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1494f - 1733f)));
    return Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c - 1972f))) + _wgslsmith_f_op_f32(abs(-427f)))));
}

fn func_1(arg_0: u32) -> bool {
    global0 = func_2();
    let var_0 = Struct_2(_wgslsmith_sub_i32(1i, 2147483647i), ~countOneBits(~1i), Struct_1(vec3<bool>(!(!global0.b.x), all(vec4<bool>(true, true, global0.a.x, global0.b.x)), true), vec2<bool>(true, any(!vec3<bool>(false, global0.a.x, false))), 679f), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(select(arg_0, u_input.d.x, false), 15309u), min(vec2<u32>(0u, 74664u), _wgslsmith_add_vec2_u32(u_input.d.xz, u_input.d.xz)))), vec4<bool>(true, -626f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f * global0.c)), !global0.a.x, true));
    var var_1 = select(vec4<bool>(var_0.c.a.x, true, false, global0.a.x), vec4<bool>(false, !all(vec3<bool>(false, true, false)), (-1i ^ firstLeadingBit(var_0.a)) > ~abs(u_input.e), false), func_2().a.x);
    global0 = func_2();
    var var_2 = !var_0.e.wx;
    return (0u | ~_wgslsmith_sub_u32(abs(75798u), var_0.d.x)) == 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(153u, ~(~countOneBits(~u_input.d.x)), u_input.d.x);
    let var_1 = select(vec4<bool>(all(vec4<bool>(false, true, global0.a.x, global0.b.x)) && any(select(global0.b, vec2<bool>(global0.b.x, false), global0.b)), select(true, global0.a.x, global0.a.x), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1310f), -1508f)) <= -299f), vec4<bool>(true || global0.b.x, any(global0.a), global0.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.a, u_input.c)) > -32112i), vec4<bool>(_wgslsmith_dot_vec2_u32(var_0.zx, var_0.yz) < 2785u, !global0.b.x, func_1(~_wgslsmith_sub_u32(24534u, var_0.x)), u_input.d.x <= _wgslsmith_div_u32(u_input.d.x, var_0.x)));
    var var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-1i), 0i));
}

