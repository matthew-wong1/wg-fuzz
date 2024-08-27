struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_3, 26>();
    var var_0 = min(u_input.b, u_input.b);
    var var_1 = firstTrailingBit(u_input.a);
    var var_2 = Struct_1(false, countOneBits(select(~(~51484u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, arg_0), vec3<u32>(u_input.a.x, var_1.x, 0u)), false)));
    let var_3 = !(!select(select(select(vec2<bool>(var_2.a, false), vec2<bool>(true, var_2.a), var_2.a), vec2<bool>(false, var_2.a), select(vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, var_2.a), true)), !select(vec2<bool>(false, true), vec2<bool>(var_2.a, false), vec2<bool>(false, var_2.a)), !any(vec4<bool>(var_2.a, var_2.a, true, var_2.a))));
    return -115f;
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x)) * _wgslsmith_f_op_f32(-653f * _wgslsmith_f_op_f32(f32(-1f) * -562f))), _wgslsmith_f_op_f32(func_3(~(~(u_input.a.x ^ 27294u)))), _wgslsmith_clamp_vec4_u32(~u_input.a ^ ~u_input.a, abs(vec4<u32>(u_input.a.x & 150095u, 6192u, firstTrailingBit(27093u), u_input.a.x)), abs(abs(u_input.a))), Struct_1(true && all(vec2<bool>(true, true)), ~102470u));
    var var_1 = -254f;
    let var_2 = var_0.a;
    let var_3 = Struct_2(-269f, 824f, firstTrailingBit(u_input.a) | (~_wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(0u, 8124u, 4294967295u, 4294967295u)) & vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xzx, vec3<u32>(u_input.a.x, u_input.a.x, var_0.d.b)), _wgslsmith_mod_u32(4294967295u, var_0.c.x), 1u, 4294967295u)), Struct_1(true, ~_wgslsmith_add_u32(1u, var_0.c.x)));
    let var_4 = arg_0.a.x;
    return true;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = -(u_input.b >> (~select(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 64554u), arg_0) % vec3<u32>(32u)));
    var var_1 = 74654u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(815f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<Struct_3, 26>();
    let var_3 = select(!select(vec4<bool>(true, func_2(global0[_wgslsmith_index_u32(0u, 26u)]), true, true), vec4<bool>(arg_0, arg_0, true, true), true), select(select(!(!vec4<bool>(false, arg_0, true, true)), !(!vec4<bool>(arg_0, true, true, arg_0)), _wgslsmith_f_op_f32(-1048f - var_2.x) <= _wgslsmith_div_f32(-1291f, var_2.x)), !(!select(vec4<bool>(true, true, arg_0, false), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, true, arg_0, arg_0))), !(!vec4<bool>(arg_0, false, true, true))), !(!(!vec4<bool>(arg_0, arg_0, true, true))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-487f, 740f) - -1315f), var_2.x, ~vec4<u32>(~21983u, min(~u_input.a.x, select(u_input.a.x, u_input.a.x, var_3.x)), _wgslsmith_clamp_u32(1u, 75334u, countOneBits(58789u)), u_input.a.x), Struct_1(16534u == (~u_input.a.x >> (~0u % 32u)), ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 26>();
    let var_0 = Struct_1(true, 1u);
    var var_1 = Struct_2(-2255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-3757f, -637f), _wgslsmith_div_f32(986f, 1000f)))), ~(~(~(~vec4<u32>(u_input.a.x, var_0.b, 64208u, 4294967295u)))), var_0);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b))), vec4<u32>(~11026u, 1798u, u_input.a.x, 13548u), var_0);
    var_2 = func_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_div_vec2_u32(reverseBits(u_input.a.xz), select(vec2<u32>(12633u, var_2.d.b), vec2<u32>(var_2.c.x, 4294967295u), vec2<bool>(var_0.a, false))))), var_0.b, ~var_1.c, -1513f, -_wgslsmith_mod_i32(u_input.b.x, 2147483647i));
}

