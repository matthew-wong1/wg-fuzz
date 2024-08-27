struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1884f, -620f, 256f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    global0 = vec3<f32>(global0.x, -338f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(179f)), global0.x)) + global0.x), _wgslsmith_f_op_f32(-global0.x))));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(select(select(_wgslsmith_f_op_f32(select(216f, -836f, false)) == _wgslsmith_f_op_f32(-global0.x), all(vec4<bool>(true, true, true, true)), true), !(u_input.c <= _wgslsmith_mod_u32(2880u, u_input.c)), !any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), -11907i, vec3<bool>(true, false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(1i, 1i, 1i)), !any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), global0.zx, ~(~u_input.a.xxy), func_3()));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.c.x, global0.x)) - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(887f)) * global0.x)));
    let var_1 = !all(var_0.c.zz);
    var var_2 = vec3<bool>(true, any(var_0.c), !all(!(!vec3<bool>(var_1, var_1, var_0.c.x))));
    let var_3 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec3_i32(var_0.d.a, vec3<i32>(-27637i, var_0.d.a.x, -2147483647i)), ~11654i, -_wgslsmith_div_i32(19554i, 34272i), -(~(-13751i))), select(vec4<i32>(var_0.b, ~(-1i), var_0.d.a.x | var_0.b, _wgslsmith_add_i32(-16012i, 1i)), vec4<i32>(~4787i, var_0.d.a.x, min(-2147483647i, var_0.b), -var_0.b), !(!vec4<bool>(var_0.d.b, false, false, var_2.x))), vec4<i32>(-(18188i << (1u % 32u)), var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, -22272i), select(var_0.d.a, var_0.d.a, vec3<bool>(true, var_2.x, var_1))), _wgslsmith_add_i32(0i, firstLeadingBit(var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -1254f, global0.x))), vec3<f32>(global0.x, -712f, var_0.d.c.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(786f, var_0.d.c.x, var_0.d.c.x), vec3<f32>(570f, global0.x, var_0.d.c.x), vec3<bool>(var_1, var_0.c.x, false)))))), Struct_1(vec3<i32>(-1i, 2147483647i, var_0.d.a.x), false, var_0.d.c, u_input.a.yxw | abs(~vec3<u32>(u_input.a.x, 8353u, 1u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.d.e, u_input.c, 0u, var_0.d.d.x), ~vec4<u32>(0u, u_input.c, 1u, 1u)), 1u)));
    return Struct_1(abs(_wgslsmith_mult_vec3_i32(var_0.d.a, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.c.a.x, var_0.b, 2147483647i), vec3<i32>(var_3.a.x, var_0.b, 2147483647i)), abs(vec3<i32>(-30869i, var_3.a.x, -2147483647i))))), true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(var_3.c.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_div_vec3_u32(~(~var_3.c.d), reverseBits(var_3.c.d)), ~6567u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec4<bool> {
    global0 = arg_0;
    let var_0 = func_2();
    let var_1 = Struct_1(arg_1.c.a, false, arg_0.yy, arg_1.c.d, 4294967295u);
    let var_2 = Struct_3(var_0.b, 36387i, arg_2.yxw, arg_1.c);
    global0 = arg_1.b;
    return !select(!(!vec4<bool>(true, var_1.b, false, var_0.b)), select(vec4<bool>(var_2.c.x, !var_2.c.x, true, true), !arg_2, arg_2), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -153f, 319f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-668f, -680f, -483f))))), vec3<f32>(-2009f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 196f), global0.x), 1210f)));
    let var_0 = !vec2<bool>(all(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(725f, -1654f, global0.x)), Struct_2(vec4<i32>(-10001i, 4708i, 1i, -20104i), vec3<f32>(-1000f, global0.x, 429f), Struct_1(vec3<i32>(1i, -38479i, 2147483647i), false, global0.yz, u_input.a.xxy, 6u)), vec4<bool>(true, true, true, true))), select(all(vec4<bool>(false, true, true, true)) & func_2().b, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(-2223f, -135f, global0.x)), Struct_2(vec4<i32>(1i, -27365i, 46639i, 57883i), vec3<f32>(global0.x, global0.x, global0.x), Struct_1(vec3<i32>(-34654i, -10836i, -14237i), true, vec2<f32>(1074f, 250f), vec3<u32>(u_input.b, u_input.c, u_input.c), u_input.c)), vec4<bool>(false, true, true, false)).x, false));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1081f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 733f, global0.x))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1295f, _wgslsmith_f_op_f32(floor(-1000f))))));
    let var_1 = !vec4<bool>(var_0.x, var_0.x && false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))) > _wgslsmith_div_f32(func_2().c.x, _wgslsmith_f_op_f32(-global0.x)), false);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1193f, _wgslsmith_f_op_f32(trunc(-1160f)), _wgslsmith_f_op_f32(412f - 1372f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -225f, -1264f))) * vec3<f32>(1547f, 1024f, global0.x))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1156f - -440f)), 2240f, _wgslsmith_f_op_f32(-672f - -1312f))) * vec3<f32>(_wgslsmith_f_op_f32(-func_2().c.x), 164f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, -788f)))));
    let var_2 = Struct_2(-vec4<i32>(-(~1i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, 17778i, 13678i, -36648i), vec4<i32>(1i, -13862i, -5281i, -157i)), select(vec4<i32>(-1i, 1i, 2147483647i, 1538i), vec4<i32>(2001i, -3468i, 0i, -12969i), true)), abs(_wgslsmith_mult_i32(-1i, -2147483647i)), ~1i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 853f, global0.x)))), Struct_1(countOneBits(vec3<i32>(i32(-1i) * -1i, 5427i, reverseBits(1i))), true, vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(202f)))), vec3<u32>(1u, u_input.a.x ^ 4294967295u, 1u), ~28246u));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(var_2.b));
    var var_3 = vec4<bool>(var_2.c.b, true, true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x | ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(93122u, u_input.b), var_2.c.d.zy), ~vec2<u32>(26006u, u_input.a.x)), ~((~u_input.a.x | select(var_2.c.e, var_2.c.d.x, var_0.x)) | 1u), -var_2.a.xyw, vec2<f32>(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1398f + -262f), global0.x)), _wgslsmith_f_op_f32(min(209f, -247f))), 1i);
}

