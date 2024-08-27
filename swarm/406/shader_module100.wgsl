struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    var var_0 = vec2<f32>(865f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * arg_0.a));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)), -632f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, var_0.x)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1164f, var_0.x)))))), u_input.b != arg_0.b.x));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1812f * 637f))) + 186f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, -964f) * _wgslsmith_f_op_f32(219f - arg_0.a)), _wgslsmith_f_op_f32(round(var_0.x)))), -742f));
    var var_1 = max(countOneBits(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, u_input.c, 27204u, 0u), vec4<u32>(0u, arg_0.b.x, 18883u, 67020u)), abs(countOneBits(vec4<u32>(35481u, 4294967295u, u_input.c, u_input.b))))), _wgslsmith_mult_vec4_u32(select(firstLeadingBit(vec4<u32>(0u, 73230u, 39727u, u_input.b)), countOneBits(reverseBits(vec4<u32>(arg_0.b.x, arg_0.b.x, 4294967295u, 36438u))), !all(arg_2.zz)), vec4<u32>(~1u, abs(0u), ~arg_0.b.x, arg_0.b.x) << (vec4<u32>(_wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x), arg_0.b.x ^ 1u, ~arg_0.b.x, abs(0u)) % vec4<u32>(32u))));
    let var_2 = Struct_1(-(~u_input.a), reverseBits(_wgslsmith_div_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(21254u, 88080u, var_1.x, 4294967295u), vec4<u32>(25546u, var_1.x, arg_0.b.x, arg_0.b.x)), countOneBits(vec4<u32>(arg_0.b.x, var_1.x, arg_0.b.x, var_1.x))), vec4<u32>(firstLeadingBit(arg_0.b.x), u_input.c, ~var_1.x, 1u))));
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a >> (firstLeadingBit(u_input.c) % 32u), abs(u_input.a)), min(3471i, u_input.a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0.a, u_input.a), ~(-2147483647i)), vec2<i32>(u_input.a, -39667i)), -(abs(vec2<i32>(-1i, u_input.a)) >> (~vec2<u32>(0u, u_input.c) % vec2<u32>(32u)))), max(-(vec2<i32>(u_input.a, u_input.a) << (max(arg_0.b.wx, vec2<u32>(arg_0.b.x, 4294967295u)) % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(23355i, 7269i)) ^ vec2<i32>(arg_0.a, func_3(Struct_3(-1017f, arg_0.b.ywy), false, vec4<bool>(false, true, false, false), true))));
    let var_1 = Struct_4(_wgslsmith_clamp_u32(1u, countOneBits(4294967295u) >> (_wgslsmith_sub_u32(10303u, u_input.c) % 32u), ~(~87049u)) & 1u, Struct_2(Struct_1(_wgslsmith_add_i32(1i, -2147483647i ^ u_input.a), vec4<u32>(4294967295u, ~68023u, ~0u, _wgslsmith_mod_u32(0u, 73694u))), vec3<bool>(true, any(vec2<bool>(true, false)), all(vec4<bool>(false, false, false, false)) && true), Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.a, arg_0.a), vec3<i32>(-1i, -2513i, 0i)), ~(arg_0.b | arg_0.b)), Struct_1(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -2147483647i)), vec2<i32>(2147483647i, 2147483647i)), arg_0.b)));
    var var_2 = Struct_4(0u, Struct_2(Struct_1(_wgslsmith_clamp_i32(var_0, -arg_0.a, ~arg_0.a), vec4<u32>(var_1.b.d.b.x, arg_0.b.x >> (16938u % 32u), arg_0.b.x << (u_input.c % 32u), _wgslsmith_dot_vec3_u32(arg_0.b.zzy, vec3<u32>(24572u, 4294967295u, arg_0.b.x)))), !vec3<bool>(var_1.b.b.x || var_1.b.b.x, all(vec4<bool>(var_1.b.b.x, true, true, var_1.b.b.x)), var_1.a <= var_1.a), var_1.b.a, var_1.b.d));
    var_2 = var_1;
    var var_3 = vec4<u32>(u_input.c, var_2.a, min(select(arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, arg_0.b.x, 0u, var_1.b.c.b.x), var_1.b.a.b), var_2.b.b.x), ~(~(~1u))), _wgslsmith_dot_vec4_u32(select(~var_1.b.c.b, vec4<u32>(43728u, var_1.b.c.b.x, arg_0.b.x, var_2.b.c.b.x), all(var_2.b.b)) >> (vec4<u32>(61966u, 1u, 0u, _wgslsmith_dot_vec2_u32(arg_0.b.yw, var_1.b.c.b.wx)) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(0u, var_2.b.a.b.x, 4294967295u, 4294967295u) & (vec4<u32>(u_input.c, 40308u, 4294967295u, 15450u) | vec4<u32>(var_2.b.c.b.x, 11530u, 45814u, 0u)))));
    return Struct_1(_wgslsmith_mod_i32(-var_2.b.d.a, abs(-select(arg_0.a, var_1.b.c.a, var_1.b.b.x))), select(~arg_0.b << (vec4<u32>(var_3.x, abs(arg_0.b.x), _wgslsmith_dot_vec2_u32(var_3.yw, arg_0.b.ww), 4294967295u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(var_2.a, u_input.c), abs(reverseBits(u_input.b)), var_3.x, abs(_wgslsmith_dot_vec4_u32(var_1.b.d.b, var_1.b.a.b))), vec4<bool>(true, var_2.b.b.x | var_1.b.b.x, true, any(vec2<bool>(true, false)) && true)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = Struct_2(func_2(func_2(Struct_1(1i, ~arg_1.b))), vec3<bool>((arg_2.b.x != _wgslsmith_mod_u32(arg_1.b.x, arg_2.b.x)) || false, select(true, false, true), false), arg_1, func_2(arg_1));
    var var_1 = Struct_3(1364f, min(func_2(arg_1).b.zzz << (((arg_1.b.ywx & arg_2.b) & _wgslsmith_mult_vec3_u32(vec3<u32>(47515u, arg_1.b.x, arg_1.b.x), arg_1.b.xwy)) % vec3<u32>(32u)), abs(max(vec3<u32>(122910u, 4294967295u, arg_2.b.x), arg_2.b))));
    var var_2 = Struct_2(func_2(Struct_1(-17830i, firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 51968u, 3289u)))), vec3<bool>(!select(all(var_0.b), u_input.a > var_0.c.a, var_0.b.x & var_0.b.x), var_0.b.x, true), Struct_1(~(-(0i >> (arg_2.b.x % 32u))), ~min(select(vec4<u32>(u_input.b, 0u, 4294967295u, arg_2.b.x), arg_1.b, var_0.b.x), ~vec4<u32>(38094u, u_input.b, var_1.b.x, arg_1.b.x))), Struct_1(max(countOneBits(_wgslsmith_add_i32(-39508i, -8666i)), ~_wgslsmith_mod_i32(27830i, -38337i)), ~firstLeadingBit(arg_1.b)));
    var_2 = Struct_2(func_2(Struct_1(~(0i >> (arg_1.b.x % 32u)), var_0.c.b)), vec3<bool>((-49772i > u_input.a) || var_0.b.x, !all(var_2.b), true), var_2.c, Struct_1(~(~arg_1.a), ~func_2(Struct_1(arg_1.a, var_0.a.b)).b));
    let var_3 = ~abs(-vec2<i32>(arg_1.a, func_2(arg_1).a));
    return select(!(!var_0.b), select(!var_0.b, !var_0.b, vec3<bool>(!(var_0.b.x && var_0.b.x), all(vec3<bool>(var_0.b.x, true, var_2.b.x)), var_2.b.x)), vec3<bool>(arg_0.x == arg_2.a, any(var_0.b.xx) || false, any(vec4<bool>(all(var_2.b.yy), !var_0.b.x, true, all(vec4<bool>(true, false, var_0.b.x, var_2.b.x))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, -747f, -258f) + vec3<f32>(1509f, -570f, -1597f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-504f, 137f, 989f) + vec3<f32>(-833f, -495f, 2854f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-975f, -1610f, 133f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 2180f, 650f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1407f, -378f)))))), arg_0.x));
    var var_1 = vec2<u32>(arg_2.d.b.x, 64977u ^ ~u_input.b);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-169f, var_0.x)));
    let var_3 = func_2(arg_2.a);
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(565f, 1583f) - vec2<f32>(var_0.x, var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-523f, var_0.x) * vec2<f32>(var_0.x, -1017f)))) - vec2<f32>(997f, _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    return ~firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(4294967295u, 20646u), ~var_3.b.x, ~var_1.x) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(54343u, 4294967295u, 0u), vec3<u32>(arg_2.a.b.x, arg_2.c.b.x, 4294967295u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = u_input.a != 1i;
    var_0 = !(_wgslsmith_mod_i32(-(u_input.a >> (22310u % 32u)), u_input.a) < 29833i);
    let var_1 = abs(_wgslsmith_dot_vec3_u32(func_5(func_4(vec2<f32>(arg_0, 639f), func_2(Struct_1(u_input.a, vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))), Struct_3(arg_0, vec3<u32>(0u, 22169u, 15360u))), u_input.a, Struct_2(func_2(Struct_1(u_input.a, vec4<u32>(u_input.b, 0u, 1u, 56358u))), vec3<bool>(false, false, false), Struct_1(0i, vec4<u32>(4294967295u, 3167u, 5501u, u_input.b)), Struct_1(u_input.a, vec4<u32>(u_input.b, u_input.c, 15645u, 29286u)))), ~(~vec3<u32>(u_input.b, 10030u, u_input.b))));
    let var_2 = select(!(!(!func_4(vec2<f32>(636f, arg_0), Struct_1(u_input.a, vec4<u32>(u_input.b, u_input.c, 4294967295u, 0u)), Struct_3(1000f, vec3<u32>(63822u, u_input.c, u_input.b))))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-505f, arg_0)))), Struct_1(_wgslsmith_mod_i32(func_3(Struct_3(794f, vec3<u32>(1u, var_1, 19377u)), false, vec4<bool>(false, true, true, false), false), -1i), vec4<u32>(var_1, 1u, _wgslsmith_mod_u32(4294967295u, u_input.c), func_2(Struct_1(u_input.a, vec4<u32>(4294967295u, var_1, var_1, 4294967295u))).b.x)), Struct_3(1169f, vec3<u32>(1u, u_input.b, _wgslsmith_clamp_u32(u_input.b, var_1, var_1)))), !func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2632f, arg_0))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -851f), vec2<bool>(true, true)))), func_2(func_2(Struct_1(-1i, vec4<u32>(5279u, 28498u, 39143u, u_input.b)))), Struct_3(-791f, ~vec3<u32>(1u, u_input.b, var_1))));
    var var_3 = Struct_2(func_2(Struct_1(max(~u_input.a, u_input.a), vec4<u32>(_wgslsmith_div_u32(var_1, u_input.b), var_1, u_input.b, var_1))), !vec3<bool>(var_2.x, all(select(var_2, var_2, vec3<bool>(true, var_2.x, var_2.x))), true), func_2(func_2(func_2(func_2(Struct_1(-4159i, vec4<u32>(u_input.c, var_1, var_1, var_1)))))), Struct_1(56726i, (vec4<u32>(var_1, 63331u, u_input.b, var_1) ^ ~vec4<u32>(4294967295u, 29794u, 4294967295u, var_1)) & ~(~vec4<u32>(var_1, 21596u, 0u, u_input.c))));
    return !all(!var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1203f - -1046f) * _wgslsmith_f_op_f32(f32(-1f) * -1161f)), -233f));
    let var_1 = -431f;
    var var_2 = select(vec3<bool>(all(vec3<bool>(var_0, var_0, var_0 & true)), !select(var_0 | var_0, true, true), true), vec3<bool>(any(select(func_4(vec2<f32>(-1067f, var_1), Struct_1(-1i, vec4<u32>(u_input.c, u_input.c, u_input.b, 4294967295u)), Struct_3(var_1, vec3<u32>(u_input.c, u_input.c, u_input.c))), vec3<bool>(true, true, true), u_input.c == u_input.b)), var_0, (~u_input.a >> (u_input.c % 32u)) > (_wgslsmith_mod_i32(38196i, u_input.a) << (u_input.c % 32u))), !vec3<bool>(all(func_4(vec2<f32>(-442f, 188f), Struct_1(-6627i, vec4<u32>(1u, u_input.b, u_input.c, u_input.c)), Struct_3(var_1, vec3<u32>(u_input.c, 4294967295u, 39029u))).yy), var_0, false));
    var_2 = !select(!vec3<bool>(var_0, true, all(vec4<bool>(true, true, true, var_0))), !select(!vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, var_2.x, true), func_1(var_1)), vec3<bool>(any(var_2.yx), var_2.x, !var_0));
    let var_3 = vec2<u32>(reverseBits(u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~17133u, 1u, ~u_input.b, _wgslsmith_mod_u32(u_input.b, 4294967295u)), ~(vec4<u32>(0u, 14355u, u_input.c, 32856u) ^ vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.c))), ~(~(vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u) >> (vec4<u32>(u_input.c, 46837u, u_input.c, 4294967295u) % vec4<u32>(32u))))));
    var var_4 = ~(33175i ^ u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -365f)))))), min(func_5(vec3<bool>(true & var_0, -1558f == var_1, var_0 & var_2.x), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, 28769i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(11223i, -21864i)), Struct_2(func_2(Struct_1(20797i, vec4<u32>(u_input.c, 17034u, 5791u, 26086u))), func_4(vec2<f32>(var_1, var_1), Struct_1(u_input.a, vec4<u32>(var_3.x, u_input.c, u_input.c, u_input.b)), Struct_3(841f, vec3<u32>(var_3.x, 1u, u_input.b))), func_2(Struct_1(u_input.a, vec4<u32>(24793u, 27819u, var_3.x, 57643u))), func_2(Struct_1(u_input.a, vec4<u32>(1u, var_3.x, 41679u, 39882u))))).x, ~(~1u)), ~vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(35260u, 4294967295u), var_3) >> (9040u % 32u), ~_wgslsmith_mult_u32(0u, 12629u), var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))));
}

