struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(527f, false, 38835u), Struct_1(-1682f, false, 70782u));

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> i32 {
    let var_0 = arg_0;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(373f + 1777f), -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 591f), -1732f);
    var var_2 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1363f + _wgslsmith_f_op_f32(f32(-1f) * -708f)) + var_1.x) - var_1.x));
    let var_3 = ~(~select(arg_1.x, ~(u_input.b.x ^ arg_1.x), (arg_0.x | var_0.x) || (6282i <= u_input.c)));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(413f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -358f), 1215f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -656f), -584f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), -1000f, _wgslsmith_f_op_f32(-673f - 279f), _wgslsmith_f_op_f32(floor(-242f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, var_1.x, var_1.x, var_1.x))))));
    return -1874i;
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1078f), 493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f) * _wgslsmith_div_f32(1896f, -664f)))), -635f);
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, abs(firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, 53307u)))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(max(u_input.b.x, u_input.b.x), 1u, 0u, abs(24176u))), min(abs(~vec4<u32>(u_input.b.x, 34860u, 3060u, u_input.b.x)), ~(~vec4<u32>(5747u, 14511u, u_input.b.x, 8141u)))));
    let var_2 = Struct_2(u_input.b.x);
    var var_3 = vec2<bool>(!(func_3(vec2<bool>(true, true), vec2<u32>(u_input.b.x, 63353u)) != -74612i), true);
    var_3 = vec2<bool>(false, true & !var_3.x);
    return var_0.x;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 2>();
    global1 = array<Struct_1, 23>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, u_input.a, 9721i, 2147483647i), vec4<i32>(u_input.d, 3445i, u_input.c, u_input.c)), reverseBits(vec4<i32>(-1i, -25181i, u_input.d, u_input.c))), -(1i << (u_input.b.x % 32u)), -u_input.d, func_3(vec2<bool>(false, true), u_input.b << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))))), ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, -4072i, -2147483647i), vec3<i32>(1379i, 34585i, u_input.d)), ~vec3<i32>(u_input.a, u_input.c, 1i)) != u_input.c, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(0u, u_input.b.x)), 1u));
    let var_1 = u_input.b;
    global0 = array<Struct_1, 2>();
    return Struct_2(1u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global1 = array<Struct_1, 23>();
    var var_0 = reverseBits(~(~vec2<u32>(52124u, _wgslsmith_add_u32(15178u, u_input.b.x))));
    var_0 = u_input.b;
    global0 = array<Struct_1, 2>();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = arg_0.a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) + 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    global1 = array<Struct_1, 23>();
    let var_1 = global0[_wgslsmith_index_u32(103084u, 2u)];
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(1958f, all(!vec3<bool>(true, var_1.b, false)), ~(u_input.b.x ^ u_input.b.x)), -937f, func_1(vec2<f32>(_wgslsmith_f_op_f32(var_1.a + -1458f), _wgslsmith_f_op_f32(f32(-1f) * -513f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(floor(var_1.a))));
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(0u, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))).a), ~_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(~u_input.b.x, ~53532u), u_input.b.x)), 365f, vec4<u32>(~(~(~var_1.c)), 53248u, ~74771u, 0u));
}

