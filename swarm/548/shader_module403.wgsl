struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_5(countOneBits(~_wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, -1i), -1i)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.e.x, arg_1.e.x)), _wgslsmith_f_op_f32(step(arg_1.e.x, arg_1.e.x))))), -1948f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1222f)), 1f)), -482f), ~arg_1.b.d.c);
    let var_1 = Struct_3(33722u, arg_0, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -799f)) - _wgslsmith_f_op_f32(arg_1.e.x - _wgslsmith_f_op_f32(ceil(var_0.b.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -634f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1885f, 1240f)))), _wgslsmith_f_op_vec2_f32(-var_0.b.yy))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_0.b);
    var var_3 = var_1.c;
    var_3 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 0u, 4294967295u, var_0.c) & select(vec4<u32>(1u, 40793u, 0u, 1972u), vec4<u32>(68069u, 30920u, arg_0.d.c, u_input.d), arg_0.d.b.x && true), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~var_1.b.d.d, vec3<u32>(var_1.c, 20768u, var_1.c)), _wgslsmith_mult_u32(~0u, var_1.c), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(u_input.d, arg_0.d.d.x))));
    return _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(~arg_0.c.x, 0i));
}

fn func_2(arg_0: Struct_3) -> Struct_5 {
    var var_0 = u_input.c.wy;
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(32813i, abs(1i)), vec2<i32>(_wgslsmith_clamp_i32(2736i, func_3(Struct_2(17954i, arg_0.b.b, vec4<i32>(u_input.b, arg_0.b.a, var_0.x, 1i), Struct_1(arg_0.d, arg_0.b.b.yz, 1u, vec3<u32>(99319u, 32830u, 38197u))), Struct_3(4294967295u, Struct_2(arg_0.b.a, arg_0.b.b, vec4<i32>(u_input.b, var_0.x, u_input.c.x, 2147483647i), Struct_1(arg_0.d, vec2<bool>(arg_0.b.b.x, arg_0.d), 29332u, vec3<u32>(4294967295u, u_input.e, arg_0.b.d.d.x))), 28303u, arg_0.b.d.a, vec2<f32>(680f, -189f))), 1i), select(u_input.a, 11106i, _wgslsmith_f_op_f32(f32(-1f) * -195f) >= _wgslsmith_f_op_f32(-339f + arg_0.e.x))), ~vec2<i32>(1291i, _wgslsmith_div_i32(select(var_0.x, arg_0.b.a, true), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 65800i, -717i), u_input.c.xxw))));
    var_0 = arg_0.b.c.zy;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.e.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, 970f))))), 366f);
    let var_2 = vec3<bool>(true, -1000f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f - var_1.x)) - 1305f), arg_0.b.d.c > _wgslsmith_dot_vec2_u32(~vec2<u32>(74923u, 0u), arg_0.b.d.d.xy));
    return Struct_5(-1i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.e.x, -668f, var_1.x) + vec4<f32>(1688f, -373f, 547f, 1441f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, -929f, 1864f, var_1.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, -784f, -713f, var_1.x))))))), ~39301u | max(~arg_0.a, ~(arg_0.a ^ arg_0.c)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_5) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(-arg_3.a, !(!vec4<bool>(true, arg_0, arg_0, true)), _wgslsmith_clamp_vec4_i32(countOneBits(firstTrailingBit(u_input.c)), select(u_input.c, u_input.c, vec4<bool>(arg_0, false, true, arg_0)), min(firstLeadingBit(u_input.c), u_input.c)), Struct_1(!arg_0 & true, !(!vec2<bool>(false, arg_0)), arg_3.c, vec3<u32>(0u, _wgslsmith_mult_u32(1u, 0u), arg_3.c))), select(!select(vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_0), !select(!vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, arg_0, arg_0), true), !vec4<bool>(arg_0, false, false, arg_0)), arg_0), Struct_2(-arg_3.a, !select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0), all(vec2<bool>(arg_0, true))), abs(-firstTrailingBit(u_input.c)), Struct_1(arg_0, select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), false), vec2<bool>(false, arg_0), !vec2<bool>(true, arg_0)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d), vec3<u32>(arg_3.c, arg_2, arg_3.c)), vec3<u32>(0u, 17915u, 29654u) & vec3<u32>(arg_3.c, 24952u, arg_3.c)), ~max(vec3<u32>(arg_3.c, 4294967295u, 0u), vec3<u32>(0u, 0u, arg_2)))), Struct_2(arg_3.a, vec4<bool>(true, false, arg_3.a != 24260i, !(!arg_0)), vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(countOneBits(0i), u_input.c.x), 35054i, 1i), Struct_1(arg_0, vec2<bool>(arg_0, arg_0 && arg_0), _wgslsmith_add_u32(_wgslsmith_mod_u32(2757u, arg_3.c), 4294967295u), ~select(vec3<u32>(0u, 18330u, u_input.e), vec3<u32>(arg_3.c, 33382u, 4294967295u), arg_0))), u_input.c.x);
    var var_1 = 43944u;
    var var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(var_0.c.d.d.x, arg_2, 32665u, 4294967295u))), vec4<u32>(1u, arg_3.c, u_input.d, ~arg_2 >> (u_input.d % 32u))), vec4<u32>(33954u, select(countOneBits(u_input.e | var_0.a.d.d.x), 1u, true), abs(_wgslsmith_sub_u32(var_0.d.d.d.x, 4294967295u)), ~(~arg_3.c)));
    let var_3 = var_0.a;
    let var_4 = vec4<u32>(~30508u << (var_2.x % 32u), 162878u, u_input.d, var_2.x);
    return var_0.c;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> vec4<bool> {
    var var_0 = ~701i;
    var_0 = abs(_wgslsmith_mult_i32(arg_1.a, ~arg_2));
    let var_1 = arg_1.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * arg_3));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) + _wgslsmith_f_op_f32(-arg_3));
    return !func_4(var_1, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 437f, arg_3, arg_3) + vec4<f32>(1338f, 825f, -483f, arg_3)))))), 54287u, Struct_5(_wgslsmith_clamp_i32(28534i, 18965i, firstLeadingBit(-27549i)), vec4<f32>(_wgslsmith_f_op_f32(-525f * 184f), arg_3, _wgslsmith_div_f32(-1455f, arg_3), _wgslsmith_f_op_f32(-486f - 698f)), u_input.d)).b;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    var var_0 = ~_wgslsmith_mod_i32(~min(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -14867i, 38392i, 2147483647i), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, 5028i))) | -1i;
    var var_1 = Struct_2(u_input.c.x, func_5(70606u, func_4(any(vec3<bool>(true, true, true)), _wgslsmith_div_vec4_f32(vec4<f32>(-1310f, 585f, -264f, 897f), vec4<f32>(-1967f, -1733f, -469f, -150f)), 0u, func_2(Struct_3(arg_1, Struct_2(u_input.b, vec4<bool>(false, false, true, true), vec4<i32>(0i, 1i, u_input.b, -1i), Struct_1(true, vec2<bool>(false, true), arg_0.x, arg_0)), 4294967295u, false, vec2<f32>(269f, 1325f)))), _wgslsmith_div_i32(-u_input.c.x, u_input.c.x) >> (1u % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-139f, 560f)), -336f))))), u_input.c, Struct_1(_wgslsmith_mod_u32(abs(4294967295u), min(u_input.e, 109520u)) != u_input.d, vec2<bool>(true, true), 1u, ~vec3<u32>(u_input.e, ~arg_0.x, u_input.d << (1u % 32u))));
    var_1 = func_4(var_1.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1282f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(334f, _wgslsmith_f_op_f32(f32(-1f) * -626f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(581f, 379f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-782f, -1003f)))), -255f, !var_1.d.b.x))), u_input.e, Struct_5(~(~firstLeadingBit(u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1008f, -159f, 542f, -349f) * vec4<f32>(576f, -149f, -411f, 769f)) + vec4<f32>(-488f, 643f, -1622f, -866f))), reverseBits(arg_1)));
    var var_2 = Struct_1(!(!(!var_1.b.x)), vec2<bool>(true, var_1.d.b.x), func_4(var_1.d.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1181f, -2082f, 978f))))), ~(~_wgslsmith_clamp_u32(var_1.d.d.x, 12424u, arg_0.x)), Struct_5(u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-183f, 134f, 128f, 288f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, -1390f, -162f, 1000f))), min(u_input.e, 0u))).d.c, var_1.d.d ^ vec3<u32>(~(25370u >> (arg_1 % 32u)), u_input.d, u_input.e));
    var_1 = Struct_2(firstTrailingBit(-9067i), func_5(_wgslsmith_clamp_u32(5641u, var_2.d.x, 16094u), Struct_2(_wgslsmith_sub_i32(-var_1.a, ~41953i), var_1.b, -_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.x, 0i, var_1.c.x, 1774i), vec4<i32>(49857i, var_1.a, 0i, u_input.a)), Struct_1(true, var_1.b.xz, 1u, var_1.d.d)), -22941i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(373f, -267f)) * _wgslsmith_f_op_f32(f32(-1f) * -683f))))), var_1.c, var_1.d);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var_0 = _wgslsmith_mult_i32(-(-18956i & func_1(vec3<u32>(0u, u_input.d, 43918u), 3710u & u_input.e)), countOneBits(~(~(-2147483647i))));
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(2147483647i, 2147483647i, u_input.a)), vec3<i32>(u_input.c.x, -1i, 0i)), u_input.c.yxz), u_input.c.xzz) << (_wgslsmith_mod_u32((~4294967295u ^ u_input.d) & _wgslsmith_div_u32(u_input.e, 4294967295u), ~1u | u_input.e) % 32u);
    var_0 = firstLeadingBit(max(_wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(~u_input.a, -28354i, _wgslsmith_sub_i32(u_input.b, 2147483647i))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b, -1i, u_input.a), _wgslsmith_dot_vec3_i32(u_input.c.wyz, vec3<i32>(48856i, -40916i, u_input.a)), _wgslsmith_mod_i32(-30229i, -63239i)) >> (~reverseBits(17513u) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(908f)) + _wgslsmith_f_op_f32(-240f * -842f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(521f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1520f, -356f) - _wgslsmith_f_op_f32(f32(-1f) * -3149f)) - _wgslsmith_f_op_f32(-1091f + _wgslsmith_f_op_f32(sign(571f)))))));
    var var_2 = 37096i;
    var_1 = 1f;
    let var_3 = Struct_2(u_input.a, func_5(u_input.d, func_4(!any(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1279f, -1000f, -1112f, -797f), vec4<f32>(1210f, -1800f, -1289f, 311f), true)), vec4<f32>(128f, 2002f, 299f, -524f))), u_input.e, func_2(Struct_3(u_input.e, Struct_2(u_input.b, vec4<bool>(true, true, false, false), u_input.c, Struct_1(true, vec2<bool>(false, true), u_input.d, vec3<u32>(u_input.e, 22157u, u_input.e))), 40183u, true, vec2<f32>(-1147f, -106f)))), max(_wgslsmith_sub_i32(-1i >> (0u % 32u), _wgslsmith_clamp_i32(u_input.a, u_input.c.x, -23767i)), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-898f - -1632f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(820f - 390f), -569f))), min(u_input.c, ~select(abs(u_input.c), vec4<i32>(32859i, -2147483647i, 0i, 1i) & u_input.c, false)), Struct_1(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), u_input.d > 43980u)), vec2<bool>(all(vec4<bool>(true, false, true, false)), true), u_input.d, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.e, u_input.d, u_input.e) | ~vec3<u32>(15117u, u_input.d, u_input.d), ~_wgslsmith_sub_vec3_u32(vec3<u32>(45605u, 4294967295u, u_input.e), vec3<u32>(1u, 1u, 65221u)))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.d.yz, -(~(~var_3.c.x)));
}

