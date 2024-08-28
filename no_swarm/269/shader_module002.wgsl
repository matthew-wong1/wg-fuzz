struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, ~(-1i), -u_input.a.x), u_input.a.yyy)), true, -_wgslsmith_mod_vec4_i32(abs(u_input.a) ^ (u_input.a >> (u_input.b % vec4<u32>(32u))), vec4<i32>(-25187i, firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x)), u_input.b);
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) * -1959f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, u_input.b);
}

