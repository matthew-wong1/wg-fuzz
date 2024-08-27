struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(12084u, 85385u), abs(vec2<u32>(1u, 1u))), u_input.e, u_input.d), 7u)];
    let var_1 = ~_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(4294967295u, var_0.b.x)), select(var_0.b.xy, firstLeadingBit(vec2<u32>(var_0.b.x, var_0.b.x)), var_0.a.x));
    let var_2 = Struct_1(select(select(!(!vec3<bool>(true, var_0.a.x, var_0.a.x)), !vec3<bool>(false, var_0.a.x, true), !(!vec3<bool>(var_0.a.x, true, var_0.a.x))), vec3<bool>(true, any(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)) | !var_0.a.x, all(!var_0.a)), (u_input.e != ~var_0.b.x) || all(!vec3<bool>(var_0.a.x, false, true))), var_0.b, _wgslsmith_mod_u32(6001u | u_input.e, 0u), _wgslsmith_f_op_f32(exp2(var_0.d)), var_0.e);
    return var_2.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_1, 7>();
    var var_0 = max(arg_1.b, _wgslsmith_div_vec4_u32(arg_1.b, countOneBits(vec4<u32>(46897u, u_input.e, 0u, 48494u) ^ func_3(-5898i))));
    global0 = array<Struct_1, 7>();
    var var_1 = arg_0.b.wx;
    let var_2 = arg_0.b.xz;
    return _wgslsmith_f_op_f32(592f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.d))) - arg_1.d)));
}

fn func_1() -> Struct_1 {
    var var_0 = countOneBits(vec3<i32>(-2147483647i, u_input.c.x, 0i));
    global0 = array<Struct_1, 7>();
    var_0 = u_input.c.yyy;
    global0 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.e, u_input.b, u_input.e), vec4<u32>(0u, 1u, u_input.d, u_input.d)), ~(~4294967295u), 1f, _wgslsmith_mod_u32(0u, min(u_input.e, 5154u))), global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)])));
    return global0[_wgslsmith_index_u32(6443u, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    var var_0 = func_1();
    var var_1 = Struct_1(func_1().a, _wgslsmith_mult_vec4_u32(var_0.b, abs(var_0.b)), 4294967295u, _wgslsmith_f_op_f32(func_1().d * _wgslsmith_f_op_f32(func_2(Struct_1(var_0.a, vec4<u32>(u_input.d, 66124u, u_input.b, 4828u), var_0.c, var_0.d, u_input.d ^ u_input.b), global0[_wgslsmith_index_u32(~(~var_0.c), 7u)], func_1()))), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2116f, 1870f)), var_0.d))), u_input.c);
}

