struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 30>;

var<private> global2: f32;

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    return Struct_2(vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_add_u32(arg_1.x << (44496u % 32u), 4859u)), ~countOneBits(~arg_1.x)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global3 = false;
    let var_0 = Struct_2(~_wgslsmith_mult_vec2_u32(vec2<u32>(~arg_0.a.x, arg_0.a.x ^ u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.x, 4294967295u), vec2<u32>(1u, u_input.d)) & _wgslsmith_add_vec2_u32(arg_2.a, arg_2.a)));
    let var_1 = true;
    global1 = array<vec2<f32>, 30>();
    let var_2 = Struct_1(~firstTrailingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, -19991i)) << (vec4<u32>(~(~4294967295u), 52841u, 66649u, firstTrailingBit(1u)) % vec4<u32>(32u)), select(select(!(!vec3<bool>(true, var_1, var_1)), !select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, var_1)), !any(vec3<bool>(true, var_1, false))), select(select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, false), vec3<bool>(false, var_1, false)), vec3<bool>(true, true, true), !vec3<bool>(var_1, true, var_1)), !vec3<bool>(var_1, true, true), select(all(vec4<bool>(var_1, var_1, var_1, var_1)), true, true)), (all(vec3<bool>(false, var_1, var_1)) && true) != true));
    return Struct_1(-vec4<i32>(u_input.a.x, u_input.c, -90590i, i32(-1i) * -2147483647i), select(vec3<bool>(var_2.b.x | !var_1, !(true || var_1), true), var_2.b, !vec3<bool>(var_1, true, var_1)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = -460f;
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(~arg_2.a, -arg_2.a), select(arg_2.b, vec3<bool>(any(vec2<bool>(arg_2.b.x, true)), arg_2.b.x, !(!arg_2.b.x)), vec3<bool>(true, false, arg_2.b.x)));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1867f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 276f) + _wgslsmith_f_op_f32(-arg_1))))));
    var var_1 = 577f;
    global2 = -1253f;
    return func_3(func_2(~21789i, firstLeadingBit(vec3<u32>(~0u, 37417u, 11480u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(1u, 30u)])) + vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2040f, -1000f)))), Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.d, 12266u, 4294967295u, 14126u), vec4<u32>(0u, u_input.b, 91727u, u_input.d)), abs(vec4<u32>(u_input.b, 59880u, u_input.b, u_input.d))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 64451u, 3021u, 1u), vec4<u32>(1u, 4294967295u, 0u, 29965u)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(491f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f * _wgslsmith_f_op_f32(sign(392f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(232f))))))));
    var var_1 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f - _wgslsmith_f_op_f32(-1000f + -590f))), 1514f)), func_3(func_2(countOneBits(u_input.c), vec3<u32>(22176u, u_input.d >> (4294967295u % 32u), 90631u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 82154u), vec2<u32>(u_input.b, 48357u)), 30u)]) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1283f, -408f) - vec2<f32>(2514f, 292f))))), func_2(2147483647i, vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.d), ~u_input.b, ~4294967295u))));
    var var_2 = func_3(Struct_2(vec2<u32>(27687u, _wgslsmith_div_u32(0u << (u_input.b % 32u), ~u_input.d))), global1[_wgslsmith_index_u32(u_input.d, 30u)], Struct_2(~(~(~vec2<u32>(14357u, 4294967295u)))));
    var var_3 = abs(var_1.a);
    var_3 = var_2.a;
    return !select(!select(vec4<bool>(true, var_1.b.x, var_2.b.x, true), !vec4<bool>(true, false, var_2.b.x, false), func_4(419f, 981f, Struct_1(var_1.a, vec3<bool>(false, false, var_1.b.x))).b.x), !vec4<bool>(var_2.b.x || false, !var_2.b.x, var_1.b.x, false), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1());
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, -11088i, -28377i), -vec4<i32>(u_input.c, u_input.c, -1i, 1i), false), vec4<i32>(u_input.c | u_input.c, u_input.a.x, -9397i, abs(u_input.a.x))), vec4<i32>(-max(-1i, 12602i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -1i, _wgslsmith_add_i32(~(-2147483647i), abs(0i)))), vec3<bool>(all(!func_3(Struct_2(vec2<u32>(u_input.d, u_input.d)), vec2<f32>(-1383f, 1000f), Struct_2(vec2<u32>(22998u, u_input.d))).b), false, all(func_1())));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1762f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1685f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f * -1017f)), true)))));
    var var_2 = -(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), vec2<i32>(var_1.a.x, -11240i))) | (var_1.a.x >> (u_input.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1491f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(588f)) - -994f) * 352f), var_0.x)));
}

