struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_4, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = firstLeadingBit(arg_1);
    let var_1 = _wgslsmith_add_i32(firstLeadingBit(reverseBits(abs(var_0))), -1i);
    global0 = array<u32, 9>();
    var var_2 = Struct_4(arg_2.a, arg_0.yz, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(4795u)) ^ global0[_wgslsmith_index_u32(arg_0.x, 9u)], !(!arg_2.d));
    global1 = select(!(var_2.a != 900f), false, var_1 < 10249i);
    return countOneBits(abs(~(vec4<i32>(-1i, var_0, 1i, -22513i) | vec4<i32>(2147483647i, -17429i, 2147483647i, 0i)) >> ((~vec4<u32>(var_2.b.x, var_2.b.x, 10104u, arg_2.b.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 59467u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 9u)], 9u)], 20234u), vec4<u32>(4294967295u, 1u, 4294967295u, arg_0.x), vec4<u32>(var_2.c, var_2.c, arg_0.x, arg_2.b.x))) % vec4<u32>(32u))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = -10061i | _wgslsmith_mult_i32(arg_2.x, ~(~(arg_0 | 2725i)));
    global0 = array<u32, 9>();
    var var_1 = vec2<bool>(any(vec2<bool>(true, true)), true);
    var var_2 = 58193u;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(882f, 117f, -282f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f + -1199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1095f, -636f, var_1.x))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(897f)), _wgslsmith_f_op_f32(trunc(-797f))), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1143f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1285f - 862f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1414f), -515f, 556f, _wgslsmith_f_op_f32(round(839f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, 1032f, -786f, -433f)) + vec4<f32>(596f, 1124f, -102f, 677f))), select(vec4<bool>(all(vec4<bool>(var_1.x, true, false, false)), !var_1.x, 7894i != arg_2.x, true), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), !vec4<bool>(var_1.x, var_1.x, false, true)), !var_1.x))));
    return global0[_wgslsmith_index_u32(1u ^ max(~(_wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(arg_1, 9u)], 4294967295u) >> (min(3121u, global0[_wgslsmith_index_u32(26347u, 9u)]) % 32u)), 4294967295u), 9u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global0 = array<u32, 9>();
    var var_0 = _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, 0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, ~19833u), _wgslsmith_div_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(arg_0.x, 9u)], 1u, 46677u), firstTrailingBit(vec3<u32>(33880u, arg_0.x, 1u)))) % 32u));
    let var_1 = -func_2(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.x, global0[_wgslsmith_index_u32(57744u, 9u)]), ~vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u))), 1i, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~_wgslsmith_mult_vec2_u32(arg_0, arg_0), 49724u, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false))), !vec2<bool>(all(vec2<bool>(true, true)), false));
    var var_2 = ~(~(~_wgslsmith_add_u32(func_3(var_1.x, u_input.a, vec4<i32>(var_1.x, var_1.x, 1i, 14445i), arg_0), ~arg_0.x)));
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(select(abs(arg_0.x), 16996u, true), 9u)]), 9u)]);
    return Struct_2(_wgslsmith_mod_i32(func_2(vec3<u32>(u_input.a, var_3.a, 4294967295u) ^ vec3<u32>(140448u, var_3.a, u_input.a), var_1.x & 55879i, Struct_4(690f, arg_0, u_input.a, true), vec2<bool>(true, true)).x, -2147483647i) << (0u % 32u), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(u_input.a, min(1u, 56658u)));
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_4(-480f, vec2<u32>(~7832u, global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4433u, u_input.a, 4294967295u, 30152u), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)), 9u)]), 9u)]), 26156u, 1i > abs(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-79546i, var_0.a), vec2<i32>(1i, var_0.a), vec2<i32>(var_0.a, var_0.a)), firstTrailingBit(vec2<i32>(var_0.b, var_0.b)))));
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-2125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) - 1000f), vec4<i32>(_wgslsmith_div_i32(abs(var_0.b | var_0.b), func_2(~vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(var_2.b.x, 9u)]), var_0.b << (0u % 32u), Struct_4(1066f, var_2.b, var_2.b.x, false), select(vec2<bool>(false, var_2.d), vec2<bool>(var_2.d, false), vec2<bool>(var_2.d, true))).x), ~(-607i), _wgslsmith_add_i32(var_0.b, _wgslsmith_div_i32(var_0.a, ~var_0.a)), -1i), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8104u, 9u)], 9u)], 9u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, _wgslsmith_f_op_f32(-1175f - _wgslsmith_f_op_f32(f32(-1f) * -712f)))));
}

