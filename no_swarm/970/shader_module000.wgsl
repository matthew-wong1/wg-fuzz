struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    var var_0 = arg_0;
    var var_1 = ~arg_0.e.zx;
    var var_2 = arg_2;
    var var_3 = arg_0.a.c;
    let var_4 = -111f;
    return _wgslsmith_f_op_f32(-1027f + -1000f);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-249f, 2143f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-153f, 1327f)), _wgslsmith_f_op_f32(func_2(Struct_5(Struct_4(Struct_2(vec2<u32>(u_input.c.x, 14518u), -1000f, -1000f), true, Struct_2(u_input.e, -1049f, -114f)), arg_0.x, Struct_1(vec4<u32>(21730u, 39425u, 3878u, u_input.e.x)), u_input.c.x, vec4<i32>(-39723i, u_input.a.x, u_input.a.x, u_input.d.x)), vec4<bool>(true, arg_0.x, arg_0.x, true), Struct_3(arg_0.yxy, vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x), true, Struct_1(vec4<u32>(1u, 0u, 0u, 1u))), vec4<i32>(-1i, u_input.a.x, u_input.d.x, -2147483647i))), false && arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1107f, 389f)))))));
    let var_1 = select(!(!select(arg_0.wy, arg_0.xy, !vec2<bool>(arg_0.x, arg_0.x))), arg_0.xx, !select(!(!arg_0.yy), select(arg_0.xz, vec2<bool>(true, true), true & arg_0.x), !(true | arg_0.x)));
    var var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, abs(~1u)), select(u_input.c, u_input.c, false));
    let var_3 = abs(u_input.c);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1160f + -565f), _wgslsmith_f_op_f32(min(2585f, -455f)))) - -1000f);
    return ~u_input.e.x;
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = 4294967295u;
    var_0 = 0u;
    var_0 = 135915u;
    let var_1 = Struct_4(Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.zz, u_input.c.xy), 0u), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2217f, 2311f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + 998f), _wgslsmith_f_op_f32(ceil(-1439f)))), !all(vec2<bool>(false, false)))), _wgslsmith_div_f32(920f, 505f)), select(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true), Struct_2(vec2<u32>(~u_input.e.x, 6309u), _wgslsmith_div_f32(_wgslsmith_div_f32(-833f, -258f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1530f, 1592f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_5(Struct_4(Struct_2(vec2<u32>(u_input.e.x, u_input.c.x), 436f, 1038f), false, Struct_2(u_input.e, 634f, -669f)), false, Struct_1(vec4<u32>(24215u, 60803u, u_input.b, 64836u)), 10650u, vec4<i32>(arg_1, u_input.d.x, arg_0, arg_1)), vec4<bool>(true, true, true, true), Struct_3(vec3<bool>(false, true, false), vec4<i32>(arg_1, 2147483647i, -15774i, -19986i), true, Struct_1(vec4<u32>(4294967295u, 1u, u_input.b, u_input.c.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 4089i, arg_1, u_input.d.x), vec4<i32>(-28695i, 2147483647i, -2474i, -39420i)))) + _wgslsmith_f_op_f32(step(410f, _wgslsmith_f_op_f32(182f + -645f))))));
    var var_2 = Struct_4(Struct_2(~vec2<u32>(u_input.b, 0u ^ u_input.b), var_1.c.c, _wgslsmith_f_op_f32(-var_1.c.c)), true, Struct_2(firstLeadingBit(vec2<u32>(var_1.c.a.x, var_1.a.a.x)) >> (~u_input.e % vec2<u32>(32u)), _wgslsmith_f_op_f32(var_1.a.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b + -677f))), -1071f));
    return 12594i;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = -2344f;
    let var_1 = Struct_2(arg_0.xx, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) * _wgslsmith_f_op_f32(1000f * var_0)))))));
    let var_2 = var_1;
    var var_3 = Struct_3(vec3<bool>(all(vec2<bool>(true, false)) || true, all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), true), max(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-21105i, arg_1.x, -28277i, arg_1.x), arg_1)), vec4<i32>(2147483647i, -42191i, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.x, u_input.a.x), u_input.a.x), arg_1.x)), false, Struct_1(vec4<u32>(~(~1u), ~(~1u), min(28034u, 0u) & firstTrailingBit(u_input.c.x), 0u)));
    var var_4 = Struct_3(!var_3.a, _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(36156i, 1872i), 1i, ~abs(arg_1.x)), vec4<i32>(min(_wgslsmith_mult_i32(u_input.a.x, 0i), abs(-40631i)), u_input.a.x, u_input.a.x, _wgslsmith_add_i32(arg_1.x, arg_1.x) | ~1i)), all(vec4<bool>(select(false, var_3.c, true) & all(vec2<bool>(var_3.a.x, var_3.c)), !var_3.c, all(select(vec2<bool>(var_3.a.x, var_3.c), vec2<bool>(false, var_3.c), var_3.a.x)), !all(vec4<bool>(false, false, false, var_3.a.x)))), Struct_1(abs(countOneBits(~var_3.d.a))));
    return Struct_3(vec3<bool>(all(var_4.a.yz), ~var_3.d.a.x <= var_2.a.x, false), _wgslsmith_sub_vec4_i32(var_4.b, -(~vec4<i32>(-2147483647i, -2147483647i, var_4.b.x, arg_1.x))), all(!select(var_4.a, vec3<bool>(var_4.a.x, var_3.a.x, var_3.a.x), true)), var_4.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<u32>(func_1(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), 0u, ~(~1u)) | u_input.c, vec4<i32>(_wgslsmith_div_i32(func_3(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(9868i, 51313i, u_input.d.x, 0i), vec4<i32>(-2147483647i, -1i, 2147483647i, -4940i))), ~2147483647i), ~(~(~(-1i))), ~(~(~20624i)), -firstTrailingBit(-22243i)));
    var var_1 = select(min(select(~abs(var_0.b), var_0.b, false), var_0.b), min(var_0.b, func_4(func_4(u_input.c, vec4<i32>(var_0.b.x, u_input.d.x, var_0.b.x, 68504i)).d.a.zzx, vec4<i32>(2147483647i, -var_0.b.x, _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(0i, var_0.b.x, 4369i, u_input.a.x)), _wgslsmith_mult_i32(var_0.b.x, -22080i))).b), vec4<bool>(!all(vec4<bool>(true, var_0.a.x, var_0.a.x, true)), true, var_0.c, u_input.a.x != (~var_0.b.x ^ (u_input.d.x << (77957u % 32u)))));
    var_1 = ~abs(~(var_0.b ^ vec4<i32>(-1i, 29239i, -769i, 32698i))) | ~max(_wgslsmith_div_vec4_i32(vec4<i32>(48970i, var_1.x, 1i, u_input.a.x), var_0.b ^ vec4<i32>(-2147483647i, -14963i, -23019i, 39403i)), abs(firstTrailingBit(vec4<i32>(-2147483647i, -1i, 2147483647i, 34064i))));
    let var_2 = var_0;
    let var_3 = Struct_4(Struct_2(var_0.d.a.wx, -226f, _wgslsmith_f_op_f32(f32(-1f) * -329f)), false, Struct_2(var_0.d.a.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-727f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-256f, -481f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.c.xx), var_0.b.x);
}

