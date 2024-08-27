struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

var<private> global1: f32 = -1139f;

var<private> global2: array<Struct_2, 2>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.a.x, -922f, arg_0.a))), ~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 2982u, arg_1.b), ~vec3<u32>(global3.b, 1u, global3.b))));
    var var_1 = arg_0;
    let var_2 = Struct_4(2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.a.xx), vec2<u32>(29627u >> (arg_1.b % 32u), global3.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(120f)), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, -1000f)))));
    let var_3 = arg_0;
    var var_4 = var_3.c.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(arg_0.a + 968f)))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = u_input.d;
    global0 = array<vec2<bool>, 5>();
    let var_1 = true;
    let var_2 = vec3<bool>(true, true, !var_1);
    return Struct_4(_wgslsmith_div_i32(firstLeadingBit(u_input.c >> (_wgslsmith_sub_u32(4294967295u, u_input.b) % 32u)), -(~(~(-5326i)))), Struct_1(global3.a.yz, _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 0u), abs(arg_0) >> ((arg_0 | arg_0) % vec2<u32>(32u))), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(min(-1168f, global3.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, global3.a.x) + global3.a.yz), select(vec3<bool>(true, true, false), vec3<bool>(false, var_2.x, false), var_2.x)), Struct_3(_wgslsmith_f_op_vec3_f32(select(global3.a, vec3<f32>(global3.a.x, 1000f, global3.a.x), var_2)), 2080u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-905f, -1689f)) + global3.a.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-global3.a.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + arg_1.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.c), var_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
    global0 = array<vec2<bool>, 5>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2072f), arg_1.x, _wgslsmith_f_op_f32(global3.a.x - -213f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b.c, 642f, arg_0.b.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.a, global3.a))))), firstTrailingBit(_wgslsmith_div_u32(~(~arg_0.b.b.x), _wgslsmith_mod_u32(~global3.b, u_input.b))));
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, -1145f, -1620f)))), arg_0.b.b.x);
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~global3.b, u_input.a ^ _wgslsmith_clamp_u32(~(12584u ^ global3.b), 1u, 1u)), 2u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_2) -> bool {
    global2 = array<Struct_2, 2>();
    global1 = arg_0.a;
    var var_0 = arg_0;
    let var_1 = func_4(func_2(max(~vec2<u32>(global3.b, 4445u) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), vec2<u32>(1u << (u_input.a % 32u), min(71483u, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-281f, arg_2.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-1224f - 1000f)))));
    global1 = 1573f;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1130f, global3.a.x) + vec2<f32>(-117f, _wgslsmith_f_op_f32(-global3.a.x))), !vec3<bool>(true, false, func_1(Struct_2(global3.a.x, global3.a.xy, vec3<bool>(true, false, true)), Struct_5(33573u, 2780i), Struct_2(296f, vec2<f32>(-153f, global3.a.x), vec3<bool>(true, false, false))) & true));
    global3 = Struct_3(vec3<f32>(210f, -437f, var_0.a), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(33870u, global3.b), u_input.b | 0u, select(func_2(vec2<u32>(u_input.a, 63105u)).b.b.x, abs(u_input.a), var_0.c.x) >> (6974u % 32u)));
    global2 = array<Struct_2, 2>();
    let var_1 = Struct_5(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.d << (37028u % 32u)), -(0i ^ u_input.c)), vec2<i32>(_wgslsmith_mult_i32(-5680i, _wgslsmith_sub_i32(2147483647i, u_input.d)), u_input.d)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(150f)) * _wgslsmith_f_op_f32(select(2380f, 115f, var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * global3.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global3.a.x, -763f)))) - global3.a), true)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(4294967295u, 0u, var_1.a, global3.b)), ~vec4<u32>(var_1.a, u_input.b, var_1.a, 18427u)), max(func_2(vec2<u32>(var_1.a, 5201u)).b.b.x, 55283u)));
    var var_3 = Struct_2(var_0.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_0.a) * global3.a.xz))), select(!(!select(vec3<bool>(true, true, var_0.c.x), var_0.c, var_0.c.x)), func_4(Struct_4(firstTrailingBit(var_1.b), func_2(vec2<u32>(var_2.b, 1u)).b), _wgslsmith_f_op_vec3_f32(max(global3.a, _wgslsmith_f_op_vec3_f32(-global3.a)))).c, all(!(!vec2<bool>(var_0.c.x, var_0.c.x)))));
    var var_4 = var_0.c;
    let var_5 = -(~_wgslsmith_clamp_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(u_input.d, 2147483647i))), ~countOneBits(vec2<i32>(var_1.b, u_input.d)), _wgslsmith_sub_vec2_i32(vec2<i32>(24493i, 2147483647i) ^ vec2<i32>(u_input.c, var_1.b), -vec2<i32>(u_input.c, 41357i))));
    global0 = array<vec2<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(91416u >> (firstLeadingBit(max(select(var_1.a, 4294967295u, var_0.c.x), global3.b << (global3.b % 32u))) % 32u), max(vec4<u32>(~var_2.b | ~var_1.a, _wgslsmith_mult_u32(abs(var_1.a), min(1u, var_1.a)), _wgslsmith_mult_u32(1u, ~0u), ~abs(var_1.a)), firstLeadingBit(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(5532u, 13005u, var_2.b, var_2.b)), vec4<u32>(4336u, 2292u, u_input.b, 4294967295u)))), ~abs(firstLeadingBit(select(vec4<u32>(66158u, u_input.b, u_input.a, u_input.b), vec4<u32>(22781u, u_input.b, 114569u, 4294967295u), vec4<bool>(var_3.c.x, false, var_4.x, false)))), firstTrailingBit(vec3<u32>(var_1.a, min(max(var_1.a, u_input.a), ~42085u), 4294967295u)));
}

