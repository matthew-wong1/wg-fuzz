struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 1u, 1580u, 0u);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-1023f, 187f, vec4<i32>(40836i, -50852i, i32(-2147483648), -1i), 0u), Struct_1(367f, -1987f, vec4<i32>(-57955i, 0i, -66933i, i32(-2147483648)), 1u));

var<private> global3: array<i32, 13> = array<i32, 13>(-6264i, 2147483647i, i32(-2147483648), 2971i, 2147483647i, -24971i, -1i, -42559i, -1i, -44994i, 1i, 2147483647i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(select(vec3<bool>(!any(vec2<bool>(true, false)), false, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), all(vec4<bool>(true, false, true, true)))));
    global1 = vec4<u32>(_wgslsmith_mod_u32(~(39901u ^ u_input.a.x), _wgslsmith_mod_u32(~(3477u << (0u % 32u)), u_input.a.x)), u_input.a.x, _wgslsmith_add_u32(~(~reverseBits(48211u)), firstLeadingBit(u_input.a.x)), u_input.a.x);
    global0 = array<Struct_1, 18>();
    var var_1 = !(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false));
    global2 = array<Struct_1, 2>();
    return select(select(vec3<bool>(52190u == ~global1.x, var_0.a.x, true), var_0.a, !all(vec4<bool>(var_1.x, false, var_0.a.x, var_0.a.x)) || (-global3[_wgslsmith_index_u32(u_input.a.x, 13u)] == ~global3[_wgslsmith_index_u32(u_input.a.x, 13u)])), vec3<bool>(!var_1.x, false, -1i <= global3[_wgslsmith_index_u32(global1.x, 13u)]), any(!vec3<bool>(20115i > global3[_wgslsmith_index_u32(1u, 13u)], global1.x != global1.x, any(var_1.xyw))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(!(!(!func_3())));
    return Struct_2(select(vec3<bool>(true, !(!var_0.a.x), var_0.a.x), func_3(), var_0.a));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_1(1193f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1284f * arg_2.a.a) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(953f - arg_2.a.a), _wgslsmith_f_op_f32(-arg_2.a.a))))), -305f), -(-(arg_2.a.c & vec4<i32>(arg_2.a.c.x, arg_2.a.c.x, arg_0, 0i)) >> (~vec4<u32>(86068u, 1u, global1.x, 1u) % vec4<u32>(32u))), ~71114u);
    var var_1 = Struct_2(vec3<bool>(arg_1, all(!vec3<bool>(arg_1, false, arg_1)), arg_1));
    let var_2 = func_2(firstTrailingBit(_wgslsmith_sub_u32(~(global1.x >> (37095u % 32u)), firstTrailingBit(min(4294967295u, 1u)))));
    let var_3 = !var_2.a;
    global1 = ~vec4<u32>(14069u, countOneBits(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 82810u, 27793u, arg_2.b)))), abs(1u), u_input.a.x);
    return firstTrailingBit(var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(func_1(_wgslsmith_mod_i32(abs(global3[_wgslsmith_index_u32(15754u, 13u)]), 1i), all(vec4<bool>(true, false, false, false)), Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], _wgslsmith_dot_vec2_u32(global1.yw, global1.yx))), global1.x, u_input.a.x));
    global2 = array<Struct_1, 2>();
    var var_1 = global1.yy;
    var_1 = reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(min(select(u_input.a.zw, vec2<u32>(global1.x, 4272u), vec2<bool>(false, true)), global1.zy | u_input.a.wz), abs(var_0.yy)), ~_wgslsmith_clamp_vec2_u32(u_input.a.yx, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, var_1.x)), global1.xx), var_0.xy));
    let x = u_input.a;
    s_output = StorageBuffer(-517f, 24963i, 10183i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2492f, 560f), vec2<f32>(721f, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-660f, 1000f))), vec2<f32>(-385f, -931f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-837f * -426f), _wgslsmith_f_op_f32(max(1384f, -1121f))))))), 1686f);
}

