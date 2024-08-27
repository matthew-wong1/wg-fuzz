struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = arg_3.d.x;
    var var_1 = arg_2 | _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~8166u, 19434u), vec2<u32>(arg_2, _wgslsmith_mult_u32(1u, u_input.d))), 378u);
    let var_2 = arg_0;
    return ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_add_u32(u_input.d, 0u), ~0u, 14375u), vec4<u32>(4323u, select(arg_2, 1u, arg_3.e.x), 9451u, 0u)), vec4<u32>(~(~arg_2), ~(u_input.d | 18342u), _wgslsmith_sub_u32(arg_2 << (4294967295u % 32u), arg_2 >> (4294967295u % 32u)), ~_wgslsmith_mod_u32(arg_2, arg_2)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = -_wgslsmith_sub_i32(1i, u_input.c.x);
    var_0 = 2147483647i;
    return countOneBits(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(func_2(func_1(u_input.b, vec4<f32>(791f, 404f, -1206f, -591f), 1u, global0[_wgslsmith_index_u32(0u, 6u)])), abs(86252u & u_input.d)) & 39239u;
    global0 = array<Struct_1, 6>();
    let var_1 = !vec4<bool>(!(!all(vec4<bool>(true, false, true, false))), true && any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true)), true, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1014f)));
    global0 = array<Struct_1, 6>();
    let var_3 = _wgslsmith_sub_u32(var_0, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~4294967295u, -(vec4<i32>(1i, ~1i, _wgslsmith_mult_i32(u_input.e, 0i), 15945i | u_input.a) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_3, var_0, var_3, 0u), vec4<u32>(var_0, var_0, 9250u, 31436u) | vec4<u32>(var_3, 1u, var_0, var_3)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(839f, -2302f, -114f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2052f, -2027f, -1045f), _wgslsmith_div_vec3_f32(vec3<f32>(275f, -1338f, -1419f), vec3<f32>(173f, -675f, 873f)), vec3<bool>(var_1.x, var_1.x, var_1.x))))));
}

