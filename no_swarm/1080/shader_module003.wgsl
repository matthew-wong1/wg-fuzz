struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 621f;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d << (u_input.a % 32u), ~(-2147483647i), countOneBits(-2147483647i)), vec3<i32>(_wgslsmith_mult_i32(u_input.d, 17297i), max(-15558i, u_input.d), u_input.d)), vec3<i32>(abs(-43767i | u_input.d), -33887i | u_input.d, u_input.d)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, min(1i, -37310i), u_input.d) >> (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(u_input.d, _wgslsmith_div_i32(i32(-1i) * -1303i, 1i), -47790i)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(round(-587f)), -vec4<i32>(17950i, -(~2147483647i), _wgslsmith_div_i32(u_input.d | -7190i, _wgslsmith_div_i32(7090i, u_input.d)), 32292i));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, var_1.a, -188f) - vec3<f32>(-606f, -959f, var_1.a)), vec3<f32>(690f, arg_0, 1000f))) + vec3<f32>(arg_0, 346f, _wgslsmith_f_op_f32(arg_0 - 291f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1759f, 614f, var_1.a))))))), vec3<f32>(var_1.a, -1544f, _wgslsmith_f_op_f32(-2127f + arg_0)));
    global0 = _wgslsmith_f_op_f32(abs(1f));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - var_1.a), var_1.a)), _wgslsmith_f_op_f32(-arg_0)))))));
    return 320f;
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = ~(~(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(17808u, u_input.e.x), u_input.c), 59832u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.a)));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), -1390f));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.x, global1.x, global1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, 1406f, -153f, global1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1057f, global1.x, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, global1.x, 845f)) + vec4<f32>(global1.x, global1.x, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-318f, global1.x, global1.x, 1000f), vec4<f32>(1910f, -486f, global1.x, global1.x), vec4<bool>(false, true, true, true))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1865f, 1000f, -1042f, -2040f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1171f))), global1.x, _wgslsmith_f_op_f32(func_3(1000f)), global1.x))));
    var var_2 = !select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, true, false), true), select(true, true, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(any(vec3<bool>(false, false, true)), true)));
    var var_3 = abs(abs(vec4<u32>(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 4294967295u, min(116414u, 23168u), 4294967295u))) << ((u_input.b >> (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zxw))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(-(max(vec3<i32>(u_input.d, u_input.d, -2147483647i), vec3<i32>(43085i, -2147483647i, u_input.d)) >> (vec3<u32>(0u, u_input.e.x, 1u) % vec3<u32>(32u))))) - vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(-1107f, _wgslsmith_div_f32(-448f, -951f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x)));
    var var_0 = Struct_2(global1.x, vec4<i32>(~582i, u_input.d, -3740i, firstLeadingBit(_wgslsmith_div_i32(~2147483647i, 762i))));
    global0 = 413f;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + global1.x), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -917f)), any(!arg_0.ww) | all(!(!arg_0))));
    global0 = var_0.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(global1.x, 1128f)), 338f, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1370f, _wgslsmith_f_op_f32(global1.x + global1.x), -233f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-154f, global1.x, -475f, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(182f, global1.x, -920f, 141f)))) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(min(-794f, -1667f)), global1.x, 215f)), select(func_1(vec4<bool>(true, true, true, true)), vec4<bool>(82665i <= u_input.d, true, true, false), false)))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(1889f * _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) - -1000f), 1308f, select(u_input.e.x < ~6825u, true & select(true, true, false), u_input.d > -66342i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + var_0.x)) * _wgslsmith_div_f32(801f, _wgslsmith_div_f32(var_0.x, global1.x))))));
    var var_1 = vec3<i32>(-45998i | _wgslsmith_sub_i32(25826i, abs(u_input.d)), u_input.d, u_input.d) | ~(~(-countOneBits(vec3<i32>(1i, 2147483647i, u_input.d))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.x, 811f), 1489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1415f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(u_input.d), abs(3033i)) & _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, u_input.d), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1.xx)), var_1.xz), countOneBits(firstTrailingBit(vec4<i32>(-2147483647i << (u_input.a % 32u), var_1.x, 1i, ~(-1888i)))), _wgslsmith_clamp_u32(u_input.a, u_input.c.x, ~(min(u_input.e.x, 11278u) << (firstTrailingBit(0u) % 32u))), vec3<u32>(~_wgslsmith_clamp_u32(1u, select(1u, 48827u, var_2), u_input.e.x), u_input.e.x, countOneBits(_wgslsmith_sub_u32(u_input.a, u_input.e.x))));
}

