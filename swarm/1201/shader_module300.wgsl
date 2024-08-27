struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
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

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    global1 = arg_2;
    let var_0 = global1.a.x;
    let var_1 = global1.a.wwy;
    var var_2 = global1.a.ywy;
    global1 = Struct_1(vec4<bool>(false, global1.a.x, any(var_1.zx), true || all(var_1.xz)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(893f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1013f)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(501f, 844f) + _wgslsmith_f_op_f32(floor(1673f))) + 1000f), _wgslsmith_f_op_f32(-733f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) * _wgslsmith_f_op_f32(f32(-1f) * -741f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -209f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1086f, -283f)))));
    return 921f;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    var var_0 = !vec3<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -135f) >= _wgslsmith_f_op_f32(func_2(vec3<i32>(-1i, u_input.b.x, 1i), -1i, Struct_1(vec4<bool>(arg_1, arg_1, global1.a.x, global0.x)), vec4<i32>(0i, 2147483647i, u_input.b.x, 10919i)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_3(arg_0, Struct_1(vec4<bool>(arg_1, global0.x, arg_0.a.x, arg_0.a.x))))) <= -1592f, all(select(!vec2<bool>(global1.a.x, true), vec2<bool>(true, true), !global1.a.ww)));
    global1 = Struct_1(!select(select(vec4<bool>(arg_0.a.x, true, global0.x, false), select(vec4<bool>(arg_0.a.x, false, global0.x, false), vec4<bool>(false, global0.x, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1)), !arg_0.a), vec4<bool>(global1.a.x != arg_1, arg_1 || true, true, false), vec4<bool>(!global1.a.x, global1.a.x, arg_0.a.x, true)));
    let var_1 = _wgslsmith_add_i32(-30253i, 0i);
    global1 = Struct_1(global1.a);
    var var_2 = vec4<u32>(~(~(~1u)), arg_2.x, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(41197u, ~u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 27467u, 35664u, u_input.a), vec4<u32>(37538u, u_input.d, 0u, 0u)), ~arg_2.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.x, 61492u, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.a), vec3<u32>(arg_2.x, 1u, 62051u)), vec3<u32>(~u_input.d, 23921u, 1u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1100f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec4<bool>(true, !(14448u != u_input.d), global0.x, !global0.x));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a) ^ ~vec3<u32>(46297u, ~u_input.a, 4294967295u), firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.e, 1310u & u_input.e, ~u_input.a))));
    let var_2 = vec4<bool>(all(vec3<bool>(global1.a.x, global0.x, true)), -u_input.c < (i32(-1i) * -2147483647i), false, false);
    let var_3 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(var_0, !var_0.a.x, vec2<u32>(104817u, var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-981f + -1157f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-835f, 2080f) + 556f)), global0.x, false, all(vec4<bool>(var_2.x, ~u_input.b.x > (u_input.c << (u_input.a % 32u)), var_2.x, false)));
    global0 = !vec3<bool>(false, true, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-253f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-281f + _wgslsmith_div_f32(-1758f, -832f)))), _wgslsmith_f_op_f32(func_1(Struct_1(!global1.a), false, _wgslsmith_mult_vec2_u32(~var_1.zx, abs(var_1.zx)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-443f, 2827f))))));
}

