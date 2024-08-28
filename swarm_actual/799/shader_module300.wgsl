struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.c.x;
    var_0 = abs(max(u_input.c.x, 0i));
    let var_1 = true;
    let var_2 = _wgslsmith_clamp_vec2_u32((_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), u_input.b.zw) | ~vec2<u32>(23332u, u_input.b.x)) | ~(u_input.b.xy >> (_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))), vec2<u32>(countOneBits(u_input.b.x), ~4294967295u & countOneBits(u_input.b.x ^ 4294967295u)), vec2<u32>(u_input.b.x, firstTrailingBit(4294967295u)));
    let var_3 = select(var_1, true, _wgslsmith_f_op_f32(f32(-1f) * -459f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(158f - -1008f))) + -917f));
    return select(!(!vec4<bool>(true, false, any(vec2<bool>(true, var_1)), false)), vec4<bool>(!var_1, var_3 & !any(vec4<bool>(true, false, var_3, var_1)), var_1, true), !vec4<bool>(false, true, (u_input.b.x > 0u) | all(vec4<bool>(false, var_3, false, var_3)), true));
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(false, false);
    var_0 = vec2<bool>(all(func_3()), var_0.x);
    var_0 = vec2<bool>(true, any(func_3().zz));
    let var_1 = -1785f;
    var_0 = select(select(func_3().zx, vec2<bool>(select(select(false, var_0.x, true), var_0.x, var_0.x), var_0.x), var_0.x), !func_3().ww, var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1842f) - var_1)), var_1)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + _wgslsmith_f_op_f32(-arg_2))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(floor(664f))))));
    let var_1 = Struct_1(select(vec4<i32>(~u_input.c.x, -1i, 19203i, -u_input.a.x), vec4<i32>(firstTrailingBit(u_input.c.x), u_input.a.x ^ 0i, u_input.a.x, _wgslsmith_div_i32(u_input.c.x, 12699i)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true)) | select(vec4<i32>(24230i, 1i, -u_input.c.x, u_input.c.x), vec4<i32>(~2147483647i, -49664i | u_input.c.x, -u_input.a.x, -16050i), true));
    var var_2 = Struct_2(arg_1.x, _wgslsmith_mult_u32(abs(arg_1.x), 1u), arg_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0, var_0), 1000f, arg_0.x > arg_1.x)) < -149f, u_input.b);
    var_2 = Struct_2(u_input.b.x, u_input.b.x, _wgslsmith_div_u32(arg_1.x, _wgslsmith_sub_u32(select(1u, var_2.a, var_2.d), arg_1.x)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, arg_1.x, arg_1.x), vec4<u32>(4294967295u, arg_1.x, 8041u, u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, ~0u)) % 32u), -(~(u_input.a.x ^ -41071i)) <= 1i, abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_2.c, 4294967295u), vec4<u32>(var_2.a, arg_0.x, u_input.b.x, 0u)), vec4<u32>(u_input.b.x, reverseBits(75063u), arg_1.x, var_2.e.x), select(vec4<u32>(arg_1.x, 23459u, var_2.e.x, 12418u), ~var_2.e, false & var_2.d))));
    let var_3 = u_input.b.xwy;
    return StorageBuffer(var_1.a.x, _wgslsmith_add_i32(_wgslsmith_add_i32(var_1.a.x, -35595i), ~max(_wgslsmith_mult_i32(12133i, u_input.c.x), ~var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 963f;
    let x = u_input.a;
    s_output = func_1(u_input.b.yzy, _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(~0u), 41017u, ~u_input.b.x), ~reverseBits(u_input.b.zzy & vec3<u32>(u_input.b.x, 51262u, 20446u))), 774f);
}

