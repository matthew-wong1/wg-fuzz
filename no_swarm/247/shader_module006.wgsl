struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(Struct_1(18900u, min(u_input.a >> ((u_input.a | u_input.a) % 32u), select(u_input.a >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(26132u, 49746u), vec2<u32>(u_input.a, u_input.a)), true))));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(var_0.a);
    return ~(~5859u);
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> vec3<f32> {
    var var_0 = ~vec3<u32>(countOneBits(~45086u), arg_1.e.a, func_3()) & select(abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), select(vec3<u32>(0u, arg_1.e.a, 155u), vec3<u32>(0u, u_input.a, arg_1.e.b), arg_1.d))), min(select(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(arg_1.e.b, u_input.a, u_input.a), select(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(4294967295u, u_input.a, 4294967295u), false), false), ~vec3<u32>(arg_1.e.b, 7356u, arg_1.e.a)), min(1u, ~u_input.a) > _wgslsmith_add_u32(4294967295u, abs(arg_1.e.a)));
    let var_1 = ~vec4<i32>(~_wgslsmith_mult_i32(firstTrailingBit(24243i), ~u_input.b), arg_0, -arg_0, _wgslsmith_clamp_i32(~(~(-827i)), reverseBits(-2147483647i), u_input.b));
    var_0 = firstLeadingBit(vec3<u32>(u_input.a, reverseBits(34828u), 44255u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 3918u, arg_1.c.a.a), ~vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(arg_1.e.a, 1u, 85424u) ^ vec3<u32>(0u, u_input.a, arg_1.e.b)) % vec3<u32>(32u))) & select(vec3<u32>(4294967295u, 48162u, 108854u), ~vec3<u32>(u_input.a, 4294967295u, ~u_input.a), !any(select(vec4<bool>(arg_1.a.x, true, arg_2, arg_2), vec4<bool>(arg_1.a.x, arg_2, arg_1.d.x, true), false)));
    let var_2 = arg_1;
    var var_3 = var_2.c.a;
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1122f + _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1039f, arg_1.b)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(610f + var_2.b)), var_2.b));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-36696i, Struct_4(vec3<bool>(true, false, true), 1291f, Struct_3(Struct_1(25254u, 4294967295u)), vec3<bool>(true, true, true), Struct_1(u_input.a, 1u)), true))) * vec3<f32>(1f, 1f, 1f)) + vec3<f32>(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1119f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1272f))))));
    let var_1 = Struct_3(Struct_1(~(u_input.a ^ u_input.a) & 3861u, ~u_input.a));
    var var_2 = !select(vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(338f - -1000f)), vec3<bool>(!all(vec2<bool>(true, false)), true, true));
    var_2 = !(!vec3<bool>(true, !(var_0.x >= var_0.x), true || !var_2.x));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2606f)) + var_0.x))), _wgslsmith_f_op_f32(step(var_0.x, 637f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(~u_input.b, Struct_4(vec3<bool>(var_2.x, false, true), 2428f, var_1, vec3<bool>(true, var_2.x, true), Struct_1(18819u, var_1.a.a)), false)).x * var_0.x), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.x, -1727f)), 920f)), !var_2.x)), var_0.x));
    return Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 855f, var_0.x, var_0.x))), var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-779f)))))), vec4<u32>(38566u, 963u, u_input.a, ~abs(_wgslsmith_sub_u32(u_input.a, 4294967295u))), var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), _wgslsmith_clamp_u32(arg_1, 15393u, 27714u) <= 4294967295u), vec3<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), arg_0.a.x != _wgslsmith_f_op_f32(-arg_0.a.x)), !(arg_2.x <= _wgslsmith_add_i32(u_input.b, -2147483647i))), vec3<bool>(true, true, !(all(vec2<bool>(false, true)) != (arg_0.a.x > -1297f))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), select(true, false, false)), vec3<bool>(all(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, true)), countOneBits(firstLeadingBit(u_input.b)) <= abs(min(u_input.b, -2147483647i))));
    let var_1 = _wgslsmith_div_f32(2062f, _wgslsmith_f_op_f32(select(-940f, _wgslsmith_f_op_f32(select(-858f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_0.a.x)), (59099i ^ u_input.b) == _wgslsmith_sub_i32(u_input.b, arg_2.x))), var_0.x)));
    let var_2 = arg_0.e;
    var var_3 = select(~arg_0.d, ~(~(~arg_0.d)), -1266f == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))));
    var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(3941u, (var_3.x & ~u_input.a) ^ ~(~var_3.x), _wgslsmith_mod_u32(abs(1u), min(_wgslsmith_sub_u32(u_input.a, 3298u), u_input.a)), _wgslsmith_add_u32(~u_input.a, 58083u)), arg_0.d);
    return Struct_2(_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, var_1, var_1, -358f) * arg_0.a)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(407f, -780f, -507f, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-arg_0.a))))), func_1().e, _wgslsmith_f_op_f32(round(1000f)), firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.b, 1u), 4294967295u), 1u & u_input.a, 12039u, func_3() >> (u_input.a % 32u))), Struct_1(abs(_wgslsmith_mod_u32(var_2.a, countOneBits(19715u))), ~arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), abs(1u), ~vec3<i32>(u_input.b, -46015i >> (firstLeadingBit(u_input.a) % 32u), -85275i));
    var var_1 = u_input.b;
    let var_2 = Struct_4(!(!vec3<bool>(any(vec3<bool>(true, true, false)), true, var_0.c <= 852f)), var_0.a.x, Struct_3(Struct_1(var_0.e.a, _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(39694u, 0u)))), vec3<bool>(true, true, true), var_0.b);
    var var_3 = _wgslsmith_dot_vec4_i32(~(~(reverseBits(vec4<i32>(-2147483647i, 0i, u_input.b, 10547i)) & firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -58765i, -10260i)))), vec4<i32>(-1i, 2147483647i, u_input.b, countOneBits(u_input.b)));
    var_1 = -3729i | ~u_input.b;
    var var_4 = firstTrailingBit(var_0.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(-1699f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1317f, var_2.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2088f, 481f), _wgslsmith_f_op_f32(min(-608f, -1000f)))) * var_2.b)));
}

