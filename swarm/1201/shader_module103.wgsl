struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(10942i, -43834i), vec2<i32>(45208i, -16294i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(72059i, -18537i), vec2<i32>(-16462i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-11807i, 0i), vec2<i32>(-38541i, -20374i), vec2<i32>(i32(-2147483648), -2089i), vec2<i32>(2147483647i, 26583i));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true), vec2<f32>(-277f, -1218f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> vec2<bool> {
    global1 = Struct_1(global1.b.xz, !vec3<bool>(!global1.b.x, all(global1.b.zx), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(317f, _wgslsmith_f_op_f32(max(global1.c.x, global1.c.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.c), vec2<f32>(global1.c.x, 149f), true)))));
    return !(!global1.a);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = vec4<u32>(~0u, ~firstTrailingBit(_wgslsmith_div_u32(~9508u, max(u_input.a.x, 1u))), ~(~(~u_input.a.x)) & ~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~24408u), 1u);
    global0 = array<vec2<i32>, 10>();
    let var_1 = global1.b;
    var var_2 = Struct_4(arg_0.c, Struct_3(Struct_1(!func_2(2147483647i, vec2<u32>(4294967295u, 13316u)), vec3<bool>(func_2(-19022i, vec2<u32>(var_0.x, 4294967295u)).x, true, false), global1.c), _wgslsmith_add_i32(firstLeadingBit(min(u_input.b, -4563i)), _wgslsmith_mult_i32(abs(u_input.c.x), u_input.b)), 1i), arg_0, var_1.yx);
    let var_3 = var_2.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-930f, _wgslsmith_f_op_f32(-221f + var_3.a.c.x))) * global1.c.x)) <= 1143f;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<i32>, 10>();
    global1 = Struct_1(func_2(-36645i, _wgslsmith_sub_vec2_u32(~(~u_input.a.zy), u_input.a.xx)), vec3<bool>(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, global1.c.x, global1.c.x, -1124f)), Struct_1(global1.b.zx, global1.b, vec2<f32>(-1740f, -1761f)), Struct_1(vec2<bool>(global1.b.x, global1.b.x), vec3<bool>(true, global1.a.x, true), global1.c), false, select(global1.b, vec3<bool>(global1.a.x, true, false), false))), all(select(select(vec4<bool>(true, global1.a.x, false, global1.b.x), vec4<bool>(global1.b.x, true, global1.a.x, global1.b.x), false), vec4<bool>(global1.b.x, global1.b.x, true, false), all(global1.b.yz))), true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-245f - 411f), _wgslsmith_f_op_f32(global1.c.x - -813f))))));
    var var_0 = 2147483647i;
    let var_1 = true;
    global0 = array<vec2<i32>, 10>();
    return Struct_1(select(func_2(_wgslsmith_dot_vec2_i32(-global0[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_mult_vec2_i32(vec2<i32>(-23524i, u_input.c.x), global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), ~(~u_input.a.xx)), !select(!vec2<bool>(global1.b.x, false), !vec2<bool>(global1.b.x, global1.a.x), !var_1), !(false && (4294967295u == u_input.a.x))), !vec3<bool>(false, all(vec4<bool>(global1.b.x, false, false, false)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.x;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(max(var_1.c.x, -955f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(trunc(global1.c.x))))));
    global0 = array<vec2<i32>, 10>();
    let var_3 = Struct_3(var_1, 35112i, _wgslsmith_mult_i32(u_input.c.x, 2147483647i << (_wgslsmith_mult_u32(~u_input.a.x, firstTrailingBit(65888u)) % 32u)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.a.c.x, -752f, -117f, -179f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, var_1.c.x, global1.c.x, global1.c.x) + vec4<f32>(var_2.x, var_2.x, 1146f, 695f)) - _wgslsmith_div_vec4_f32(vec4<f32>(2370f, -1496f, 134f, var_1.c.x), vec4<f32>(var_3.a.c.x, global1.c.x, global1.c.x, -231f))), !select(vec4<bool>(true, false, true, var_1.a.x), vec4<bool>(false, true, true, var_3.a.a.x), vec4<bool>(var_3.a.b.x, true, false, false)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, var_2.x, global1.c.x))), func_1(), var_3.a, var_1.a.x, vec3<bool>(!(var_3.a.b.x | global1.b.x), !all(vec4<bool>(true, false, var_1.b.x, global1.a.x)), all(!vec4<bool>(true, false, true, global1.a.x))));
    var_4 = Struct_2(vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(var_2.x + -249f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-103f - _wgslsmith_f_op_f32(select(1000f, var_3.a.c.x, false))))), var_1.c.x), var_1, Struct_1(var_4.e.zz, var_1.b, _wgslsmith_f_op_vec2_f32(func_1().c - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(704f, -894f), var_3.a.c, var_3.a.b.zy)), var_1.c, global1.a.x && false)))), firstTrailingBit(_wgslsmith_clamp_i32(-27774i, _wgslsmith_dot_vec4_i32(vec4<i32>(-11699i, 5554i, var_3.b, u_input.c.x), vec4<i32>(u_input.b, u_input.c.x, var_3.b, -1i)), ~7948i)) != ~(-1i), select(vec3<bool>(var_1.a.x, func_2(-2147483647i, u_input.a.xz).x, all(var_3.a.b)), !var_3.a.b, func_1().b));
    var var_5 = Struct_4(var_1, var_3, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.a) * _wgslsmith_f_op_vec4_f32(var_4.a + var_4.a)), func_1(), var_4.b, true, vec3<bool>(948f <= var_1.c.x, false, true)), vec2<bool>(!(!(u_input.c.x <= var_3.b)), all(!select(vec4<bool>(var_4.d, true, var_1.b.x, true), vec4<bool>(true, var_4.d, true, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.c.x, vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, var_3.c, -21251i, -26624i)), countOneBits(vec4<i32>(-2147483647i, -2147483647i, var_3.b, -29177i))), ~(~u_input.a.x));
}

