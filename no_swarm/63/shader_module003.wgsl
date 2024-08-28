struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global1: array<Struct_5, 26>;

var<private> global2: array<Struct_4, 29>;

var<private> global3: Struct_5 = Struct_5(true, 1u, 29135u, Struct_4(0u), Struct_4(22700u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> bool {
    global3 = global1[_wgslsmith_index_u32(select(~(~global3.e.a), ~4294967295u, global3.a | any(!vec2<bool>(global3.a, true))), 26u)];
    var var_0 = Struct_3(u_input.a.x);
    global3 = Struct_5(any(global0[_wgslsmith_index_u32(0u, 4u)]), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, 12911u), ~vec2<u32>(arg_0, global3.b)), arg_0 | ~31058u)), global3.b, global2[_wgslsmith_index_u32(32391u, 29u)], Struct_4(firstLeadingBit(1u)));
    var var_1 = countOneBits(u_input.a.yz);
    let var_2 = Struct_1(-_wgslsmith_add_vec2_i32(select(-vec2<i32>(u_input.b, var_0.a), -u_input.a.xy, arg_0 > global3.c), -(~u_input.a.zx)), _wgslsmith_dot_vec4_u32(vec4<u32>(~89271u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(78346u, arg_0, global3.b, arg_0)), min(vec4<u32>(1u, 14073u, global3.e.a, global3.e.a), vec4<u32>(1u, 60379u, 20492u, global3.e.a))), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.b, arg_0), ~vec2<u32>(arg_0, arg_0))), max(abs(vec4<u32>(arg_0, 28606u, 4294967295u, arg_0)), max(vec4<u32>(3121u, arg_0, global3.c, arg_0), vec4<u32>(90542u, 11600u, global3.d.a, 11635u) ^ vec4<u32>(arg_0, 0u, 60441u, global3.c)))), 1u, ~arg_0);
    return false;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_5 {
    var var_0 = vec2<bool>(true, func_3(global3.c | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_1.a.x, global3.e.a), 1u, 27496u)));
    global0 = array<vec3<bool>, 4>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-605f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = reverseBits(arg_1.a.x) | ~firstTrailingBit(1u);
    var_0 = vec2<bool>(678f < var_1.x, 0u != global3.b);
    return global1[_wgslsmith_index_u32(arg_1.a.x, 26u)];
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    return ~global3.e.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1401f)))), _wgslsmith_f_op_f32(floor(617f)), _wgslsmith_div_f32(-2355f, 462f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, -1086f, -718f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(408f, 567f, 1126f), vec3<f32>(-123f, 932f, -243f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1472f, -656f, 467f) + vec3<f32>(1255f, -456f, 542f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1313f, 731f, -105f) + vec3<f32>(-816f, 1631f, 640f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, 1000f, 2028f) + vec3<f32>(1774f, 1000f, 350f)), select(global0[_wgslsmith_index_u32(global3.b, 4u)], vec3<bool>(arg_0, arg_0, global3.a), vec3<bool>(arg_0, arg_0, false)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(2333f)), _wgslsmith_f_op_f32(-603f - 1083f), _wgslsmith_div_f32(-921f, 1000f)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, global3.d.a), 4u)])));
    global2 = array<Struct_4, 29>();
    global0 = array<vec3<bool>, 4>();
    global3 = Struct_5(global3.c >= _wgslsmith_add_u32(~(~global3.e.a), 1u), ~4294967295u, ~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(global3.c, global3.d.a), 4294967295u)), global3.d, global2[_wgslsmith_index_u32(global3.c, 29u)]);
    global3 = global1[_wgslsmith_index_u32(10728u, 26u)];
    return Struct_1(~vec2<i32>(i32(-1i) * -u_input.b, abs(u_input.b | u_input.a.x)), max(global3.c, min(global3.e.a, 74786u)) >> ((0u & (select(53743u, global3.b, true) ^ 0u)) % 32u), global3.b, _wgslsmith_add_u32(firstTrailingBit(95080u), func_4(func_2(~u_input.a, Struct_2(vec3<u32>(1u, 4294967295u, global3.c)), _wgslsmith_f_op_vec2_f32(-var_0.zz)), u_input.b | -12505i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(308f, var_0.x, 101f, var_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    let var_0 = global3.e.a < 83401u;
    let var_1 = func_1(!(!(!(!global3.a))));
    var var_2 = Struct_1(vec2<i32>(~(~(-var_1.a.x)), _wgslsmith_mult_i32(max(reverseBits(-19390i), var_1.a.x >> (20308u % 32u)), -2147483647i)), var_1.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global3.d.a, global3.e.a) ^ global3.d.a, var_1.b & ~68695u), _wgslsmith_div_u32(~1u, ~global3.b)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~0u, countOneBits(66051u))), vec2<u32>(0u, func_2(vec3<i32>(-13090i, 12824i, var_1.a.x), Struct_2(vec3<u32>(var_1.d, 8435u, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(265f, -1184f))).d.a)), -reverseBits(vec2<i32>(1i, var_2.a.x) | var_1.a), max(~_wgslsmith_sub_vec4_u32(~vec4<u32>(1660u, global3.c, var_2.b, 0u), ~vec4<u32>(70571u, var_2.c, 1u, global3.c)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.b, 4294967295u, 18985u, 1u), ~vec4<u32>(var_2.b, 7591u, 17492u, var_2.b), ~vec4<u32>(var_1.c, var_1.c, global3.e.a, 0u))), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 4294967295u)), vec2<u32>(global3.d.a, var_2.c)), 1u));
}

