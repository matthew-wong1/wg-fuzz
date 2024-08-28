struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec2_u32(min(_wgslsmith_mod_vec2_u32(abs(~u_input.b), firstLeadingBit(vec2<u32>(800u, u_input.b.x)) | ~u_input.b), _wgslsmith_add_vec2_u32(~u_input.b, ~vec2<u32>(1u, 31885u)) & _wgslsmith_add_vec2_u32(abs(u_input.b), vec2<u32>(u_input.b.x, u_input.b.x))), select(u_input.b, u_input.b, vec2<bool>(-680f >= _wgslsmith_f_op_f32(arg_1.a.a.x * arg_1.a.a.x), false)));
    var_0 = vec2<u32>(~(u_input.b.x ^ 22192u), _wgslsmith_add_u32(~55878u, ~4294967295u) >> ((u_input.b.x | u_input.b.x) % 32u)) << (u_input.b % vec2<u32>(32u));
    var var_1 = arg_0.a;
    var_1 = arg_1.a;
    var var_2 = (vec3<i32>(-11039i, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, -31266i), -32122i), 41710i) & vec3<i32>(u_input.a.x, ~(-2305i), firstTrailingBit(-30978i))) & abs(select(abs(~vec3<i32>(2147483647i, u_input.c.x, u_input.a.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -1i, u_input.a.x), !arg_0.a.b));
    return arg_1.a.b;
}

fn func_2(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(vec3<f32>(621f, -624f, _wgslsmith_f_op_f32(f32(-1f) * -622f)), func_3(Struct_2(Struct_1(vec3<f32>(-102f, 1141f, -1273f), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(1000f * -667f)), Struct_2(Struct_1(vec3<f32>(491f, 1000f, 1060f), vec3<bool>(true, true, true)), _wgslsmith_div_f32(849f, -490f)), max(4294967295u, 98947u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-1116f - _wgslsmith_f_op_f32(abs(-1214f))), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2363f + -1528f))));
    return vec3<u32>(0u, ~reverseBits(_wgslsmith_mult_u32(u_input.b.x, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(u_input.b, u_input.b, false), vec2<u32>(u_input.b.x, 32360u)), 0u)) << (vec3<u32>(u_input.b.x, ~u_input.b.x, 22782u) % vec3<u32>(32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = arg_2.b.zx;
    let var_1 = ((vec3<u32>(_wgslsmith_mult_u32(arg_0.x, 1u), ~arg_0.x, arg_0.x) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 0u) & vec3<u32>(u_input.b.x, arg_0.x, u_input.b.x), func_2(vec3<i32>(0i, u_input.d.x, -1i)))) | (~(~vec3<u32>(arg_0.x, 1u, arg_0.x)) << (((vec3<u32>(0u, u_input.b.x, 3628u) & vec3<u32>(u_input.b.x, 166209u, arg_0.x)) & min(vec3<u32>(45075u, u_input.b.x, arg_0.x), vec3<u32>(55637u, arg_0.x, arg_0.x))) % vec3<u32>(32u)))) << (~firstTrailingBit(max(vec3<u32>(u_input.b.x, 2922u, u_input.b.x) >> (vec3<u32>(57827u, u_input.b.x, 26350u) % vec3<u32>(32u)), vec3<u32>(631u, 4294967295u, arg_0.x))) % vec3<u32>(32u));
    var var_2 = select(select(vec4<bool>(var_0.x, !arg_2.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(23023u, var_1.x), vec2<u32>(125206u, arg_0.x)) < (var_1.x >> (4294967295u % 32u)), false), vec4<bool>(true, !var_0.x, select(true, any(vec2<bool>(arg_2.b.x, var_0.x)), var_0.x), true), vec4<bool>(arg_1.x != max(-36659i, u_input.a.x), true, false, true)), !(!(!(!vec4<bool>(var_0.x, arg_2.b.x, true, false)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_div_f32(arg_2.a.x, 1f));
    let var_3 = vec2<i32>(reverseBits(~2147483647i), 1i);
    let var_4 = (reverseBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, arg_1.x), i32(-1i) * -1i)) <= min(-arg_1.x, -2147483647i)) & any(select(select(select(vec4<bool>(true, false, arg_2.b.x, var_2.x), vec4<bool>(arg_2.b.x, var_0.x, var_2.x, var_2.x), var_2.x), select(vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(var_0.x, var_0.x, var_2.x, false), arg_2.b.x), arg_2.b.x), vec4<bool>(var_0.x & arg_2.b.x, true != arg_2.b.x, select(true, true, false), !arg_2.b.x), (arg_0.x <= 35303u) || true));
    return vec4<bool>(any(!var_2.wzw), true, true, select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1933f, arg_2.a.x)) - arg_2.a.x) <= -711f, -129f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_div_vec2_i32(vec2<i32>(-41273i, u_input.c.x) << (u_input.b % vec2<u32>(32u)), -vec2<i32>(-39632i, 25007i)), Struct_1(vec3<f32>(826f, 994f, -315f), vec3<bool>(true, true, false))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)), _wgslsmith_f_op_f32(sign(-298f)));
    var var_2 = countOneBits(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~func_2(-(vec3<i32>(-1264i, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u)))), ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 54516u, 1u), firstLeadingBit(vec3<u32>(4294967295u, 0u, u_input.b.x))) & 4294967295u), 4294967295u);
}

