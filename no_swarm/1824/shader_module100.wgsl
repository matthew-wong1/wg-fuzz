struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 7> = array<u32, 7>(1u, 0u, 1u, 850u, 1u, 0u, 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<u32> {
    return ~select(~abs(_wgslsmith_div_vec3_u32(arg_3.d, vec3<u32>(14767u, global1[_wgslsmith_index_u32(arg_3.b, 7u)], arg_3.b))), u_input.b, vec3<bool>(!global0.x | all(global0.yx), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-vec2<i32>(1i, 1i), _wgslsmith_mult_u32(u_input.b.x, select(4294967295u, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)], 1u), any(global0.xx))), vec4<i32>(-(49381i << (_wgslsmith_mult_u32(43253u, u_input.a.x) % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(22403i, 0i, -29697i), vec3<i32>(2147483647i, 52601i, -1i)), 1i), 1i), ~(~(~(-2147483647i))), ~min(1i, i32(-1i) * -24225i)), vec3<u32>(u_input.b.x, ~(u_input.a.x & 4294967295u), 24717u) | ((~u_input.b | func_1(global0.x, vec3<f32>(594f, -786f, -1370f), vec3<f32>(1892f, 843f, 202f), Struct_1(vec2<i32>(0i, -69467i), 76010u, vec4<i32>(-2147483647i, 2147483647i, -38394i, 26550i), vec3<u32>(0u, u_input.b.x, u_input.b.x)))) & vec3<u32>(10754u, 4294967295u << (u_input.b.x % 32u), abs(1u))));
    global1 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1289f, -2018f, 316f, 854f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(507f, 1000f, -1000f, -132f), vec4<f32>(-1486f, -586f, 729f, -431f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1521f, -605f, -1055f, -1000f))))))), _wgslsmith_clamp_i32(reverseBits(var_0.a.x), -2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(1i), 2147483647i), 1i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_0.d, ~vec3<u32>(~34681u, 29536u, _wgslsmith_div_u32(1u, 4294967295u))), 7u)]);
}

