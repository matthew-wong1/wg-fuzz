struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<i32, 22>;

var<private> global2: bool = false;

var<private> global3: array<f32, 26> = array<f32, 26>(-622f, -292f, 454f, -590f, -292f, 619f, -953f, -426f, -1965f, 113f, 885f, 407f, -579f, -1863f, 779f, -909f, 1474f, -549f, 1284f, -719f, 477f, 1716f, -1323f, -130f, -1030f, 1000f);

var<private> global4: array<vec3<f32>, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> i32 {
    global2 = arg_1.b.x;
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 26u)];
    var var_1 = Struct_4(vec4<u32>(~select(~8691u, arg_0.x << (u_input.b % 32u), !arg_1.b.x), (arg_0.x << (18199u % 32u)) >> (19780u % 32u), 104395u, select(1u, ~1u, !(global3[_wgslsmith_index_u32(u_input.b, 26u)] >= global3[_wgslsmith_index_u32(23421u, 26u)]))), Struct_1(_wgslsmith_div_f32(2075f, global3[_wgslsmith_index_u32(87015u, 26u)]), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], arg_1.a, global1[_wgslsmith_index_u32(28108u, 22u)]), vec4<i32>(-48091i, 1i, -2147483647i, u_input.e.x) & vec4<i32>(arg_1.a, -2147483647i, arg_1.a, arg_1.a)), -global1[_wgslsmith_index_u32(~arg_0.x, 22u)], _wgslsmith_div_i32(arg_1.a, 2147483647i >> (u_input.d % 32u)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.e.x, global1[_wgslsmith_index_u32(u_input.b, 22u)]), ~arg_1.a, global1[_wgslsmith_index_u32(arg_0.x, 22u)])), vec4<bool>(_wgslsmith_f_op_f32(sign(-1322f)) < _wgslsmith_f_op_f32(abs(-494f)), true, !(!arg_1.b.x), true)), arg_0.x);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-606f, global3[_wgslsmith_index_u32(u_input.a, 26u)], var_1.b.a, var_1.b.a))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-557f)) - _wgslsmith_f_op_f32(step(1168f, global3[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1303f)))), _wgslsmith_f_op_f32(f32(-1f) * -813f)) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2147f), _wgslsmith_f_op_f32(-var_1.b.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(874f)))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 1u), 26u)], _wgslsmith_f_op_f32(f32(-1f) * -1066f))), var_1.b.a)));
    global1 = array<i32, 22>();
    return abs(_wgslsmith_clamp_i32(u_input.e.x, var_1.b.b.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-18039i, global1[_wgslsmith_index_u32(4294967295u, 22u)])), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-22569i, arg_1.a), vec2<i32>(var_1.b.b.x, arg_1.a)))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_2(func_3(_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.c, u_input.d, 1u, u_input.a), vec4<u32>(102828u, u_input.a, 68358u, u_input.b)), firstLeadingBit(vec4<u32>(0u, u_input.c, u_input.c, 12154u))), Struct_2(global1[_wgslsmith_index_u32(0u, 22u)], vec2<bool>(false, false), all(vec3<bool>(true, true, false)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), !select(true, false, false)), false), select(21776u, 0u, ~_wgslsmith_clamp_u32(u_input.c, u_input.d, 38162u) <= _wgslsmith_mod_u32(31187u, ~u_input.d)));
    let var_1 = -vec2<i32>(0i, -35284i);
    let var_2 = 26102u;
    var var_3 = !var_0.a.b;
    var var_4 = !select(select(!(!vec3<bool>(var_3.x, false, true)), vec3<bool>(var_0.a.c, false, true), !vec3<bool>(var_3.x, var_0.a.b.x, var_3.x)), vec3<bool>(true, !var_3.x, !var_3.x), var_3.x);
    return Struct_3(var_0.a, ~33015u);
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a;
    global0 = _wgslsmith_mod_i32(u_input.e.x, -2147483647i);
    global2 = (global1[_wgslsmith_index_u32(0u, 22u)] | _wgslsmith_mod_i32(-u_input.e.x, -9118i)) == ~(i32(-1i) * -firstTrailingBit(0i));
    global0 = -24773i;
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstLeadingBit(u_input.d), ~(~4294967295u << (0u % 32u)), u_input.c), 1u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 22>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(619f, 393f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(556f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 26u)]))))));
    var var_1 = func_1();
    global1 = array<i32, 22>();
    let var_2 = !(!select(vec4<bool>(all(vec3<bool>(true, var_1.a.b.x, var_1.a.b.x)), !var_1.a.b.x, !var_1.a.c, !var_1.a.c), select(select(vec4<bool>(false, var_1.a.c, var_1.a.c, false), vec4<bool>(var_1.a.c, var_1.a.b.x, true, false), var_1.a.b.x), select(vec4<bool>(var_1.a.b.x, true, var_1.a.b.x, var_1.a.b.x), vec4<bool>(var_1.a.c, var_1.a.b.x, true, var_1.a.b.x), false), !vec4<bool>(var_1.a.c, var_1.a.b.x, false, var_1.a.b.x)), !(var_1.a.a < global1[_wgslsmith_index_u32(25127u, 22u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.x, 512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.x)))))));
}

