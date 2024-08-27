struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(0u, 21943u, false, vec4<u32>(0u, 1u, 1694u, 4294967295u), 1300f), Struct_1(0u, 0u, false, vec4<u32>(92572u, 9069u, 1u, 1u), -1019f), Struct_1(25454u, 13642u, true, vec4<u32>(1u, 38680u, 1u, 0u), -1000f), Struct_1(1u, 44512u, true, vec4<u32>(0u, 15900u, 4294967295u, 0u), 214f), Struct_1(31710u, 4294967295u, true, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), 318f), Struct_1(0u, 4294967295u, true, vec4<u32>(0u, 4294967295u, 79741u, 43787u), 1177f), Struct_1(27280u, 0u, false, vec4<u32>(43108u, 1u, 0u, 26320u), -687f), Struct_1(1u, 1903u, true, vec4<u32>(0u, 15842u, 1u, 129342u), 949f), Struct_1(15150u, 0u, true, vec4<u32>(0u, 1u, 2530u, 1u), 967f), Struct_1(40617u, 1u, false, vec4<u32>(4294967295u, 1u, 45524u, 53957u), -1929f), Struct_1(0u, 24791u, true, vec4<u32>(30960u, 8361u, 4294967295u, 1u), 435f), Struct_1(0u, 47670u, false, vec4<u32>(29753u, 8835u, 0u, 26572u), -716f), Struct_1(66051u, 44117u, false, vec4<u32>(26480u, 4294967295u, 4294967295u, 0u), 450f), Struct_1(4294967295u, 1u, true, vec4<u32>(1u, 4294967295u, 28495u, 4294967295u), -1397f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = reverseBits(u_input.d.yy);
    global2 = array<Struct_1, 14>();
    return global2[_wgslsmith_index_u32(firstLeadingBit(26033u), 14u)];
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(arg_3.a, abs(~arg_3.a), true, _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.d.x, 73950u >> (_wgslsmith_sub_u32(0u, arg_3.d.x) % 32u), ~_wgslsmith_mult_u32(14749u, u_input.b), _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1.d.x, 48171u, 14710u, 0u), arg_3.d), min(vec4<u32>(arg_3.b, 4294967295u, 136585u, 1u), arg_3.d))), reverseBits(abs(select(arg_1.d, arg_3.d, true)))), _wgslsmith_f_op_f32(f32(-1f) * -445f));
    var_0 = func_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1874f - 517f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1446f)), _wgslsmith_f_op_f32(922f + arg_1.e), _wgslsmith_f_op_f32(361f + var_0.e), -1000f)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.a, 3774u, 4294967295u) & vec3<u32>(arg_1.b, arg_3.b << (arg_3.d.x % 32u), 65713u), ~var_0.d.wzz), ~(~arg_3.a));
    global2 = array<Struct_1, 14>();
    var var_1 = arg_2;
    return true;
}

fn func_2() -> u32 {
    var var_0 = firstLeadingBit(-27001i);
    var var_1 = vec3<bool>(any(vec3<bool>(true, true, true)), true, func_3(vec4<i32>(-13430i, abs(~(-2147483647i)), ~(~1i), -2147483647i), global2[_wgslsmith_index_u32(23647u, 14u)], true && select(false, any(vec3<bool>(false, false, true)), true), Struct_1(11726u, 18560u, true, vec4<u32>(~63912u, ~0u, _wgslsmith_add_u32(4294967295u, u_input.d.x), abs(19819u)), -312f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1139f - _wgslsmith_f_op_f32(-215f - 267f)), -1470f, _wgslsmith_f_op_f32(f32(-1f) * -109f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, 1139f, 1000f, 2422f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1207f, 304f, 1465f, 1289f) - vec4<f32>(-484f, -756f, -253f, 2768f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-143f, 372f, -371f, -672f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(2437f - -200f)), -2760f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(932f)), _wgslsmith_f_op_f32(-995f - -1119f))) + vec4<f32>(1f, 1f, 1f, 1f)));
    var_0 = select(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-28292i, -1i)), vec2<i32>(1i, 1i)) & -18776i, 3816i), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(982i, -2147483647i, 0i), -vec3<i32>(-1i, 0i, -2147483647i))), true);
    global2 = array<Struct_1, 14>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 14>();
    let var_0 = min(u_input.c.xz, ~u_input.c.yz >> (~firstLeadingBit(abs(u_input.c.yz)) % vec2<u32>(32u)));
    let var_1 = 2147483647i;
    global1 = array<Struct_1, 3>();
    var var_2 = func_1(-612f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(685f)), _wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(-538f * -1521f), -608f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1166f, -1330f, 154f, 1185f)), vec4<f32>(880f, 219f, 318f, 430f), any(vec3<bool>(true, false, false)))))), 268u, _wgslsmith_div_u32(~0u, 29622u));
    let x = u_input.a;
    s_output = StorageBuffer(func_2() << (var_0.x % 32u), var_2.e, var_2.e, var_1);
}

