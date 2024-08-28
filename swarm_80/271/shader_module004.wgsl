struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<bool>;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<u32> {
    global0 = !global1.x;
    global2 = Struct_2(global2.a, global2.b);
    var var_0 = !(!select(select(!vec4<bool>(false, global1.x, false, global2.a), vec4<bool>(global1.x, true, true, global1.x), true), select(vec4<bool>(true, false, true, false), !vec4<bool>(global1.x, global2.a, false, global2.a), select(vec4<bool>(true, false, global1.x, global2.a), vec4<bool>(false, global1.x, true, false), vec4<bool>(global2.a, global1.x, global1.x, true))), vec4<bool>(true, any(vec3<bool>(false, false, false)), global1.x, any(vec4<bool>(false, global1.x, false, global2.a)))));
    let var_1 = all(select(vec4<bool>(global1.x, var_0.x, all(select(var_0.zy, var_0.xz, global2.a)), true), vec4<bool>(true, false, true, any(!vec4<bool>(global2.a, false, var_0.x, true))), select(!(!vec4<bool>(true, false, global2.a, true)), select(!vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, false, global1.x, global1.x), var_0.x), select(select(vec4<bool>(var_0.x, global1.x, true, false), vec4<bool>(false, false, true, global1.x), vec4<bool>(true, false, var_0.x, global2.a)), vec4<bool>(global1.x, global1.x, global1.x, false), true))));
    global2 = Struct_2(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-11018i, ~(-u_input.b), global2.b, -23207i), vec4<i32>(u_input.a, -global2.b, _wgslsmith_sub_i32(-u_input.a, -u_input.d), u_input.d)));
    return ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 0u, u_input.e.x) & vec3<u32>(33471u, u_input.e.x, u_input.e.x), select(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, u_input.e.x, 63745u), var_0.xwy) & ~vec3<u32>(u_input.e.x, u_input.e.x, 40669u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = func_3();
    var var_1 = arg_0;
    var var_2 = Struct_1(u_input.e >> (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.e.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 0u, 4294967295u, 0u), vec4<u32>(52559u, u_input.e.x, 0u, 41380u))), var_0.x) % vec2<u32>(32u)), false, any(!select(select(vec4<bool>(global2.a, false, true, true), vec4<bool>(false, arg_1, true, true), false), select(vec4<bool>(global2.a, global1.x, false, global1.x), vec4<bool>(true, true, false, global1.x), vec4<bool>(false, false, false, var_1.b)), select(true, true, var_1.d))), true);
    var var_3 = 29455u;
    var var_4 = Struct_3(var_2.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, firstTrailingBit(1u), ~1u), select(vec3<u32>(0u, 1u, 1u), select(vec3<u32>(arg_0.a.x, 8241u, arg_0.a.x), vec3<u32>(var_2.a.x, u_input.e.x, 68431u), global1.x), any(vec4<bool>(false, true, false, true)))), firstTrailingBit(vec4<u32>(0u, var_0.x, var_1.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(28213u, var_2.a.x, 33506u, 0u), vec4<u32>(u_input.e.x, 17323u, 4294967295u, arg_0.a.x)), ~vec4<u32>(1u, 39616u, 59802u, 0u)))));
    return arg_1 && false;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(~arg_0.a, !(!arg_0.d), !func_2(Struct_1(_wgslsmith_mod_vec2_u32(u_input.e, u_input.e), global2.a, global2.a | false, global2.b < global2.b), all(vec2<bool>(true, true))), global1.x);
    global0 = true;
    var var_1 = abs(vec4<u32>(_wgslsmith_add_u32(var_0.a.x, _wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, 4294967295u)), 62977u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.a.x, 0u), var_0.a.x & u_input.e.x), 47126u) & abs(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 50233u, 4294967295u), vec4<u32>(var_0.a.x, 22155u, 1u, arg_0.a.x)), ~vec4<u32>(0u, 26837u, var_0.a.x, arg_0.a.x))));
    var var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(abs(-530f));
    return arg_0.d;
}

fn func_4(arg_0: vec3<bool>) -> StorageBuffer {
    global2 = Struct_2(false, u_input.c.x);
    let var_0 = Struct_2(true, u_input.a);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(996f * -679f)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1705f, 372f))))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)))));
    return StorageBuffer(1i, 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(950f, -1143f, 1917f))), vec3<f32>(1012f, -1802f, -604f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-557f, 1265f, 582f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2019f, -1000f, -810f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), global1.x)), firstLeadingBit(_wgslsmith_div_i32(-global2.b, -46556i)));
    let var_0 = Struct_2(true, global2.b);
    global2 = Struct_2(all(select(vec4<bool>(any(vec3<bool>(global2.a, global1.x, global1.x)), true, true, !var_0.a), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(false, false, global2.a, true), vec4<bool>(global1.x, var_0.a, global1.x, false)), !(!vec4<bool>(true, var_0.a, var_0.a, global2.a)))), 0i);
    let x = u_input.a;
    s_output = func_4(select(vec3<bool>(false, !(var_0.a && var_0.a), true), select(select(vec3<bool>(global2.a, false, false), select(vec3<bool>(var_0.a, global2.a, false), vec3<bool>(false, var_0.a, global1.x), vec3<bool>(false, true, global2.a)), true), !vec3<bool>(global2.a, global2.a, false), vec3<bool>(!var_0.a, !global2.a, !global1.x)), func_1(Struct_1(u_input.e, global1.x, true, all(vec4<bool>(var_0.a, true, true, false))))));
}

