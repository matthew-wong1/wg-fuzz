struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_1(select(vec4<bool>(!any(vec3<bool>(false, true, false)), true, !all(vec2<bool>(true, false)), false), !vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true), vec4<bool>(select(true, true, true), true, true, true)), select(true, any(vec4<bool>(365f != arg_2.x, all(vec2<bool>(true, false)), false, true)), !select(false, true, true)), arg_1.wzz);
    let var_1 = select(true, var_0.b | true, var_0.b);
    var var_2 = _wgslsmith_mult_vec3_u32(~var_0.c, vec3<u32>(1u, ~(u_input.a | _wgslsmith_add_u32(var_0.c.x, arg_1.x)), ~(~7543u)));
    var var_3 = countOneBits(arg_1);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_2.x - arg_0.x))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2))))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1751f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -621f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, -378f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-893f - -146f), _wgslsmith_div_f32(242f, arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1670f) + _wgslsmith_f_op_f32(-134f - -1174f)) - _wgslsmith_f_op_f32(-var_4.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1091f, -197f, -621f, arg_3.x) * vec4<f32>(arg_2, -531f, arg_3.x, -799f))))) - vec4<f32>(arg_3.x, arg_3.x, 295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(566f, -1657f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-arg_2))), 2886f, -1188f, -2151f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.x)), var_0.x, _wgslsmith_f_op_f32(1194f + arg_3.x), 608f))));
    let var_1 = arg_0.d;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zzy - var_0.zxy))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-316f, -766f, -274f), var_0.yxy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.ywz)), arg_0.d.b.a.x)));
    var_2 = var_0.wyy;
    return var_1.a.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_0.d.b;
    let var_1 = Struct_2(arg_0.d.b, Struct_1(select(select(select(arg_0.d.a.a, arg_0.d.a.a, vec4<bool>(false, true, false, arg_0.d.a.b)), !arg_0.d.b.a, !var_0.a), func_4(arg_0, arg_0.d, _wgslsmith_f_op_f32(sign(-1112f)), _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(1028f, 2692f, -709f, 956f), arg_2, vec2<f32>(399f, 781f)))), vec4<bool>(true, true, arg_0.d.b.b, func_4(Struct_3(vec3<bool>(var_0.a.x, var_0.b, false), arg_0.b, 27826u, Struct_2(Struct_1(vec4<bool>(true, arg_0.d.b.a.x, true, false), var_0.b, vec3<u32>(var_0.c.x, arg_0.c, u_input.a)), Struct_1(var_0.a, false, arg_3.wyy)), 55016u), Struct_2(var_0, Struct_1(arg_0.d.a.a, arg_0.d.a.a.x, arg_2.wyx)), -1700f, vec2<f32>(807f, -221f)).x)), arg_0.a.x, arg_3.xzy));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(264f, -625f, 804f, 1265f) * vec4<f32>(-439f, -564f, 1363f, -954f)), ~vec4<u32>(arg_3.x, 5232u, 0u, 69904u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(420f, -1000f), vec2<f32>(177f, -149f))))).x))), 454f));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-294f)), 816f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1595f, 1146f)) * _wgslsmith_f_op_f32(step(-1000f, -855f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(649f * -1077f), 1834f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -737f)), min(arg_3, vec4<u32>(1u, 99407u, 1u, arg_3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1299f, 1065f) - vec2<f32>(-285f, -1412f))))).x * 294f));
    return arg_0.d.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(vec3<bool>(arg_0.a.b, true, arg_0.a.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), reverseBits(-vec2<i32>(-13491i, -46088i)), _wgslsmith_div_vec2_i32(max(firstTrailingBit(vec2<i32>(2147483647i, -1i)), -vec2<i32>(-11677i, -50652i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(1i, 2147483647i)), vec2<i32>(1i, 1i)))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(max(u_input.a, u_input.a), 4294967295u, _wgslsmith_div_u32(1u, 1u), _wgslsmith_div_u32(1u, 7816u)), ~vec4<u32>(0u, u_input.a, arg_0.b.c.x, 55019u) & ~vec4<u32>(17234u, 0u, u_input.a, arg_0.a.c.x)), select(_wgslsmith_div_vec4_u32(vec4<u32>(10733u, arg_0.b.c.x, 4294967295u, 37298u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), vec4<u32>(arg_0.b.c.x, u_input.a, 0u, 4294967295u), arg_0.a.a.x) | (vec4<u32>(u_input.a, 1400u, 1u, 35597u) << (vec4<u32>(u_input.a, u_input.a, 0u, arg_0.b.c.x) % vec4<u32>(32u)))), Struct_2(func_2(Struct_3(func_2(Struct_3(arg_0.b.a.xzz, vec2<i32>(-2847i, 0i), arg_0.b.c.x, Struct_2(arg_0.a, arg_0.a), 3761u), vec2<i32>(6943i, 1i), vec4<u32>(arg_0.b.c.x, arg_0.b.c.x, 4294967295u, arg_0.a.c.x), vec4<u32>(4294967295u, arg_0.a.c.x, 1u, 4294967295u)).a.yyy, _wgslsmith_add_vec2_i32(vec2<i32>(21572i, -14510i), vec2<i32>(0i, 0i)), ~4294967295u, Struct_2(Struct_1(arg_0.a.a, true, arg_0.a.c), Struct_1(arg_0.b.a, true, vec3<u32>(arg_0.b.c.x, 6331u, arg_0.b.c.x))), ~arg_0.b.c.x), vec2<i32>(_wgslsmith_mult_i32(3892i, 1i), 1i), ~vec4<u32>(43123u, 23525u, 20033u, 63076u) >> (vec4<u32>(u_input.a, arg_0.b.c.x, arg_0.b.c.x, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 0u, u_input.a, _wgslsmith_mult_u32(arg_0.b.c.x, 28574u))), arg_0.b), arg_0.a.c.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-514f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) + 980f));
    var var_2 = Struct_3(!(!vec3<bool>(var_0.a.x & true, true, 112093u != var_0.e)), var_0.b << (var_0.d.a.c.zx % vec2<u32>(32u)), firstTrailingBit(~u_input.a), arg_0, firstLeadingBit(max(0u, ~countOneBits(1u))));
    var_2 = Struct_3(vec3<bool>(!arg_0.a.b, select(var_2.a.x, !var_2.d.a.a.x, var_0.d.b.a.x), false), var_2.b, 53653u, arg_0, func_2(var_0, abs(_wgslsmith_div_vec2_i32(var_0.b, ~var_0.b)), firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.c.x, arg_0.a.c.x, var_2.c, 1u), vec4<u32>(30252u, arg_0.a.c.x, 0u, var_2.c))), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(20945u, 0u, arg_0.a.c.x, var_0.d.a.c.x), vec4<u32>(arg_0.b.c.x, 33465u, u_input.a, var_2.c)))).c.x);
    var_2 = var_0;
    return Struct_2(Struct_1(func_4(Struct_3(func_4(var_0, var_0.d, -2284f, vec2<f32>(arg_1.x, arg_1.x)).zzz, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_2.b.x), var_2.b), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16255u, 1u, 9819u), vec4<u32>(var_0.d.a.c.x, var_2.d.b.c.x, 21058u, var_0.c)), Struct_2(var_0.d.b, var_2.d.a), ~1u), Struct_2(func_2(var_0, var_0.b, vec4<u32>(38384u, var_2.e, arg_0.a.c.x, var_0.d.b.c.x), vec4<u32>(u_input.a, 40603u, 49411u, u_input.a)), var_0.d.a), _wgslsmith_f_op_f32(max(531f, _wgslsmith_f_op_f32(select(-1158f, 341f, var_2.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xw) * vec2<f32>(var_1.x, var_1.x))), var_2.a.x, var_2.d.a.c), func_2(Struct_3(func_2(Struct_3(vec3<bool>(true, true, false), var_2.b, var_2.d.a.c.x, var_2.d, var_2.c), vec2<i32>(var_2.b.x, var_0.b.x) | vec2<i32>(var_2.b.x, var_0.b.x), ~vec4<u32>(var_2.c, 68292u, var_0.c, 11264u), select(vec4<u32>(55191u, arg_0.a.c.x, 1u, 19630u), vec4<u32>(38260u, 48811u, var_2.c, var_2.e), var_2.d.a.b)).a.zww, var_0.b, _wgslsmith_div_u32(arg_0.a.c.x, arg_0.b.c.x >> (4294967295u % 32u)), arg_0, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(15458i, var_0.b.x), _wgslsmith_mod_vec2_i32(var_2.b, _wgslsmith_div_vec2_i32(var_0.b, var_0.b))), vec4<u32>(_wgslsmith_add_u32(4294967295u, var_2.e), ~firstTrailingBit(u_input.a), 12201u & firstTrailingBit(var_0.e), _wgslsmith_sub_u32(~var_2.c, 58280u)), ~vec4<u32>(arg_0.b.c.x, 14784u, u_input.a, 101305u) & ~(vec4<u32>(4294967295u, var_0.d.b.c.x, var_2.c, 7560u) << (vec4<u32>(4294967295u, 35267u, 7412u, 0u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = func_5(Struct_2(Struct_1(select(vec4<bool>(true, arg_0.a.x, false, false), !vec4<bool>(true, false, arg_0.a.x, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, arg_0.d.b.b, false), vec4<bool>(false, true, false, arg_0.a.x))), any(arg_0.a), ~reverseBits(vec3<u32>(0u, 76206u, u_input.a))), func_2(Struct_3(!arg_0.d.a.a.zyx, arg_0.b & vec2<i32>(13313i, -1i), 0u, Struct_2(Struct_1(vec4<bool>(arg_0.d.a.b, arg_0.a.x, arg_0.d.b.b, arg_0.a.x), false, arg_0.d.a.c), arg_0.d.b), 1u), _wgslsmith_mult_vec2_i32(arg_0.b | arg_0.b, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.b.x), vec2<i32>(2147483647i, arg_0.b.x))), vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 38784u, u_input.a, 1u), vec4<u32>(14301u, u_input.a, 31837u, u_input.a)), ~arg_0.e, u_input.a), ~firstTrailingBit(vec4<u32>(0u, 21465u, 8727u, 4294967295u)))), vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = ~vec4<u32>(countOneBits(var_0.b.c.x), ~min(arg_0.c, ~var_0.a.c.x), 4294967295u, 1u);
    let var_2 = Struct_1(vec4<bool>(all(var_0.b.a.yyz), !(!all(vec2<bool>(true, false))), arg_0.a.x, arg_0.d.a.a.x), true, var_1.wyx >> (vec3<u32>(~arg_0.d.a.c.x, min(var_1.x, ~0u), _wgslsmith_mod_u32(var_1.x >> (1u % 32u), var_1.x)) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-757f - -2389f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1384f - 1025f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1302f) + -1398f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var var_4 = ~var_0.a.c.zy;
    return vec4<bool>(!(((var_0.b.c.x & 17030u) >> (14442u % 32u)) != countOneBits(_wgslsmith_div_u32(1u, u_input.a))), func_5(func_5(Struct_2(var_0.b, func_5(var_0, vec4<f32>(195f, var_3.x, var_3.x, var_3.x)).a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 286f, var_3.x, -727f) - vec4<f32>(185f, 430f, var_3.x, var_3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, -2216f, var_3.x, 466f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1567f, var_3.x, var_3.x))))).b.a.x, all(!func_4(Struct_3(arg_0.d.b.a.zzw, arg_0.b, 8774u, Struct_2(Struct_1(arg_0.d.b.a, false, vec3<u32>(arg_0.e, 55577u, 50717u)), Struct_1(arg_0.d.a.a, true, var_2.c)), u_input.a), Struct_2(arg_0.d.b, var_0.a), _wgslsmith_f_op_f32(min(var_3.x, var_3.x)), var_3.zz)), (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 28199u, 0u), vec3<u32>(0u, 1u, var_0.b.c.x)) >> (5120u % 32u)) > abs(var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(-676f)) < _wgslsmith_f_op_f32(1000f + 314f)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, false), func_1(Struct_3(vec3<bool>(true, true, false), vec2<i32>(2147483647i, 2147483647i), u_input.a, Struct_2(Struct_1(vec4<bool>(true, false, false, false), true, vec3<u32>(0u, 37216u, u_input.a)), Struct_1(vec4<bool>(true, true, true, false), false, vec3<u32>(u_input.a, 4294967295u, 3782u))), 32563u)), vec4<bool>(false, false, true, true))), select(func_4(Struct_3(vec3<bool>(true, false, true), vec2<i32>(-7978i, 55687i), u_input.a, Struct_2(Struct_1(vec4<bool>(true, false, false, false), false, vec3<u32>(0u, u_input.a, u_input.a)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<u32>(0u, 27271u, 0u))), 17010u), func_5(Struct_2(Struct_1(vec4<bool>(false, false, false, true), false, vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<u32>(u_input.a, u_input.a, u_input.a))), vec4<f32>(696f, 1202f, 1396f, 1864f)), -302f, vec2<f32>(-714f, -817f)), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), (u_input.a ^ 42140u) > ~0u)), !vec4<bool>(_wgslsmith_f_op_f32(606f - -608f) != _wgslsmith_f_op_f32(sign(-821f)), (u_input.a < u_input.a) || false, false, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(-248f * 437f), _wgslsmith_f_op_f32(select(508f, -134f, true)), _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(-978f + 1341f)), vec4<u32>(reverseBits(u_input.a), 45042u, u_input.a ^ u_input.a, 1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(413f, -343f), vec2<f32>(-1000f, 1149f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2632f, -386f)), false)))).x < -1074f);
    var_0 = func_2(Struct_3(!vec3<bool>(!var_0.x, true, false), vec2<i32>(countOneBits(min(-31428i, 0i)), 47049i), 0u, Struct_2(func_2(Struct_3(vec3<bool>(true, var_0.x, false), vec2<i32>(2412i, 0i), u_input.a, Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x, vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), var_0.x, vec3<u32>(u_input.a, 1u, 33295u))), 47656u), _wgslsmith_sub_vec2_i32(vec2<i32>(-12955i, -5355i), vec2<i32>(1i, 1i)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 38957u, u_input.a, 26221u), vec4<u32>(u_input.a, u_input.a, u_input.a, 32249u)), ~vec4<u32>(1u, u_input.a, 0u, 4294967295u)), Struct_1(vec4<bool>(true, var_0.x, true, true), true, ~vec3<u32>(70066u, u_input.a, 4294967295u))), func_5(func_5(func_5(Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x, vec3<u32>(0u, 10508u, u_input.a)), Struct_1(vec4<bool>(var_0.x, true, false, var_0.x), false, vec3<u32>(u_input.a, u_input.a, 10600u))), vec4<f32>(-1187f, -366f, -412f, 781f)), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-279f, -752f, 454f, 1420f), vec4<f32>(193f, -1325f, -1000f, -1218f)))))).b.c.x), select(countOneBits(vec2<i32>(2147483647i, -33287i)), vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -57058i), ~vec2<i32>(2147483647i, 59822i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(31129i, 13661i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 1i, -1i, 44046i))), false), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 17219u, u_input.a, 51915u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)), ~(vec4<u32>(53469u, u_input.a, u_input.a, 47337u) >> (vec4<u32>(0u, 43270u, 0u, u_input.a) % vec4<u32>(32u)))), vec4<u32>(23942u, _wgslsmith_div_u32(~10966u, ~u_input.a), u_input.a, ~u_input.a)), select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(32496u, u_input.a, 1u, 42222u), vec4<u32>(37678u, 6085u, 9154u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(24353u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 2778u, 44506u, 2356u), vec4<u32>(u_input.a, u_input.a, u_input.a, 67247u)))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4212u), vec4<bool>(true, false, true, false)), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, 82100u, 35047u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 77767u, u_input.a) % vec4<u32>(32u))) << (reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(39431u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), any(vec4<bool>(false, false, true, var_0.x != var_0.x)))).a;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(41646i, 1i, _wgslsmith_dot_vec3_i32(max(countOneBits(vec3<i32>(-46502i, 9047i, 3445i)), abs(vec3<i32>(-63i, 0i, 0i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i), select(vec3<i32>(-12032i, -2147483647i, 2147483647i), vec3<i32>(-1i, -11923i, 53538i), false))), ~436i), -vec4<i32>(1i, 1i, 1i, 1i));
    var var_2 = Struct_2(func_5(Struct_2(Struct_1(!vec4<bool>(var_0.x, false, var_0.x, false), var_0.x, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1884u, 1u), vec3<u32>(u_input.a, 32686u, 1u))), func_5(func_5(Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x, vec3<u32>(u_input.a, u_input.a, 85957u)), Struct_1(vec4<bool>(var_0.x, true, var_0.x, true), var_0.x, vec3<u32>(1u, 7943u, u_input.a))), vec4<f32>(160f, 1280f, 1000f, 913f)), vec4<f32>(-1000f, -831f, -1919f, -330f)).b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-797f, 660f)), _wgslsmith_f_op_f32(step(579f, _wgslsmith_div_f32(580f, 109f))), _wgslsmith_f_op_f32(1379f - _wgslsmith_f_op_f32(step(1040f, -968f))), _wgslsmith_f_op_f32(floor(-1073f)))).a, Struct_1(func_5(func_5(func_5(Struct_2(Struct_1(vec4<bool>(var_0.x, false, var_0.x, false), var_0.x, vec3<u32>(u_input.a, 7136u, 4294967295u)), Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), true, vec3<u32>(1u, u_input.a, u_input.a))), vec4<f32>(284f, 618f, -983f, -903f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, 922f, 810f, 1000f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1280f, 292f, -515f, 687f) - vec4<f32>(-1161f, -366f, 2735f, -203f))))).a.a, !(all(vec3<bool>(false, var_0.x, var_0.x)) & var_0.x), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a) & (vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(94491u, u_input.a, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(32337u, u_input.a, u_input.a), select(vec3<u32>(17519u, 4294967295u, u_input.a), vec3<u32>(u_input.a, 32354u, u_input.a), false)))));
    var var_3 = Struct_3(func_4(Struct_3(func_1(Struct_3(var_0.yzw, vec2<i32>(-2147483647i, 1i), 9801u, Struct_2(Struct_1(var_2.b.a, true, vec3<u32>(1u, u_input.a, 4294967295u)), Struct_1(vec4<bool>(true, true, var_0.x, var_2.b.a.x), true, vec3<u32>(var_2.a.c.x, var_2.a.c.x, 1u))), 6836u)).xzw, vec2<i32>(select(6336i, -13491i, false), 0i), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, var_2.b.c.x, u_input.a, var_2.a.c.x), ~vec4<u32>(var_2.b.c.x, u_input.a, 0u, var_2.a.c.x)), func_5(Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), false, var_2.a.c), Struct_1(vec4<bool>(true, false, var_2.b.a.x, var_0.x), var_0.x, vec3<u32>(u_input.a, 1u, 72356u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, 1902f, -1732f, 1663f))), 1u), Struct_2(func_5(func_5(Struct_2(Struct_1(var_2.b.a, var_2.a.a.x, var_2.a.c), var_2.b), vec4<f32>(1046f, 1000f, 1000f, -427f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-372f, 607f, -296f, 1000f)))).a, func_5(func_5(Struct_2(Struct_1(var_2.b.a, var_0.x, var_2.b.c), var_2.b), vec4<f32>(-489f, -674f, 947f, 1491f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1769f, -1000f, -312f, 1000f) * vec4<f32>(-646f, -1056f, -139f, 181f))).b), -1596f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(547f - -1000f), 1972f)))).xwz, vec2<i32>(-1i) * -vec2<i32>(1i, ~2147483647i), max(_wgslsmith_div_u32(39330u, select(func_5(Struct_2(var_2.a, Struct_1(var_2.b.a, true, var_2.a.c)), vec4<f32>(-777f, -2213f, 961f, -868f)).b.c.x, select(var_2.b.c.x, var_2.b.c.x, true), true)), var_2.a.c.x), func_5(Struct_2(Struct_1(!var_2.b.a, true, var_2.a.c), Struct_1(!var_2.b.a, u_input.a >= 17980u, select(var_2.b.c, vec3<u32>(4294967295u, var_2.a.c.x, var_2.b.c.x), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(736f, -947f, -142f, -1110f), vec4<f32>(-761f, -601f, -436f, -1260f)))))), 2650u);
    var var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(887f))))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.c.x, var_3.e, u_input.a, u_input.a) << (vec4<u32>(var_2.b.c.x, var_3.e, var_3.e, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, var_3.c)), ~min(vec4<u32>(u_input.a, var_3.e, 0u, var_3.d.a.c.x), vec4<u32>(var_2.a.c.x, var_3.d.a.c.x, u_input.a, 0u))), select(min(vec4<u32>(var_2.a.c.x, u_input.a, 2080u, 0u) & vec4<u32>(var_2.a.c.x, var_3.e, var_3.d.a.c.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(6993u, 27347u, 68712u, var_2.b.c.x), vec4<u32>(var_3.e, 1u, 1u, var_2.a.c.x))), abs(~vec4<u32>(var_3.e, var_2.a.c.x, 0u, u_input.a)), !var_0.x)), _wgslsmith_add_u32(var_2.b.c.x, 24074u << ((var_3.d.b.c.x << ((var_2.a.c.x << (var_2.b.c.x % 32u)) % 32u)) % 32u)), select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, var_3.b.x) & max(vec3<i32>(28235i, var_3.b.x, var_3.b.x), vec3<i32>(31086i, var_3.b.x, var_3.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-5153i, -2147483647i, var_3.b.x), vec3<i32>(var_3.b.x, 0i, var_3.b.x)) & vec3<i32>(var_3.b.x, 332i, var_3.b.x)), vec3<i32>(-1i) * -(~vec3<i32>(var_3.b.x, -26036i, -23638i)), var_2.b.a.x));
}

