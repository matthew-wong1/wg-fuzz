struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1301f, -1613f, 1000f), vec3<f32>(-1392f, 156f, -393f), vec3<f32>(-694f, 1082f, 933f), vec3<f32>(140f, -329f, -2621f), vec3<f32>(-555f, 561f, -488f), vec3<f32>(-697f, 332f, 1988f), vec3<f32>(-2133f, 487f, 721f), vec3<f32>(240f, 1142f, 454f), vec3<f32>(165f, 1222f, -589f), vec3<f32>(418f, 1000f, -2487f), vec3<f32>(389f, -295f, -2656f));

var<private> global2: array<i32, 26>;

var<private> global3: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = u_input.c;
    let var_1 = ~vec4<u32>(_wgslsmith_mod_u32(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 54201u), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x))), 55380u, u_input.e.x, ~max(~u_input.b, u_input.d.x));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -469f) * vec2<f32>(-284f, 846f))))), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_2.a.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(587f + var_2.a.a.x))), 1113f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-621f - var_2.a.a.x)))), _wgslsmith_f_op_f32(var_2.a.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_2.a.a.x)));
    global1 = array<vec3<f32>, 11>();
    return arg_0.xz;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<Struct_2, 25>();
    global1 = array<vec3<f32>, 11>();
    let var_0 = all(!func_2(vec4<bool>(true, true, true, true)));
    return global0[_wgslsmith_index_u32(u_input.e.x, 25u)];
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    let var_0 = abs(firstTrailingBit(vec4<u32>(86246u, ~u_input.d.x, firstLeadingBit(2864u & u_input.e.x), ~u_input.e.x ^ 4294967295u)));
    let var_1 = vec3<bool>(any(vec2<bool>(true, true)), any(!select(select(vec2<bool>(arg_0.a.b, arg_0.a.b), vec2<bool>(false, arg_0.a.b), arg_0.a.b), vec2<bool>(true, true), select(vec2<bool>(arg_0.a.b, arg_0.a.b), vec2<bool>(true, false), arg_0.a.b))), select(false, false, arg_0.a.b));
    var var_2 = 1i;
    var var_3 = vec4<bool>(var_1.x, var_1.x, any(!select(select(vec4<bool>(var_1.x, true, true, arg_0.a.b), vec4<bool>(arg_0.a.b, true, var_1.x, false), vec4<bool>(true, false, true, var_1.x)), vec4<bool>(false, var_1.x, arg_0.a.b, true), arg_0.a.b || var_1.x)), var_0.x > firstLeadingBit(0u));
    global3 = _wgslsmith_add_i32(0i, u_input.c);
    return func_1(min(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(22677u, 26u)], 0i, u_input.c), vec4<i32>(-14897i, -715i, -20326i, 2147483647i)) >> (0u % 32u), global2[_wgslsmith_index_u32(~0u, 26u)]), -1i)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.e.x << (u_input.a % 32u), 26u)], max(0i, 1i))));
    global1 = array<vec3<f32>, 11>();
    var var_1 = var_0.b;
    var var_2 = ~(_wgslsmith_mult_u32(_wgslsmith_mult_u32(9191u, u_input.e.x), 1u) | (_wgslsmith_clamp_u32(u_input.a, ~u_input.a, 7778u) ^ (4294967295u | ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, _wgslsmith_div_u32(117945u, u_input.b));
}

