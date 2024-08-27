struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<i32>(-36348i, 14790i, -45145i), false, vec2<f32>(140f, 346f)), Struct_1(vec3<i32>(2147483647i, -60672i, -30986i), true, vec2<f32>(-216f, -982f)), Struct_1(vec3<i32>(35416i, 2147483647i, 59770i), true, vec2<f32>(-482f, 415f)), Struct_1(vec3<i32>(i32(-2147483648), 34681i, -23209i), false, vec2<f32>(453f, -895f)), Struct_1(vec3<i32>(1i, 30311i, 2147483647i), true, vec2<f32>(1024f, -377f)), Struct_1(vec3<i32>(22666i, 1i, -1i), false, vec2<f32>(-491f, 272f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -6328i), false, vec2<f32>(-249f, -121f)), Struct_1(vec3<i32>(-58463i, -2156i, 0i), true, vec2<f32>(1223f, 1376f)), Struct_1(vec3<i32>(-77973i, 2147483647i, 1i), false, vec2<f32>(188f, -1327f)), Struct_1(vec3<i32>(1i, 17576i, -1i), false, vec2<f32>(-1151f, -139f)), Struct_1(vec3<i32>(22983i, 0i, -1i), true, vec2<f32>(-946f, 217f)), Struct_1(vec3<i32>(-6558i, 0i, -33612i), true, vec2<f32>(2720f, -461f)), Struct_1(vec3<i32>(2147483647i, -7254i, -63249i), true, vec2<f32>(242f, -543f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -79994i), false, vec2<f32>(373f, -1064f)), Struct_1(vec3<i32>(-20457i, 1184i, 37030i), true, vec2<f32>(179f, -1522f)), Struct_1(vec3<i32>(-24384i, -27734i, 0i), false, vec2<f32>(445f, 1203f)), Struct_1(vec3<i32>(0i, 5086i, 50828i), false, vec2<f32>(-426f, -913f)), Struct_1(vec3<i32>(32298i, 0i, 0i), true, vec2<f32>(-208f, 214f)), Struct_1(vec3<i32>(13892i, -1i, 14738i), true, vec2<f32>(-1000f, -284f)));

var<private> global1: array<Struct_2, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<i32> {
    let var_0 = ~(~(~arg_1.x));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstLeadingBit(0u), var_0), 19u)];
    let var_2 = abs(~(~vec2<i32>(~arg_2.a.x, u_input.c)));
    global1 = array<Struct_2, 28>();
    global0 = array<Struct_1, 19>();
    return ~(~(-vec3<i32>(~(-60852i), _wgslsmith_mod_i32(0i, 6561i), _wgslsmith_dot_vec2_i32(vec2<i32>(-29218i, var_2.x), var_2))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_2, 28>();
    var var_0 = 1u;
    let var_1 = vec3<f32>(-1130f, -529f, 1597f);
    let var_2 = Struct_1(~func_3(u_input.a, ~select(vec3<u32>(4294967295u, arg_1.x, 1u), arg_1.yxx, true), Struct_1(arg_2.a, !arg_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, arg_2.c.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(901f, 1030f, 286f)), _wgslsmith_f_op_vec3_f32(-var_1)))), all(select(!arg_3.wx, !arg_3.zz, vec2<bool>(true, all(arg_3.yw)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.c)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.c + var_1.xx)))))));
    var var_3 = Struct_1(max(vec3<i32>(-27339i, select(-1i, arg_2.a.x, all(vec3<bool>(true, false, false))), _wgslsmith_mult_i32(u_input.a, 1i) << (~0u % 32u)), firstTrailingBit(var_2.a | arg_2.a) | (vec3<i32>(var_2.a.x, 12087i, arg_2.a.x) & var_2.a)), !var_2.b, var_1.yy);
    return global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 19u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    var var_0 = select(arg_2, false, true);
    return func_3(arg_0.a.x, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, _wgslsmith_mult_u32(~20671u, ~4294967295u)), vec3<u32>(~(~1u), u_input.b, 96888u)), func_2(~4294967295u, firstLeadingBit(vec4<u32>(reverseBits(u_input.b), 14950u, 40798u, max(4294967295u, 64222u))), Struct_1(vec3<i32>(~(-1i), u_input.c ^ arg_0.a.x, -u_input.a), any(vec2<bool>(arg_0.b, arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, arg_1.x)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, arg_0.c.x))))), select(!select(vec4<bool>(false, true, arg_2, false), vec4<bool>(arg_2, true, arg_0.b, arg_2), vec4<bool>(arg_0.b, false, false, false)), !select(vec4<bool>(false, true, arg_0.b, arg_0.b), vec4<bool>(arg_2, arg_2, true, arg_0.b), arg_2), !any(vec3<bool>(true, false, true)))), arg_1).x;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 19u)];
    let var_1 = firstTrailingBit(vec4<i32>(func_4(func_2(u_input.b, ~vec4<u32>(27392u, 0u, u_input.b, 71042u), global0[_wgslsmith_index_u32(~0u, 19u)], select(vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(false, var_0.b, var_0.b, false), vec4<bool>(var_0.b, false, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-398f, arg_0, arg_0) + vec3<f32>(-332f, -1539f, var_0.c.x))), var_0.b), abs(84624i), _wgslsmith_add_i32(-(~u_input.a), -(u_input.c >> (4294967295u % 32u))), 2147483647i));
    let var_2 = Struct_2(vec4<bool>(true, !var_0.b, var_0.b, all(vec3<bool>(all(vec2<bool>(false, var_0.b)), var_0.b & true, false && var_0.b))), 9596u);
    let var_3 = arg_0;
    let var_4 = !vec4<bool>(var_0.b, all(select(!var_2.a.xxz, vec3<bool>(true, var_0.b, false), var_2.a.yyx)), var_2.a.x, true);
    return _wgslsmith_div_u32(u_input.b, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, func_1(_wgslsmith_f_op_f32(trunc(-228f))) << ((_wgslsmith_add_u32(u_input.b, 4294967295u) | _wgslsmith_mult_u32(55782u, u_input.b)) % 32u)) ^ max(u_input.b, 1u), 19u)];
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.x, -321f)))));
    var var_2 = vec3<bool>(!select(!var_0.b && all(vec4<bool>(true, var_0.b, var_0.b, true)), true && all(vec3<bool>(var_0.b, var_0.b, true)), any(!vec4<bool>(false, false, var_0.b, true))), var_0.b, any(!vec2<bool>(false, false | var_0.b)));
    var var_3 = 16207i;
    var var_4 = func_2(_wgslsmith_clamp_u32(min(u_input.b, _wgslsmith_sub_u32(min(1u, 4294967295u), 4883u >> (u_input.b % 32u))), u_input.b, 27256u), firstLeadingBit(~vec4<u32>(u_input.b, 4294967295u, abs(52837u), 0u)), global0[_wgslsmith_index_u32(firstTrailingBit(~1340u), 19u)], vec4<bool>(any(!var_2.xx), 13558u < u_input.b, select(true, true, true), false));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.c.x, _wgslsmith_f_op_f32(trunc(-1107f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 1607f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_4.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, -1904f)))), var_0.b)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.c.x)) - _wgslsmith_f_op_f32(abs(var_0.c.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) - _wgslsmith_f_op_f32(-var_4.c.x))), -612f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(59965u), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 1u), ~u_input.b)), vec4<u32>(~firstTrailingBit(u_input.b), u_input.b, 1u, 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_mult_u32(u_input.b, 1u)), min(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(4294967295u, u_input.b, u_input.b))), _wgslsmith_div_vec3_u32(min(vec3<u32>(30245u, u_input.b, u_input.b), vec3<u32>(15308u, u_input.b, u_input.b)), ~vec3<u32>(4294967295u, u_input.b, 1u)) >> (~(vec3<u32>(u_input.b, 1u, 0u) ^ vec3<u32>(u_input.b, u_input.b, 46513u)) % vec3<u32>(32u))));
}

