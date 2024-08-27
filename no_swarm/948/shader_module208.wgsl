struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x));
    var var_2 = _wgslsmith_sub_vec2_u32(u_input.b.yx, select(~vec2<u32>(u_input.b.x, 17735u), _wgslsmith_mod_vec2_u32(u_input.b.zz, u_input.b.zx) & vec2<u32>(57994u, 4294967295u), all(!vec4<bool>(arg_0.x, var_0.x, arg_0.x, arg_0.x)))) ^ u_input.b.zy;
    let var_3 = Struct_1(countOneBits(vec2<u32>(var_2.x, abs(u_input.b.x))), vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(abs(219f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-265f, -2456f), _wgslsmith_f_op_f32(-550f + -144f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1768f))));
    return StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 3651u, ~var_3.a.x), vec4<u32>(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.a.x, 14819u, 0u), vec4<u32>(var_2.x, var_3.a.x, 5418u, 69774u)), _wgslsmith_dot_vec2_u32(vec2<u32>(38101u, 24354u), u_input.b.yz), var_3.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.x >> (57185u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, 1i, var_1.x, var_1.x)), -2147483647i), reverseBits(u_input.a.x)), vec4<i32>(u_input.a.x, ~var_1.x, var_1.x, ~(-46451i) | _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, -35741i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec2<bool>(select(any(vec4<bool>(false, false, false, true)) && all(vec4<bool>(true, false, true, true)), !all(vec4<bool>(true, true, true, true)), (u_input.a.x & u_input.a.x) > u_input.a.x), (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) | _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) == ~33692u));
}

