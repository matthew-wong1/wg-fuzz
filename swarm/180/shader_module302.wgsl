struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    return ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, ~34321u, 63149u), ~vec3<u32>(1u, arg_0.b.x, u_input.a)), u_input.b.x);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * 645f))), countOneBits(vec4<u32>((1130u ^ arg_1) & ~u_input.a, 42501u, ~u_input.a, 0u)));
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(733f, abs(~var_0.b ^ reverseBits(vec4<u32>(6809u, 51312u, u_input.a, var_0.b.x))));
    var var_3 = false;
    var_3 = any(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = 1000f;
    var var_2 = select(vec2<bool>(true, all(vec4<bool>(all(vec4<bool>(true, true, true, false)), false, false, select(true, true, false)))), !(!vec2<bool>(false, any(vec2<bool>(false, true)))), any(vec4<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), select(true, any(vec2<bool>(true, false)), false), true)));
    let var_3 = func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, 176f, -1658f, -1026f), vec4<f32>(626f, 1095f, var_0.a, arg_3.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, 219f, arg_2.a, arg_0.a), vec4<f32>(arg_1.a, arg_3.a, arg_0.a, var_0.a), true))))), ~(~(~_wgslsmith_dot_vec2_u32(u_input.b, arg_0.b.zw))));
    let var_4 = select(!(!select(!vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, true))), vec2<bool>(var_2.x, any(vec3<bool>(all(vec3<bool>(var_2.x, true, var_2.x)), u_input.d.x >= u_input.d.x, var_2.x))), !(!vec2<bool>(true, any(vec3<bool>(true, true, true)))));
    return select(vec2<bool>(all(vec3<bool>(!var_2.x, arg_0.a < 411f, any(vec4<bool>(var_2.x, var_4.x, var_4.x, var_4.x)))), select(arg_3.b.x <= min(arg_2.b.x, arg_1.b.x), all(select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_4.x, var_4.x), var_4.x)), any(!vec4<bool>(var_4.x, true, true, var_2.x)))), select(select(!var_4, vec2<bool>(!var_2.x, var_2.x && var_2.x), !(!var_4)), vec2<bool>(true, any(!vec4<bool>(var_4.x, false, var_4.x, var_2.x))), vec2<bool>(!(!var_2.x), any(vec3<bool>(var_4.x, var_2.x, false)) && false)), all(!select(select(vec4<bool>(true, var_2.x, var_4.x, var_2.x), vec4<bool>(false, true, true, true), vec4<bool>(var_2.x, true, true, true)), !vec4<bool>(false, var_4.x, var_4.x, var_4.x), vec4<bool>(false, false, true, var_4.x))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true && any(func_4(Struct_1(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, u_input.a, 28887u), vec4<u32>(u_input.a, u_input.b.x, 1u, 25105u))), func_3(vec4<f32>(1f, 1f, 1f, 1f), func_2(Struct_1(arg_0.a, arg_0.b), arg_0.a)), arg_0, arg_0));
    let var_1 = countOneBits(reverseBits(u_input.d.x));
    var var_2 = 1u;
    var_2 = arg_0.b.x;
    let var_3 = vec3<f32>(_wgslsmith_div_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, arg_0.a, arg_0.a, arg_0.a)), ~(~42095u)).a, 257f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f * arg_0.a) - arg_0.a), _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-1000f * arg_0.a))))), func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -928f, -856f, arg_0.a)) - vec4<f32>(arg_0.a, 1000f, arg_0.a, 926f)))), 4294967295u).a);
    return func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) * _wgslsmith_f_op_f32(-var_3.x)) + 1f), arg_0.a, -588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, 1190f)))), u_input.a >> ((~abs(arg_0.b.x) >> (arg_0.b.x % 32u)) % 32u));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, 446f) * _wgslsmith_f_op_f32(arg_2.a - 1000f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -118f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f - arg_2.a) * arg_0.x)))), arg_2.b);
    var_1 = func_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1248f)), _wgslsmith_f_op_f32(floor(-924f))), -1499f, _wgslsmith_div_f32(var_1.a, -711f), var_0), 210u);
    var_1 = arg_2;
    var_1 = Struct_1(arg_0.x, var_1.b << (~max(var_1.b, ~vec4<u32>(arg_1.x, 17443u, 24011u, 1u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -510f)))))) - -1863f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) + _wgslsmith_f_op_f32(f32(-1f) * -142f)) * 104f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1925f * 638f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(638f + -849f), -421f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1795f, 272f, -463f, -1126f) * vec4<f32>(2294f, -139f, 1431f, -785f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-690f, 860f, 587f, 952f) - vec4<f32>(943f, -376f, -577f, 873f)))), (vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.a, u_input.a, 31510u)) | ~vec4<u32>(u_input.b.x, 23758u, 6445u, 977u), func_1(Struct_1(1000f, vec4<u32>(52428u, 4294967295u, u_input.b.x, u_input.a))))) + 1202f));
    let var_1 = all(select(vec4<bool>(~1i <= u_input.c.x, true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), func_4(Struct_1(394f, vec4<u32>(u_input.b.x, 54180u, u_input.b.x, 1u)), func_3(var_0, u_input.b.x), func_3(vec4<f32>(188f, var_0.x, -875f, var_0.x), u_input.a), Struct_1(-451f, vec4<u32>(1u, 18601u, 0u, u_input.b.x))).x), !vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, false), true));
    var var_2 = ~_wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.d), u_input.c.yy, ~(~(-vec2<i32>(-1i, -74122i))));
    var var_3 = any(select(!(!(!vec3<bool>(var_1, var_1, var_1))), !vec3<bool>(var_1, false, 4294967295u < u_input.b.x), select(vec3<bool>(var_1, var_1, all(vec3<bool>(true, false, var_1))), select(!vec3<bool>(var_1, false, true), !vec3<bool>(var_1, true, var_1), select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, var_1, false), vec3<bool>(var_1, true, var_1))), !(!vec3<bool>(var_1, false, var_1)))));
    var_2 = vec2<i32>(11275i, var_2.x);
    let var_4 = vec3<i32>(-var_2.x, 0i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 21113i, 0i), u_input.c.wwy ^ -u_input.c.xxz)));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x + -418f))))), vec4<u32>((~u_input.a | 4294967295u) << ((u_input.b.x >> (_wgslsmith_add_u32(28898u, u_input.a) % 32u)) % 32u), ~(u_input.b.x | u_input.a), 49360u, u_input.b.x));
    let var_6 = 1000f;
    var var_7 = func_3(var_0, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_7.a * var_6) * func_1(Struct_1(var_0.x, vec4<u32>(u_input.b.x, u_input.b.x, var_5.b.x, u_input.b.x))).a)))), ~(-(44080i & var_4.x)) & -61937i, var_0.x, firstTrailingBit(max(-_wgslsmith_sub_i32(var_4.x, -1i), -1i)));
}

