struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -8012i, -1i, 10849i);

var<private> global2: Struct_3 = Struct_3(-1734f, Struct_1(false), vec2<bool>(false, true), i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = global2.c.x;
    let var_1 = -17935i;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(~firstTrailingBit(vec3<u32>(4294967295u, arg_2, arg_2))), vec3<u32>(arg_2, u_input.c, ~0u | u_input.c)), ~(~select(abs(vec3<u32>(u_input.b, 4294967295u, 11215u)), vec3<u32>(4294967295u, u_input.c, arg_2), arg_0.a.a.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(!(_wgslsmith_sub_u32(37660u, 0u) == arg_0)), global1.xz, global2.b);
    var var_1 = vec2<bool>(any(select(vec2<bool>(var_0.a.a, true), !vec2<bool>(false, global2.c.x), false)), arg_1.a.a.a);
    let var_2 = abs(vec3<u32>(32900u, arg_3 << (_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3, 4294967295u), arg_0) % 32u), _wgslsmith_sub_u32(~min(arg_3, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, u_input.b, 44283u), min(vec3<u32>(arg_0, arg_3, 3947u), vec3<u32>(1u, arg_3, u_input.c))))));
    var_1 = !vec2<bool>(true, global2.b.a);
    global2 = Struct_3(arg_1.b.x, Struct_1(!arg_1.a.c.a), vec2<bool>(true, any(select(vec4<bool>(arg_1.a.c.a, arg_1.a.a.a, true, arg_1.a.a.a), select(vec4<bool>(global2.c.x, arg_1.a.c.a, var_1.x, arg_1.a.c.a), vec4<bool>(true, false, var_1.x, true), false), arg_1.b.x >= -731f))), -56929i);
    return max(~max(~u_input.c, 1u), ~4294967295u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(sign(1290f)), global2.b, !vec2<bool>(global2.b.a, any(global2.c)), ~2147483647i);
    global0 = func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(Struct_4(Struct_2(global2.b, global1.yx, Struct_1(global2.b.a)), vec3<f32>(-1365f, global2.a, global2.a)), Struct_2(Struct_1(false), global1.wx, global2.b), _wgslsmith_mod_u32(16367u, u_input.c)), _wgslsmith_sub_u32(arg_0, 0u), firstLeadingBit(arg_0)), vec3<u32>(firstLeadingBit(~28142u), 1u, 54115u)), Struct_4(Struct_2(var_0.b, firstLeadingBit(vec2<i32>(-47563i, 1i)), Struct_1(var_0.b.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global2.a, global2.a)), vec3<f32>(1040f, global2.a, -459f)))), ~(~(~firstTrailingBit(41879i))), 4563u);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
    let var_3 = var_0.a;
    return Struct_1(var_0.b.a);
}

fn func_1(arg_0: f32) -> bool {
    global2 = Struct_3(_wgslsmith_f_op_f32(470f + arg_0), func_2(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(4156u, 15669u))), (7959u << (u_input.b % 32u)) & ~u_input.d)), !global2.c, 1i);
    let var_0 = global2.c;
    global0 = _wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(4294967295u, u_input.d, 12635u, 9146u), vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.b)) & ~vec4<u32>(u_input.b, u_input.c, u_input.d, 816u)), vec4<u32>(max(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 7334u), u_input.c), 1u), 28856u, u_input.b, u_input.d));
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(329f - arg_0) - -463f))), func_2(select(u_input.c, ~64752u, !global2.b.a)), !global2.c, abs(-_wgslsmith_clamp_i32(-global2.d, ~global2.d, global2.d)));
    global1 = vec4<i32>(global1.x & _wgslsmith_div_i32(~global2.d, u_input.a), global1.x, 2147483647i, _wgslsmith_sub_i32(global1.x ^ -2533i, global1.x));
    return !func_2(~(~u_input.b) & 30003u).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global2.b.a | global2.b.a, !func_1(global2.a), global2.c.x, false);
    global1 = vec4<i32>(global1.x, u_input.a ^ global1.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(79136i, u_input.a), firstLeadingBit(u_input.a)), global1.x);
    var var_1 = u_input.b;
    var_1 = firstLeadingBit(_wgslsmith_mult_u32(14100u, u_input.b));
    let var_2 = vec4<i32>(~u_input.a, -1i, u_input.a, reverseBits(u_input.a));
    var_1 = ~(~abs(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(525f, 1000f, _wgslsmith_f_op_f32(1101f + 436f)) + vec3<f32>(-757f, _wgslsmith_f_op_f32(global2.a + global2.a), global2.a))));
}

