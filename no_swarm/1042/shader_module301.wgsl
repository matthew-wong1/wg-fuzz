struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(-2173f), Struct_3(-849f), Struct_3(167f), Struct_3(1917f), Struct_3(1475f), Struct_3(1255f), Struct_3(885f), Struct_3(861f), Struct_3(217f), Struct_3(-1222f), Struct_3(1000f), Struct_3(227f), Struct_3(1596f), Struct_3(-107f), Struct_3(-273f), Struct_3(-1466f), Struct_3(-351f), Struct_3(-655f), Struct_3(496f), Struct_3(1222f), Struct_3(1690f), Struct_3(-1574f), Struct_3(-861f), Struct_3(-1102f), Struct_3(-371f), Struct_3(307f));

var<private> global1: vec3<f32> = vec3<f32>(-594f, 419f, 727f);

var<private> global2: i32;

var<private> global3: bool;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1679f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -878f), global1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(783f * 655f)))))), 315f);
    let var_1 = _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(255f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-1000f, var_0.x, true)))))));
    var var_2 = abs(firstLeadingBit(~_wgslsmith_add_i32(arg_1, _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.b))));
    global0 = array<Struct_3, 26>();
    let var_3 = vec3<u32>(arg_3.x, arg_3.x, ~33402u);
    return vec4<bool>(false & all(select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), arg_0))), true, false, !arg_0);
}

fn func_2() -> vec2<f32> {
    let var_0 = select(select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, true), true), select(func_3(any(vec4<bool>(false, true, false, false)), 1i, _wgslsmith_f_op_f32(ceil(-1004f)), ~vec4<u32>(1u, 4294967295u, 8366u, 4294967295u)), vec4<bool>(true, true, true, true), false), false), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global1.x <= -487f), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), true), select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(select(false, true, false), true, select(false, true, false), true), (select(true, false, false) | true) && true));
    var var_1 = Struct_1(true, -u_input.b, var_0.x | var_0.x);
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(32421u), 26u)];
    let var_3 = Struct_1(func_3(false, 81490i, _wgslsmith_div_f32(-877f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)))), vec4<u32>(abs(_wgslsmith_mod_u32(82703u, 1u)), _wgslsmith_sub_u32(21531u, 1u), ~18596u, select(0u, 1u, var_0.x))).x, u_input.b, !(countOneBits(var_1.b.x) < u_input.a.x) || any(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(71815u, _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(vec4<u32>(40097u, 94418u, ~71049u, ~43288u)))), 26u)];
    return global1.yx;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = ~(~vec2<u32>(1u, 74969u));
    var var_1 = -1558f;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_3 = ~vec4<i32>(arg_1, ~(-1i), 1i, 1i);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_2, arg_3.a))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(var_2.x + arg_2), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 + -377f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(138f, 1147f, arg_3.a), vec3<f32>(var_2.x, arg_2, arg_2)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(766f - global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x + arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(899f + -754f) + _wgslsmith_f_op_f32(global1.x * global1.x)) + _wgslsmith_f_op_f32(1000f * -634f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global1.x - -1645f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(i32(-1i) * -6275i, u_input.b.x, _wgslsmith_f_op_f32(max(-153f, 1154f)), global0[_wgslsmith_index_u32(abs(42853u), 26u)]))))));
    let var_0 = false;
    var var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(33948i, ~(-74658i), u_input.b.x, ~u_input.a.x), reverseBits(vec4<i32>(countOneBits(2147483647i), 1i & u_input.b.x, ~u_input.b.x, 1i)));
    let var_2 = Struct_1(var_0, vec2<i32>(u_input.a.x, -1i), any(!(!(!vec3<bool>(false, false, var_0)))));
    let var_3 = select(!vec3<bool>(var_2.a, true, !var_0), !func_3(any(!vec4<bool>(true, var_2.c, true, var_2.c)), _wgslsmith_sub_i32(~(-2147483647i), var_1.x), global1.x, vec4<u32>(1u, 1u, 1u, 1u)).wxy, select(!func_3(select(var_2.a, false, true), 0i, -938f, vec4<u32>(1u, 1u, 1u, 1u)).wwz, select(vec3<bool>(!var_2.c, select(false, false, var_0), !var_2.a), select(select(vec3<bool>(true, var_0, false), vec3<bool>(true, var_2.a, var_2.c), vec3<bool>(var_2.c, var_0, var_2.c)), func_3(var_2.c, -1i, global1.x, vec4<u32>(66336u, 4294967295u, 7273u, 1u)).wxz, var_0 || false), var_2.a), all(vec2<bool>(var_0 != false, true))));
    global4 = array<Struct_2, 27>();
    global0 = array<Struct_3, 26>();
    var var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 1u), ~2943u), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_sub_u32(73501u, 12287u)), 6021u), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 51277u), firstTrailingBit(vec3<u32>(0u, 1u, 4294967295u))))), select(_wgslsmith_div_u32(_wgslsmith_sub_u32(~4294967295u, firstTrailingBit(17919u)), ~(~1u)), _wgslsmith_mod_u32(abs(1u), abs(1u)), false), -var_2.b.x, vec3<u32>(~(1u << (select(56854u, 1u, var_2.c) % 32u)), firstTrailingBit(select(1u, min(0u, 0u), false)), _wgslsmith_mult_u32(1u, 45422u)), firstTrailingBit(2147483647i));
}

