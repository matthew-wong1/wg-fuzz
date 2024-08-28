struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: array<f32, 23>;

var<private> global2: i32 = -1177i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, global1[_wgslsmith_index_u32(arg_1.a, 23u)]), global1[_wgslsmith_index_u32(var_1.a ^ var_1.a, 23u)])))));
    let var_3 = var_1;
    let var_4 = 1404f;
    return ~abs(firstLeadingBit(vec4<u32>(countOneBits(83346u), ~4294967295u, _wgslsmith_div_u32(15324u, var_3.a), _wgslsmith_clamp_u32(1u, arg_1.a, var_1.a))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    global0 = array<vec2<u32>, 26>();
    global2 = u_input.b.x;
    let var_0 = arg_2;
    return min(vec2<u32>(func_1(select(0u != var_0.a, true, 20115u == arg_0), arg_2, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(501f, 1180f, global1[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1178f, 1186f, 836f))), any(vec4<bool>(false, true, true, false))))).x, abs(arg_0 & arg_0) >> (arg_2.a % 32u)), abs(global0[_wgslsmith_index_u32(0u, 26u)]));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 26>();
    global0 = array<vec2<u32>, 26>();
    let var_0 = ~_wgslsmith_mult_vec2_u32(firstLeadingBit(~func_3(4294967295u, u_input.a, Struct_1(u_input.a))), ~(~firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 26u)])));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 26u)], vec2<u32>(u_input.a, u_input.a))), max(_wgslsmith_div_u32(4294967295u, 15118u), var_0.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_0), 1u), ~(select(vec4<u32>(3453u, u_input.a, u_input.a, 0u), vec4<u32>(1u, 26309u, 1u, u_input.a), vec4<bool>(true, false, true, true)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 32863u, 54838u, u_input.a), vec4<u32>(4294967295u, 0u, 29460u, 7661u)))));
    var var_2 = -792f;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 26>();
    var var_0 = false;
    var var_1 = 89134i;
    var_1 = -2147483647i;
    global0 = array<vec2<u32>, 26>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global1[_wgslsmith_index_u32(u_input.a, 23u)])) + 693f));
    let var_3 = _wgslsmith_dot_vec3_i32(~u_input.b >> (vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 25806u) << (~u_input.a % 32u), u_input.a & u_input.a) % vec3<u32>(32u)), u_input.b);
    var_0 = !(any(vec4<bool>(any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, false, false)), u_input.a == u_input.a, true)) | true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, 34504u | firstTrailingBit(0u)), 74775u), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~(~4294967295u) >> (u_input.a % 32u), 23u)], 679f), _wgslsmith_mult_vec4_u32(~(vec4<u32>(75589u, u_input.a, 46543u, u_input.a) & vec4<u32>(u_input.a, 27091u, u_input.a, 31717u)), func_1(true, Struct_1(45u), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, 106f, 1310f), vec3<f32>(1409f, var_2, -1103f)))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(~50585u, u_input.a << (u_input.a % 32u), 0u, 1u), ~(~vec4<u32>(75596u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), ~firstLeadingBit(vec4<i32>(var_3, min(var_3, -45242i), _wgslsmith_div_i32(0i, u_input.b.x), -2147483647i)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(func_1(-2147483647i > u_input.b.x, func_2(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 1226f, var_2), vec3<f32>(var_2, global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(false, false, true)))), vec4<u32>(u_input.a, u_input.a, 8313u, u_input.a) << (~vec4<u32>(0u, 65197u, 14898u, 4294967295u) % vec4<u32>(32u))), vec4<u32>(func_3(u_input.a, u_input.a, Struct_1(u_input.a)).x << (_wgslsmith_sub_u32(8649u, 0u) % 32u), firstLeadingBit(1u & u_input.a), 4294967295u, u_input.a), vec4<u32>(func_1(true, Struct_1(u_input.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(748f, 820f, -865f), vec3<f32>(var_2, 299f, -663f)))).x, u_input.a, func_3(u_input.a, 4294967295u, func_2()).x, u_input.a)));
}

