struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2270i;

var<private> global1: array<Struct_3, 7>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = Struct_2(countOneBits(~(~25348u)) ^ (_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(97692u, 0u, 0u)), ~vec3<u32>(u_input.c.x, 17005u, 17792u)) | 0u));
    let var_1 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-713f, 1000f, 185f, 1011f) - vec4<f32>(-2378f, -144f, -1254f, 276f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(337f, -138f, -1000f, -424f))))))), all(vec4<bool>(false, !(u_input.a >= -49443i), var_0.a < 20171u, !all(vec4<bool>(false, true, true, false)))));
    var var_2 = var_1.c;
    var var_3 = var_1.c;
    let var_4 = global1[_wgslsmith_index_u32(1u, 7u)];
    return (_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, 2147483647i) | vec3<i32>(-1i, 1i, -30090i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 7443i, u_input.e), vec3<i32>(49838i, 1i, -1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.e))), select(_wgslsmith_mod_i32(-22433i, 41023i), i32(-1i) * -36921i, false)) << ((max(53741u, var_1.a) & var_1.a) % 32u)) < u_input.a;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = arg_0;
    var var_1 = select(func_3(), all(select(vec4<bool>(true, all(vec3<bool>(false, true, true)), all(vec2<bool>(false, false)), false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))))), false);
    var_1 = true;
    var var_2 = -511f;
    global1 = array<Struct_3, 7>();
    return vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -151f)) - _wgslsmith_f_op_f32(round(-1461f))))), -333f, _wgslsmith_f_op_f32(-arg_0));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = Struct_3(Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-1377f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-464f, 1000f, -734f, -949f) + vec4<f32>(-1000f, -799f, -388f, -1540f)))), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.e, u_input.a, u_input.e)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.e, u_input.e), vec3<i32>(1i, -11073i, -25626i))) > u_input.e));
    var_0 = Struct_3(var_0.a);
    var var_1 = Struct_1(~28807u, _wgslsmith_div_vec4_f32(var_0.a.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, 897f, var_0.a.b.x, var_0.a.b.x) - var_0.a.b) + _wgslsmith_f_op_vec4_f32(-var_0.a.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, var_0.a.b.x, 954f, var_0.a.b.x)), var_0.a.b, select(vec4<bool>(true, var_0.a.c, var_0.a.c, true), vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c), vec4<bool>(false, false, var_0.a.c, var_0.a.c)))))), (var_0.a.c & ((arg_0 <= 8116u) | all(vec3<bool>(var_0.a.c, false, var_0.a.c)))) & false);
    var_1 = Struct_1(_wgslsmith_mult_u32(var_0.a.a, 4294967295u), var_0.a.b, (_wgslsmith_f_op_f32(-var_0.a.b.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))) | !all(vec2<bool>(var_0.a.c, false)));
    let var_2 = var_0.a;
    return select(-41010i, i32(-1i) * -2147483647i, !(!(!select(var_2.c, var_1.c, var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 7>();
    var var_0 = _wgslsmith_mod_i32(0i, 2147483647i & firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.e, -1i), -u_input.a)));
    global0 = 1i | u_input.a;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(func_1(~38069u), -1i), ((-1i ^ _wgslsmith_add_i32(u_input.a, u_input.e)) | 0i) ^ ~firstLeadingBit(_wgslsmith_sub_i32(u_input.e, -1i)), _wgslsmith_div_i32(u_input.a, -18129i), 2147483647i);
    var_0 = ~(_wgslsmith_sub_i32(u_input.e, -2147483647i) ^ (u_input.e ^ _wgslsmith_clamp_i32(var_1.x, 1i, _wgslsmith_mod_i32(u_input.a, u_input.a))));
    global0 = ~reverseBits(-1i);
    let var_2 = Struct_2(0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, firstTrailingBit(4294967295u) << (~abs(24664u) % 32u)));
}

