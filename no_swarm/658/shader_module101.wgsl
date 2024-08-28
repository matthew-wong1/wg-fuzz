struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-947f, 622f, 618f);

var<private> global1: Struct_1 = Struct_1(1520f, true, vec2<i32>(1i, i32(-2147483648)), -1000f, -77662i);

var<private> global2: Struct_1 = Struct_1(1047f, false, vec2<i32>(i32(-2147483648), 1i), 1054f, -4911i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(global1.e, 0i);
    var var_1 = global2.b;
    global0 = vec3<f32>(-1512f, _wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(global1.a * -1832f));
    var var_2 = vec4<u32>(max(firstLeadingBit(_wgslsmith_sub_u32(74579u, 47424u | u_input.a.x)), 0u), ~56841u, 6656u, select(_wgslsmith_mod_u32(4294967295u, u_input.b), u_input.a.x, true));
    var_1 = _wgslsmith_sub_u32(var_2.x, _wgslsmith_mod_u32(u_input.c, ~1u)) == ((34604u & (~u_input.a.x ^ 1u)) ^ select(u_input.a.x, var_2.x | (0u >> (u_input.c % 32u)), any(select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, global2.b), global1.b))));
    return -1155f;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> Struct_3 {
    let var_0 = vec2<bool>((((i32(-1i) * -23290i) & _wgslsmith_dot_vec4_i32(vec4<i32>(6443i, global2.e, 0i, global1.e), vec4<i32>(global2.e, 1i, 6980i, global1.e))) ^ abs(-52046i << (arg_1 % 32u))) >= global1.c.x, u_input.a.x >= (u_input.a.x >> (45809u % 32u)));
    global1 = Struct_1(_wgslsmith_f_op_f32(func_3()), any(select(!select(vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(arg_2, global1.b, global1.b, true), var_0.x), !select(vec4<bool>(global1.b, false, global2.b, false), vec4<bool>(var_0.x, global1.b, var_0.x, false), vec4<bool>(arg_2, var_0.x, false, true)), !vec4<bool>(arg_2, var_0.x, arg_2, false))), -max(global1.c ^ max(vec2<i32>(79438i, global2.e), global1.c), vec2<i32>(-2147483647i, 1i) | _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global2.c.x), vec2<i32>(global2.c.x, 1041i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.d - global0.x))), -global2.e);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a), -1773f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-global1.d)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(round(-952f)), true, vec2<i32>(global1.e, global1.e), _wgslsmith_f_op_f32(f32(-1f) * -938f), countOneBits(firstLeadingBit(~min(1i, -48549i))));
    var var_1 = select(!vec3<bool>(arg_2, all(vec3<bool>(false, true, false)), true), vec3<bool>(true, true, all(vec4<bool>(false || global1.b, select(false, true, true), all(vec2<bool>(true, global1.b)), true))), var_0.x);
    return Struct_3(_wgslsmith_mult_vec4_u32(abs(select(_wgslsmith_div_vec4_u32(arg_0, u_input.a), abs(vec4<u32>(4294967295u, u_input.c, arg_0.x, u_input.a.x)), true)), u_input.a), Struct_2(!select(vec3<bool>(false, true, true), select(vec3<bool>(global1.b, false, false), vec3<bool>(var_0.x, var_0.x, true), global1.b), false), Struct_1(1471f, select(all(vec3<bool>(true, false, var_1.x)), any(vec4<bool>(true, false, var_1.x, false)), global1.b), min(select(global2.c, global2.c, vec2<bool>(false, false)), countOneBits(vec2<i32>(global2.e, -33668i))), 1325f, _wgslsmith_mult_i32(global2.c.x, ~global1.c.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(floor(592f))), any(select(select(vec2<bool>(false, global2.b), vec2<bool>(global2.b, arg_2), true), vec2<bool>(global2.b, global1.b), vec2<bool>(var_1.x, false))), vec2<i32>(global2.c.x, ~select(0i, -1i, true)), global2.a, global1.e << (38323u % 32u)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    return func_2(u_input.a ^ (vec4<u32>(u_input.b, 94009u, _wgslsmith_clamp_u32(u_input.c, 4294967295u, 4294967295u), firstLeadingBit(39430u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 463u, u_input.a.x, u_input.b), vec4<u32>(u_input.b, u_input.b, 25584u, u_input.b))), 0u, true && global1.b);
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = 1u;
    let var_1 = arg_0.b.b.c;
    let var_2 = -2147483647i;
    let var_3 = arg_0;
    var var_4 = arg_0.a;
    return ~var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.a.x << (~(~u_input.b) % 32u), ~_wgslsmith_mod_u32(1u, ~(~4294967295u)));
    let var_1 = global2.b;
    let var_2 = _wgslsmith_sub_i32(global1.e >> (func_4(func_1(_wgslsmith_f_op_f32(global0.x * -1507f))) % 32u), global1.c.x);
    var_0 = u_input.a.zw;
    var var_3 = func_1(_wgslsmith_f_op_f32(round(-997f)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1554f, -213f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-201f, global0.x, false)) * _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) - _wgslsmith_f_op_f32(floor(-610f))))));
    let var_5 = !select(var_3.b.a, func_2(vec4<u32>(var_0.x, ~45253u, var_3.a.x, _wgslsmith_add_u32(var_0.x, 99176u)), ~17236u, all(!vec4<bool>(true, global1.b, var_3.c.b, global1.b))).b.a, global1.a > global2.a);
    let var_6 = func_1(global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f + var_6.b.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f - var_3.b.b.d) * _wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_f_op_f32(max(246f, -1117f)));
}

