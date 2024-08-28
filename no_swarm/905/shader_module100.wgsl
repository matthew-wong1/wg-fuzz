struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-718f, 1961f, 304f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(121f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1000f) * 1742f), 272f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 550f, global0.x) * vec3<f32>(101f, global0.x, -2133f)))) * vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, 555f)), _wgslsmith_f_op_f32(f32(-1f) * -822f), _wgslsmith_f_op_f32(round(global0.x))))), vec4<u32>(~((0u | u_input.a) | countOneBits(u_input.a)), 0u, 4294967295u, ~10192u), Struct_2(Struct_1(vec2<i32>(-1i) * -vec2<i32>(1i, 25684i), ~(~vec4<u32>(u_input.a, 0u, 0u, u_input.a)), 1i), Struct_1(vec2<i32>(abs(-4142i), _wgslsmith_clamp_i32(0i, 2147483647i, 18658i)), _wgslsmith_add_vec4_u32(vec4<u32>(35471u, u_input.a, 0u, u_input.a), ~vec4<u32>(0u, 66112u, u_input.a, 92985u)), 35019i), u_input.a, _wgslsmith_clamp_u32(33699u, firstTrailingBit(~u_input.a), 88624u)));
    var var_1 = var_0.c;
    let var_2 = var_0.c;
    let var_3 = Struct_3(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(-1759f)), -674f), var_2.b.b, var_2);
    var var_4 = _wgslsmith_f_op_f32(-var_0.a.x);
    return -742f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 596f, _wgslsmith_f_op_f32(step(global0.x, global0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2222f, global0.x, global0.x))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -476f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(-302f, -223f, -481f))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(420f, global0.x), _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, 1592f)), _wgslsmith_f_op_f32(2852f + 780f)), global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, global0.x, arg_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1071f, -231f, -639f), vec3<f32>(global0.x, 389f, 628f)))))));
    let var_0 = -3775i;
    var var_1 = Struct_2(arg_0, arg_0, arg_0.b.x & 4294967295u, 4294967295u);
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-486f, -499f, global0.x), vec3<f32>(global0.x, -1491f, 550f))))), vec3<f32>(-1769f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -157f)), select(true, true | arg_1, false && arg_1)))), ~_wgslsmith_mult_vec4_u32(~reverseBits(arg_0.b), ~_wgslsmith_add_vec4_u32(arg_0.b, vec4<u32>(arg_0.b.x, 71989u, 18415u, arg_0.b.x))), Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, var_1.b.a.x), vec3<i32>(var_1.a.a.x, 29824i, var_0)), arg_0.c << (u_input.a % 32u)), min(arg_0.b, ~arg_0.b), -1i), Struct_1(_wgslsmith_div_vec2_i32(arg_0.a, _wgslsmith_mult_vec2_i32(vec2<i32>(19280i, -37503i), arg_0.a)), max(arg_0.b, vec4<u32>(0u, 4294967295u, 54891u, var_1.c)), ~var_1.b.c), ~u_input.a, ~max(var_1.a.b.x, var_1.a.b.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = select(-select(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, arg_1.c.a.a.x, -41235i), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-9221i, arg_1.c.b.c, arg_1.c.b.c, arg_1.c.b.a.x), vec4<i32>(arg_1.c.a.c, arg_1.c.b.c, arg_1.c.a.a.x, arg_1.c.a.c))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), -37486i <= arg_1.c.b.a.x)), _wgslsmith_div_vec4_i32(min(-vec4<i32>(arg_1.c.a.a.x, 0i, -33006i, 28378i), vec4<i32>(44413i, 38398i, arg_1.c.a.a.x, arg_1.c.b.c)), vec4<i32>(arg_1.c.a.a.x, 10154i, arg_1.c.a.c, -1i)), false);
    var var_1 = arg_1;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1387f), -793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f + 464f))) * _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(147f * arg_0))))));
    let var_2 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, arg_0, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), vec3<bool>(true, true, true))), vec3<f32>(1000f, arg_0, -1020f)), ~reverseBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.d, 14476u, u_input.a, var_1.c.c), vec4<u32>(0u, 0u, 39025u, 2456u)), var_1.b, true)), var_1.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), arg_1.a, vec3<bool>(((675f < arg_0) != all(vec2<bool>(true, true))) | true, true, true)));
    return _wgslsmith_mult_u32(u_input.a, ~reverseBits(var_1.c.b.b.x));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1025f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * global0.x) + 1368f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1552f, global0.x))))))));
    let var_0 = !((~u_input.a << (func_4(_wgslsmith_f_op_f32(-global0.x), func_2(arg_1.a, arg_2.x), abs(arg_1.b.b.x)) % 32u)) > _wgslsmith_mod_u32(select(48173u, u_input.a, arg_2.x & false), 1u ^ _wgslsmith_mult_u32(u_input.a, 25416u)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, arg_0)) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1651f, 1000f), vec3<f32>(398f, -941f, -201f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-879f, 1226f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -571f, global0.x)))) * _wgslsmith_f_op_vec3_f32(-func_2(arg_1.a, arg_2.x).a)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1768f, _wgslsmith_f_op_f32(global0.x - arg_0), arg_0)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + global0.x), var_0 || true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1219f - 857f)))), global0.x)));
    global0 = func_2(func_2(Struct_1(~firstLeadingBit(vec2<i32>(26022i, 7875i)), arg_1.a.b, arg_1.b.c), !(_wgslsmith_dot_vec3_i32(vec3<i32>(78084i, arg_1.b.a.x, 0i), vec3<i32>(0i, arg_1.a.a.x, -86377i)) == arg_1.a.c)).c.a, var_0).a;
    return vec2<i32>(1i, ~(arg_1.a.a.x << (firstTrailingBit(_wgslsmith_sub_u32(4294967295u, arg_1.d)) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) - global0.x), global0.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 647f, 1715f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1098f, global0.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, 199f, -1540f)) - vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1586f * -533f)), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 524f, global0.x)) + vec3<f32>(global0.x, global0.x, 321f)))));
    var var_0 = 4294967295u ^ _wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(func_2(func_2(arg_1.b.a, false).c.b, true).b.x, ~(~arg_0.b.x), 1u, 4294967295u));
    return Struct_2(Struct_1(vec2<i32>(arg_0.a.x, -2147483647i) << (vec2<u32>(_wgslsmith_mod_u32(1u, 46286u), ~arg_0.b.x) % vec2<u32>(32u)), arg_0.b, arg_1.a.c), func_2(Struct_1(select(vec2<i32>(arg_1.a.a.x, arg_1.b.b.c), vec2<i32>(arg_0.a.x, 2147483647i), true) | (arg_0.a >> (vec2<u32>(0u, arg_1.b.b.b.x) % vec2<u32>(32u))), arg_1.b.b.b, ~(-36532i)), !(!all(vec2<bool>(false, false)))).c.a, _wgslsmith_div_u32(5360u, ~(u_input.a | 0u)), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1178f) * -214f), 1f))));
    let var_0 = func_5(Struct_1(vec2<i32>(-1i) * -func_1(global0.x, Struct_2(Struct_1(vec2<i32>(-2147483647i, -1i), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), -1i), Struct_1(vec2<i32>(-24410i, 0i), vec4<u32>(76384u, u_input.a, 30447u, 62248u), -29934i), u_input.a, u_input.a), vec2<bool>(true, false)), ~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 46075u, 0u), vec4<u32>(0u, 0u, 40594u, u_input.a), vec4<u32>(u_input.a, 23033u, u_input.a, u_input.a))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(2147483647i, -7976i, 0i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<i32>(1i, 1i, 1i))), Struct_4(func_2(Struct_1(vec2<i32>(-8010i, -2147483647i) >> (vec2<u32>(u_input.a, 6136u) % vec2<u32>(32u)), vec4<u32>(u_input.a, 22263u, u_input.a, 1u) >> (vec4<u32>(2013u, 25864u, 67726u, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_i32(-58742i, -1i, 82823i)), any(vec4<bool>(true, true, true, true))).c.a, Struct_2(func_2(func_2(Struct_1(vec2<i32>(8434i, -26584i), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), 1i), false).c.b, true).c.a, func_2(func_2(Struct_1(vec2<i32>(-2461i, 0i), vec4<u32>(39077u, 1u, u_input.a, u_input.a), 0i), false).c.b, all(vec4<bool>(true, true, true, false))).c.b, u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 45601u), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 1u))))));
    var var_1 = vec3<f32>(192f, _wgslsmith_f_op_f32(max(-434f, _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f - global0.x)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f * _wgslsmith_f_op_f32(func_3()))) - -389f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))))), _wgslsmith_f_op_f32(-global0.x));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2312f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), -1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.b.a, var_0.a.b, var_0.a.c), false).a.x + _wgslsmith_f_op_f32(floor(656f))) * _wgslsmith_f_op_f32(global0.x + -385f))));
    var_1 = vec3<f32>(1701f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(581f, global0.x)))))), var_1.x);
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_clamp_i32(-31903i, func_2(Struct_1(vec2<i32>(29540i, -2147483647i), var_2.b.b, -1i), false).c.b.c, ~(-30461i)), var_2.a.b.wyw);
}

