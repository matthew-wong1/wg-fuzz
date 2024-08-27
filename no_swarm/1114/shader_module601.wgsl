struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: vec2<f32> = vec2<f32>(246f, -749f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = 1u;
    return abs(~abs(0u));
}

fn func_3() -> u32 {
    global0 = array<i32, 11>();
    global1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, -747f)) * _wgslsmith_f_op_f32(-global1.x)) * global1.x))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-263f, global1.x, -206f, -489f))))));
    global0 = array<i32, 11>();
    let var_1 = max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), false), ~reverseBits(vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_clamp_u32(countOneBits(1u), 1u, 59788u)), _wgslsmith_div_u32(2620u, ~_wgslsmith_div_u32(19904u, ~260u)));
    return ~var_1;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec4<u32> {
    global0 = array<i32, 11>();
    return _wgslsmith_add_vec4_u32(~firstLeadingBit(~vec4<u32>(arg_1, 24865u, arg_1, arg_1)), max(_wgslsmith_div_vec4_u32(~vec4<u32>(33919u, arg_1, 19950u, arg_1), ~vec4<u32>(arg_1, arg_1, 1u, 0u)), vec4<u32>(arg_1 & 1u, ~3566u, arg_1, func_3()))) | (vec4<u32>(27285u, ~arg_1 >> (arg_1 % 32u), 105778u, _wgslsmith_add_u32(func_1(18858u, arg_1), _wgslsmith_clamp_u32(arg_1, 21920u, arg_1))) ^ _wgslsmith_mod_vec4_u32(~(~vec4<u32>(30984u, 8787u, 1u, 4294967295u)), ~vec4<u32>(21730u, arg_1, arg_1, 9468u) >> (~vec4<u32>(arg_1, arg_1, 16592u, 1u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-219f, global1.x)));
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, 299i, u_input.a.x) | ~vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-12858i, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], 1i), vec4<i32>(global0[_wgslsmith_index_u32(29556u, 11u)], u_input.b.x, global0[_wgslsmith_index_u32(94989u, 11u)], u_input.b.x)), select(global0[_wgslsmith_index_u32(4294967295u, 11u)], 9805i, false)), ~_wgslsmith_sub_vec3_i32(select(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(18945u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], -2147483647i)), u_input.a & u_input.a, true), vec3<i32>(1i, countOneBits(global0[_wgslsmith_index_u32(4294967295u, 11u)]), ~1i)));
    var var_1 = ~abs(vec4<u32>(1u, 1u, 1u, 1u));
    var_1 = vec4<u32>(func_1(abs(max(4294967295u, var_1.x) >> (4294967295u % 32u)), ~4294967295u), 4294967295u, var_1.x, ~(~_wgslsmith_mod_u32(firstTrailingBit(0u), ~var_1.x)));
    global0 = array<i32, 11>();
    let var_2 = Struct_1(!vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true, !any(vec4<bool>(true, true, false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_1.x < var_1.x, false)), ~vec4<u32>(~var_1.x, firstTrailingBit(var_1.x), var_1.x, 1u));
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f), global1.x) + _wgslsmith_div_f32(global1.x, global1.x))));
    let var_3 = Struct_1(select(var_2.a, select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true)), all(!(!vec2<bool>(false, var_2.a.x)))), !var_2.b, (~(~var_2.c) | ~func_2(vec2<i32>(u_input.a.x, var_0), var_2.c.x)) ^ (var_2.c & ~(~var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(global1.x * 1386f))))), countOneBits(~1u));
}

