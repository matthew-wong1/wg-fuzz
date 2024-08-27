struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -56920i, 0i);

var<private> global1: array<vec2<u32>, 19>;

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>) -> u32 {
    global1 = array<vec2<u32>, 19>();
    global2 = arg_1.x;
    global1 = array<vec2<u32>, 19>();
    global2 = arg_1.x;
    global1 = array<vec2<u32>, 19>();
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_2.x, abs(5493u), firstTrailingBit(1u))), vec3<u32>(u_input.c.x, arg_2.x, abs(~4294967295u) >> (~_wgslsmith_add_u32(arg_0.a, 1u) % 32u)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_3(~(~(~func_3(Struct_1(27189u), vec2<i32>(0i, 1i), vec2<u32>(u_input.c.x, u_input.a.x)))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1107f, 1338f) - vec2<f32>(-971f, -173f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(726f, 204f) - vec2<f32>(1801f, 428f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(860f, -606f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-499f, _wgslsmith_div_f32(-582f, -131f))) - _wgslsmith_f_op_f32(1018f - _wgslsmith_f_op_f32(select(-976f, 1000f, false))))));
    global0 = ~vec3<i32>(1i, global0.x, ~(~global0.x));
    var var_1 = _wgslsmith_f_op_f32(sign(var_0.b.b));
    let var_2 = vec3<bool>(false, true, _wgslsmith_div_i32(global0.x, 1i) != _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.x, global0.x), select(-63243i, 31202i, false), 1i), vec3<i32>(global0.x, ~global0.x, max(global0.x, -7041i))));
    var_0 = Struct_3(0u, Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.b, -728f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f * -1234f))));
    return Struct_4(Struct_1(select(var_0.a, u_input.c.x << (4043u % 32u), any(!vec4<bool>(var_2.x, true, var_2.x, var_2.x)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = func_2();
    var var_1 = Struct_5(arg_0, var_0.a, ~arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -884f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2298f, -716f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-472f, _wgslsmith_f_op_f32(step(var_1.d, var_1.d))))), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(var_1.d <= 475f, all(vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_f32(-var_1.d));
    let var_3 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(634f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-442f, 643f)), var_1.d)), 1638f) * -744f);
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = func_2();
    let var_1 = -abs(-select(vec3<i32>(-2147483647i, -22825i, -1i), vec3<i32>(global0.x, global0.x, 0i), vec3<bool>(true, true, false)) | -vec3<i32>(-2147483647i, global0.x, global0.x));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(trunc(1744f));
    global1 = array<vec2<u32>, 19>();
    return StorageBuffer(vec4<i32>(select(2147483647i, 12674i, !any(vec4<bool>(false, false, true, true))), -1i, -53452i, _wgslsmith_clamp_i32(abs(0i), countOneBits(countOneBits(29688i)), var_1.x)), countOneBits(_wgslsmith_sub_vec3_i32(var_1, vec3<i32>(-var_1.x, -global0.x, min(2640i, -63835i)))), -28900i, 4294967295u, u_input.c.zyy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 19>();
    var var_0 = vec4<i32>(min(1795i, ~9747i), -2147483647i, global0.x, -(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, 2147483647i, global0.x)) ^ _wgslsmith_mult_i32(global0.x & -23465i, -46323i)));
    global1 = array<vec2<u32>, 19>();
    let var_1 = _wgslsmith_f_op_f32(360f - -1148f);
    let var_2 = vec4<bool>(!any(vec3<bool>(true, true, true)), false, !(u_input.a.x != 14336u), all(select(vec2<bool>(true, true), vec2<bool>(select(false, true, false), true), false)));
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1367f, var_1, -2808f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))) - vec3<f32>(_wgslsmith_div_f32(var_1, -155f), _wgslsmith_div_f32(var_1, 1000f), _wgslsmith_f_op_f32(func_1(Struct_1(u_input.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1000f, -871f) - vec3<f32>(var_1, 894f, -1792f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))))), Struct_3(u_input.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(var_1, -901f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1))), _wgslsmith_f_op_f32(func_1(func_2().a)))));
}

