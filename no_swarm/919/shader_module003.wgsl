struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<bool> {
    let var_0 = ~abs(vec4<i32>(-52560i, u_input.a.x, _wgslsmith_sub_i32(-u_input.a.x, 2147483647i), -2147483647i));
    var var_1 = ~select(u_input.b, u_input.c, all(vec3<bool>(var_0.x <= 31694i, any(vec2<bool>(true, true)), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)))), true, ~(~select(vec2<u32>(u_input.c, 19082u), vec2<u32>(54995u, u_input.c), vec2<bool>(false, false)) & countOneBits(abs(vec2<u32>(91160u, 86466u)))), !(_wgslsmith_div_i32(-2147483647i << (0u % 32u), abs(u_input.a.x)) < ~(-17575i)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.yy, vec2<i32>(u_input.a.x, var_0.x)) | -var_0.xw, u_input.a.yz));
    var var_3 = 20200u;
    let var_4 = abs(1u) ^ max(_wgslsmith_mod_u32(_wgslsmith_mod_u32(15267u, _wgslsmith_sub_u32(var_2.c.x, 46059u)), u_input.b), ~var_2.c.x);
    return !vec2<bool>(!(!any(vec2<bool>(true, true))), var_2.b);
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec3_i32(u_input.a, ~vec3<i32>(u_input.a.x, arg_0.e.x, _wgslsmith_div_i32(~28684i, -46744i)));
    var var_1 = vec3<bool>(u_input.b > (u_input.c | 4294967295u), false, any(select(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, true)), select(vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), true), !arg_0.d), func_2(), vec2<bool>(true, true))));
    var_1 = !(!(!(!select(vec3<bool>(false, arg_0.b, false), vec3<bool>(true, arg_0.d, var_1.x), vec3<bool>(true, true, var_1.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -1666f))))));
    var_1 = vec3<bool>(all(!select(!var_1.xz, vec2<bool>(false, false), true)), arg_0.d, !arg_0.d);
    return vec3<bool>(true, var_1.x, true);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -525f) - -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) * _wgslsmith_f_op_f32(243f + -141f))))));
    var var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1040f))))), var_0, _wgslsmith_f_op_f32(-267f - -593f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(var_0, 1000f))), var_0))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), 1184f)) - _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(abs(var_0))))) + -1206f));
    return 969f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(~u_input.b, ~(~1u));
    var_0 = 13701u >> (_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(18472u, 38343u, 4294967295u, u_input.c)), vec4<u32>(54429u, 1u, 0u, 41973u) & vec4<u32>(1u, u_input.b, 13715u, 4192u))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(~u_input.c, 0u))) % 32u);
    var_0 = _wgslsmith_dot_vec3_u32(~(~(~select(vec3<u32>(u_input.b, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.c, 30396u), true))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.b), _wgslsmith_mod_u32(u_input.b, 4294967295u)), 84212u), vec3<u32>(~(~u_input.b), firstLeadingBit(_wgslsmith_add_u32(1u, 1u)), 68655u)));
    let var_1 = Struct_1(-700f, select(any(!func_1(Struct_1(-761f, true, vec2<u32>(0u, u_input.c), true, u_input.a.zx))), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1647f + -1320f)) <= _wgslsmith_f_op_f32(sign(-1000f))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.c), vec3<u32>(u_input.c, 78218u, u_input.b)), vec3<u32>(u_input.c, u_input.b, u_input.b)), ~(vec3<u32>(11287u, u_input.c, 40643u) & vec3<u32>(6026u, 29096u, u_input.c))), 1u), all(vec3<bool>(true, true, _wgslsmith_f_op_f32(1000f + -180f) >= _wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 4294967295u))))), abs(u_input.a.xy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(max(u_input.a, vec3<i32>(2147483647i, var_1.e.x, var_1.e.x)), vec3<i32>(56329i, -19514i, -1i)) << ((countOneBits(vec3<u32>(0u, u_input.c, var_1.c.x)) & max(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 0u, 4294967295u))) % vec3<u32>(32u)), select(firstTrailingBit(abs(u_input.a)), -u_input.a, true)));
}

