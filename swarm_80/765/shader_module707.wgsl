struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(1672f, -263f, -549f, -589f, 848f, -1109f, -1518f, 1111f, 1556f, 1623f, 966f, -388f, 1065f, -3748f, 267f, -938f, -1923f, -149f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = vec4<i32>(33008i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-2147483647i, -2147483647i, 1i, 8100i)), vec4<i32>(~(-2147483647i), select(-2147483647i, 1i, arg_1), -23079i, 2147483647i)) | _wgslsmith_mult_i32(-1i, ~(-2147483647i >> (u_input.a % 32u))), 0i, -3412i);
    return arg_1 & arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(select(_wgslsmith_div_vec4_u32(arg_1, vec4<u32>(u_input.a, u_input.a, 12756u, 4294967295u)), arg_1, select(u_input.a != 33484u, any(vec4<bool>(false, true, true, false)), true)), abs(~vec4<u32>(1u, 18750u, 4294967295u, u_input.a)) >> (vec4<u32>(firstTrailingBit(1u), max(7743u, u_input.a), 9393u, firstTrailingBit(0u)) % vec4<u32>(32u)));
    global0 = array<f32, 18>();
    let var_1 = Struct_1(_wgslsmith_mult_i32(arg_2.x, i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.x, 33974u, 1u), arg_1.xzz), any(vec3<bool>(false, all(vec2<bool>(true, false)) & func_2(35158u, true), _wgslsmith_f_op_f32(select(1000f, global0[_wgslsmith_index_u32(5942u, 18u)], true)) >= global0[_wgslsmith_index_u32(arg_1.x, 18u)])), max(select(~vec2<u32>(arg_1.x, 1u), ~vec2<u32>(var_0.x, arg_1.x), all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec2<u32>(5167u, ~(~u_input.a))), arg_2.x);
    global0 = array<f32, 18>();
    return -1061f;
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1506f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(73986u, 1u, 51295u)), abs(vec3<u32>(19057u, 18987u, 90917u))), 18u)], 2232f, arg_0)));
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_clamp_i32(-16805i, i32(-1i) * -34878i, select(~reverseBits(5678i), 1i, all(vec2<bool>(arg_1, arg_1))) << (min(47545u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))) % 32u));
    return _wgslsmith_dot_vec4_i32(-countOneBits(~abs(vec4<i32>(1i, var_2, var_2, var_2))), vec4<i32>(-1i) * -(vec4<i32>(var_2, var_2, var_2, -2147483647i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(4536i, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(-1006f, -1000f, 449f, global0[_wgslsmith_index_u32(31128u, 18u)])), vec4<u32>(56655u, u_input.a, 84974u, u_input.a), vec4<i32>(1i, 2147483647i, -44509i, 1i)))), 105665u > u_input.a) & ~0i, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(381f * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 18u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], false)) * global0[_wgslsmith_index_u32(u_input.a, 18u)]))));
}

