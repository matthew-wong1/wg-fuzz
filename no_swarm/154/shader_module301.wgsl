struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(42815i, vec2<f32>(1131f, 640f));

var<private> global1: f32 = -347f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    global0 = Struct_1(38472i, global0.b);
    let var_0 = _wgslsmith_mod_u32(~min(~u_input.b, u_input.c.x), u_input.b);
    global0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x + arg_1), arg_0.b.x, true)), 1233f)));
    var var_2 = ~(46769u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 1255u), vec3<u32>(67529u, 0u, 1u))) != max(0u, 21236u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f)))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = !select(vec4<bool>(true, any(select(arg_1.yy, vec2<bool>(false, arg_1.x), arg_1.xx)), !any(vec2<bool>(arg_1.x, false)), all(!arg_1.xz)), vec4<bool>(false, u_input.c.x != countOneBits(u_input.b), arg_1.x, 0u >= u_input.c.x), select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(arg_0, u_input.d > -2147483647i, !arg_1.x, arg_1.x), all(arg_1.xx)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(28414i, global0.b), global0.b.x, ~_wgslsmith_sub_vec2_i32(vec2<i32>(-21569i, u_input.d), u_input.a), -1151f)))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-258f, global0.b.x)))), global0.b, select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), !vec2<bool>(arg_0, var_0.x)), vec2<bool>(all(var_0), global0.a != u_input.a.x), var_0.x))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1581f))))) + global0.b.x);
    return Struct_1(u_input.d >> (u_input.b % 32u), _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(round(global0.b.x))), global0.b));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = u_input.a;
    let var_1 = func_2(false, vec3<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), true, (0u & _wgslsmith_clamp_u32(0u, 0u, 4294967295u)) <= _wgslsmith_mod_u32(~1u, u_input.b >> (22838u % 32u))));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~u_input.b), _wgslsmith_add_u32(u_input.b, u_input.c.x) | ~26958u, ~select(3350u, u_input.b, true)), ~vec3<u32>(9743u, max(u_input.b, 0u), ~u_input.b)), 0u);
    global0 = arg_0;
    var var_3 = 579f;
    return vec2<f32>(386f, arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(17838i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-3214i, u_input.d, 19663i, 18725i), ~vec4<i32>(2915i, global0.a, 2147483647i, global0.a)), 29947i, 1i), ~_wgslsmith_div_i32(reverseBits(-24955i), min(u_input.d, u_input.a.x)), u_input.d));
    var var_1 = !(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(global0.b)), vec2<f32>(734f, -538f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b.x, -1029f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1364f, global0.b.x) + global0.b) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1226f, -2019f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(2147483647i, vec2<f32>(-1374f, global0.b.x)))), _wgslsmith_f_op_vec2_f32(-global0.b))))));
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~global0.a, -(~(-16797i)), ~_wgslsmith_div_i32(global0.a, ~global0.a)), -vec3<i32>(~(-24429i), reverseBits(global0.a), -(global0.a >> (u_input.b % 32u))));
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(global0.b.x - global0.b.x))), _wgslsmith_div_vec2_i32(var_2, firstLeadingBit(select(-vec2<i32>(u_input.d, 0i), vec2<i32>(23311i, -2147483647i), false))), abs(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(89191u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(u_input.b, 14194u, u_input.c.x, 31460u))), _wgslsmith_dot_vec3_u32(vec3<u32>(44701u, u_input.b, u_input.c.x), vec3<u32>(4294967295u, 45505u, u_input.b) & vec3<u32>(19069u, 0u, 40846u)), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), firstTrailingBit(18717u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_2.x, global0.b), -512f, u_input.a, -1302f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.x))), -1589f)));
}

