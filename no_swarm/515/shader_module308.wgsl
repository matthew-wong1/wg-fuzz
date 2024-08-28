struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.x;
    var_0 = abs(u_input.b.x);
    let var_1 = arg_2;
    let var_2 = !select(vec2<bool>(any(!vec4<bool>(false, true, false, arg_2.a)), var_1.a), vec2<bool>(var_1.c, select(!var_1.c, arg_2.a || arg_2.a, !arg_2.a)), vec2<bool>(true, true));
    var_0 = 91010u;
    return var_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(336f + arg_1.d.x))))), 640f, arg_1.d.x, -1869f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -767f), func_1(arg_2, vec3<u32>(u_input.b.x, u_input.b.x, 16358u), arg_1).d.x)) + _wgslsmith_f_op_f32(234f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_1.d.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-371f, var_0.x), arg_1.b.x, !all(arg_0.yx) & any(!vec3<bool>(arg_1.c, true, arg_1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(487f - -1305f) * _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x)) - _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-arg_1.d.x));
    let var_1 = vec4<i32>(arg_2, reverseBits(arg_2), -(~(-16443i)), -1i);
    let var_2 = 38143i;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(776f, arg_1.b.x, -1088f, arg_1.d.x)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.d.x, arg_1.b.x, -828f, var_0.x)))) * arg_1.b))));
    return Struct_1(any(!(!(!vec3<bool>(arg_1.c, arg_0.x, false)))), _wgslsmith_f_op_vec4_f32(step(arg_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(arg_1.b.x, 1293f, arg_1.b.x, -1000f)))))), false, vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, var_0.x, !(!arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1071f)) + _wgslsmith_f_op_f32(var_0.x + -822f)) * arg_1.d.x), var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    let var_1 = vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(~(-42074i), 9150i, u_input.e.x), 2147483647i << (max(~u_input.b.x, reverseBits(u_input.b.x)) % 32u)) ^ vec3<i32>(2147483647i, u_input.d.x, 10457i);
    var var_2 = abs(select(1i, -1i, 1759f == _wgslsmith_div_f32(2346f, _wgslsmith_f_op_f32(round(1000f)))));
    let var_3 = func_1(u_input.a.x, vec3<u32>(~0u, ~(~u_input.b.x), firstTrailingBit(~0u) >> (_wgslsmith_div_u32(~u_input.b.x, 0u) % 32u)), Struct_1(var_0.c, vec4<f32>(-385f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), 942f)), 544f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x + -2117f) * _wgslsmith_f_op_f32(-arg_2.b.x))), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.wxx) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b.x, arg_0.d.x, -256f), arg_2.b.yzy))), _wgslsmith_f_op_vec3_f32(floor(arg_2.d)))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) - _wgslsmith_f_op_f32(-1033f + arg_2.d.x))) * _wgslsmith_f_op_f32(1733f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x))) * 788f), arg_0.b.x)), 1257f);
    return var_0.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = ~countOneBits(u_input.d.wx);
    let var_1 = select(firstTrailingBit(~(~u_input.b.x | ~u_input.b.x)), 65548u, all(vec4<bool>((var_0.x == -18839i) & arg_1.a, false, func_4(func_3(vec3<bool>(true, arg_1.a, arg_0.x), Struct_1(true, vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.d.x, -1179f), true, vec3<f32>(840f, arg_1.b.x, arg_1.b.x)), u_input.d.x), true || arg_0.x, func_1(var_0.x, vec3<u32>(4294967295u, u_input.b.x, 18215u), arg_1)), ~0u > abs(u_input.b.x))));
    let var_2 = !func_3(select(select(vec3<bool>(arg_0.x, true, false), vec3<bool>(false, false, true), select(vec3<bool>(true, arg_1.c, arg_1.c), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, arg_1.c, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), arg_1.a), true), !vec3<bool>(true, true, arg_0.x)), Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.b.x, arg_1.d.x, 225f)), any(!vec3<bool>(true, arg_1.c, arg_1.a)), vec3<f32>(1089f, arg_1.d.x, _wgslsmith_f_op_f32(-arg_1.b.x))), ~var_0.x & -11195i).a;
    var var_3 = -max(u_input.e.x, 2147483647i);
    let var_4 = 42523u;
    return _wgslsmith_f_op_f32(-arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x;
    var var_1 = -3457i;
    let var_2 = -abs(~vec4<i32>(var_0, min(u_input.e.x, var_0), ~var_0, _wgslsmith_mod_i32(15862i, 21587i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -916f)))));
    var_3 = -736f;
    let var_4 = _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), func_1(-2147483647i | _wgslsmith_mult_i32(~u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -31435i, 0i), u_input.c)), vec3<u32>(42912u << (u_input.b.x % 32u), 4294967295u, abs(u_input.b.x)) >> ((~u_input.b.ywz | (vec3<u32>(1u, 91890u, u_input.b.x) ^ u_input.b.xyw)) % vec3<u32>(32u)), Struct_1(!select(true, false, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(345f, -145f, 982f, -1364f))), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1377f, -296f, -298f))))));
    var var_5 = ~vec3<i32>(reverseBits(var_2.x) << (u_input.b.x % 32u), -_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(-16393i, 2147483647i)) >> (select(firstLeadingBit(4294967295u), firstTrailingBit(11539u), false) % 32u), 0i);
    var var_6 = select(vec4<bool>(all(vec2<bool>(true, false)), func_4(func_3(vec3<bool>(true, true, true), Struct_1(false, vec4<f32>(-410f, -1000f, -989f, var_4), false, vec3<f32>(256f, 139f, 2307f)), 0i), all(vec2<bool>(true, true)), func_1(0i, ~vec3<u32>(u_input.b.x, 1u, 1u), func_3(vec3<bool>(false, true, true), Struct_1(true, vec4<f32>(var_4, var_4, 403f, var_4), true, vec3<f32>(-482f, var_4, var_4)), var_5.x))), false, func_1(var_5.x, vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.zwy), abs(u_input.b.x)), func_1(_wgslsmith_clamp_i32(-18046i, u_input.e.x, var_5.x), u_input.b.zyy, Struct_1(false, vec4<f32>(-446f, var_4, 114f, var_4), true, vec3<f32>(1000f, var_4, 1613f)))).c), select(vec4<bool>(any(vec2<bool>(true, false)), true, abs(var_2.x) == _wgslsmith_mult_i32(var_0, -1i), any(vec3<bool>(false, false, false))), select(vec4<bool>(true, func_4(Struct_1(true, vec4<f32>(var_4, 537f, -878f, var_4), false, vec3<f32>(205f, 170f, 822f)), false, Struct_1(false, vec4<f32>(-369f, 970f, var_4, -796f), true, vec3<f32>(-1129f, var_4, var_4))), true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(any(vec4<bool>(true, false, true, true)), true, false, var_4 > 341f)), all(vec4<bool>(true, true, false, true))), vec4<bool>(true, false, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b), u_input.d.x);
}

