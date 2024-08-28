struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-25545i, 4615i));

var<private> global1: Struct_3;

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(1u, 17324u), vec2<u32>(10077u, 18274u), vec2<u32>(7676u, 17430u), vec2<u32>(24100u, 22351u), vec2<u32>(25592u, 26154u), vec2<u32>(24233u, 60308u), vec2<u32>(45809u, 121085u), vec2<u32>(22812u, 42077u), vec2<u32>(4294967295u, 16239u), vec2<u32>(0u, 78209u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    let var_0 = -981f;
    return global0.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> vec4<f32> {
    global1 = Struct_3(global1.a);
    var var_0 = select(func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(709f, -904f, -565f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-106f, 1597f, 298f), vec3<f32>(1340f, 1472f, -951f), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1004f, 547f), vec2<f32>(-692f, 1279f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-104f)))) >= 1i, true, all(vec2<bool>(arg_1.x, all(arg_1))));
    global0 = Struct_2(abs(abs(-_wgslsmith_sub_vec2_i32(global1.a.a, global0.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-886f, _wgslsmith_f_op_f32(ceil(174f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-581f * -1047f), _wgslsmith_f_op_f32(f32(-1f) * -991f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(638f, -1021f, false)), _wgslsmith_f_op_f32(min(-188f, 1242f))))));
    var var_2 = vec3<bool>(true && arg_1.x, all(select(vec4<bool>(all(vec4<bool>(false, arg_1.x, arg_1.x, false)), u_input.c.x <= u_input.c.x, true, select(true, arg_1.x, arg_1.x)), vec4<bool>(true, true, false, arg_1.x), false)), any(!vec4<bool>(true, arg_1.x, all(vec3<bool>(false, arg_1.x, arg_1.x)), all(arg_1))));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f + var_1.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 422f), var_1.x)), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.x)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>) -> vec4<f32> {
    global2 = array<vec2<u32>, 10>();
    let var_0 = global0.a;
    global2 = array<vec2<u32>, 10>();
    let var_1 = ~u_input.a;
    var var_2 = vec3<i32>(9202i, -28072i, 1i);
    return _wgslsmith_f_op_vec4_f32(func_2((~(~vec3<u32>(u_input.b, 71935u, var_1)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(9516u, 0u, u_input.a), vec3<u32>(var_1, 4294967295u, u_input.a) | vec3<u32>(u_input.a, 0u, 6330u)) % vec3<u32>(32u))) & vec3<u32>(~u_input.a, reverseBits(reverseBits(var_1)), u_input.a), !select(!select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, false, true, false), vec4<bool>(true, arg_0.x, false, true)), select(vec4<bool>(false, false, arg_2.x, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !arg_2.x), !select(vec4<bool>(arg_2.x, true, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1215f * 248f), _wgslsmith_f_op_f32(sign(1475f)), -1415f, _wgslsmith_f_op_f32(ceil(179f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(false, true), 11199i, vec2<bool>(true, false))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1195f, 1279f, -1449f, 1515f)))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), _wgslsmith_f_op_f32(-959f * _wgslsmith_f_op_f32(137f - -1008f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global2 = array<vec2<u32>, 10>();
    let var_1 = global1.a;
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(~firstTrailingBit(_wgslsmith_mod_i32(11614i, u_input.c.x)), u_input.c.x), ~_wgslsmith_mod_vec2_i32(u_input.c, var_1.a));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_vec4_f32(func_1(select(vec2<bool>(false, false), vec2<bool>(false, true), false), 1i, vec2<bool>(true, true))).x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 769f)) * 1704f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1000f) * 480f)), _wgslsmith_f_op_f32(floor(-945f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, -670f))) == var_0.x)), _wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(global0.a.x, -1i), var_2.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(31512i, -1i), _wgslsmith_mult_i32(global1.a.a.x, u_input.c.x), ~var_2.x) | global1.a.a.x), global1.a.a.x, var_0.x);
}

