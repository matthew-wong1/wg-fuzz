struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec3<f32>, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x & 4294967295u, 4u)];
    let var_1 = Struct_1(-256f, _wgslsmith_div_i32(_wgslsmith_mod_i32(abs(global0.b), select(1i, var_0.e, false)) | -1i, _wgslsmith_add_i32(~45614i, arg_0.x)), false, all(select(!vec2<bool>(true, global0.d), select(!vec2<bool>(global0.d, global0.c), select(vec2<bool>(global0.c, true), vec2<bool>(var_0.c, global0.d), vec2<bool>(global0.c, var_0.c)), false && var_0.c), select(vec2<bool>(true, true), vec2<bool>(global0.c, false), global0.d))), select(global0.b, abs(max(-1i, arg_0.x)), var_0.d));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~((4294967295u ^ u_input.b.x) >> (u_input.a.x % 32u)), _wgslsmith_sub_u32(87541u, 0u)), 4u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(225f * var_0.a), firstLeadingBit(-1i), true, !all(!vec3<bool>(false, var_0.d, false)), ~(-(~var_1.e & -var_0.e)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -184f))), firstTrailingBit(global0.e), any(select(vec3<bool>(0i == arg_0.x, true, var_2.c), !(!vec3<bool>(var_0.c, true, var_0.d)), vec3<bool>(true, all(vec4<bool>(var_3.c, true, var_1.d, false)), false & global0.c))), var_0.c, -8010i);
    return var_3.a;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(57527u, 1u, u_input.a.x, 1u), vec4<u32>(~4294967295u, ~0u, ~(~u_input.b.x), ~_wgslsmith_mult_u32(u_input.b.x, 42029u)));
    var var_1 = _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -668f));
    var var_2 = Struct_1(global0.a, -66468i, global0.c, global0.d, ~_wgslsmith_mult_i32(global0.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_0, arg_0))));
    var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 4u)];
    let var_3 = _wgslsmith_f_op_f32(min(2382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(881f, _wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, -2369i))))))));
    return global1[_wgslsmith_index_u32(~(~0u), 4u)];
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<Struct_1, 4>();
    let var_0 = func_2(0i, global0.b);
    let var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 4u)];
    global2 = array<vec3<f32>, 6>();
    global0 = func_2(var_0.e, min(global0.b, global0.e));
    return global1[_wgslsmith_index_u32(57255u, 4u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    let var_0 = ~(_wgslsmith_mod_vec2_u32(~u_input.a, u_input.b.zx) & ~vec2<u32>(~arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(1913u, arg_0, u_input.a.x, 62665u), vec4<u32>(arg_0, 1u, 0u, 1u))));
    let var_1 = u_input.b.x;
    let var_2 = global0.a;
    var var_3 = _wgslsmith_add_vec4_u32(u_input.b, firstTrailingBit(_wgslsmith_clamp_vec4_u32(u_input.b, ~u_input.b << (~u_input.b % vec4<u32>(32u)), u_input.b)));
    let var_4 = func_2(~arg_2.x, abs(_wgslsmith_add_i32(-3065i, 1i)));
    return _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0, _wgslsmith_add_u32(var_0.x ^ var_1, var_3.x)) << ((0u & u_input.b.x) % 32u), _wgslsmith_mod_u32((var_3.x >> (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u)) & max(var_1, var_1 ^ 32186u), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(func_4(select(u_input.a.x, u_input.a.x, any(vec3<bool>(4294967295u <= u_input.a.x, false, !global0.d))), func_1(true), firstLeadingBit(vec3<i32>(func_2(global0.b, 10225i).e, ~countOneBits(global0.b), global0.b))), 4u)];
    let var_1 = countOneBits(~u_input.a.x);
    let var_2 = firstTrailingBit(var_0.e) != var_0.e;
    var_0 = Struct_1(var_0.a, i32(-1i) * -_wgslsmith_mult_i32(16602i, -1i), true, !(!any(select(vec2<bool>(false, true), vec2<bool>(var_0.d, var_2), var_0.c))), min(1i, -1i));
    var var_3 = vec3<u32>(var_1, ~48213u, var_1);
    var var_4 = global1[_wgslsmith_index_u32(var_1, 4u)];
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-266f, global0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.a)))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(210f, var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(406f)), abs(abs(u_input.a)) ^ var_3.xy, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x & var_3.x, 7858u >> (0u % 32u)), ~vec2<u32>(0u, 4294967295u)) << (~0u % 32u));
}

