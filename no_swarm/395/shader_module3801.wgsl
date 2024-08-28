struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(~firstTrailingBit(global0.b.a & reverseBits(vec4<u32>(u_input.b, 9697u, 46843u, u_input.b))));
    let var_1 = Struct_2(697f, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f)), -vec2<i32>(0i, abs(_wgslsmith_div_i32(global0.d.x, -18668i))));
    var var_2 = var_1.b;
    let var_3 = vec2<u32>(86576u, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, var_1.b.a.x) & _wgslsmith_mult_u32(var_0.a.x, var_1.b.a.x))) >> (~reverseBits(var_1.b.a.xx) % vec2<u32>(32u));
    var_2 = var_1.b;
    return -898f;
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_3()), -813f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1000f) + vec2<f32>(global0.c, global2.x)))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))))));
    global2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-865f, 745f) + vec2<f32>(global2.x, var_0.x)), vec2<f32>(var_0.x, 2550f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 817f))) - vec2<f32>(var_0.x, global0.a))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global0.c, 712f), vec3<f32>(1000f, -1279f, 1038f), true)) * vec3<f32>(var_0.x, var_0.x, -340f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(525f, 1994f, global0.c)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.c)), _wgslsmith_div_f32(global2.x, var_0.x))))), global2.x, _wgslsmith_f_op_f32(-941f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a, var_0.x))))));
    var var_2 = Struct_1(~(~max(countOneBits(global0.b.a), ~vec4<u32>(16245u, 1u, 0u, 73245u))));
    global1 = countOneBits(1u) >> (min(~min(u_input.b, ~82651u), 0u) % 32u);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1811f, -1036f, global0.a, -916f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 2167f, var_1.x, 1000f) * vec4<f32>(299f, 1275f, -2006f, global0.c)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -959f, -1306f, global0.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, global2.x, global0.c, 505f), vec4<f32>(var_1.x, var_0.x, 354f, 699f)))))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(-394f)), 782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global2.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, global2.x)) - _wgslsmith_f_op_f32(step(var_0.x, global2.x))))), false));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    global2 = arg_0;
    var var_0 = select(vec4<bool>(all(!vec4<bool>(true, arg_3.x, true, arg_3.x)), any(select(vec4<bool>(arg_3.x, arg_3.x, false, true), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), !arg_3.x)), arg_3.x, any(vec3<bool>(true, all(vec3<bool>(false, arg_3.x, arg_3.x)), true))), vec4<bool>(arg_3.x == all(!vec4<bool>(false, false, arg_3.x, arg_3.x)), false & any(!vec4<bool>(false, false, true, arg_3.x)), true, true), select(select(!vec4<bool>(true, arg_3.x, arg_3.x, false), vec4<bool>(u_input.a < u_input.a, true, true, true), select(vec4<bool>(false, arg_3.x, true, arg_3.x), vec4<bool>(arg_3.x, false, true, true), !arg_3.x)), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(true, arg_3.x, true))), !(2003f < arg_2), true, true), vec4<bool>(true, true, all(select(vec2<bool>(false, false), arg_3, vec2<bool>(arg_3.x, arg_3.x))), true)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + global2.x))), Struct_1(vec4<u32>(~min(0u, 66396u), ~1u, u_input.b, abs(~global0.b.a.x))), global2.x, min(~(~_wgslsmith_clamp_vec2_i32(u_input.d.wy, vec2<i32>(-67533i, u_input.a), u_input.c)), vec2<i32>(_wgslsmith_mod_i32(~u_input.d.x, 5370i | global0.d.x), _wgslsmith_dot_vec2_i32(global0.d, global0.d ^ global0.d))));
    let var_2 = Struct_2(735f, Struct_1(var_1.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f - global0.a) * _wgslsmith_f_op_f32(abs(arg_0.x))), -(u_input.d.yz & _wgslsmith_mod_vec2_i32(~var_1.d, vec2<i32>(-2147483647i, global0.d.x))));
    let var_3 = vec3<u32>(global0.b.a.x, ~abs(~_wgslsmith_mult_u32(u_input.b, 39094u)), ~global0.b.a.x << (abs(~(~global0.b.a.x)) % 32u));
    return all(vec4<bool>(false, select(select(!var_0.x, select(true, var_0.x, var_0.x), arg_3.x), true, arg_3.x), !(447f >= arg_1.x) & all(vec4<bool>(true, true, true, true)), !((arg_3.x && false) & any(var_0.yz))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = !vec2<bool>(func_4(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global0.a)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1047f, global0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1053f, global0.a, global0.a, global0.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 904f, 154f, -260f) + vec4<f32>(global2.x, global2.x, global0.a, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1447f)))), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)));
    return -514f;
}

fn func_5(arg_0: f32) -> Struct_2 {
    var var_0 = ~vec4<i32>(reverseBits(48400i), global0.d.x, ~(-abs(-44220i)), _wgslsmith_mult_i32(global0.d.x, _wgslsmith_sub_i32(17729i, u_input.d.x)) ^ ~(-5879i));
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).zy * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global2.x) + vec2<f32>(383f, 1000f)), vec2<f32>(1383f, 2362f))) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(-65389i, 2147483647i, u_input.c.x, global0.d.x))) * arg_0)))));
    let var_1 = Struct_2(_wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(func_1(vec4<i32>(global0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, 55136i), vec2<i32>(global0.d.x, -2147483647i)), -1i, _wgslsmith_dot_vec2_i32(global0.d, var_0.xx))))), global0.b, -258f, ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(12269i, var_0.x), vec2<i32>(21606i, -2982i)), max(var_0.x, 42082i)));
    return Struct_2(global0.a, Struct_1(global0.b.a), _wgslsmith_f_op_f32(1197f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-573f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global2.x)))), vec2<i32>(reverseBits(_wgslsmith_mult_i32(~var_0.x, var_1.d.x)), reverseBits(0i)));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2237f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c * 1651f)))) - _wgslsmith_f_op_f32(-666f - arg_0.c))).b;
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2284f, global0.a)))))), vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)), select(vec2<bool>(any(vec4<bool>(true, false, true, false)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)))), vec2<bool>(true, _wgslsmith_mod_u32(var_0.a.x, u_input.b) < _wgslsmith_dot_vec4_u32(arg_0.b.a, vec4<u32>(26579u, global0.b.a.x, arg_0.b.a.x, arg_0.b.a.x))), ((u_input.b > 29795u) && true) | !all(vec2<bool>(false, true)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - -897f) + _wgslsmith_f_op_f32(func_3()))), func_5(arg_0.a).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-853f + arg_0.c)), firstLeadingBit(u_input.c));
    var var_1 = Struct_1(select(max(global0.b.a, ~(~arg_0.b.a)), ~arg_0.b.a, func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -208f) + vec2<f32>(-1179f, -839f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c, global0.a, -931f, global0.a)))), _wgslsmith_f_op_f32(-global0.a), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(785f, 175f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.d)) - _wgslsmith_f_op_f32(ceil(global2.x))))));
    return func_5(_wgslsmith_f_op_f32(-global2.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.b.a.x;
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-global0.c), func_6(func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(u_input.d)))))), global0.c, reverseBits(_wgslsmith_div_vec2_i32(~vec2<i32>(21425i, u_input.c.x), min(-vec2<i32>(global0.d.x, u_input.d.x), vec2<i32>(-22889i, 1825i)))));
    let var_1 = global0.b;
    var var_2 = func_5(_wgslsmith_f_op_f32(124f - global0.c));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, 804f)), _wgslsmith_f_op_f32(var_0.c * -699f))) + _wgslsmith_f_op_f32(floor(var_0.c)))), Struct_1(~vec4<u32>(~global0.b.a.x, global0.b.a.x << (var_0.b.a.x % 32u), _wgslsmith_sub_u32(3872u, 1u), ~var_1.a.x)), _wgslsmith_f_op_f32(641f - _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -368f))), vec2<i32>(~(-1i), -u_input.c.x));
    global0 = var_3;
    var_0 = var_3;
    let var_4 = _wgslsmith_sub_vec3_i32(-reverseBits(reverseBits(u_input.d.zzz)), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(-u_input.d.yxy, u_input.d.xxx), vec3<i32>(~firstLeadingBit(37816i), abs(global0.d.x), _wgslsmith_div_i32(18995i, global0.d.x) ^ ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1019f, -1436f, -1312f), -792f, vec2<i32>(var_0.d.x, ~abs(max(2147483647i, u_input.a))), var_1.a.x, u_input.d.ywz);
}

