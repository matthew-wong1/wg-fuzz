struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23>;

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = vec3<bool>(true, any(vec2<bool>(false, true)) & (_wgslsmith_sub_i32(arg_0.x ^ arg_0.x, firstLeadingBit(-46061i)) >= ~reverseBits(-13155i)), !any(vec4<bool>(true, arg_1.x > 721f, true, true)));
    var var_1 = u_input.a;
    let var_2 = arg_0.xzy;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1000f)), -1614f, !(!var_0.x))));
    global2 = arg_1.x;
    return arg_1.x;
}

fn func_3() -> vec2<f32> {
    global0 = array<Struct_4, 23>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(177f)) + _wgslsmith_f_op_f32(-191f + 1470f)) - _wgslsmith_f_op_f32(max(804f, -794f))) - -839f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-187f, -648f))));
    var var_0 = _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), min(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 29871u)), ~vec3<u32>(u_input.a, 4294967295u, 1u)), vec3<u32>(u_input.a, select(u_input.a, u_input.a, false), countOneBits(4294967295u)), false), abs(~(~vec3<u32>(u_input.a, 78096u, 0u)))) ^ firstLeadingBit(u_input.a);
    global2 = 239f;
    let var_1 = firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(-92551i, -2147483647i))), -2147483647i) & ~vec2<i32>(1i, 1i));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -291f))), _wgslsmith_div_f32(-174f, -613f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 830f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(996f, 203f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-148f, -612f), vec2<f32>(-845f, 1980f), false))))))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var var_1 = reverseBits(min(~min(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, 1i, 1i, 39172i), vec4<i32>(1i, -31584i, 0i, 0i))));
    var var_2 = vec3<u32>(~u_input.a & ~(~u_input.a << (~2650u % 32u)), firstLeadingBit(_wgslsmith_mod_u32(~4294967295u, u_input.a)) | _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_2.yy, vec2<u32>(arg_2.x, 4294967295u)), arg_2.yy), u_input.a | firstTrailingBit(_wgslsmith_mod_u32(~29333u, ~arg_2.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, -746f, arg_1.x)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(760f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, 950f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * arg_0) + 251f) - _wgslsmith_f_op_f32(abs(var_3.x))), 893f, 1768f));
    return Struct_5(!all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false))), Struct_3(firstTrailingBit(countOneBits(vec3<u32>(4294967295u, 75046u, arg_2.x)) | (vec3<u32>(4294967295u, arg_2.x, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, var_2.x) % vec3<u32>(32u))))), Struct_3(arg_2), var_3.x, firstTrailingBit(var_2.x >> (_wgslsmith_div_u32(~var_2.x, u_input.a) % 32u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> i32 {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, -1i, -38876i), vec4<i32>(1i, 2147483647i, -15577i, -1i), vec4<i32>(-1i, -22685i, -1i, -1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 1636f) * vec2<f32>(1000f, arg_0.a)))) * arg_0.a), arg_0.a), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~countOneBits(u_input.a), 1u), countOneBits(firstLeadingBit(vec3<u32>(arg_1.x, arg_1.x, 4294967295u))), max(firstLeadingBit(firstTrailingBit(vec3<u32>(34649u, 105471u, u_input.a))), vec3<u32>(19517u & arg_0.b.x, arg_1.x ^ 38958u, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], vec4<u32>(23348u, 121192u, arg_0.b.x, 74060u))))));
    global2 = _wgslsmith_div_f32(-1737f, -851f);
    global0 = array<Struct_4, 23>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) * _wgslsmith_f_op_f32(var_0.d + arg_0.a)), var_0.d, ~var_0.e >= 4294967295u)))));
    var var_2 = var_0.c;
    return 46432i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-84380i, (func_1(Struct_4(157f, vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(u_input.a, 13375u)) ^ 11638i) & -5200i);
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    var var_1 = Struct_1(~(var_0.x >> (4294967295u % 32u)), 249f);
    global1 = array<vec4<u32>, 30>();
    var var_2 = _wgslsmith_mod_u32(u_input.a, u_input.a);
    global0 = array<Struct_4, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((global1[_wgslsmith_index_u32(1u >> (0u % 32u), 30u)] >> (vec4<u32>(u_input.a, 46409u, u_input.a, u_input.a) % vec4<u32>(32u))) | firstLeadingBit(global1[_wgslsmith_index_u32(35905u, 30u)])), -836f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1529f, var_1.b, 1102f) * vec3<f32>(var_1.b, var_1.b, -2113f)))))), vec3<f32>(-286f, var_1.b, _wgslsmith_f_op_f32(-1f))), vec3<i32>(abs(_wgslsmith_mod_i32(-11345i, max(var_0.x, -2147483647i))), func_1(Struct_4(-363f, vec2<u32>(0u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 33235u), vec2<u32>(2018u, 16567u))) ^ _wgslsmith_div_i32(0i, -2147483647i), _wgslsmith_sub_i32(var_1.a, 1i)), ~(~vec4<u32>(u_input.a >> (31594u % 32u), 6009u, firstTrailingBit(u_input.a), _wgslsmith_clamp_u32(1u, u_input.a, u_input.a))));
}

