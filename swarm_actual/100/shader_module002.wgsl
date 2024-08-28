struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4) -> f32 {
    global0 = Struct_5(-3237i, _wgslsmith_f_op_vec2_f32(-global0.b), abs(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.d.x, 0u, global0.c)), vec4<u32>(0u, global0.c, global0.c, 18320u))), _wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c.a, global0.b.x), vec2<f32>(1541f, global0.e.e))) + _wgslsmith_f_op_vec2_f32(-global0.b)) * vec2<f32>(-1039f, _wgslsmith_f_op_f32(f32(-1f) * -2094f)))), Struct_4(global0.e.c, vec2<i32>(i32(-1i) * -2147483647i, u_input.a.x), arg_0.c, _wgslsmith_clamp_vec2_i32(~arg_0.d, vec2<i32>(-2147483647i, _wgslsmith_div_i32(u_input.a.x, arg_0.d.x)), arg_0.b >> (select(vec2<u32>(global0.c, global0.c), u_input.b, vec2<bool>(false, false)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-global0.e.a.a)));
    global0 = Struct_5(select(-69552i, max(_wgslsmith_sub_i32(select(12108i, global0.e.d.x, true), ~u_input.c), 2147483647i), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + -440f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1117f)))), ~max(~(1u ^ global0.c), ~1u), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0.b, global0.d)))), global0.b), Struct_4(arg_0.c, countOneBits(-(~arg_0.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2169f) * _wgslsmith_f_op_f32(global0.d.x + arg_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(679f)))), vec2<i32>(firstTrailingBit(global0.e.b.x), 2147483647i), _wgslsmith_f_op_f32(-arg_0.e)));
    global0 = Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-arg_0.d.x), max(u_input.a.x, arg_0.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(-78716i), ~9215i), vec2<i32>(-u_input.c, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d) - global0.d), global0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, 1f)), Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.e.e)))), global0.d.x), u_input.a.xw, global0.e.a, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-54699i, global0.e.d.x), global0.e.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-740f, 1f, false)))));
    global0 = Struct_5(-22800i, _wgslsmith_f_op_vec2_f32(-global0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, u_input.d.x, ~global0.c), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d.x, 1u), u_input.d)) >> (min(global0.c, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, global0.c), 37871u, 121133u)) % 32u), global0.b, Struct_4(arg_0.a, min(abs(global0.e.d) >> (vec2<u32>(108539u, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(arg_0.b.x, -86280i) << (~vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), Struct_1(global0.b.x, 496f), vec2<i32>(_wgslsmith_dot_vec2_i32(global0.e.b, abs(u_input.a.yz)), arg_0.b.x), 110f));
    return arg_0.a.b;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global0 = Struct_5(~_wgslsmith_sub_i32(~(arg_3.x | -2147483647i), ~(-2147483647i)), global0.b, u_input.d.x, _wgslsmith_f_op_vec2_f32(trunc(global0.d)), global0.e);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(exp2(global0.d)));
    global0 = Struct_5(u_input.c, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global0.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), _wgslsmith_f_op_f32(round(global0.d.x))), u_input.d.x, _wgslsmith_f_op_vec2_f32(-global0.b), Struct_4(Struct_1(2574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f * -716f) + _wgslsmith_f_op_f32(abs(-1000f)))), vec2<i32>(_wgslsmith_add_i32(arg_1, arg_3.x) >> ((16801u >> (1u % 32u)) % 32u), _wgslsmith_dot_vec4_i32(u_input.a & vec4<i32>(0i, arg_1, -2840i, u_input.c), u_input.a)), global0.e.a, u_input.a.zw, _wgslsmith_f_op_f32(-arg_0)));
    var_0 = -1177f;
    return global0.e.c;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> Struct_5 {
    let var_0 = ~(~global0.e.d.x);
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, global0.c, global0.c, arg_1.a.b)), vec4<u32>(global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.a.b, 0u, arg_2), vec4<u32>(0u, arg_2, 4294967295u, arg_1.a.b)), 1u, arg_1.a.b)), 26818u, 4294967295u, _wgslsmith_mult_u32(global0.c, ~arg_2));
    let var_2 = Struct_5(reverseBits(var_0), global0.b, 108852u, global0.d, global0.e);
    global0 = var_2;
    global0 = Struct_5(-global0.e.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(437f, var_2.b.x)), select(arg_2, _wgslsmith_div_u32(~4294967295u, var_2.c), all(vec4<bool>(arg_0, arg_1.a.b != arg_1.a.b, arg_1.a.d.a > arg_1.a.d.a, any(vec3<bool>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.d, global0.d)))) - global0.b), global0.e);
    return Struct_5(firstTrailingBit(0i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.d.b, _wgslsmith_f_op_f32(arg_1.a.c * global0.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_1.b.a) + vec2<f32>(_wgslsmith_f_op_f32(round(var_2.e.a.b)), arg_1.b.b)), vec2<bool>(false, arg_1.b.b <= var_2.d.x))), global0.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_1.a.a.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, arg_1.b.a)), vec2<bool>(true, true))))), Struct_4(var_2.e.a, firstTrailingBit(firstTrailingBit(var_2.e.b)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) - arg_1.a.a.x), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, global0.e.b.x, -34021i), vec3<i32>(u_input.a.x, var_0, var_0))), arg_0, ~vec3<i32>(-1i, var_0, global0.e.b.x)), select(vec2<i32>(-2147483647i, -14425i) << (var_1.xy % vec2<u32>(32u)), vec2<i32>(-1i, -1i) << (vec2<u32>(1u, arg_2) % vec2<u32>(32u)), vec2<bool>(true, true)), global0.d.x));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = func_4(false, Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(418f, arg_0, global0.b.x, arg_0), vec4<f32>(321f, arg_0, -612f, arg_0)))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2(_wgslsmith_f_op_f32(ceil(global0.b.x)), firstTrailingBit(-1281i), true, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -2147483647i), vec3<i32>(-4929i, -1i, -1i)))), global0.e.a), global0.c);
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1104f, arg_0, global0.d.x, arg_0) * vec4<f32>(global0.e.e, -2236f, arg_0, -204f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1050f, global0.b.x, -684f), vec4<f32>(847f, arg_0, arg_0, 1000f), vec4<bool>(true, false, false, false))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d.x, arg_0, -498f, 136f))))), 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(-467f, -383f), u_input.a.ww, global0.e.a, vec2<i32>(u_input.a.x, -67151i), global0.d.x))))), func_4(true, Struct_3(Struct_2(vec4<f32>(-498f, -184f, -438f, 1037f), 1u, arg_0, global0.e.a), global0.e.c), 4294967295u).d.x)), global0.e.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 271f));
    let var_1 = Struct_3(var_0.a, func_4(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_3(var_0.a, Struct_1(global0.b.x, -398f)), (~global0.c ^ func_4(true, Struct_3(Struct_2(var_0.a.a, u_input.b.x, arg_0, Struct_1(188f, var_0.a.a.x)), var_0.b), var_0.a.b).c) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, u_input.d.x), global0.c) % 32u)).e.c);
    global0 = func_4(!any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), var_1, 4294967295u & u_input.d.x);
    global0 = Struct_5(-2147483647i, _wgslsmith_f_op_vec2_f32(max(global0.d, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-448f, _wgslsmith_f_op_f32(-arg_0)), global0.b)))), 2601u | var_1.a.b, vec2<f32>(-1362f, -435f), global0.e);
    return var_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.a, select(vec4<i32>(-1i) * -vec4<i32>(61231i, arg_2.x, 0i, -24822i), arg_2, vec4<bool>(all(vec4<bool>(true, true, false, false)), false, select(true, true, true), true)) >> (vec4<u32>(~global0.c, countOneBits(func_4(true, Struct_3(arg_0, Struct_1(-1500f, global0.b.x)), u_input.b.x).c), _wgslsmith_add_u32(global0.c, ~global0.c), ~(~arg_0.b)) % vec4<u32>(32u)));
    var_0 = ~(-38467i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(u_input.c > 21910i, Struct_3(Struct_2(vec4<f32>(1619f, arg_0.d.b, -1060f, arg_0.c), arg_0.b, 103f, arg_0.d), Struct_1(arg_0.d.a, 993f)), global0.c).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1069f, 1584f))))));
    let var_2 = ~63080u;
    var var_3 = any(vec2<bool>(select(false, true, false), true));
    return Struct_4(arg_0.d, reverseBits(_wgslsmith_mod_vec2_i32(-global0.e.b & vec2<i32>(-10422i, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_2.x), vec2<i32>(global0.e.d.x, 33971i)))), global0.e.a, -vec2<i32>(~_wgslsmith_mod_i32(arg_2.x, global0.e.d.x), _wgslsmith_sub_i32(1i, i32(-1i) * -1934i)), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(min(-807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(922f * 559f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(global0.d.x), func_4(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_3(func_1(_wgslsmith_f_op_f32(global0.d.x - global0.b.x)), global0.e.a), 0u).e.a, _wgslsmith_mult_vec4_i32(-(-u_input.a & _wgslsmith_div_vec4_i32(u_input.a, u_input.a)), vec4<i32>(_wgslsmith_clamp_i32(abs(u_input.c), u_input.c, 18123i), ~(~u_input.c), global0.e.b.x, global0.a ^ -2147483647i)));
    global0 = func_4(all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))) & false, Struct_3(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.c.a, -148f)), _wgslsmith_f_op_f32(func_3(Struct_4(global0.e.c, u_input.a.yw, Struct_1(var_0.e, var_0.e), global0.e.d, global0.d.x))))), func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.a * -2153f), func_5(Struct_2(vec4<f32>(517f, -1506f, -1000f, var_0.e), 3157u, -2060f, global0.e.a), global0.e.a, vec4<i32>(u_input.a.x, var_0.d.x, 2147483647i, u_input.a.x)).c.a, all(vec2<bool>(false, true))))).d), ~23889u);
    global0 = func_4(!select(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), global0.c >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 76935u), u_input.d)), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, -218f, 357f, global0.d.x)))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.d.x)), var_0.a), global0.e.a), global0.c);
    var var_1 = -837i << (global0.c % 32u);
    let var_2 = vec3<bool>(!((~48013i << ((u_input.b.x | 98136u) % 32u)) >= u_input.a.x), !((true | all(vec4<bool>(true, true, false, false))) && true), false);
    let var_3 = countOneBits(~min(_wgslsmith_mod_vec2_i32(u_input.a.yw, vec2<i32>(-8600i, 2147483647i)), vec2<i32>(51496i, global0.a))) << ((_wgslsmith_sub_vec2_u32(max(u_input.b, u_input.d.zz) >> (u_input.d.yz % vec2<u32>(32u)), vec2<u32>(0u, 0u) << (vec2<u32>(4294967295u, u_input.d.x) % vec2<u32>(32u))) << (vec2<u32>(51833u, global0.c) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_1 = _wgslsmith_clamp_i32(func_5(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.e.a.b, var_0.a.b, global0.d.x, global0.b.x))), u_input.b.x, func_5(func_1(178f), global0.e.a, vec4<i32>(var_3.x, -36523i, 2147483647i, u_input.c) << (vec4<u32>(59963u, 4294967295u, global0.c, 45704u) % vec4<u32>(32u))).a.b, var_0.a), Struct_1(_wgslsmith_f_op_f32(-var_0.e), -618f), ~(-vec4<i32>(u_input.a.x, -2147483647i, global0.a, global0.e.b.x)) << (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.c, u_input.b.x, u_input.d.x), vec4<u32>(4294967295u, 1752u, global0.c, 4294967295u))) % vec4<u32>(32u))).d.x, 27621i, _wgslsmith_mult_i32(-countOneBits(global0.e.b.x), 2147483647i) & firstLeadingBit(~countOneBits(-61668i)));
    global0 = func_4(any(select(vec4<bool>(!var_2.x, all(vec4<bool>(false, true, false, var_2.x)), var_2.x & false, var_2.x && var_2.x), vec4<bool>(var_2.x, all(var_2), var_2.x, global0.d.x < 1085f), vec4<bool>(false, true, false, true))), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, var_0.e, global0.d.x, 258f) + vec4<f32>(1000f, -1268f, 1000f, 532f))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, global0.c, 0u), vec4<u32>(0u, 5458u, global0.c, 64599u)), _wgslsmith_mod_u32(0u, 74989u)), _wgslsmith_f_op_f32(-var_0.e), Struct_1(var_0.e, _wgslsmith_f_op_f32(-global0.b.x))), Struct_1(660f, _wgslsmith_f_op_f32(func_3(func_4(var_2.x, Struct_3(Struct_2(vec4<f32>(var_0.c.a, 239f, 607f, var_0.a.a), global0.c, var_0.c.a, global0.e.c), Struct_1(700f, -542f)), global0.c).e)))), ~global0.c);
    var_1 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, func_4(_wgslsmith_mod_u32(~1u, abs(u_input.b.x)) == _wgslsmith_clamp_u32(select(global0.c, u_input.d.x, true), 4294967295u, 4294967295u), Struct_3(func_1(-780f), func_1(-1122f).d), abs(~1u)).b.x);
}

