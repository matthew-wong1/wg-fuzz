struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-594f, -1182f), vec2<f32>(-912f, -1483f), vec2<f32>(409f, 1227f), vec2<f32>(1222f, -1134f), vec2<f32>(1000f, -1341f), vec2<f32>(385f, -1117f), vec2<f32>(645f, 244f), vec2<f32>(-1716f, 933f), vec2<f32>(657f, 1000f), vec2<f32>(-1464f, -981f), vec2<f32>(-1000f, 551f), vec2<f32>(991f, 1276f), vec2<f32>(-564f, -159f), vec2<f32>(-1382f, 464f), vec2<f32>(-205f, -1485f), vec2<f32>(-806f, 2212f), vec2<f32>(-1459f, 1478f), vec2<f32>(-908f, -741f), vec2<f32>(1099f, -581f), vec2<f32>(-580f, -932f), vec2<f32>(1000f, -1000f), vec2<f32>(-2721f, 1558f), vec2<f32>(2648f, -230f), vec2<f32>(-1164f, 1422f), vec2<f32>(-1469f, 2151f), vec2<f32>(-827f, 1299f));

var<private> global1: vec4<bool>;

var<private> global2: u32;

var<private> global3: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = select(select(!vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, any(select(global1.xx, global1.ww, global1.x)), !all(global1.xzx), false), vec4<bool>(true, !(false & global1.x), global1.x, select(true, global1.x, false) | true)), select(!(!select(vec4<bool>(global1.x, false, false, false), vec4<bool>(global1.x, false, global1.x, global1.x), true)), vec4<bool>(u_input.a >= max(u_input.a, u_input.a), !global1.x, any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)) || true, true), select(global1.x, !global1.x, global1.x)), select(select(!vec4<bool>(global1.x, true, false, true), !(!vec4<bool>(false, global1.x, false, true)), global1.x), vec4<bool>(global1.x, global1.x, false, true), select(!vec4<bool>(false, true, false, global1.x), !(!vec4<bool>(global1.x, true, true, false)), select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true), false))));
    global3 = all(var_0.yx);
    global2 = select(u_input.b.x, firstLeadingBit(_wgslsmith_add_u32(0u, ~select(4294967295u, 0u, global1.x))), false);
    global1 = var_0;
    global1 = var_0;
    return !(!vec4<bool>(true, true, false, any(select(global1.zy, var_0.yz, true))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_3(countOneBits(_wgslsmith_sub_u32(1u, 1u)));
    let var_1 = func_3();
    var var_2 = Struct_3(_wgslsmith_clamp_u32(select(_wgslsmith_mult_u32(min(2117u, 0u), 1u), 4294967295u, !global1.x), ~firstLeadingBit(5133u) | var_0.a, abs(var_0.a << (~u_input.b.x % 32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-582f, 1438f) + -1045f)), 154f, !var_1.x)) * -832f);
    let var_4 = Struct_2(arg_0, Struct_1(-(~(-1i)), arg_0.b, _wgslsmith_f_op_f32(-1526f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1473f)) - arg_1))));
    return var_4;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<f32>, 26>();
    var var_0 = 565f > _wgslsmith_f_op_f32(floor(1000f));
    let var_1 = Struct_3(u_input.b.x);
    global0 = array<vec2<f32>, 26>();
    var var_2 = func_2(Struct_1(1i, vec3<i32>(_wgslsmith_sub_i32(1i, 1i), -29855i, u_input.a >> (~var_1.a % 32u)), _wgslsmith_f_op_f32(step(-576f, _wgslsmith_f_op_f32(f32(-1f) * -1187f)))), -1050f);
    return func_2(func_2(var_2.a, _wgslsmith_f_op_f32(exp2(func_2(var_2.a, _wgslsmith_f_op_f32(var_2.b.c - var_2.b.c)).b.c))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b.c, -922f)) + -1232f)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 26>();
    let var_0 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-26856i, 34403i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, 2147483647i, -7059i)) | ~vec4<i32>(1570i, u_input.a, u_input.a, 62556i), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 15097i, 1i) << (u_input.b % vec4<u32>(32u)))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a))) << (abs(1u) % 32u)));
    global3 = true;
    let var_1 = 1000f;
    var var_2 = u_input.b.x;
    var var_3 = func_1();
    var var_4 = ~abs(u_input.b.x);
    var var_5 = Struct_3(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), u_input.b)));
    global2 = 91934u;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c + 1608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_3.c))))));
}

