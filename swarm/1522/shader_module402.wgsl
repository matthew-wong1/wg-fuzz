struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f * 128f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-821f, -1938f, false)))), 1000f)))), abs((vec3<u32>(u_input.a, 5831u, 38249u) << (~vec3<u32>(27151u, u_input.a, u_input.a) % vec3<u32>(32u))) >> ((~vec3<u32>(0u, 4294967295u, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), vec4<bool>(true, true, _wgslsmith_mod_u32(u_input.a | 5149u, u_input.a) == u_input.a, _wgslsmith_f_op_f32(-221f - _wgslsmith_f_op_f32(ceil(2423f))) >= _wgslsmith_f_op_f32(f32(-1f) * -3357f)));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, -2234f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1.a)), 1718f, (0i > u_input.b.x) || any(var_1.c.ywy)))), abs(var_1.b) ^ (~vec3<u32>(4294967295u, u_input.a, 1u) & countOneBits(~vec3<u32>(u_input.a, 1u, 1u))), select(vec4<bool>(true, !(!var_1.c.x), var_1.c.x, true), vec4<bool>(all(vec2<bool>(true, true)) && true, !(!var_1.c.x), all(!var_1.c.zwy), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, var_1.c.x, var_1.c.x), var_1.c))), vec4<bool>(any(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)), var_1.c.x, var_1.c.x, var_1.c.x | all(var_1.c.xwy))));
    var_1 = Struct_1(-818f, _wgslsmith_div_vec3_u32(var_1.b, var_1.b), vec4<bool>(!(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) != ~64464i), var_2.c.x, var_1.c.x, var_2.c.x));
    var_0 = _wgslsmith_f_op_f32(-1021f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(round(var_2.a))))));
    return select(var_2.c.xzz, select(select(!var_2.c.xyx, !(!var_1.c.xwz), var_2.c.x), select(vec3<bool>(false, 1010f <= var_1.a, !var_2.c.x), select(!var_2.c.yzz, select(var_1.c.yyy, var_1.c.yzz, var_1.c.yyx), !vec3<bool>(var_2.c.x, var_1.c.x, false)), true), select(select(select(vec3<bool>(var_1.c.x, false, false), var_2.c.zxx, vec3<bool>(var_1.c.x, true, var_1.c.x)), !var_1.c.zxw, !var_1.c.x), vec3<bool>(var_2.c.x, any(var_2.c.zzy), true), var_1.c.wwy)), false);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = !select(vec3<bool>(false, true, false), func_3(), vec3<bool>(!all(vec2<bool>(false, false)), !all(vec4<bool>(false, true, false, false)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false))));
    let var_1 = u_input.b.x;
    var_0 = select(!select(vec3<bool>(false, var_0.x, var_0.x), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, var_1 == u_input.b.x)), vec3<bool>(!select(true, var_0.x && var_0.x, var_0.x), true, true), !(firstLeadingBit(var_1 << (4294967295u % 32u)) != (_wgslsmith_mult_i32(var_1, 0i) | u_input.b.x)));
    var_0 = !vec3<bool>(arg_0.x > 4297u, true, all(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))))), firstLeadingBit(~(~arg_0.yzy) >> (~arg_0.zyy % vec3<u32>(32u))), !select(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x)), !(!vec4<bool>(false, false, false, var_0.x)), var_0.x));
    return false;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = all(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, func_2(vec4<u32>(arg_0, 26124u, 37524u, u_input.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2355f), _wgslsmith_add_vec3_u32(vec3<u32>(12662u, reverseBits(1u), _wgslsmith_add_u32(1u & arg_0, u_input.a)), select(~vec3<u32>(arg_0, 4294967295u, 280u) << (vec3<u32>(34245u, arg_0, arg_0) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, 1u, 1u)), true)), vec4<bool>(true, func_3().x, ~_wgslsmith_mod_u32(4294967295u, 76816u) < arg_0, true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(633f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1798f, var_1.a)))), false)) - -1000f) - _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(145f)))))));
    let var_3 = var_1;
    var_0 = var_1.c.x;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_2.a)), arg_2.b, select(vec4<bool>(!(false & arg_0), arg_2.c.x, ~u_input.a != ~11725u, true), vec4<bool>((arg_1.x >= 0i) == arg_2.c.x, false, true, arg_0), arg_2.c));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(1f)), abs(firstTrailingBit(vec3<u32>(~840u, ~u_input.a, u_input.a))), vec4<bool>(true, func_3().x, any(arg_2.c.yzw), false));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1437f * arg_2.a))) * -1374f), countOneBits(vec3<u32>(var_0.b.x, 0u, var_0.b.x)), !(!arg_2.c));
    let var_1 = Struct_1(arg_2.a, arg_2.b, vec4<bool>(true | (_wgslsmith_clamp_i32(u_input.b.x, 1i, arg_1.x) <= arg_1.x), arg_0, (max(1i, 0i) << (u_input.a % 32u)) > _wgslsmith_sub_i32(0i, 1i), var_0.c.x));
    var var_2 = any(!arg_2.c.xyz);
    return _wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(_wgslsmith_div_u32(4294967295u, var_1.b.x), ~var_0.b.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(~var_1.b.zz), vec2<u32>(4294967295u, 0u)), min(vec2<u32>(30485u, arg_2.b.x), _wgslsmith_mod_vec2_u32(reverseBits(arg_2.b.zy), var_0.b.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.a, 27435u))), select(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(75191u, 4294967295u) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 13714u), vec2<u32>(u_input.a, u_input.a)), any(vec3<bool>(true, true, true))) ^ func_4(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), vec2<i32>(-2147483647i, firstLeadingBit(u_input.b.x)), func_1(_wgslsmith_div_u32(u_input.a, u_input.a))));
    let var_1 = func_1(4294967295u).c.x;
    var var_2 = func_1(u_input.a & func_4(!func_3().x, vec2<i32>(u_input.b.x, ~(-34494i)), func_1(_wgslsmith_sub_u32(u_input.a, 95582u))).x);
    let var_3 = countOneBits(~countOneBits(var_2.b));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-488f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, -1151f) + 1441f)))), abs(abs(abs(vec3<u32>(u_input.a, var_2.b.x, 4294967295u)) & countOneBits(var_3))), select(!(!var_2.c), !(!var_2.c), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -773f), 890f), func_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(24600u, 36103u), 4294967295u | var_2.b.x), max(firstLeadingBit(var_4.b.x), ~0u), ~var_0.x & u_input.a)).a);
}

