struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec2<bool>(true, true), 43240u), Struct_3(vec2<bool>(false, true), 28850u), Struct_3(vec2<bool>(false, true), 4294967295u), Struct_3(vec2<bool>(false, true), 48814u), Struct_3(vec2<bool>(true, false), 0u), Struct_3(vec2<bool>(true, true), 1542u), Struct_3(vec2<bool>(false, true), 4294967295u), Struct_3(vec2<bool>(true, false), 97234u), Struct_3(vec2<bool>(false, true), 4294967295u), Struct_3(vec2<bool>(true, true), 4294967295u), Struct_3(vec2<bool>(false, true), 59953u), Struct_3(vec2<bool>(false, true), 94556u), Struct_3(vec2<bool>(true, false), 0u), Struct_3(vec2<bool>(false, true), 4294967295u), Struct_3(vec2<bool>(true, true), 1u), Struct_3(vec2<bool>(true, true), 21562u), Struct_3(vec2<bool>(false, true), 0u), Struct_3(vec2<bool>(false, false), 30709u), Struct_3(vec2<bool>(false, true), 9091u), Struct_3(vec2<bool>(true, true), 4294967295u), Struct_3(vec2<bool>(true, true), 0u), Struct_3(vec2<bool>(true, true), 17165u), Struct_3(vec2<bool>(true, true), 40429u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    var var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    global0 = array<Struct_3, 23>();
    var var_1 = false;
    return !select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(true, true)), true);
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_3, 23>();
    let var_0 = vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-68177i, -6017i) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, -69508i)), firstLeadingBit(~vec2<i32>(-2147483647i, u_input.b)));
    var var_1 = Struct_1(func_3());
    global0 = array<Struct_3, 23>();
    let var_2 = 0u;
    return Struct_3(!vec2<bool>(any(select(vec3<bool>(var_1.a.x, true, true), vec3<bool>(var_1.a.x, false, false), true)), 1u < firstTrailingBit(0u)), u_input.a.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = abs(u_input.b);
    let var_1 = vec2<i32>(-2147483647i, -(~(-(~var_0))));
    global0 = array<Struct_3, 23>();
    var var_2 = max(vec3<i32>(firstTrailingBit(u_input.b) << (46374u % 32u), abs(0i), ~(~min(-35365i, -40489i))), vec3<i32>(var_1.x ^ -9496i, -2147483647i, u_input.b));
    var var_3 = Struct_4(_wgslsmith_dot_vec3_i32(select(~abs(vec3<i32>(var_0, 25044i, 16740i)), ~(~vec3<i32>(30259i, var_2.x, var_0)), vec3<bool>(true, true, true)), max(select(firstTrailingBit(vec3<i32>(u_input.b, var_2.x, -12143i)), vec3<i32>(var_0, 8344i, -2147483647i) & vec3<i32>(u_input.b, 1i, var_0), select(vec3<bool>(arg_1.a.x, false, true), vec3<bool>(arg_3.a.x, false, arg_1.a.x), vec3<bool>(true, arg_3.a.x, false))), vec3<i32>(-13162i, 0i, var_0))), global0[_wgslsmith_index_u32(func_2().b, 23u)], u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1387f * _wgslsmith_f_op_f32(sign(-594f))))), ~min(-var_1.x, _wgslsmith_sub_i32(u_input.b, 1i)));
    return 0u;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> Struct_3 {
    global0 = array<Struct_3, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, -438f) + vec2<f32>(1084f, -1000f)))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-228f, -107f) + vec2<f32>(562f, -1359f)) * _wgslsmith_div_vec2_f32(vec2<f32>(206f, 1218f), vec2<f32>(1137f, 162f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1375f)), _wgslsmith_f_op_f32(1285f + 1282f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-163f, 1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(757f, 142f), vec2<f32>(1000f, 444f)))))))));
    let var_1 = Struct_4(-1i, func_2(), _wgslsmith_add_vec3_u32(~(~firstLeadingBit(u_input.a)), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, ~arg_2.x), 0u, max(_wgslsmith_add_u32(1u, 50044u), 1u))), _wgslsmith_f_op_f32(ceil(-169f)), ~abs(min(-2147483647i, u_input.b)) | -_wgslsmith_sub_i32(11288i, reverseBits(0i)));
    var var_2 = vec3<bool>(true, !(!(!arg_3)), false);
    var var_3 = -207f;
    return func_2();
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: f32) -> f32 {
    global0 = array<Struct_3, 23>();
    var var_0 = true;
    global0 = array<Struct_3, 23>();
    let var_1 = true;
    let var_2 = func_5(Struct_2(arg_1), ~_wgslsmith_div_i32(-6506i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -14524i, u_input.b, -1i), vec4<i32>(35935i, 21851i, 1i, 2147483647i)), select(vec4<i32>(-2147483647i, u_input.b, -46774i, u_input.b), vec4<i32>(-2006i, u_input.b, 9535i, u_input.b), vec4<bool>(var_1, var_1, var_1, var_1)))), vec2<u32>(~func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 32743u), vec2<u32>(arg_2, arg_2)), func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 127775u, 16137u), vec3<u32>(arg_1, arg_1, 1u)), Struct_1(vec2<bool>(var_1, false))), 56939u), !(arg_1 < ~1u) || (_wgslsmith_sub_i32(2147483647i, -u_input.b) == countOneBits(2147483647i)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(676f, 855f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-689f)), _wgslsmith_f_op_f32(func_1(vec2<f32>(-936f, 545f), u_input.a.x, u_input.a.x, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(749f, 1000f) * vec2<f32>(-297f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-686f - _wgslsmith_f_op_f32(max(-174f, -183f))));
}

