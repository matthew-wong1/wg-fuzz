struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(1u, 11856u, 0u), vec3<u32>(53264u, 4294967295u, 171450u), vec3<u32>(1u, 15320u, 4294967295u), vec3<u32>(1u, 15852u, 36923u), vec3<u32>(13860u, 108680u, 17930u), vec3<u32>(47269u, 0u, 12016u), vec3<u32>(4294967295u, 16263u, 84193u), vec3<u32>(29077u, 32360u, 1u), vec3<u32>(1u, 66829u, 7723u), vec3<u32>(54887u, 33315u, 4294967295u), vec3<u32>(40938u, 44147u, 1u), vec3<u32>(22954u, 36793u, 80244u), vec3<u32>(4294967295u, 48787u, 17492u), vec3<u32>(24307u, 35723u, 68290u), vec3<u32>(38824u, 105712u, 79621u), vec3<u32>(7125u, 0u, 7405u), vec3<u32>(1u, 63359u, 11433u), vec3<u32>(19217u, 19798u, 37346u), vec3<u32>(22013u, 44503u, 0u), vec3<u32>(1u, 0u, 35627u), vec3<u32>(1u, 5880u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(38871u, 4294967295u, 0u), vec3<u32>(25773u, 0u, 0u), vec3<u32>(0u, 43081u, 888u), vec3<u32>(23581u, 0u, 1u), vec3<u32>(0u, 1u, 67454u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> bool {
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    var var_0 = true;
    global0 = array<vec3<u32>, 27>();
    return true;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, -535f, arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(-717f - arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1), -872f, 319f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(255f, arg_1, 1272f, -1025f) * vec4<f32>(arg_1, -735f, -211f, arg_1))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1), var_0.x, ~(~vec3<u32>(4294967295u, _wgslsmith_sub_u32(1807u, 1u), 0u)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true))), -vec2<i32>(6543i, _wgslsmith_sub_i32(arg_2, arg_2)));
    let var_2 = 386f >= _wgslsmith_f_op_f32(select(-1023f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), var_1.d.x));
    var var_3 = !(_wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(-532f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 662f) - _wgslsmith_f_op_f32(round(143f)))));
    let var_4 = -2147483647i;
    return 445f;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_i32(~(-select(1i, -1i, true)), -2147483647i);
    return Struct_1(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1072f)))))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) >> (select(u_input.a, u_input.a, false) % 32u), min(0u, u_input.b.x)), _wgslsmith_sub_u32(u_input.a, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 1u, 18182u)))), u_input.b.x), !vec3<bool>(-522f > _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], -149f, var_0)), false, any(vec2<bool>(true, true))), -_wgslsmith_mod_vec2_i32(abs(max(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0))), ~min(vec2<i32>(var_0, -2147483647i), vec2<i32>(12980i, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 27>();
    let var_0 = !all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), func_1(_wgslsmith_f_op_f32(f32(-1f) * -259f), select(vec4<i32>(-8564i, 1i, -9397i, 0i), vec4<i32>(646i, 0i, -47122i, -1i), true))));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1284f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(1181f, -1328f), vec2<f32>(-237f, -1000f)))))));
    let var_2 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(firstTrailingBit(countOneBits(vec3<u32>(4294967295u, u_input.b.x, var_1.c.x))), u_input.b << ((vec3<u32>(0u, var_1.c.x, 0u) & vec3<u32>(4294967295u, 26u, 43403u)) % vec3<u32>(32u))), ~func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1302f, var_1.a), vec2<f32>(312f, var_1.b), true)))).c);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), -134f, _wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_1.b, var_1.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b, var_1.a)))))));
    var_3 = vec4<f32>(-315f, 1263f, -234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, -889f)))));
    var var_4 = ~select(_wgslsmith_sub_i32(1i >> (~var_1.c.x % 32u), ~var_1.e.x), firstLeadingBit(func_2(var_3.xy).e.x >> (~1u % 32u)), true);
    var var_5 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1865f, 1157f, false)), var_1.b), 1214f)));
    global0 = array<vec3<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(14453u, vec3<i32>(var_5.e.x ^ var_5.e.x, ~min(var_1.e.x, _wgslsmith_div_i32(var_1.e.x, var_1.e.x)), var_1.e.x), abs(~167121u), _wgslsmith_f_op_f32(var_1.b - var_3.x));
}

