struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 13>;

var<private> global2: vec3<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(0u, 13u)], -977f, global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(43521u, 13u)])))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1264f, -1000f, -1000f, -411f)))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(356f, global1[_wgslsmith_index_u32(0u, 13u)])), _wgslsmith_div_f32(-286f, 1251f), _wgslsmith_f_op_f32(select(1166f, 1649f, global2.x)), _wgslsmith_f_op_f32(-144f - global1[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(40027u, 13u)], 1455f, global1[_wgslsmith_index_u32(54874u, 13u)], global1[_wgslsmith_index_u32(u_input.c, 13u)])), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(69498u, 13u)] == global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 385f < global1[_wgslsmith_index_u32(1u, 13u)], !global2.x))))));
    let var_1 = ~min(_wgslsmith_div_vec2_u32(~abs(vec2<u32>(u_input.b, 13947u)), ~u_input.a.xw), vec2<u32>(1u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
    global0 = 4294967295u;
    global1 = array<f32, 13>();
    var var_2 = u_input.a.x >> (~u_input.c % 32u);
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    let var_0 = u_input.a.yz;
    let var_1 = true;
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(14641u, 13u)])), 177f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(490f))))), _wgslsmith_f_op_vec3_f32(-arg_1), vec3<bool>(global2.x, var_1, any(vec3<bool>(global2.x, false, var_1))))), vec2<f32>(arg_1.x, 480f), !(!select(select(vec4<bool>(var_1, false, global2.x, true), vec4<bool>(true, false, true, global2.x), global2.x), vec4<bool>(var_1, var_1, global2.x, global2.x), select(vec4<bool>(false, false, false, global2.x), vec4<bool>(var_1, true, var_1, true), vec4<bool>(global2.x, true, false, var_1)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(~1u, ~var_0.x)));
    global2 = var_2.d.yyy;
    var var_3 = max(42595u, _wgslsmith_sub_u32(5249u | var_0.x, 0u)) | _wgslsmith_add_u32(~(1997u & u_input.b), ~func_3());
    return -1i;
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_2(-1i, -1906f, vec4<i32>(arg_0.x, 0i, func_2(26421u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1477f, -1222f, -205f))) << (~(~u_input.c) % 32u), arg_0.x));
    var var_1 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(508f)))))));
    global0 = abs(53657u);
    var var_2 = 1u;
    let var_3 = Struct_3(vec2<i32>(~12281i, func_2(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_f_op_f32(665f - global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), global1[_wgslsmith_index_u32(~0u, 13u)]))));
    return !select(vec4<bool>(false, !(global2.x & true), false, global2.x), select(vec4<bool>(true, true, global2.x, true), vec4<bool>(-124f != global1[_wgslsmith_index_u32(4353u, 13u)], -9905i < var_0.c.x, var_0.a >= 0i, global2.x | global2.x), select(vec4<bool>(global2.x, global2.x, false, false), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(true, false, false, true), global2.x), vec4<bool>(global2.x, true, global2.x, false))), any(!(!global2.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(select(any(func_1(vec2<i32>(1i, 1i))), !global2.x, u_input.b == 5635u), false, all(vec4<bool>(abs(45109u) == ~u_input.c, !(27313u < u_input.c), global2.x || (global2.x | global2.x), true)), true);
    let var_1 = any(select(select(vec4<bool>(true, !var_0.x, false, select(true, global2.x, true)), !(!vec4<bool>(false, false, true, var_0.x)), false), select(vec4<bool>(var_0.x, true, true, true), select(!vec4<bool>(var_0.x, false, global2.x, var_0.x), func_1(vec2<i32>(2147483647i, 26427i)), select(global2.x, true, false)), true), true));
    global0 = ~min(~(~(~u_input.a.x)), _wgslsmith_sub_u32(19105u, ~(1991u | u_input.c)));
    let var_2 = true;
    let var_3 = select(-_wgslsmith_div_i32(i32(-1i) * -1i, 12159i), -2147483647i, false) ^ abs(-25249i);
    let var_4 = ~((u_input.b >> (countOneBits(27007u) % 32u)) >> (_wgslsmith_dot_vec3_u32(select(~u_input.a.xxw, ~vec3<u32>(u_input.c, 1u, u_input.c), !var_0.yyy), firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.a.xyw, u_input.a.ywx))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, ~_wgslsmith_div_i32(min(-2147483647i, var_3), -31779i), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_3, -var_3), _wgslsmith_mult_i32(abs(22214i), min(-1i, 2147483647i)))));
}

