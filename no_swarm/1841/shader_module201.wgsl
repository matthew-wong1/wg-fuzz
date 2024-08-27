struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1482f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(437f)), _wgslsmith_f_op_f32(trunc(-156f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2434f + 1649f) * -266f), 1f)));
    global0 = _wgslsmith_f_op_f32(trunc(-956f));
    let var_0 = Struct_1(firstTrailingBit(-20190i) | abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 0i, -8818i, -19232i), vec4<i32>(-2147483647i, 1i, -2147483647i, -35575i) << (vec4<u32>(u_input.a, 51852u, 5625u, u_input.a) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_div_f32(1000f, -1000f), 286f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(579f)))))));
    var var_1 = ~72166u;
    var var_2 = var_0.a;
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(6887u, u_input.a), vec2<u32>(19051u, u_input.a)), ~vec2<u32>(4294967295u, u_input.a)) << (u_input.a % 32u), max(countOneBits(~u_input.a), ~1u)), 1u);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1677f));
    var var_0 = vec2<u32>(~select(42954u, u_input.a, true), 16086u);
    var_0 = vec2<u32>(var_0.x, var_0.x >> (func_3() % 32u)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(9045u, ~(~var_0.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.a, 0u), max(vec4<u32>(4294967295u, u_input.a, 78725u, var_0.x), vec4<u32>(4294967295u, 0u, 11535u, 52836u))), ~var_0.x));
    var var_1 = ~(i32(-1i) * -(max(0i, 52335i) | _wgslsmith_dot_vec2_i32(vec2<i32>(43116i, -2147483647i), vec2<i32>(67502i, -2147483647i))));
    let var_2 = vec2<f32>(571f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1405f, 732f))))))));
    return Struct_1(_wgslsmith_mult_i32(-firstLeadingBit(2147483647i), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1917f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-142f)) * _wgslsmith_f_op_f32(-arg_0.b.x))));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(801f, 114f)), _wgslsmith_f_op_f32(1288f - arg_0.b.x)), arg_0.b.x);
    var var_1 = Struct_1(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 11712i), vec3<i32>(5060i, arg_0.a, -15445i)) & 0i, _wgslsmith_mod_i32(1i, arg_0.a)), arg_0.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -155f), -1023f)));
    let var_3 = any(vec3<bool>(true, true, true));
    return Struct_3(-754f, Struct_2(var_3, arg_0), Struct_2(!select(true, var_3, true), Struct_1(_wgslsmith_add_i32(var_1.a, var_1.a & -17752i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.b))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = true;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -186f);
    let var_1 = func_4(func_2(), 4294967295u, -471f);
    let var_2 = max(arg_1, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(arg_1, 1u, arg_1), vec3<u32>(arg_1, u_input.a, u_input.a) << (vec3<u32>(7868u, 4793u, arg_1) % vec3<u32>(32u)))) ^ reverseBits(arg_1));
    let var_3 = firstTrailingBit(~vec4<u32>(~arg_1, u_input.a, 16376u | reverseBits(arg_1), u_input.a));
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-32584i, -21799i, 3458i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b.b.a, var_1.b.b.a, -2147483647i), vec3<i32>(var_1.b.b.a, 8621i, var_1.c.b.a))), vec3<i32>(reverseBits(1i), ~(-30743i), _wgslsmith_mod_i32(countOneBits(var_1.b.b.a), countOneBits(var_1.b.b.a)))), var_1.c.b.a);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = any(select(select(!select(vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, true, arg_2, arg_2), true), select(!vec4<bool>(true, arg_2, arg_2, true), !vec4<bool>(false, false, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), vec4<bool>(all(vec4<bool>(true, arg_2, arg_2, true)), arg_2, arg_2, all(vec2<bool>(true, arg_2)))), vec4<bool>(!arg_2, -arg_1.a >= _wgslsmith_mod_i32(arg_1.a, arg_1.a), any(!vec2<bool>(false, arg_2)), all(!vec3<bool>(arg_2, true, false))), arg_2));
    let var_1 = arg_0.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(func_2().b.x, arg_1.b.x)), Struct_2(true, Struct_1(~_wgslsmith_mult_i32(arg_1.a, arg_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, arg_1.b.x, -1186f)))), Struct_2(false, Struct_1(~19525i << (_wgslsmith_div_u32(u_input.a, 100257u) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -343f, -593f))))));
    let var_3 = select(vec3<bool>(any(vec2<bool>(false, all(vec2<bool>(var_2.c.a, var_0)))), var_2.b.a, any(!select(vec2<bool>(arg_2, false), vec2<bool>(false, true), var_2.b.a))), vec3<bool>(true, !all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_0, false))), var_0), vec3<bool>(select(false, (arg_2 & var_2.c.a) || true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 64013u, 8980u, u_input.a), vec4<u32>(u_input.a, 27814u, 4294967295u, 36648u)) < 71767u), false, var_2.c.a));
    global0 = -417f;
    return func_4(var_2.c.b, abs(max(reverseBits(~u_input.a), abs(4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_2.c.b.b.x))))).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(any(vec3<bool>(true, true, u_input.a != u_input.a)), true, true), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, 865f, -1121f, 1201f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-804f, -483f, 760f, -1137f), vec4<f32>(-1836f, -615f, -2016f, 177f))))), Struct_1(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-106f, -1247f, -1419f) + vec3<f32>(1290f, 1567f, 851f)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 0u)), min(7096i, 3427i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(449f, 738f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(499f, -509f, 371f) + vec3<f32>(-1442f, 1000f, -1442f))))), true));
    global0 = -261f;
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(max(vec2<i32>(-7276i, -40066i), vec2<i32>(var_0.b.a, var_0.b.a)), vec2<i32>(var_0.b.a, -1i)), vec2<i32>(_wgslsmith_mod_i32(9310i, -14324i), var_0.b.a << (u_input.a % 32u)) >> (vec2<u32>(u_input.a, 26633u) % vec2<u32>(32u))), -vec2<i32>(-38589i << (u_input.a % 32u), ~0i));
    global0 = var_0.b.b.x;
    let var_2 = -11811i;
    let var_3 = func_4(Struct_1(countOneBits(-1i), _wgslsmith_f_op_vec3_f32(-var_0.b.b)), ~(~(~(~u_input.a))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, -1052f, var_0.b.b.x, var_0.b.b.x) * vec4<f32>(var_0.b.b.x, 2036f, 547f, 905f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, 196f)), vec4<bool>(false, true, false, var_0.a)))), Struct_1(~var_0.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, var_0.b.b.x, 313f) + vec3<f32>(-256f, -314f, var_0.b.b.x)))), true).b.x).c.a;
    let var_4 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(34607u, 19311u, 29910u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 53502u)) << (u_input.a % 32u), _wgslsmith_div_u32(u_input.a, 0u)), ~(~countOneBits(u_input.a) >> (~max(u_input.a, u_input.a) % 32u)), u_input.a >> (~91717u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(6743u, 0u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 1u)), _wgslsmith_div_u32(u_input.a, 62604u), ~0u), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)))));
    var var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.b.x, -1481f, var_0.b.b.x, var_0.b.b.x), vec4<f32>(-1137f, 2403f, var_0.b.b.x, -1617f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, 2953f, 989f, 1475f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, _wgslsmith_div_f32(-1320f, var_0.b.b.x), func_2().b.x, _wgslsmith_f_op_f32(var_0.b.b.x - var_0.b.b.x)))), func_4(var_0.b, var_4.x, var_0.b.b.x).b.a));
    var var_6 = select(vec2<bool>(any(!vec2<bool>(true, var_3)) || var_0.a, var_3), select(!select(select(vec2<bool>(var_3, true), vec2<bool>(var_0.a, false), vec2<bool>(var_3, false)), vec2<bool>(false, var_0.a), u_input.a == var_4.x), !vec2<bool>(true, u_input.a >= 0u), !(!vec2<bool>(true, var_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * var_0.b.b.x), _wgslsmith_f_op_f32(555f + var_0.b.b.x))), _wgslsmith_f_op_f32(func_5(vec4<f32>(var_5.x, var_0.b.b.x, 681f, -1754f), var_0.b, var_3).b.x - _wgslsmith_f_op_f32(ceil(-1814f)))) < var_0.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_5.x)), 1i, 62929i);
}

