struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_3(max(1u, ~4294967295u));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(arg_3.wy, vec2<u32>(_wgslsmith_add_u32(arg_2.b.x, 1u) >> (_wgslsmith_sub_u32(44109u, arg_2.b.x) % 32u), ~273u)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1818f)))));
    var_1 = Struct_1(var_1.a);
    var_1 = Struct_1(firstTrailingBit(vec2<u32>(~80188u, _wgslsmith_mult_u32(42382u, u_input.a))) << (~vec2<u32>(10490u | arg_2.a.x, 1u) % vec2<u32>(32u)));
    return true;
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(u_input.a, 0u) ^ abs(vec2<u32>(0u, 46224u)), ~(vec2<u32>(7913u, 0u) & vec2<u32>(1u, u_input.a)), vec2<bool>(true, true)), ~vec2<u32>(83607u, 33704u), _wgslsmith_mult_vec2_u32(max(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, u_input.a)), ~(~vec2<u32>(arg_0, 4294967295u))), abs(vec2<u32>(~u_input.a, arg_0))));
    let var_1 = Struct_1(((abs(vec2<u32>(u_input.a, u_input.a)) | ~vec2<u32>(23676u, 18845u)) ^ firstTrailingBit(firstLeadingBit(vec2<u32>(var_0.x, 30418u)))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    var var_2 = true;
    var_0 = vec2<u32>(var_0.x, ~(arg_0 ^ ~u_input.a));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(2498f)), _wgslsmith_f_op_f32(trunc(641f)))) + 919f))));
    return _wgslsmith_f_op_f32(-var_3);
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = vec2<i32>(arg_1, _wgslsmith_div_i32(-429i, -6554i));
    var var_1 = all(vec4<bool>(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-161f)))) >= 1f, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_2(-727f, Struct_2(vec2<u32>(arg_0, arg_0), vec4<u32>(1u, 0u, arg_0, 4294967295u)), Struct_2(vec2<u32>(90568u, 4294967295u), vec4<u32>(u_input.a, 28479u, arg_0, u_input.a)), vec4<u32>(u_input.a, arg_0, 19824u, 70817u))))));
    var_1 = all(!vec3<bool>(any(vec4<bool>(false, true, true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -1831f) >= _wgslsmith_f_op_f32(func_3(u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f - -1430f) * _wgslsmith_f_op_f32(f32(-1f) * -868f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)) + _wgslsmith_f_op_f32(1000f + 1f)));
    var_0 = vec2<i32>(abs(_wgslsmith_div_i32(var_0.x, _wgslsmith_sub_i32(u_input.b.x, var_0.x)) << (max(0u, abs(1u)) % 32u)), arg_1);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(u_input.a, u_input.a), 3037i)))));
    var var_1 = firstTrailingBit(0u);
    let var_2 = Struct_4(465f);
    let var_3 = var_2.a;
    var_0 = Struct_4(var_0.a);
    let var_4 = -(~(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(65217i, firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a ^ 0u, 1642u, u_input.a >> (28826u % 32u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), ~(u_input.b.ywx & vec3<i32>(var_4, _wgslsmith_mod_i32(u_input.b.x, var_4), -var_4)), vec2<u32>(u_input.a, _wgslsmith_div_u32(20205u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 54190u)), 4140u))));
}

