struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = ~1u;
    let var_0 = -(~vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, 1i), u_input.b) | _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 0i) ^ vec2<i32>(u_input.b, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(17416i, 1i))), _wgslsmith_mod_vec2_i32(-vec2<i32>(31478i, 3633i), vec2<i32>(u_input.b, u_input.b))));
    let var_1 = -min(u_input.b, 31945i);
    let var_2 = vec3<bool>(!(all(vec3<bool>(true, true, true)) | !any(vec2<bool>(false, true))), false, true);
    var var_3 = abs(var_1);
    return -2147483647i;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.e.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1270f), -1574f)), _wgslsmith_f_op_f32(-arg_0.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1257f + arg_0.e.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.a.x * arg_0.a.a.x)))));
    var var_1 = ~(~min(-vec2<i32>(-1i, arg_0.e.c.x), vec2<i32>(-1i, 2147483647i)));
    var_1 = -select(vec2<i32>(arg_0.e.c.x, 1i), vec2<i32>(-39588i, ~func_3()), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    var var_2 = Struct_3(-246f, countOneBits(58705u));
    var var_3 = _wgslsmith_sub_i32(~(-1i), _wgslsmith_mod_i32(firstTrailingBit(~(-1i)), -func_3())) | -(-func_3() ^ (u_input.b << (0u % 32u)));
    return !(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)) && true);
}

fn func_1(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1280f, 801f, 723f, 1972f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1336f, 258f, 1084f, -915f), vec4<f32>(-1990f, 769f, 813f, -1978f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1585f, 1185f, -469f, 597f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, -430f, 741f, -592f)), func_2(Struct_2(Struct_1(vec4<f32>(1045f, 1000f, 523f, -1752f), 1104f, vec2<i32>(u_input.b, -2147483647i)), 2147483647i, Struct_1(vec4<f32>(-902f, -1701f, -297f, 1230f), 1432f, vec2<i32>(u_input.b, -1i)), Struct_1(vec4<f32>(1158f, -1000f, -1683f, 924f), 175f, vec2<i32>(u_input.b, -22960i)), Struct_1(vec4<f32>(153f, -176f, 358f, 1087f), 1079f, vec2<i32>(u_input.b, 32296i)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, -138f, 296f, -1570f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -418f))), vec2<i32>(firstLeadingBit(7998i), 23940i));
    global0 = 68037u;
    var var_1 = ~arg_0.x;
    var_1 = abs(~arg_0.x);
    var var_2 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), var_0.a.x < 130f), true));
    return vec2<i32>(-(~((-12018i << (arg_0.x % 32u)) ^ u_input.b)), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.b)) ^ -func_1(vec2<u32>(u_input.a.x, 2384u))) | select(abs(select(-vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, -1i), vec2<bool>(true, true))), select(vec2<i32>(u_input.b, u_input.b) | _wgslsmith_sub_vec2_i32(vec2<i32>(-6606i, u_input.b), vec2<i32>(-53896i, -11961i)), -(~vec2<i32>(-8746i, u_input.b)), any(vec2<bool>(true, false)) || false), true);
    global0 = 36822u;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(abs(-1000f));
    global0 = u_input.a.x;
    let var_3 = u_input.a.wx;
    var var_4 = 24963u;
    global0 = var_3.x;
    global0 = u_input.a.x >> (firstTrailingBit(50674u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, var_3.x, ~u_input.a.x, 67858u), vec4<u32>(~var_3.x, ~4294967295u, _wgslsmith_clamp_u32(var_3.x, var_3.x, var_3.x), countOneBits(u_input.a.x))), u_input.a), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(-1i, -29672i, var_0.x)), firstLeadingBit(-55727i >> (1u % 32u)), var_0.x), 26339u, select(u_input.a.wwx, u_input.a.yxw, false), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))), vec2<f32>(_wgslsmith_f_op_f32(var_2 + -716f), _wgslsmith_f_op_f32(abs(886f))))));
}

