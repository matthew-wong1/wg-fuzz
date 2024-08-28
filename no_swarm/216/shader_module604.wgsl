struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32 = -668f;

var<private> global2: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<f32> {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 1412f)) - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-187f - _wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1644f, arg_0)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f)))), 442f, true)));
    let var_0 = Struct_1(!select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, any(vec4<bool>(false, true, true, true))), true == all(vec2<bool>(false, false))), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2810f + arg_0)) >= _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-1855f + global0.x)), !all(vec3<bool>(true, false, true)), !(!select(false, false, true))), firstLeadingBit((firstTrailingBit(vec3<u32>(4294967295u, 73809u, 21536u)) & (vec3<u32>(u_input.c, 45910u, 1u) | vec3<u32>(u_input.c, 0u, 8578u))) | min(vec3<u32>(20879u, 0u, u_input.c) << (vec3<u32>(u_input.c, 63469u, u_input.c) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.c, 46587u, 24285u)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-395f, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * -1212f))), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-729f, 514f, global0.x, -319f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1956f, global0.x, 1135f, arg_0)), true)), vec4<bool>(true, select(true, select(false, true, false), false), !all(vec3<bool>(true, true, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))))), _wgslsmith_add_u32(u_input.c, u_input.c | ~_wgslsmith_mult_u32(0u, u_input.c)));
    let var_1 = vec3<u32>(u_input.c, max(u_input.c, _wgslsmith_clamp_u32(firstTrailingBit(var_0.c.x), _wgslsmith_div_u32(var_0.c.x, 1u) << (select(55935u, u_input.c, var_0.b) % 32u), u_input.c)), var_0.e);
    let var_2 = true;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))) - arg_0);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -407f))), -441f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.x, global0.x)) - -1098f)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> bool {
    var var_0 = arg_0.b;
    let var_1 = Struct_1(vec3<bool>(arg_0.a.x, all(vec4<bool>(arg_0.b, any(vec3<bool>(arg_1, false, true)), arg_1, arg_1)), arg_1), !(arg_0.d.x == -1786f), arg_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 149f, 127f, -1000f) - vec4<f32>(global0.x, arg_2, arg_3.x, arg_3.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, 428f, arg_2, arg_2)))), arg_0.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(176f, -2202f, 286f, 403f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, arg_0.d.x, global0.x, 1000f), vec4<f32>(arg_0.d.x, arg_2, 589f, global0.x), true))))), 52333u);
    var var_2 = var_1;
    var var_3 = var_1.c.zz;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    return arg_1;
}

fn func_2() -> bool {
    global2 = 1000f;
    var var_0 = !(!vec4<bool>(true, true, !all(vec4<bool>(true, false, true, true)), func_4(Struct_1(vec3<bool>(true, false, true), false, vec3<u32>(4294967295u, 4294967295u, u_input.c), vec4<f32>(global0.x, 1516f, -1000f, global0.x), u_input.c), true, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(func_3(global0.x, -2147483647i)))));
    let var_1 = firstLeadingBit(~vec4<i32>(u_input.d, _wgslsmith_div_i32(u_input.d, abs(4092i)), 0i, 15481i));
    let var_2 = Struct_1(select(vec3<bool>(var_0.x, !(!var_0.x), false), var_0.yzz, var_0.zzy), true, firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(51940u, ~27188u, u_input.c), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c)))), vec4<f32>(-1234f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))), -1351f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c, u_input.c, u_input.c), ~vec3<u32>(u_input.c, u_input.c, 0u), true) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 35316u, u_input.c), vec3<u32>(25539u, u_input.c, u_input.c)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), ~vec3<u32>(u_input.c, u_input.c, u_input.c)))));
    global2 = 700f;
    return !var_2.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true || all(vec3<bool>(false, true, arg_1)), !select(arg_1, arg_1, true), func_2()), select(select(!vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, true, arg_1))), select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, false, arg_1)), !vec3<bool>(false, arg_1, true), arg_1), arg_1), true);
    let var_1 = _wgslsmith_div_f32(-1668f, 267f);
    var var_2 = -630f;
    let var_3 = Struct_1(vec3<bool>(true, -1849f > var_1, any(var_0.xy) == !arg_1), _wgslsmith_clamp_u32(arg_2, 1u, 38667u) < _wgslsmith_sub_u32(arg_2, _wgslsmith_mod_u32(abs(4463u), u_input.c)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 1u, 1u, 24207u), vec4<u32>(arg_2, 1u, arg_2, arg_2)) >> ((17707u & arg_2) % 32u), 1u, abs(0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 621f, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), 801f))), 4294967295u);
    global0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.d.x, -2336f, var_3.d.x), var_3.d.zxw));
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2063f)) - arg_0.d.x);
    let var_0 = vec4<bool>(func_1(~(u_input.b.zz >> ((arg_0.c.yy >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u))), func_2(), ~0u).a.x, !any(vec4<bool>(any(vec3<bool>(true, arg_0.b, true)), func_1(u_input.b.zy, arg_0.a.x, 26494u).b, func_4(Struct_1(arg_0.a, false, arg_0.c, arg_0.d, 8196u), false, arg_1.x, vec3<f32>(891f, 544f, global0.x)), false)), !any(vec3<bool>(true, true, true)), false);
    let var_1 = select(select(var_0, !var_0, u_input.b.x == firstTrailingBit(u_input.d)), select(var_0, !var_0, true), true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1067f, 2758f))));
    var var_2 = func_1(vec2<i32>(u_input.b.x, -26035i), true, _wgslsmith_mod_u32(select(~(~arg_0.e), ~1u, !arg_0.b), max(0u, ~(~u_input.c))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1129f;
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    var var_0 = func_5(func_1(abs(u_input.b.xx), true && (true || any(vec2<bool>(false, false))), _wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.c, u_input.c), 30336u)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-360f + global0.x), -u_input.d)).x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-261f + global0.x)))));
    var var_1 = var_0.d.yyx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~(vec4<i32>(-44i, u_input.b.x, -1i, -5830i) & _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.d, u_input.a, 1i), vec4<i32>(-31413i, -3933i, u_input.b.x, -2147483647i))), vec4<i32>(1i, u_input.d, countOneBits(u_input.b.x), u_input.d) & vec4<i32>(-24934i, u_input.d, i32(-1i) * -30430i, -5483i)), ~(~firstLeadingBit(vec2<u32>(4294967295u, 0u)) & (var_0.c.zx >> (var_0.c.zx % vec2<u32>(32u)))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(firstTrailingBit(u_input.b)), u_input.b), u_input.b));
}

