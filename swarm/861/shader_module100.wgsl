struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    var var_0 = arg_0.a.wwx;
    var_0 = arg_0.a.zxy;
    var var_1 = vec2<u32>(~_wgslsmith_add_u32(1u, arg_1.x), ~_wgslsmith_mod_u32(~abs(arg_1.x), arg_1.x));
    var_1 = countOneBits(abs(max(~(arg_1.yz ^ arg_1.zz), vec2<u32>(35148u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, 37144u, var_1.x), vec4<u32>(0u, var_1.x, var_1.x, 1u))))));
    let var_2 = Struct_2(~max(vec3<u32>(~var_1.x, 18740u, _wgslsmith_dot_vec3_u32(arg_1, arg_1)), vec3<u32>(_wgslsmith_add_u32(arg_1.x, 11545u), ~var_1.x, var_1.x)), var_1.x, _wgslsmith_f_op_f32(-366f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(abs(1394f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(281f * 1058f))))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-17938i, u_input.b, 1i, u_input.a), ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -11475i, u_input.a), vec4<i32>(u_input.b, u_input.b, 35086i, 2397i), vec4<i32>(1i, u_input.a, -1i, 57967i)))));
    return max(arg_1.x, 1u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> bool {
    var var_0 = ~(~vec4<u32>(func_3(arg_0, ~vec3<u32>(31844u, arg_1, arg_1)), 99085u, _wgslsmith_div_u32(arg_1, 4294967295u), ~44410u));
    var var_1 = all(!arg_0.a) & !all(select(arg_0.a, select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), vec4<bool>(arg_0.a.x, arg_2.x, arg_0.a.x, arg_2.x), false), true));
    var var_2 = arg_0;
    var var_3 = Struct_2(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, arg_1, arg_1), var_0.yyx, _wgslsmith_sub_vec3_u32(var_0.yyx, var_0.yxy))), ~arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-735f + -432f), -187f), 1050f))), abs(-1i) | -u_input.b);
    var var_4 = 48339u;
    return any(!arg_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(!arg_2.a.wyy, select(vec3<bool>(true, true, true), select(arg_2.a.yyz, select(vec3<bool>(false, false, arg_0.a.x), select(arg_2.a.yyw, arg_0.a.yxz, arg_0.a.wzx), select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(false, false, arg_0.a.x))), !select(false, arg_0.a.x, arg_2.a.x)), select(arg_0.a.yxw, !(!arg_2.a.xyz), func_2(Struct_1(arg_0.a), abs(34926u), select(vec2<bool>(true, true), arg_0.a.xw, vec2<bool>(arg_0.a.x, true))))), vec3<bool>(!all(select(vec3<bool>(arg_2.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.xxz, vec3<bool>(true, arg_0.a.x, false))), arg_2.a.x, arg_2.a.x));
    var var_1 = arg_2.a;
    var var_2 = 46154u;
    var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32((_wgslsmith_dot_vec2_u32(vec2<u32>(14243u, 58589u), vec2<u32>(63697u, 0u)) >> (1u % 32u)) & abs(1u >> (0u % 32u)), ~70105u), 8916u);
    var var_3 = arg_0.a;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    return u_input.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, -407f)));
    var var_1 = any(vec3<bool>(false, _wgslsmith_mult_i32(u_input.b, reverseBits(arg_0.d)) != ~arg_0.d, false));
    var_1 = select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.c, var_0)), var_0))), arg_1.x);
    let var_2 = -1313f;
    var_1 = true;
    return Struct_2(~(~(~arg_0.a >> (_wgslsmith_div_vec3_u32(vec3<u32>(51289u, 4294967295u, 53802u), vec3<u32>(arg_0.b, 82773u, arg_0.a.x)) % vec3<u32>(32u)))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), ~vec3<u32>(arg_0.b, arg_0.b, arg_0.a.x)), ~arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f + 769f)), _wgslsmith_f_op_f32(-var_2)) - 1784f), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -18992i), vec2<i32>(-3220i, 2147483647i)), ~(-vec2<i32>(arg_0.d, u_input.a))), ~arg_0.d));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_5(arg_1, arg_2.a.xy);
    var_0 = Struct_2(~max(var_0.a, firstLeadingBit(var_0.a)), ~(4294967295u << (_wgslsmith_div_u32(~71802u, ~5243u) % 32u)), -657f, 2147483647i);
    var var_1 = func_1(func_1(func_1(func_1(arg_2, vec4<i32>(var_0.d, -2147483647i, 10557i, arg_1.d), Struct_1(vec4<bool>(true, false, arg_2.a.x, false))), abs(arg_0), arg_2), vec4<i32>(1i, 0i, _wgslsmith_dot_vec2_i32(arg_0.xy ^ vec2<i32>(u_input.b, u_input.b), arg_0.ww), reverseBits(-var_0.d)), arg_2), arg_0, Struct_1(func_1(func_1(func_1(arg_2, vec4<i32>(-18956i, arg_1.d, 1i, 2147483647i), arg_2), -arg_0, Struct_1(arg_2.a)), vec4<i32>(u_input.a, _wgslsmith_add_i32(-20993i, 1i), u_input.a, -var_0.d), arg_2).a));
    var_1 = arg_2;
    let var_2 = Struct_2(~var_0.a, _wgslsmith_sub_u32(func_3(arg_2, firstTrailingBit(vec3<u32>(arg_1.b, 1u, 0u))), var_0.a.x) | ~countOneBits(_wgslsmith_add_u32(arg_1.a.x, 4294967295u)), _wgslsmith_f_op_f32(var_0.c - var_0.c), ~var_0.d);
    return Struct_1(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-218f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1161f, 1691f, true)), 1212f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(max(-527f, -2705f)), false)), true)))));
    var_0 = _wgslsmith_f_op_f32(var_1 * 1525f);
    var var_2 = func_6(vec4<i32>(~51076i, _wgslsmith_mult_i32(u_input.a, (u_input.a | -2950i) >> (51042u % 32u)), u_input.a, abs(abs(~(-2147483647i)))), func_5(Struct_2(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(37637u, 37697u)), ~1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 - var_1))), func_4(func_1(Struct_1(vec4<bool>(false, false, false, false)), vec4<i32>(-51779i, -3216i, 2147483647i, u_input.b), Struct_1(vec4<bool>(false, true, true, true))), select(vec2<u32>(1u, 33275u), vec2<u32>(4294967295u, 1u), vec2<bool>(true, false)))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), func_1(Struct_1(vec4<bool>(true, false, true, false)), vec4<i32>(u_input.b, -1i, u_input.a, 2147483647i), Struct_1(vec4<bool>(false, true, false, true))).a.wy, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), Struct_1(func_1(func_1(func_1(Struct_1(vec4<bool>(false, true, false, false)), vec4<i32>(-11662i, u_input.b, -2147483647i, u_input.b), Struct_1(vec4<bool>(false, false, true, false))), ~vec4<i32>(2147483647i, u_input.a, u_input.a, 15551i), Struct_1(vec4<bool>(true, false, false, true))), -vec4<i32>(26183i, u_input.b, u_input.a, u_input.b) & vec4<i32>(0i, -38924i, u_input.b, 2147483647i), Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false))).a));
    let var_3 = _wgslsmith_mult_i32(u_input.b, func_5(func_5(Struct_2(vec3<u32>(36279u, 4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(var_1 * var_1), min(u_input.b, 1i)), select(!var_2.a.yw, var_2.a.zz, true)), var_2.a.xw).d);
    var_2 = Struct_1(func_1(func_6(reverseBits(vec4<i32>(var_3, 1i, 7703i, var_3) ^ vec4<i32>(-19635i, 39291i, 1i, -2147483647i)), func_5(Struct_2(vec3<u32>(24040u, 77463u, 4294967295u), 4294967295u, -974f, var_3), !var_2.a.xw), func_6(-vec4<i32>(u_input.a, 72876i, var_3, 40547i), func_5(Struct_2(vec3<u32>(26258u, 4294967295u, 16419u), 1u, var_1, -3469i), var_2.a.xx), Struct_1(vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x)))), vec4<i32>(8772i, var_3, func_4(Struct_1(vec4<bool>(false, false, false, var_2.a.x)), vec2<u32>(124730u, 4294967295u)) & 2147483647i, ~(-145799i)), Struct_1(!select(var_2.a, var_2.a, var_2.a))).a);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 - 1026f)))) + _wgslsmith_f_op_f32(-var_1));
    var var_4 = ~vec4<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-3319i, -1i), vec2<i32>(-21793i, u_input.b))), 1i, -var_3, -1i) ^ vec4<i32>(~(-(i32(-1i) * -1i)), var_3, _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(u_input.b, var_3, var_3, 9354i)), var_3), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1509f, var_1))), ~4294967295u);
}

