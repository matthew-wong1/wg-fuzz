struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(select(vec2<bool>(false, false), vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true), true), u_input.c.zzy, true);
    var var_1 = reverseBits(-29529i);
    var var_2 = vec3<f32>(-1110f, -740f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1468f)))), 1f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_2.x, var_2.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, -2577f, -1000f), vec3<f32>(-1000f, -244f, 390f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 138f, -184f))))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-551f, var_2.x, -128f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1370f, -962f, var_2.x) + vec3<f32>(var_2.x, -421f, var_2.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -1357f, -611f), vec3<f32>(-891f, var_3.x, -262f), vec3<bool>(var_0.a.x, var_0.c, var_0.c)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1071f * var_2.x) + _wgslsmith_f_op_f32(var_3.x * -671f)) - var_3.x);
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1402f)) + _wgslsmith_f_op_f32(func_3())) < -437f;
    var var_1 = Struct_1(vec2<bool>(true, true), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 4294967295u, 35378u), abs(~u_input.c.zzw)), select(true, true, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(696f, -1028f, _wgslsmith_f_op_f32(select(-713f, -101f, var_1.a.x)), -561f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f)))))), -1561f, -558f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f))))), vec4<bool>(true, true, true, true)));
    let var_3 = Struct_1(!var_1.a, max(~vec3<u32>(4294967295u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 139280u, 26588u, 69880u), vec4<u32>(u_input.a.x, 1u, 56533u, var_1.b.x))), vec3<u32>(~0u, var_1.b.x, var_1.b.x)), !var_1.c);
    var_1 = var_3;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), !select(var_3.c, false, false))), 3108f, -528f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)), _wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(559f)), _wgslsmith_f_op_f32(var_2.x * var_2.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, 2916f, arg_1) - vec3<f32>(165f, -458f, arg_1)), _wgslsmith_f_op_vec3_f32(func_2())))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec3_f32(func_2()).x)));
    var var_1 = Struct_1(vec2<bool>(!any(arg_0.a) || (arg_0.c || true), true), arg_0.b, arg_0.a.x || any(!arg_0.a));
    let var_2 = arg_0;
    var_1 = var_2;
    let var_3 = Struct_1(vec2<bool>(-1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_1.a.x), arg_0.b, all(select(!(!vec4<bool>(false, true, var_1.a.x, true)), select(!vec4<bool>(var_2.a.x, arg_0.c, true, arg_0.a.x), vec4<bool>(var_2.c, arg_0.a.x, true, arg_0.a.x), !vec4<bool>(var_1.c, var_2.a.x, true, false)), select(!vec4<bool>(true, var_1.a.x, true, arg_0.a.x), select(vec4<bool>(arg_0.a.x, arg_0.c, false, var_1.a.x), vec4<bool>(var_2.a.x, false, var_2.a.x, false), vec4<bool>(false, var_1.c, false, false)), vec4<bool>(var_2.c, arg_0.a.x, var_1.c, arg_0.a.x)))));
    return !vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 + arg_1))) > arg_1, !(all(vec2<bool>(false, var_2.c)) == !arg_0.a.x), all(select(select(var_3.a, var_3.a, vec2<bool>(false, false)), arg_0.a, any(vec3<bool>(arg_0.c, true, false)))), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, true, true), func_1(Struct_1(vec2<bool>(true, true), vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x), false), -1412f, u_input.c.x), true)), true | all(vec2<bool>(true, false))), ~countOneBits(_wgslsmith_clamp_vec3_u32(reverseBits(u_input.c.ywy), ~u_input.c.xyy, vec3<u32>(u_input.b, 4294967295u, 0u))), true);
    var var_1 = Struct_1(var_0.a, min(min(~u_input.c.www, select(var_0.b, var_0.b, vec3<bool>(var_0.a.x, var_0.c, var_0.c)) << (_wgslsmith_sub_vec3_u32(u_input.c.wzy, vec3<u32>(u_input.a.x, 6661u, u_input.b)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~(~u_input.c.xzz), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u) ^ var_0.b, ~u_input.c.xzx))), all(select(var_0.a, vec2<bool>(func_1(Struct_1(var_0.a, vec3<u32>(0u, u_input.c.x, var_0.b.x), var_0.c), -299f, 4294967295u).x, true), true)));
    var_1 = var_0;
    let var_2 = Struct_1(func_1(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -299f))))), 22410u).wz, var_1.b, var_1.c);
    let var_3 = var_2.b.zx;
    var_1 = Struct_1(!(!vec2<bool>(any(var_1.a), !var_0.a.x)), _wgslsmith_mult_vec3_u32(var_0.b, var_0.b) | u_input.c.xxx, var_2.a.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1781f, _wgslsmith_f_op_f32(-705f + 954f)))), _wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -386f)), -326f))))) + _wgslsmith_f_op_f32(trunc(-1396f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4))), 4294967295u >> (~_wgslsmith_clamp_u32(countOneBits(var_2.b.x), 4294967295u, 25782u) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4, 485f, 394f, var_4))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4, var_4, var_4, -578f))))) + vec4<f32>(-933f, var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(791f)) + _wgslsmith_f_op_f32(-1781f * var_4)), _wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(528f - var_4)))));
}

