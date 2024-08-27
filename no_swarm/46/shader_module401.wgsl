struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> vec4<bool> {
    return vec4<bool>(((~global0.x != 57970u) == any(vec2<bool>(true, true))) | true, false, !(!arg_2), true);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(global1.e, global1.e)), vec4<f32>(global1.a.x, global1.c.x, -1148f, global1.c.x))))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.ywy)), false, var_0.xyx, abs(~global0.x), global1.e);
    global2 = array<vec2<i32>, 26>();
    global0 = max(firstTrailingBit(_wgslsmith_add_vec3_u32(countOneBits(countOneBits(vec3<u32>(global1.d, 86695u, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(81060u, 0u, global1.d), ~vec3<u32>(15773u, global0.x, global1.d)))), ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(44933u, global1.d, global0.x), select(vec3<u32>(74800u, global0.x, 114325u), vec3<u32>(global1.d, 0u, 0u), true)), ~(~vec3<u32>(global0.x, 0u, global1.d))));
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(65018u, global0.x, 1u, 76740u), ~vec4<u32>(global1.d, 1u, 35704u, global1.d)) | (~global1.d << (global1.d % 32u)), ~(48138u << (~global0.x % 32u)), 0u | firstTrailingBit(global1.d));
    return _wgslsmith_f_op_vec3_f32(-var_0.xwy);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1044f, -473f, global1.e.x, global1.e.x), vec4<f32>(global1.e.x, 259f, _wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(-global1.c.x))))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)), var_0.x, global1.c.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, global1.c.x)) - _wgslsmith_f_op_vec3_f32(select(var_0.www, global1.a, arg_0.a.x))))), 0u != global0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), 1500f, _wgslsmith_f_op_f32(global1.a.x + var_0.x)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.a.x, -576f))), !arg_0.a.x)), ~_wgslsmith_dot_vec2_u32(global0.xy, global0.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-266f, _wgslsmith_div_f32(var_0.x, global1.a.x), var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 1471f, -380f, -1061f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.x, var_0.x, global1.e.x, -524f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_2(vec3<bool>(all(func_1(u_input.a, vec4<u32>(global1.d, global0.x, global1.d, 23058u), global1.b, 1i)), true, ~1u == _wgslsmith_sub_u32(global0.x, 52963u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_vec3_f32(func_3(func_2(func_2(Struct_2(var_0.a))))).x) * global1.c.x);
    var_1 = 508f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_2(Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, global1.b)))))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, global1.c.x) * global1.a), _wgslsmith_f_op_vec3_f32(global1.e.wzy * global1.c))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(countOneBits(global0.xx), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global1.d, global1.d))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.d, 19974u, 4294967295u, 35836u), ~vec4<u32>(47148u, 61275u, global1.d, 1u))) & firstTrailingBit(9062u), vec4<f32>(-1000f, global1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x * global1.e.x) - _wgslsmith_f_op_f32(-1087f - -1149f)), _wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(-global1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x)))));
    global2 = array<vec2<i32>, 26>();
    global1 = var_2;
    var_1 = 904f;
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~(1u ^ global1.d), firstLeadingBit(1u) << (_wgslsmith_mod_u32(global0.x, 31545u) % 32u)), ~9772u, var_2.d), _wgslsmith_div_vec3_u32(countOneBits(max(vec3<u32>(4294967295u, global0.x, var_2.d), vec3<u32>(0u, global1.d, global1.d)) ^ vec3<u32>(10023u, global0.x, 0u)), reverseBits(abs(vec3<u32>(global1.d, global1.d, global1.d)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d, 77487u, global0.x), vec3<u32>(global0.x, global1.d, var_2.d), vec3<u32>(83773u, 1u, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(var_3.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(33675u, var_3.x), vec2<u32>(global0.x, var_3.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1714f * 1339f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.x, var_2.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1794f, global1.c.x)) + global1.c.x))), vec4<u32>(1u, global0.x, var_2.d, ~var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(138f, -1000f)), global1.a.x);
}

