struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool) -> i32 {
    let var_0 = vec2<u32>(firstLeadingBit(arg_1.b), ~17983u);
    var var_1 = Struct_1(arg_1.d.x, !(!arg_2));
    var_1 = Struct_1(0u, var_1.b);
    return arg_1.e;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> bool {
    let var_0 = ~firstLeadingBit(~(~vec2<u32>(1u, 1u)));
    var var_1 = Struct_4(Struct_3(func_3(_wgslsmith_sub_vec3_i32(~vec3<i32>(-15503i, arg_1, 2147483647i), ~vec3<i32>(-2147483647i, arg_1, 9466i)), Struct_3(~arg_0.x, _wgslsmith_add_u32(0u, var_0.x), Struct_2(vec3<f32>(849f, -324f, 999f)), var_0, ~(-2147483647i)), true), var_0.x, Struct_2(vec3<f32>(-560f, _wgslsmith_f_op_f32(f32(-1f) * -2050f), 262f)), vec2<u32>(var_0.x, ~var_0.x) | var_0, ~arg_0.x | u_input.a), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-229f, -1661f, -790f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-674f, 972f, 291f))))))));
    var_1 = Struct_4(Struct_3(max(arg_1, 1i), ~(~_wgslsmith_sub_u32(var_1.a.d.x, var_0.x)), var_1.a.c, vec2<u32>(_wgslsmith_add_u32(0u, abs(var_1.a.d.x)), 0u), arg_1 | (i32(-1i) * -u_input.a)), !vec4<bool>(any(vec4<bool>(false, true, false, true)), var_1.b.x, !var_1.b.x, var_1.b.x), var_1.a.c);
    var_1 = Struct_4(Struct_3(~arg_0.x, ~(~1u), var_1.c, _wgslsmith_div_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(23689u, 12287u))), ~vec2<u32>(var_0.x, var_0.x)), 25943i), select(vec4<bool>(all(!var_1.b), true, true, (arg_1 == arg_0.x) & select(var_1.b.x, var_1.b.x, var_1.b.x)), !select(select(var_1.b, var_1.b, var_1.b), var_1.b, false), any(select(var_1.b.wx, var_1.b.wx, true)) == !var_1.b.x), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c.a.x, _wgslsmith_f_op_f32(204f + -237f), var_1.c.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -185f, var_1.a.c.a.x)))));
    var var_2 = all(!(!var_1.b));
    return !var_1.b.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = select(select(vec3<bool>(true, func_2(abs(vec3<i32>(u_input.a, 2147483647i, u_input.a)), u_input.a), select(11598i, -2147483647i, true) == u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_sub_i32(u_input.a, u_input.a) != u_input.a), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), true)), vec3<bool>(arg_0.x > arg_1.x, true, true), vec3<bool>(firstLeadingBit(u_input.a) == func_3(max(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(-2147483647i, u_input.a, 15735i)), Struct_3(u_input.a, arg_1.x, Struct_2(vec3<f32>(-1517f, -1628f, 320f)), vec2<u32>(4294967295u, arg_0.x), 2147483647i), all(vec2<bool>(false, true))), true, true));
    let var_1 = -339f;
    var_0 = select(!(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, true, var_0.x), var_0.x)), !select(vec3<bool>(!var_0.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), all(vec3<bool>(true, var_0.x, var_0.x))), vec3<bool>(true, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true), vec3<bool>(var_0.x & var_0.x, var_0.x && true, func_2(vec3<i32>(2147483647i, u_input.a, -2147483647i), 0i))), !select(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x), true), select(vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, true), var_0.x)), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, true, var_0.x), false), vec3<bool>(true, func_2(vec3<i32>(u_input.a, -2147483647i, u_input.a), u_input.a), false)));
    var_0 = vec3<bool>(var_0.x, ((i32(-1i) * -2147483647i) | -u_input.a) >= (2147483647i | ~u_input.a), true);
    var var_2 = ~select(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), ~abs(vec3<u32>(arg_0.x, arg_1.x, arg_0.x))), countOneBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 64568u), vec3<u32>(arg_1.x, arg_1.x, 1u)))), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, true, var_0.x), func_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), u_input.a)), all(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))));
    return Struct_1(arg_1.x | (~arg_1.x << (firstTrailingBit(~58487u) % 32u)), false);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_5(all(arg_2.b), arg_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(arg_2.a.c.a.xz)), _wgslsmith_f_op_vec2_f32(-arg_2.a.c.a.xz))));
    var_0 = Struct_5(any(select(vec3<bool>(true, true, !var_0.a), select(arg_2.b.zzw, arg_2.b.yzx, vec3<bool>(false, true, true)), !arg_2.b.wxx)), func_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, var_0.b.a), ~arg_2.a.d), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(var_0.b.a, 1u)), ~vec2<u32>(30813u, 53955u))), arg_2.a.d));
    var var_2 = func_1(vec2<u32>(4294967295u, var_0.b.a & countOneBits(13041u)), vec2<u32>(abs(_wgslsmith_clamp_u32(var_0.b.a, arg_0.b.a, arg_0.b.a) & 27776u), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.d.x, var_0.b.a, 42894u), vec3<u32>(var_0.b.a, 4294967295u, arg_0.b.a)))));
    var_2 = func_1(vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(26933u, arg_2.a.d.x, var_2.a), vec3<u32>(arg_2.a.b, arg_0.b.a, 107386u))), var_2.a), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(arg_2.a.b, arg_2.a.d.x)), vec2<u32>(func_1(vec2<u32>(4294967295u, 17766u), vec2<u32>(33445u, arg_2.a.b)).a, firstLeadingBit(arg_2.a.b))), reverseBits(countOneBits(~arg_2.a.d))));
    return arg_2.a;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(any(vec3<bool>(true, true, true)), false), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, arg_2.c.a.x > -1185f)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), u_input.a >= 2147483647i), vec2<bool>(true, true))), all(vec2<bool>(any(vec3<bool>(false, true, false)), select(any(vec4<bool>(true, false, true, true)), all(vec4<bool>(true, true, true, true)), true))));
    var var_1 = true;
    var_1 = true;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(select(~arg_2.d, _wgslsmith_add_vec2_u32(arg_2.d, ~vec2<u32>(arg_2.d.x, 23822u)), false), vec2<u32>(reverseBits(23320u), ~arg_2.d.x)), true);
    let var_3 = Struct_4(func_4(Struct_5(var_0.x || all(vec3<bool>(var_2.b, true, true)), func_1(~vec2<u32>(var_2.a, var_2.a), arg_2.d)), ~(arg_2.a & ~u_input.a), Struct_4(Struct_3(abs(-1i), ~var_2.a, func_4(Struct_5(false, Struct_1(var_2.a, false)), arg_2.a, Struct_4(Struct_3(-2147483647i, arg_2.b, arg_2.c, vec2<u32>(4294967295u, 26085u), -1i), vec4<bool>(false, true, var_2.b, var_0.x), arg_2.c)).c, vec2<u32>(16763u, arg_2.b) >> (arg_2.d % vec2<u32>(32u)), -36009i >> (arg_2.b % 32u)), select(vec4<bool>(var_2.b, var_2.b, var_2.b, true), !vec4<bool>(false, var_2.b, var_0.x, false), true), func_4(Struct_5(true, Struct_1(arg_2.d.x, false)), arg_1.x >> (4294967295u % 32u), Struct_4(Struct_3(37620i, 1u, arg_2.c, vec2<u32>(1u, arg_2.b), u_input.a), vec4<bool>(true, true, true, var_0.x), Struct_2(arg_0))).c)), !vec4<bool>(func_2(_wgslsmith_div_vec3_i32(arg_1.yww, arg_1.yzy), arg_1.x), true, var_2.b, !var_0.x), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0)))));
    return Struct_1(~((0u & _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, var_2.a, var_2.a, arg_2.d.x), vec4<u32>(var_2.a, 51300u, var_2.a, arg_2.b))) << ((func_4(Struct_5(true, Struct_1(arg_2.d.x, false)), var_3.a.e, var_3).d.x << (~4294967295u % 32u)) % 32u)), func_1(arg_2.d, ~vec2<u32>(_wgslsmith_mult_u32(3057u, 3759u), var_2.a)).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_clamp_i32(u_input.a, u_input.a, -2147483647i) <= _wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(1i, u_input.a)), min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -16934i)), 34166i)), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-188f, -166f, 239f), vec3<f32>(1000f, 951f, -929f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1496f, -1732f, -130f) + vec3<f32>(999f, 1387f, 249f)))), ~(-firstLeadingBit(vec4<i32>(1i, 1i, u_input.a, u_input.a))), func_4(Struct_5(true, func_1(vec2<u32>(0u, 34971u), vec2<u32>(36930u, 42219u))), u_input.a, Struct_4(Struct_3(u_input.a, 0u, Struct_2(vec3<f32>(299f, -2111f, -1939f)), vec2<u32>(10254u, 1u), 2147483647i), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), Struct_2(vec3<f32>(-2146f, 1264f, -1508f))))));
    let var_1 = var_0.b.a;
    let var_2 = -256f;
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(~u_input.a, u_input.a, -2147483647i), vec3<i32>(select(_wgslsmith_div_i32(63746i, -37303i), _wgslsmith_mod_i32(23681i, 3907i), var_0.b.b), -u_input.a, u_input.a)) ^ ~(-vec3<i32>(~(-10657i), u_input.a >> (var_0.b.a % 32u), u_input.a));
    var_0 = Struct_5(func_1(vec2<u32>(1u, ~_wgslsmith_mod_u32(76499u, 1u)), ~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(10168u, 64372u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.a, var_0.b.a), vec2<u32>(var_0.b.a, var_0.b.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.a, var_0.b.a), vec2<u32>(var_0.b.a, var_0.b.a)))).b, var_0.b);
    let var_4 = func_4(Struct_5(!var_0.b.b, func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(30646u, var_0.b.a) << (vec2<u32>(63321u, var_0.b.a) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.a, var_0.b.a), vec2<u32>(var_0.b.a, var_0.b.a))), ~countOneBits(vec2<u32>(var_0.b.a, 13413u)))), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(~(-1i), -2147483647i), ~(~var_3.x), _wgslsmith_add_i32(u_input.a & -2147483647i, i32(-1i) * -1i)), Struct_4(Struct_3(~_wgslsmith_div_i32(-7842i, u_input.a), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.b.a, 4294967295u)), vec2<u32>(var_0.b.a, var_0.b.a) | vec2<u32>(18216u, var_0.b.a)), func_4(Struct_5(var_0.b.b, var_0.b), ~23040i, Struct_4(Struct_3(u_input.a, 14953u, Struct_2(vec3<f32>(var_2, -655f, var_2)), vec2<u32>(4294967295u, 48554u), u_input.a), vec4<bool>(false, var_0.b.b, var_0.b.b, true), Struct_2(vec3<f32>(-417f, -594f, var_2)))).c, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.b.a, 45727u), vec2<u32>(var_0.b.a, var_0.b.a)), abs(vec2<u32>(1u, 1u)), select(vec2<u32>(var_0.b.a, 42125u), vec2<u32>(1u, var_0.b.a), vec2<bool>(var_0.b.b, var_0.b.b))), ~0i), vec4<bool>(func_2(_wgslsmith_sub_vec3_i32(var_3, var_3), -var_3.x), var_0.b.b && var_0.b.b, true, !all(vec4<bool>(true, var_0.a, false, false))), func_4(Struct_5(var_0.b.a < var_0.b.a, Struct_1(var_0.b.a, false)), ~(-1i), Struct_4(func_4(Struct_5(false, Struct_1(var_0.b.a, var_0.b.b)), var_3.x, Struct_4(Struct_3(var_3.x, var_0.b.a, Struct_2(vec3<f32>(-149f, 1228f, 258f)), vec2<u32>(var_0.b.a, var_0.b.a), var_3.x), vec4<bool>(false, var_0.a, var_0.a, true), Struct_2(vec3<f32>(var_2, -564f, 1554f)))), select(vec4<bool>(true, var_0.a, false, var_0.b.b), vec4<bool>(false, var_0.b.b, true, var_0.a), true), Struct_2(vec3<f32>(-587f, 1000f, 1970f)))).c)).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2 + -1808f));
}

