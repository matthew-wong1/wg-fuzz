struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(1u, 4294967295u, 4294967295u, 0u, 34848u, 0u, 1u, 2733u, 70403u, 56157u, 50520u, 32014u, 0u, 27528u, 4294967295u, 1u, 4294967295u, 16390u, 16448u, 1u, 3255u, 12043u, 1u, 56261u, 0u, 9157u, 4294967295u);

var<private> global1: array<i32, 13> = array<i32, 13>(i32(-2147483648), 16920i, 36863i, -892i, -1451i, 1i, 14132i, 1i, -14967i, -41885i, i32(-2147483648), 0i, -1i);

var<private> global2: Struct_1 = Struct_1(367f, 1i);

var<private> global3: array<vec3<u32>, 27>;

var<private> global4: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-44353i, 33348i, 51568i, -47339i), vec4<i32>(-1i, 0i, -580i, -4703i), vec4<i32>(i32(-2147483648), 1i, 24583i, 1i), vec4<i32>(2147483647i, 1i, 2147483647i, -14261i), vec4<i32>(-4259i, -38066i, -65308i, -13687i), vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, 0i, 0i, 1i), vec4<i32>(13580i, -11159i, i32(-2147483648), 33376i), vec4<i32>(-1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-51746i, -16186i, -2715i, -74190i), vec4<i32>(20172i, 46569i, 28315i, 13027i), vec4<i32>(1i, 12050i, 1i, -28429i), vec4<i32>(1i, 0i, -1i, -1i), vec4<i32>(0i, -1i, 19376i, 2147483647i), vec4<i32>(-1i, -37889i, 2147483647i, 30128i), vec4<i32>(-76057i, 0i, 4898i, 2147483647i), vec4<i32>(-17623i, 28089i, -47413i, i32(-2147483648)), vec4<i32>(-1i, -52938i, 0i, 8674i), vec4<i32>(-1i, 1i, -1i, 34447i), vec4<i32>(1i, -23467i, 21195i, 34680i), vec4<i32>(11917i, 55689i, 26864i, -20952i), vec4<i32>(7213i, 54134i, -33046i, 0i), vec4<i32>(1i, -1i, 9489i, 0i), vec4<i32>(-1i, -17018i, 7930i, 32148i), vec4<i32>(26703i, -28865i, 1i, -75105i), vec4<i32>(2346i, -51710i, -15114i, 40915i), vec4<i32>(-35973i, -1i, -38913i, -32870i), vec4<i32>(1i, 2147483647i, -21120i, 0i), vec4<i32>(26287i, -47292i, -61687i, 0i), vec4<i32>(-37818i, -1i, 22970i, -1011i), vec4<i32>(0i, -24508i, i32(-2147483648), 15949i), vec4<i32>(1i, 1i, 38154i, -1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + global2.a) - 1332f), _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(u_input.c >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), u_input.c)));
    var var_1 = ~(~firstTrailingBit(u_input.a.x));
    var var_2 = max(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 27u)], select(vec3<u32>(_wgslsmith_add_u32(846u, 0u), ~4294967295u, 16281u), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.b.x, 27u)], 27u)], select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(4294967295u, ~(global0[_wgslsmith_index_u32(33838u, 27u)] | 42988u))), ~47935u, abs(~(~(~28121u))));
    return firstTrailingBit(~0u);
}

fn func_2() -> vec3<bool> {
    var var_0 = global2.b;
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)] <= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 0u), max(vec2<u32>(26871u, 1u), u_input.b))), 27u)], all(vec3<bool>(true, true, global2.a == _wgslsmith_f_op_f32(trunc(-453f)))), true);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), global2.a), -1789i);
    var var_3 = Struct_1(var_2.a, abs(_wgslsmith_mult_i32(1i, ~firstLeadingBit(u_input.a.x))));
    var var_4 = var_2;
    return select(var_1, vec3<bool>(~45900u >= firstLeadingBit(func_3()), true, ~91208u != max(firstTrailingBit(72192u), 1u)), abs(min(reverseBits(0i), abs(-14992i))) >= (-abs(-13448i) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19657u, 27u)], 27u)], 1u), 27u)], 27u)] % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.a)), i32(-1i) * -47657i);
    global4 = array<vec4<i32>, 32>();
    var_0 = arg_3;
    let var_1 = ~_wgslsmith_add_u32(~firstLeadingBit(firstTrailingBit(u_input.b.x)), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, global0[_wgslsmith_index_u32(~4294967295u, 27u)]), 27u)]);
    let var_2 = vec4<f32>(-913f, _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1415f + arg_0.a)))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f * arg_0.a)))) * -1094f));
    return arg_2.x;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = false != select(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_4(Struct_1(global2.a, global2.b), global2.a, func_2(), Struct_1(global2.a, global2.b)) & (~44365u <= arg_0));
    global0 = array<u32, 27>();
    global2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a))), 1754i);
    let var_1 = vec4<u32>(~_wgslsmith_div_u32(~(~arg_0), countOneBits(_wgslsmith_div_u32(7153u, arg_0))), func_3(), global0[_wgslsmith_index_u32(arg_0, 27u)], _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(arg_0, 27u)]));
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(14901u, abs(_wgslsmith_add_u32(var_1.x, 4294967295u))), abs(4294967295u), _wgslsmith_mod_u32(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39283u, 27u)], 27u)], 27u)], u_input.b.x, 1u), ~vec3<u32>(arg_0, 0u, arg_0)))), ~vec3<u32>(_wgslsmith_mult_u32(50113u, u_input.b.x), select(abs(global0[_wgslsmith_index_u32(4294967295u, 27u)]), ~arg_0, !var_0), _wgslsmith_clamp_u32(4294967295u, 62294u, 0u) | ~u_input.b.x));
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-(~2147483647i), select(u_input.c.x, -4796i, true)) != func_1(~select(global0[_wgslsmith_index_u32(0u, 27u)], 12747u, true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(2121f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a))), false)), min(0i, ~global2.b));
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global2 = Struct_1(_wgslsmith_f_op_f32(-var_1.a), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, abs(u_input.b.x)), u_input.b), 128f, -abs(u_input.a), vec4<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 27u)], ~u_input.b.x, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~u_input.b.x), 27u)], 27u)], _wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.b.x), abs(39829u)), ~34812u)));
}

