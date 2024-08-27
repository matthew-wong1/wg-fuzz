struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global0 = Struct_1(~(abs(vec4<u32>(global0.a.x, global0.a.x, 0u, 4294967295u)) ^ vec4<u32>(_wgslsmith_add_u32(u_input.d, 0u), global0.a.x, abs(0u), ~global0.a.x)), reverseBits(firstTrailingBit(~global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c.x, global0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, 758f), vec2<f32>(global0.d, 672f))), !(!arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(f32(-1f) * -413f))));
    var var_0 = !(!arg_0.x);
    global0 = Struct_1(_wgslsmith_mult_vec4_u32(global0.a, ~(~vec4<u32>(11968u, global0.a.x, global0.a.x, 62888u))) | _wgslsmith_clamp_vec4_u32(max(global0.a, global0.a) >> (~vec4<u32>(u_input.d, 1u, global0.a.x, 54905u) % vec4<u32>(32u)), ~global0.a, countOneBits(vec4<u32>(1u, 51983u, global0.a.x, 30503u))), countOneBits(_wgslsmith_sub_vec2_i32(reverseBits(global0.b) >> (~vec2<u32>(global0.a.x, 60309u) % vec2<u32>(32u)), global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f * -865f)))), _wgslsmith_f_op_f32(abs(-1979f)));
    let var_1 = Struct_2(((min(-20270i, global0.b.x) | 28047i) << (0u % 32u)) ^ -(global0.b.x >> ((u_input.a << (0u % 32u)) % 32u)));
    var var_2 = vec2<f32>(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(691f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_f_op_f32(-1000f * 1682f)))));
    return 89127u;
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(vec4<u32>((_wgslsmith_clamp_u32(global0.a.x, u_input.a, global0.a.x) & global0.a.x) | ~1u, ~func_3(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false))), 8791u, _wgslsmith_dot_vec4_u32(~global0.a, reverseBits(vec4<u32>(u_input.d, 1u, 57610u, 4294967295u) | vec4<u32>(4294967295u, u_input.a, 1u, 45465u)))), abs(vec2<i32>(min(countOneBits(-9027i), ~global0.b.x), global0.b.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-3000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d)))))), _wgslsmith_f_op_f32(-global0.c.x));
    var var_1 = Struct_1(vec4<u32>(global0.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(79766u, 0u)), 4294967295u, ~(~0u)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(7706u, global0.a.x, 0u, 0u), vec4<u32>(1480u | u_input.d, 1u, firstLeadingBit(global0.a.x), _wgslsmith_add_u32(u_input.d, global0.a.x))) % vec4<u32>(32u)), var_0.b, _wgslsmith_f_op_vec2_f32(-global0.c), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(630f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 552f))))));
    global0 = Struct_1(~select(select(_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(u_input.a, var_0.a.x, global0.a.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, global0.a.x, 15159u, var_1.a.x), global0.a, global0.a), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 29138u, var_1.a.x, global0.a.x), var_0.a) & ~vec4<u32>(var_1.a.x, var_0.a.x, 16802u, 8054u), _wgslsmith_div_u32(var_1.a.x, global0.a.x) <= ~1u), var_0.b, _wgslsmith_f_op_vec2_f32(exp2(var_0.c)), 1026f);
    var var_2 = !(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, false)), vec4<bool>(u_input.a == var_1.a.x, true, true, any(vec2<bool>(true, true)))));
    var_0 = Struct_1(~var_1.a, select(~select(countOneBits(vec2<i32>(-48646i, var_0.b.x)), vec2<i32>(var_1.b.x, var_0.b.x), var_2.wz), _wgslsmith_add_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, var_0.b.x), vec2<i32>(var_1.b.x, 0i))), -vec2<i32>(-13842i, -8142i)), select(_wgslsmith_f_op_f32(global0.d * 346f) != _wgslsmith_f_op_f32(ceil(-1000f)), var_2.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) * vec2<f32>(422f, -782f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1744f + _wgslsmith_f_op_f32(1000f + -1406f)))));
    return var_0.c;
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_2());
    global0 = Struct_1(~(vec4<u32>(1u, select(56748u, global0.a.x, true), 4294967295u, global0.a.x ^ 9632u) >> (abs(_wgslsmith_add_vec4_u32(vec4<u32>(37052u, 51227u, 0u, global0.a.x), vec4<u32>(u_input.d, var_0, 1u, u_input.a))) % vec4<u32>(32u))), global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(f32(-1f) * -770f)), vec2<bool>(true, false))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.c, var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1160f)) + _wgslsmith_f_op_vec2_f32(floor(global0.c))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_2()).x)));
    let var_2 = -vec3<i32>(-_wgslsmith_dot_vec2_i32(reverseBits(global0.b), global0.b), 540i, ~(-reverseBits(21346i)));
    var var_3 = Struct_3(Struct_1(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.a.x, var_0, u_input.d, global0.a.x)), global0.a), global0.b, vec2<f32>(336f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1523f, global0.d, true)) * -395f)), _wgslsmith_f_op_f32(f32(-1f) * -962f)), max(0i, 2147483647i), global0.a.zy, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c.x + global0.c.x))), _wgslsmith_f_op_f32(sign(-1027f)), 619f))));
    return Struct_1(~global0.a, max(global0.b ^ global0.b, -(~vec2<i32>(0i, global0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.d, -454f)))), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<u32>(global0.a.x, firstLeadingBit(global0.a.x), ~(~_wgslsmith_add_u32(3094u, 1u)), global0.a.x), reverseBits(reverseBits(-abs(global0.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(995f, global0.d, true)), -546f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1657f)) + global0.c.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.d, global0.c.x))))), 1000f);
    let var_0 = Struct_2(firstLeadingBit(-70103i));
    global0 = func_1();
    let var_1 = min(~vec4<u32>(~u_input.d, select(0u, min(global0.a.x, global0.a.x), true), 1u, 0u), global0.a);
    var var_2 = select(vec3<bool>(select(any(vec2<bool>(true, true)), 60844u != u_input.a, false), true, all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true & select(false, true, true), 130f < _wgslsmith_f_op_f32(561f - global0.c.x)), vec3<bool>(all(vec4<bool>(true, true, false, false)) & true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true))), true));
    var var_3 = var_2.x & (true & (global0.c.x >= -1548f));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, _wgslsmith_div_f32(-860f, 688f), -1554f, global0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, 1061f, global0.d, -540f) * vec4<f32>(global0.c.x, global0.d, 220f, global0.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1756f, global0.c.x, 524f, global0.d) - vec4<f32>(-808f, global0.c.x, global0.d, global0.c.x)))))), vec4<f32>(_wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(global0.c.x * global0.c.x)), global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.x * -819f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f - -1380f))), -345f)));
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x);
}

