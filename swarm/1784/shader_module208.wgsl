struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<i32, 22>;

var<private> global2: array<vec2<i32>, 25>;

var<private> global3: array<bool, 4> = array<bool, 4>(false, false, true, true);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> bool {
    var var_0 = ~vec3<u32>(~u_input.d.x, ~u_input.a, _wgslsmith_div_u32(11278u, reverseBits(64687u >> (u_input.c % 32u))));
    global2 = array<vec2<i32>, 25>();
    var var_1 = reverseBits(_wgslsmith_mult_i32(-17383i, ~arg_1));
    return true;
}

fn func_2(arg_0: u32) -> vec2<u32> {
    let var_0 = func_3(!(!vec3<bool>(global0[_wgslsmith_index_u32(~u_input.c, 25u)], global0[_wgslsmith_index_u32(8957u, 25u)], true)), 0i);
    global0 = array<bool, 25>();
    let var_1 = Struct_1(reverseBits(vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(arg_0, 22u)]), global1[_wgslsmith_index_u32(firstLeadingBit(abs(12729u)), 22u)], _wgslsmith_dot_vec2_i32(max(u_input.b, u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(arg_0, 22u)], u_input.b.x) | vec2<i32>(-15809i, -38561i)))), u_input.d >> (u_input.d % vec2<u32>(32u)));
    let var_2 = var_1;
    var var_3 = Struct_1(var_2.a, var_2.b);
    return vec2<u32>(var_3.b.x, ~(~_wgslsmith_sub_u32(var_2.b.x, 24926u)));
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(abs(u_input.e), -20428i), 12774i, -global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), _wgslsmith_div_vec2_u32(~firstLeadingBit(func_2(u_input.a)), vec2<u32>(1u, u_input.a)));
    global3 = array<bool, 4>();
    global1 = array<i32, 22>();
    global3 = array<bool, 4>();
    let var_1 = vec3<bool>(!(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.x, u_input.a), 22u)] < -2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_sub_u32(4294967295u, u_input.d.x)), 25u)], true);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, 938f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1927f, 1765f), vec2<f32>(-272f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1004f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(647f - 1000f) + 706f)), -1123f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1374f, 303f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -832f))))), vec2<f32>(-247f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1670f - 802f), -1052f))));
    var var_1 = !(!select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(83990u, 25u)], true)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(u_input.d.x, 4u)], global3[_wgslsmith_index_u32(18446u, 4u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 4u)], global3[_wgslsmith_index_u32(3746u, 4u)]), !vec3<bool>(global3[_wgslsmith_index_u32(31205u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], false)), ~1u > countOneBits(u_input.c)));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(0i, u_input.e, -102i)), vec3<i32>(~abs(global1[_wgslsmith_index_u32(0u, 22u)]), ~(-24864i & u_input.e), _wgslsmith_add_i32(30698i, _wgslsmith_sub_i32(-23561i, global1[_wgslsmith_index_u32(u_input.a, 22u)])))), ~vec2<u32>(u_input.c, max(_wgslsmith_sub_u32(u_input.a, 20523u), firstTrailingBit(u_input.c))));
    var var_3 = Struct_1(vec3<i32>(-_wgslsmith_dot_vec3_i32(var_2.a, _wgslsmith_clamp_vec3_i32(var_2.a, vec3<i32>(u_input.b.x, 2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 22u)]), var_2.a)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, -2147483647i, var_2.a.x, var_2.a.x), vec4<i32>(global1[_wgslsmith_index_u32(var_2.b.x, 22u)], 1i, global1[_wgslsmith_index_u32(u_input.c, 22u)], -21480i))), var_2.a.x), var_2.b);
    var var_4 = vec4<bool>(var_1.x, !(!all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], true, global3[_wgslsmith_index_u32(var_3.b.x, 4u)]))), true, all(vec4<bool>(all(var_1.zx), var_1.x, true | !var_1.x, !all(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.b.x, _wgslsmith_mod_u32(abs(var_2.b.x), ~33722u)) >> (_wgslsmith_sub_vec2_u32(firstTrailingBit(func_2(101994u)), _wgslsmith_sub_vec2_u32(vec2<u32>(2342u, var_3.b.x), abs(var_3.b))) % vec2<u32>(32u)), firstTrailingBit(-2147483647i));
}

