struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(4294967295u, 626f, false), Struct_1(0u, -1000f, true), Struct_1(4294967295u, 254f, true), Struct_1(34920u, -546f, false), Struct_1(64614u, -1220f, false), Struct_1(20393u, 1372f, true), Struct_1(22593u, -2423f, false), Struct_1(4294967295u, -335f, true), Struct_1(33397u, 1000f, false), Struct_1(2724u, -1781f, true), Struct_1(37735u, -961f, false), Struct_1(1u, 3838f, true));

var<private> global1: u32 = 0u;

var<private> global2: array<f32, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = select(!(true && any(vec2<bool>(false, false))) | (-firstTrailingBit(1i) < _wgslsmith_dot_vec4_i32(~vec4<i32>(23768i, -13312i, 20888i, -2147483647i), ~vec4<i32>(66281i, -2147483647i, 1i, 24980i))), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), 1769f <= global2[_wgslsmith_index_u32(~u_input.a.x, 30u)])), false);
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(96173u, 30u)])), 1000f)) < 1380f;
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(~48394u, 12u)], Struct_1(76158u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -759f))) + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~var_1, 30u)], _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(86251u, 30u)])))), all(!(!vec2<bool>(var_0, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1409f)), Struct_2(select(select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0), false), select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, var_0), false), true), !vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(true, true, true), !vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0)))), min(abs(u_input.a.wxz | u_input.a.wxw) << (~vec3<u32>(var_1, var_1, var_1) % vec3<u32>(32u)), vec3<u32>(~max(u_input.a.x, 40401u), ~(var_1 >> (var_1 % 32u)), ~(~u_input.b.x))));
    let var_4 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_3.b.c, false, 8410u <= var_3.e.x), var_3.d.a, any(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(false, var_0, var_3.d.a.x, var_0), true))), !var_0), var_3.d.a, vec3<bool>(true, true, all(var_3.d.a)));
    return 749f;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec4<bool> {
    global1 = 1u;
    var var_0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(arg_3, arg_3), 35561i, min(abs(arg_3), arg_3), arg_3), -vec4<i32>(arg_3 ^ arg_3, ~1i, 1i, firstTrailingBit(arg_3)));
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(func_3()) >= arg_0.x;
    var var_3 = Struct_2(!vec3<bool>(arg_1.c, select(false || arg_1.c, arg_1.c, false), true));
    return select(vec4<bool>(arg_1.c, arg_1.c, true, all(select(!vec4<bool>(var_3.a.x, false, var_3.a.x, var_3.a.x), !vec4<bool>(true, arg_1.c, false, var_3.a.x), select(vec4<bool>(var_3.a.x, var_3.a.x, false, arg_1.c), vec4<bool>(arg_1.c, false, arg_1.c, false), vec4<bool>(arg_1.c, true, var_3.a.x, true))))), !select(select(vec4<bool>(false, true, var_3.a.x, arg_1.c), !vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), true), !(!vec4<bool>(arg_1.c, arg_1.c, true, true)), !select(vec4<bool>(arg_1.c, false, var_3.a.x, arg_1.c), vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), vec4<bool>(true, true, arg_1.c, var_3.a.x))), vec4<bool>(true, select(var_3.a.x, var_3.a.x, true & arg_1.c), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_div_f32(-554f, global2[_wgslsmith_index_u32(arg_1.a, 30u)])) > arg_1.b));
}

fn func_1() -> u32 {
    let var_0 = Struct_2(vec3<bool>(!any(func_2(vec3<f32>(-899f, global2[_wgslsmith_index_u32(95018u, 30u)], -541f), global0[_wgslsmith_index_u32(u_input.b.x, 12u)], -420f, -22361i)), false, !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 30u)]) == _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 30u)]))));
    return min(~_wgslsmith_mod_u32(0u, abs(~u_input.a.x)), _wgslsmith_sub_u32(~(~select(u_input.b.x, 14222u, false)), ~48373u));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-894f + 1f), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x) >> (~(~u_input.a.x) % 32u), 30u)])), -676f, _wgslsmith_f_op_f32(-990f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.a.xyx), 30u)]) * 612f)));
    global2 = array<f32, 30>();
    global0 = array<Struct_1, 12>();
    var var_1 = Struct_2(vec3<bool>(arg_0.b.c, true, true));
    global0 = array<Struct_1, 12>();
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_4(Struct_3(Struct_1(abs(67420u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) - global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.wx, u_input.b.xx), 30u)]), true), global0[_wgslsmith_index_u32(32534u, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))), Struct_2(vec3<bool>(false, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, func_1(), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), u_input.a.zxx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-968f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(4358u, 30u)])) + global2[_wgslsmith_index_u32(~16783u, 30u)]) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -103f)))), min(-vec4<i32>(abs(-2147483647i), 0i, i32(-1i) * -26686i, -59770i), countOneBits(vec4<i32>(1i, ~28593i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 3220i, -1i, 5854i), vec4<i32>(1i, 1i, -2147483647i, -1i))))), vec4<f32>(-901f, 991f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 30u)]))) + -1004f), _wgslsmith_f_op_f32(step(-209f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -957f))))));
}

