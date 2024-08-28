struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_div_f32(-1436f, arg_0);
    let var_1 = 138f;
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(round(1390f))))));
    global0 = array<Struct_2, 10>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(var_1, global1.b, -2136f, 951f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.a)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1306f), var_1, 857f, -206f))), _wgslsmith_f_op_f32(round(var_0)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(var_0 + arg_0)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32) -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u | firstTrailingBit(u_input.a.x << (~u_input.a.x % 32u)), 10u)];
    var var_1 = ~(u_input.a.x & min(1u, _wgslsmith_add_u32(0u, u_input.a.x)));
    global0 = array<Struct_2, 10>();
    let var_2 = 1139f;
    global1 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), var_0.a.b), var_0.a.a.zww));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(arg_0.a.a.zz));
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-367f, 447f, -1182f) * var_1.a.zwx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.wwx), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_vec2_i32(u_input.b.xx, u_input.b.wz), _wgslsmith_f_op_f32(func_3(var_1.a.x, vec2<i32>(3794i, u_input.c)))))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b, 3735i), vec2<i32>(arg_1.x, 0i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1794f), global1.b)))).x, _wgslsmith_f_op_f32(abs(var_1.b)), var_1.a.x), vec3<bool>(false || (_wgslsmith_f_op_f32(max(var_0.x, global1.a.x)) == arg_0.c.a.x), true, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1.a.yx - var_1.a.yx))) * _wgslsmith_f_op_vec2_f32(round(global1.a.zz))))));
    var_0 = _wgslsmith_div_vec2_f32(var_1.a.xy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 430f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 218f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(arg_1.x, u_input.b.x) >> (vec2<u32>(4294967295u, 10541u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-var_3.x))).zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-724f, var_2.x), vec2<f32>(-1931f, 221f))))))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1421f)) - -223f))), 522f, 967f, var_1.a.x);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a;
    global0 = array<Struct_2, 10>();
    var var_1 = !vec4<bool>(true, all(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, true, true), vec4<bool>(false, true, arg_0, false))), true, all(vec2<bool>(true, true)));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-843f - _wgslsmith_f_op_f32(arg_1.a.b + arg_1.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918f + _wgslsmith_f_op_f32(arg_1.a.b - 769f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1275f - -226f), _wgslsmith_f_op_f32(func_3(var_0.a.x, u_input.b.zx))))), 591f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1182f))));
    global1 = arg_1.a;
    return Struct_1(arg_1.c.a, var_2.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    var var_0 = func_5(arg_0.x, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(global1.a, arg_2), u_input.b.x, Struct_1(vec4<f32>(1440f, global1.b, 1319f, -627f), global1.b)), vec2<i32>(48044i, u_input.c)))), 163f), -_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, u_input.c), u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global1.a)), global1.b)));
    let var_1 = arg_3.x;
    global0 = array<Struct_2, 10>();
    let var_2 = Struct_2(func_5(arg_1.x, Struct_2(func_5(arg_1.x, global0[_wgslsmith_index_u32(38210u, 10u)]), ~(-47200i), Struct_1(vec4<f32>(-369f, 538f, global1.a.x, var_0.b), func_5(false, Struct_2(Struct_1(var_0.a, 1242f), -2147483647i, Struct_1(var_0.a, 1000f))).a.x))), u_input.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1124f)))));
    global1 = var_2.a;
    return 20461u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(~u_input.a.x, u_input.a.x, 1u)), vec3<u32>(~func_1(vec2<bool>(true, false), vec4<bool>(true, true, false, true), 1212f, vec4<u32>(u_input.a.x, 82121u, 0u, 13451u)), u_input.a.x, (u_input.a.x ^ u_input.a.x) | (0u ^ u_input.a.x))), 10u)];
    let var_1 = vec2<bool>(true, select(true, (false & select(false, true, false)) & all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(exp2(var_0.c.a.x)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(207f, var_0.a.b, false))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.xz * vec2<f32>(var_0.c.a.x, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b, var_0.c.b), vec2<f32>(global1.a.x, 1000f)))), !vec2<bool>(true, var_1.x))) * vec2<f32>(772f, _wgslsmith_div_f32(var_0.a.a.x, global1.b))) + vec2<f32>(var_0.a.b, var_0.c.b));
    global0 = array<Struct_2, 10>();
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(var_0.a.a)))))), 1152f);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a >> (u_input.a % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(4074u, 6718u), u_input.a), vec2<u32>(1u, u_input.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a))), u_input.a), 10u)];
    var var_4 = u_input.a.x;
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(633f, global1.b, var_2.x, -852f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.a - var_3.a.a) + vec4<f32>(492f, global1.b, var_3.c.a.x, var_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(217f + _wgslsmith_f_op_f32(-var_3.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(53987u, u_input.a.x)) << (vec2<u32>(~0u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), vec2<u32>(u_input.a.x | u_input.a.x, 63368u)), _wgslsmith_add_u32(~88252u, 16908u), -665f);
}

