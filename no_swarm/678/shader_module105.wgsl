struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    var var_0 = min(1i, 0i);
    var var_1 = 85220u;
    var_1 = ~(~27431u);
    var var_2 = -2319f;
    var var_3 = 3205i << (reverseBits(arg_2.x) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(524f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = u_input.a.x | 0i;
    var var_1 = firstLeadingBit(vec4<u32>(~_wgslsmith_mod_u32(1u, ~u_input.b.x), 12673u << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(59036u, 81294u), ~arg_1.c.x, u_input.b.x & 0u) % 32u), 1u, arg_0.x));
    let var_2 = arg_1.a.xy;
    var var_3 = Struct_1(arg_1.a, ~(~_wgslsmith_div_u32(16524u, var_1.x)), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(891f - 1f), arg_1, _wgslsmith_div_vec4_u32(arg_0, firstTrailingBit(arg_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d + -963f), arg_1.d))), var_2.x);
    var var_4 = firstTrailingBit(0u);
    return var_3.e;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(arg_3.a, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_3.b, 66597u)), _wgslsmith_div_vec2_u32(min(~arg_0.yy, select(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(u_input.b.x, arg_3.b), arg_3.a.yz)), arg_0.yx)), firstTrailingBit(~arg_0.xz), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1213f, -273f)) * _wgslsmith_f_op_f32(-366f * arg_3.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d))), Struct_1(!arg_3.a, arg_3.c.x, vec2<u32>(93919u, 20922u), _wgslsmith_f_op_f32(ceil(arg_3.d)), arg_1), _wgslsmith_mult_vec4_u32(min(reverseBits(vec4<u32>(arg_3.b, 1u, arg_3.c.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.c.x, 14693u, 4294967295u, 90390u), vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x))), ~vec4<u32>(arg_3.c.x, u_input.b.x, u_input.b.x, arg_3.c.x)))), arg_1);
    var var_1 = Struct_1(!(!var_0.a), arg_0.x, min(countOneBits(~vec2<u32>(1u, 0u) ^ (arg_3.c & vec2<u32>(var_0.c.x, 0u))), ~(var_0.c & (vec2<u32>(u_input.b.x, var_0.b) & vec2<u32>(0u, u_input.b.x)))), _wgslsmith_f_op_f32(-140f - var_0.d), abs(u_input.a.x) < 0i);
    var_1 = Struct_1(!vec3<bool>(any(vec2<bool>(arg_3.a.x, arg_1)), !all(var_1.a), arg_3.a.x), ~_wgslsmith_mult_u32(var_1.b, ~_wgslsmith_add_u32(4294967295u, arg_3.c.x)), arg_0.zx, var_1.d, !(false && arg_3.e));
    var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 745f)), _wgslsmith_f_op_f32(round(614f)), _wgslsmith_f_op_f32(f32(-1f) * -1852f) >= _wgslsmith_f_op_f32(ceil(var_0.d))))));
    return vec3<bool>(!any(!(!vec4<bool>(false, arg_1, arg_1, true))), all(select(!vec4<bool>(true, var_0.a.x, true, arg_1), select(select(vec4<bool>(true, true, arg_3.a.x, false), vec4<bool>(false, false, var_0.a.x, arg_2), vec4<bool>(false, var_1.a.x, arg_3.e, arg_2)), vec4<bool>(arg_2, var_0.e, true, var_1.a.x), select(vec4<bool>(false, arg_3.e, arg_1, arg_2), vec4<bool>(true, arg_2, var_1.a.x, var_0.e), vec4<bool>(true, var_0.e, arg_1, arg_2))), select(!vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(arg_2, false, true, false), vec4<bool>(true, var_1.e, var_0.a.x, false)))), true);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = Struct_1(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(13317u, u_input.b.x) << (~_wgslsmith_sub_u32(arg_0, u_input.b.x) % 32u)), ~_wgslsmith_clamp_vec2_u32(min(vec2<u32>(24400u, 0u), u_input.b), vec2<u32>(54871u, u_input.b.x) | vec2<u32>(arg_0, u_input.b.x), select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), true)) >> ((firstTrailingBit(~vec2<u32>(u_input.b.x, arg_0)) ^ ~vec2<u32>(16704u, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-991f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_div_f32(615f, 461f), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1699f))) + -513f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-776f + 385f))))));
    var var_1 = var_0.d;
    let var_2 = all(select(!func_4(~vec3<u32>(82215u, arg_0, var_0.c.x), func_2(vec4<u32>(arg_0, 4294967295u, 2652u, arg_0), Struct_1(var_0.a, 4294967295u, u_input.b, var_0.d, var_0.e)), -54249i == u_input.a.x, Struct_1(vec3<bool>(var_0.e, var_0.e, var_0.a.x), 1u, vec2<u32>(12541u, arg_0), -393f, true)), var_0.a, func_2(~(~vec4<u32>(arg_0, var_0.c.x, u_input.b.x, u_input.b.x)), var_0)));
    let var_3 = vec3<i32>(-_wgslsmith_sub_i32(select(-54688i, -18451i, any(vec4<bool>(var_0.a.x, false, false, var_0.a.x))), u_input.a.x), abs(max(~(~u_input.a.x), -u_input.c)), ~82490i);
    let var_4 = var_0;
    return _wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(select(737f, -1000f, var_2))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, u_input.b.x, arg_1.c, _wgslsmith_f_op_f32(floor(arg_1.d)), arg_2.e);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2109f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))))) * _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(func_1(~_wgslsmith_div_u32(16823u, 41957u)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_0.d)));
    var var_3 = arg_1;
    var_3 = Struct_1(select(!var_3.a, select(select(!var_3.a, !vec3<bool>(false, arg_1.a.x, var_3.e), true), !(!vec3<bool>(var_0.a.x, var_0.e, false)), false), select(!(!arg_1.a), select(var_3.a, vec3<bool>(false, true, arg_1.a.x), true), !func_4(vec3<u32>(var_0.b, arg_2.c.x, var_3.b), arg_1.e, false, Struct_1(vec3<bool>(true, false, var_0.e), 0u, var_3.c, arg_0.x, arg_2.e)))), 7978u, vec2<u32>(1u, abs(12058u)), _wgslsmith_f_op_f32(-arg_2.d), !(var_0.a.x != !(!var_0.e)));
    return Struct_1(vec3<bool>((var_3.c.x <= _wgslsmith_mult_u32(17816u, var_3.c.x)) & (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), arg_1.c) >= ~var_0.b), _wgslsmith_div_i32(u_input.a.x, u_input.a.x) <= u_input.c, true), ~(~var_0.b), _wgslsmith_mod_vec2_u32(~vec2<u32>(6407u, u_input.b.x), var_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), arg_1.a.x);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(select(vec3<bool>(arg_0.a.x, arg_0.e, false), select(!(!vec3<bool>(false, arg_2.e, arg_0.e)), vec3<bool>(false, func_4(vec3<u32>(u_input.b.x, arg_0.b, arg_2.b), true, arg_2.e, arg_2).x, func_5(vec3<f32>(-2851f, -152f, arg_0.d), arg_2, Struct_1(vec3<bool>(false, true, arg_2.e), u_input.b.x, arg_2.c, arg_0.d, arg_0.a.x)).a.x), any(arg_0.a.xy)), select(!func_4(vec3<u32>(u_input.b.x, arg_2.c.x, 20844u), arg_0.a.x, arg_0.e, Struct_1(arg_2.a, 0u, u_input.b, 415f, true)), vec3<bool>(true, arg_2.a.x, true), arg_0.a)), _wgslsmith_clamp_u32(27226u, _wgslsmith_dot_vec2_u32(u_input.b, ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b.x), arg_0.c)), ~countOneBits(~4294967295u)), vec2<u32>(11162u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.d, 1805f, true | !arg_0.a.x))), !arg_0.e && true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1031f, _wgslsmith_f_op_f32(func_1(0u)), _wgslsmith_f_op_f32(f32(-1f) * -233f)))), Struct_1(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), func_4(vec3<u32>(0u, 57011u, 61516u), true, true, Struct_1(vec3<bool>(false, true, true), u_input.b.x, u_input.b, 1000f, false)), vec3<bool>(true, true, false)), 0u, vec2<u32>(~0u, 16865u), _wgslsmith_f_op_f32(func_1(min(u_input.b.x, u_input.b.x))), any(vec3<bool>(false, false, true))), Struct_1(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, all(vec3<bool>(true, false, true))), 76892u | _wgslsmith_mod_u32(4294967295u, u_input.b.x), max(u_input.b, select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, vec2<bool>(false, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(768f)))), func_4(abs(vec3<u32>(0u, u_input.b.x, 1u)), true, true, Struct_1(vec3<bool>(true, false, false), 40844u, u_input.b, 2246f, true)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(220f))), _wgslsmith_f_op_f32(-1000f - -887f)))), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -224f), 1067f, _wgslsmith_f_op_f32(-1000f * -327f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1767f, 558f, -276f))), Struct_1(vec3<bool>(true, true, true), 225u, vec2<u32>(0u, 1u) ^ (vec2<u32>(u_input.b.x, 1u) & vec2<u32>(u_input.b.x, u_input.b.x)), 325f, true), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(106f, -1000f, 1059f) - vec3<f32>(1000f, 312f, 1414f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1060f, 1000f, 1000f) - vec3<f32>(-1009f, -1283f, -870f))), Struct_1(vec3<bool>(true, true, true), ~1u, ~vec2<u32>(1u, 1u), -268f, false), func_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2118f, -220f, -109f))), func_5(vec3<f32>(735f, -495f, -568f), Struct_1(vec3<bool>(true, true, true), u_input.b.x, vec2<u32>(u_input.b.x, u_input.b.x), -847f, false), Struct_1(vec3<bool>(true, true, true), 9544u, u_input.b, -673f, false)), Struct_1(vec3<bool>(false, false, false), 1u, vec2<u32>(u_input.b.x, u_input.b.x), 992f, false)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1103f, 1024f, 460f) * vec3<f32>(-832f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d + 672f), var_0.d, false | var_0.e)))), -1965f));
    let var_2 = false;
    let var_3 = vec3<u32>(~_wgslsmith_sub_u32(51671u << (u_input.b.x % 32u), ~14768u) | ~u_input.b.x, u_input.b.x, firstLeadingBit(~var_0.c.x));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_1.x, var_1.x)))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_f32(-1324f + _wgslsmith_f_op_f32(var_1.x - var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-695f + -834f) + -809f)))));
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0.d, var_1.x) + vec3<f32>(954f, var_1.x, -1388f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -1000f, var_0.d) + vec3<f32>(302f, var_1.x, var_0.d)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1343f, var_0.d, -152f))), func_6(Struct_1(vec3<bool>(var_0.e, true, !var_0.a.x), u_input.b.x, ~(~vec2<u32>(var_0.b, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(484f)) * var_1.x), !var_2), var_1.x, func_6(func_6(Struct_1(vec3<bool>(true, var_0.a.x, false), 11627u, var_0.c, -998f, false), 1319f, func_6(Struct_1(var_0.a, u_input.b.x, var_3.xy, 1699f, true), -378f, Struct_1(vec3<bool>(true, false, false), var_0.c.x, vec2<u32>(var_0.c.x, 387u), var_1.x, var_2))), -552f, Struct_1(!var_0.a, _wgslsmith_mult_u32(0u, 4294967295u), func_6(Struct_1(var_0.a, u_input.b.x, vec2<u32>(u_input.b.x, 1u), -1000f, true), var_0.d, Struct_1(vec3<bool>(var_0.e, var_0.e, true), u_input.b.x, vec2<u32>(26838u, var_3.x), var_1.x, false)).c, _wgslsmith_f_op_f32(-1171f - -963f), false))), Struct_1(!var_0.a, ~(0u >> (u_input.b.x % 32u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 5530u), ~(u_input.b & var_0.c)), var_0.d, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 1i, u_input.a.x), vec3<i32>(0i, -1i, u_input.c), vec3<bool>(var_2, false, var_2)), vec3<i32>(-1i, u_input.c, u_input.c)) == (2147483647i ^ firstTrailingBit(0i))));
    var var_4 = 15078u;
    var var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.x, ~(func_5(vec3<f32>(164f, -1402f, var_1.x), Struct_1(var_0.a, u_input.b.x, vec2<u32>(146302u, 0u), var_0.d, var_2), Struct_1(var_0.a, var_0.c.x, var_0.c, -1780f, var_0.e)).c.x ^ (1u >> (u_input.b.x % 32u)))), -697f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(857f, 696f, 2670f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-849f, var_0.d, var_0.d))))) - vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(round(var_0.d)))));
}

