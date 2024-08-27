struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<u32, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    return _wgslsmith_mod_vec2_u32(vec2<u32>(~13193u, ~(~u_input.e | ~72126u)), ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 29u)], u_input.e), vec2<u32>(9863u, 1u)))));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(func_3());
    global1 = array<u32, 29>();
    let var_1 = -49828i;
    var var_2 = Struct_2(Struct_1(2147483647i, ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c, global1[_wgslsmith_index_u32(u_input.c, 29u)]), ~global1[_wgslsmith_index_u32(1u, 29u)], 66669u), 29u)], global1[_wgslsmith_index_u32(1u, 29u)] == select(abs(global1[_wgslsmith_index_u32(4294967295u, 29u)]), reverseBits(25137u), any(vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-539f, 1440f, -587f)) - vec3<f32>(1913f, 2187f, 131f)))), ~_wgslsmith_clamp_vec2_i32(u_input.d.yz, global0[_wgslsmith_index_u32(countOneBits(6116u), 13u)], -vec2<i32>(u_input.d.x, var_1)) | ~vec2<i32>(0i, -2147483647i));
    var_2 = Struct_2(var_2.a, u_input.d.xx);
    return Struct_1(u_input.a.x, _wgslsmith_mod_u32(var_2.a.b, _wgslsmith_div_u32(firstTrailingBit(abs(1u)), global1[_wgslsmith_index_u32(var_0.x, 29u)])), any(!(!vec3<bool>(false, var_2.a.c, true))), var_2.a.d);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 13>();
    var var_0 = Struct_2(func_2(), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~4294967295u, global1[_wgslsmith_index_u32(0u, 29u)] | 1u), _wgslsmith_mult_u32(59600u, abs(63108u))), 13u)]));
    var var_1 = Struct_2(Struct_1(abs(_wgslsmith_add_i32(~(-15175i), u_input.d.x)), u_input.e, false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, var_0.a.d.x, 1000f)))))), u_input.a);
    global1 = array<u32, 29>();
    var_0 = Struct_2(var_1.a, arg_1);
    return func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    return Struct_3(arg_1.d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.e, u_input.e);
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(983f, -738f))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-898f)), _wgslsmith_f_op_f32(1013f - 1000f))), -329f)));
    let var_2 = vec4<u32>(1u, 41577u, var_0.x, 0u);
    global1 = array<u32, 29>();
    let var_3 = func_4(select(!vec2<bool>(any(vec3<bool>(false, true, true)), select(false, false, false)), vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), func_1(vec3<f32>(var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-948f - _wgslsmith_f_op_f32(-var_1.a.x))), u_input.a), _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(var_2.zxy, min(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 15936u, 0u), var_2.xxx)), vec3<u32>(u_input.c, ~11353u, var_2.x ^ 4294967295u), true), var_2.xyz), func_2());
    global1 = array<u32, 29>();
    var var_4 = _wgslsmith_f_op_f32(round(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x - 1017f), -1000f, var_3.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, var_3.a.x), vec3<f32>(var_3.a.x, var_3.a.x, var_1.a.x)))), global0[_wgslsmith_index_u32(~abs(global1[_wgslsmith_index_u32(var_2.x, 29u)]), 13u)]).d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-787f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.a.x, -787f), _wgslsmith_f_op_f32(-544f + var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x - -496f), 1948f)))), var_2.zw, vec3<u32>(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.c, 29u)], 37575u, 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_2, vec4<u32>(39550u, 29154u, 1u, 0u)), vec4<u32>(65082u, 1u, 39843u, 124041u)), global1[_wgslsmith_index_u32(~(~25160u), 29u)]) >> (~var_2.zwx % vec3<u32>(32u)), _wgslsmith_div_i32(~(u_input.a.x | 33449i), ~u_input.b));
}

