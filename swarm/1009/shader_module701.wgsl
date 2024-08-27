struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-212f + -295f)) * arg_0.c))), _wgslsmith_f_op_f32(ceil(arg_0.c)), arg_0.a, arg_0.a);
    var var_1 = select(_wgslsmith_div_u32(1771u, ~select(_wgslsmith_mod_u32(75057u, 10782u), min(0u, 36983u), true)), firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 25421u, arg_0.b, arg_0.b) & vec4<u32>(18431u, arg_0.b, 1u, 67866u), vec4<u32>(4294967295u, arg_0.b, 0u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, arg_0.b, arg_0.b, 52469u), vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 91885u)) ^ abs(vec4<u32>(16366u, arg_0.b, u_input.d.x, u_input.c)))), abs(u_input.a.x) == _wgslsmith_mult_i32(u_input.a.x, u_input.a.x ^ 17989i));
    var_1 = ~(min(u_input.c, 4294967295u) >> (u_input.c % 32u));
    var var_2 = arg_0;
    var_2 = arg_0;
    return vec3<bool>(true, any(vec2<bool>(true, true)), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(695f)) + _wgslsmith_f_op_f32(ceil(-1218f)))) + 1223f), 4294967295u, -1502f);
    var_0 = Struct_1(var_0.a, min(8041u, _wgslsmith_mod_u32(u_input.c, 1u)), var_0.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-540f * -225f) + var_0.c), var_0.b, _wgslsmith_f_op_f32(round(-128f)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-946f)))), ~(var_0.b | 1u), 960f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-305f)))))), 1u, 1273f);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(334f - var_1.c)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c))))) + 439f), 4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(404f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1158f - -961f), _wgslsmith_f_op_f32(ceil(-817f)))))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, all(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), func_3(Struct_1(889f, arg_2.b, arg_2.a)), any(vec4<bool>(false, false, false, true)))))), arg_0.a));
    var var_2 = arg_0;
    var_2 = Struct_1(var_0.c, _wgslsmith_dot_vec2_u32(u_input.b, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(8526u, 48847u), vec2<u32>(var_2.b, arg_2.b)))), var_2.a);
    var var_3 = firstTrailingBit(-arg_1 | arg_1);
    return _wgslsmith_mod_u32(~arg_0.b, arg_2.b);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1429f);
    var_0 = !vec3<bool>(all(!vec2<bool>(var_0.x, false)), !(var_0.x || var_0.x) && !all(vec4<bool>(true, false, arg_0.x, arg_0.x)), true);
    var var_2 = Struct_1(var_1, _wgslsmith_mod_u32(23183u, min(_wgslsmith_add_u32(u_input.b.x, u_input.d.x), ~u_input.c)) >> (1u % 32u), 326f);
    var_2 = Struct_1(var_1, func_5(Struct_1(var_2.a, var_2.b, _wgslsmith_f_op_f32(func_4(func_3(Struct_1(var_2.c, u_input.c, 1736f)), func_3(Struct_1(var_1, u_input.d.x, var_1))))), -arg_1.xz, Struct_1(484f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1277f + var_1) - _wgslsmith_f_op_f32(-var_2.a)))), -1742f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) * _wgslsmith_f_op_f32(step(var_1, var_2.c)))))), u_input.c << (func_5(Struct_1(_wgslsmith_f_op_f32(var_2.a + 453f), 4294967295u, -332f), arg_1.xz >> (firstTrailingBit(u_input.b) % vec2<u32>(32u)), Struct_1(251f, ~0u, var_2.a)) % 32u), 895f);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = func_2(select(vec3<bool>(true, _wgslsmith_f_op_f32(-arg_1.a) <= _wgslsmith_f_op_f32(arg_1.c * 436f), true || (522f < arg_1.a)), vec3<bool>(true, all(func_3(arg_1).xz), true), vec3<bool>(true || (arg_2 != arg_1.c), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), true)), select(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(13467i, arg_3.x), 1i << (_wgslsmith_clamp_u32(arg_0.x, arg_1.b, u_input.c) % 32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -12761i, arg_3.x, 0i), vec4<i32>(27851i, u_input.a.x, 16446i, -33860i)), -6496i, firstLeadingBit(_wgslsmith_sub_i32(arg_3.x, arg_3.x))), true), reverseBits(func_5(arg_1, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -50372i) >> (arg_0.zw % vec2<u32>(32u)), firstTrailingBit(u_input.a.zy)), func_2(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<i32>(-58900i, u_input.a.x, u_input.a.x), 1u))));
    return func_2(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), arg_3, u_input.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x ^ u_input.a.x, ~abs(-u_input.a.x));
    var var_1 = func_6(~(vec4<u32>(reverseBits(0u), 5412u, select(63291u, 1u, true), 4294967295u) << (~vec4<u32>(u_input.d.x, 25611u, u_input.c, arg_1.b) % vec4<u32>(32u))), func_2(vec3<bool>(true, any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(arg_1.c + arg_0.a) >= _wgslsmith_f_op_f32(-arg_1.a)), ~vec3<i32>(~2147483647i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-20881i, -2147483647i), vec2<i32>(1i, u_input.a.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, ~arg_1.b), u_input.d)), -621f, vec3<i32>(abs(~1i), -2147483647i, ~(-2147483647i)) ^ (-(vec3<i32>(var_0, var_0, var_0) | vec3<i32>(var_0, -5764i, 2147483647i)) & vec3<i32>(reverseBits(var_0), u_input.a.x, var_0)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), abs(0u), _wgslsmith_f_op_f32(func_4(!select(func_3(Struct_1(arg_1.a, 1u, -208f)), func_3(Struct_1(201f, arg_1.b, arg_0.a)), true), vec3<bool>(true, true, true))));
    let var_2 = func_6(max(~(vec4<u32>(0u, u_input.d.x, 1u, 4294967295u) & ~vec4<u32>(0u, var_1.b, 4294967295u, arg_1.b)), ~(vec4<u32>(4294967295u, var_1.b, arg_1.b, 15092u) | reverseBits(vec4<u32>(u_input.d.x, 49954u, 21984u, var_1.b)))), arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(161f - 1050f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a - arg_0.a))), -562f)), u_input.a & _wgslsmith_mod_vec3_i32(u_input.a, u_input.a));
    var_1 = Struct_1(var_2.c, _wgslsmith_sub_u32(4294967295u, ~(104178u >> (~arg_1.b % 32u))), arg_0.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1068f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1507f)))))), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) + -1171f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(1f)), 1u, 459f);
    let var_2 = Struct_1(var_1.c, _wgslsmith_mod_u32(1u, abs(abs(var_1.b << (56000u % 32u)))), -899f);
    var_1 = func_1(var_2, Struct_1(_wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(-var_0.a)), ~((var_2.b ^ 0u) | _wgslsmith_mod_u32(4294967295u, var_0.b)), 1585f));
    let var_3 = func_6(vec4<u32>(abs(4294967295u), var_1.b, var_1.b >> (1u % 32u), ~(~4294967295u)), Struct_1(var_0.c, func_2(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<i32>(u_input.a.x, u_input.a.x, 1i), max(var_2.b, 8428u)).b, -572f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f - var_2.a)), -1594f)), ~_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(max(2147483647i, u_input.a.x), abs(2147483647i), _wgslsmith_mult_i32(u_input.a.x, 29663i)), _wgslsmith_add_vec3_i32(~vec3<i32>(-24836i, 2147483647i, -40276i), vec3<i32>(u_input.a.x, 22813i, u_input.a.x) >> (u_input.d % vec3<u32>(32u)))));
    let var_4 = var_2;
    let var_5 = ~_wgslsmith_mult_vec4_u32((vec4<u32>(31526u, var_0.b, 79754u, var_0.b) & min(vec4<u32>(58540u, 70915u, 41982u, u_input.b.x), vec4<u32>(1u, 75766u, 17308u, 4102u))) | ~firstTrailingBit(vec4<u32>(62959u, var_0.b, 0u, var_0.b)), ~(~reverseBits(vec4<u32>(var_3.b, 42872u, 1u, var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1765f, _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(-var_4.a))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, var_4.a, -154f), vec3<f32>(var_2.c, 1212f, 784f), vec3<bool>(false, false, true))), vec3<f32>(var_3.c, -1552f, -2042f), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1142f, var_0.c))), vec3<bool>(true, true, true)))), var_5.x, vec4<i32>(-((u_input.a.x & -24875i) | ~(-40640i)), ~(-(54734i & u_input.a.x)), 0i, -44891i), min(var_5.xwy, vec3<u32>(1u, 0u, 1u)), -30177i);
}

