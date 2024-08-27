struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<u32, 21> = array<u32, 21>(4294967295u, 40952u, 0u, 0u, 0u, 0u, 0u, 1u, 2391u, 4294967295u, 61312u, 4294967295u, 4294967295u, 15634u, 23771u, 4294967295u, 1u, 0u, 4504u, 0u, 56873u);

var<private> global2: u32;

var<private> global3: array<u32, 21>;

var<private> global4: vec3<f32> = vec3<f32>(672f, -2291f, -121f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) * _wgslsmith_f_op_vec4_f32(arg_2 + vec4<f32>(-2061f, -545f, global4.x, 788f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2)))), !any(select(!arg_1.zx, !vec2<bool>(arg_1.x, arg_1.x), any(vec3<bool>(false, arg_1.x, true))))));
    global1 = array<u32, 21>();
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~countOneBits(_wgslsmith_mult_u32(select(global1[_wgslsmith_index_u32(1u, 21u)], 15964u, true), global1[_wgslsmith_index_u32(15168u << (1u % 32u), 21u)]))), 21u)];
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1115f))), -1061f, _wgslsmith_f_op_f32(-233f + _wgslsmith_f_op_f32(max(768f, _wgslsmith_f_op_f32(trunc(var_0.x)))))), arg_1.xz, _wgslsmith_add_i32(u_input.b, ~u_input.a.x));
    let var_2 = ~(~vec4<u32>(1u, select(~1u, arg_0, var_1.b.x & arg_1.x), ~(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)]), 1u));
    return false;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = select(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), vec3<bool>(select(func_3(firstLeadingBit(22940u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -475f, 1000f, 2443f) + vec4<f32>(global4.x, arg_2.x, -480f, -240f))), true, false), all(vec4<bool>(true, true, true, true)), !(_wgslsmith_dot_vec3_u32(vec3<u32>(26675u, 0u, global1[_wgslsmith_index_u32(arg_1.x, 21u)]), vec3<u32>(0u, arg_1.x, 4294967295u)) == 8575u)), vec3<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), true, true));
    global1 = array<u32, 21>();
    var var_1 = _wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(u_input.b, u_input.a.x)));
    global0 = array<f32, 23>();
    let var_2 = Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(-741f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f + arg_2.x)))), select(vec2<bool>(all(!vec3<bool>(false, var_0.x, var_0.x)), func_3(arg_1.x, vec4<bool>(true, var_0.x, var_0.x, false), vec4<f32>(global4.x, arg_2.x, 972f, global4.x))), !var_0.yy, true), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x | -2147483647i, u_input.b, u_input.a.x), u_input.a), vec3<i32>(countOneBits(u_input.b & -26706i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 0i, u_input.b), vec4<i32>(48384i, 0i, -43022i, u_input.b)), ~vec4<i32>(0i, u_input.b, -1i, 1i)), i32(-1i) * -u_input.b)));
    return Struct_2(arg_0);
}

fn func_1() -> f32 {
    global0 = array<f32, 23>();
    let var_0 = -436f;
    global1 = array<u32, 21>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1766f));
    let var_2 = func_2(~vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 4294967295u, 43500u, 1u)), ~vec4<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(93263u, 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2293u, 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(95635u, 21u)])), ~(global1[_wgslsmith_index_u32(1445u, 21u)] << (1u % 32u))), ~vec3<u32>(global3[_wgslsmith_index_u32(~1377u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~27710u, 21u)], ~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.x, -915f), _wgslsmith_f_op_vec2_f32(select(global4.xy, global4.zy, vec2<bool>(true, false)))))));
    return var_0;
}

fn func_4(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_vec2_i32(-(~vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 0i))), countOneBits(-u_input.a.xy));
    var var_1 = Struct_2(func_2(vec2<u32>(global3[_wgslsmith_index_u32(36434u, 21u)], 56734u) | ~vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(9264u, 21u)], 120610u, 4294967295u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.zz)))).a & reverseBits(~(~vec2<u32>(global3[_wgslsmith_index_u32(61782u, 21u)], global3[_wgslsmith_index_u32(29536u, 21u)]))));
    let var_2 = Struct_1(arg_0, select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), vec2<bool>(func_3(var_1.a.x, vec4<bool>(true, true, false, true), vec4<f32>(-1000f, global4.x, global0[_wgslsmith_index_u32(74213u, 23u)], 245f)), true)), vec2<bool>(true, true)), 2147483647i);
    let var_3 = Struct_1(var_2.a, var_2.b, var_0.x);
    var_1 = Struct_2(vec2<u32>(~1u, 4294967295u >> (global3[_wgslsmith_index_u32(0u, 21u)] % 32u)));
    return StorageBuffer(var_3.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 21>();
    let x = u_input.a;
    s_output = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(func_1())) * -1718f), 1030f, _wgslsmith_div_f32(-596f, global4.x)));
}

