struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<f32, 21> = array<f32, 21>(-804f, 1006f, 1768f, -290f, -1698f, -459f, -117f, -513f, -142f, 548f, -1000f, 1178f, -590f, 316f, 1470f, 933f, 848f, 450f, 1844f, -279f, 1000f);

var<private> global3: bool;

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32) -> i32 {
    global3 = false;
    global2 = array<f32, 21>();
    global4 = array<Struct_2, 2>();
    let var_0 = -2147483647i;
    global0 = array<u32, 32>();
    return 14574i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 21u)], -1319f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.c, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], 21u)]))))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67512u, 32u)], 32u)], 32u)], 21u)])), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3114f, global2[_wgslsmith_index_u32(56205u, 21u)])))))));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -u_input.a.xz, firstLeadingBit(select(vec2<i32>(max(arg_2.a.x, arg_0), 0i), min(abs(u_input.b.zy), vec2<i32>(-2147483647i, u_input.b.x)), arg_2.d.xy)));
    var var_2 = 49700u;
    global1 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(-472f * -1060f);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_4(arg_0.b, -_wgslsmith_sub_i32(-42128i, u_input.b.x) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(select(4294967295u, global0[_wgslsmith_index_u32(0u, 32u)], arg_0.d.x) | ~11798u), 32u)], 32u)] % 32u), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b & u_input.a.x, 1i), vec2<i32>(func_3(-1i), select(26348i, u_input.a.x, false))), 47000i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), !(!arg_0.d))));
    return Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_1), 2u)], ~(firstLeadingBit(vec3<u32>(65424u, 4294967295u, 4294967295u) ^ vec3<u32>(global0[_wgslsmith_index_u32(8482u, 32u)], 31649u, 3284u)) | vec3<u32>(1u, 96676u, arg_1)), Struct_1(_wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), u_input.a.xy), _wgslsmith_mod_vec2_i32(arg_0.a, u_input.b.xy)), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, abs(u_input.b.x)), u_input.a.x), _wgslsmith_f_op_f32(-775f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f - 938f))), !vec4<bool>(arg_0.d.x, all(vec4<bool>(arg_0.d.x, true, arg_0.d.x, true)), false, arg_0.d.x)), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1290f, _wgslsmith_f_op_f32(trunc(716f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c, -1386f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    let var_0 = u_input.b.xx;
    global0 = array<u32, 32>();
    let var_1 = func_2(global1[_wgslsmith_index_u32(~reverseBits(4687u), 21u)], firstTrailingBit(~_wgslsmith_dot_vec3_u32(arg_0.yxw, vec3<u32>(1u, 1u, arg_0.x)) >> (57245u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_2.a, _wgslsmith_f_op_vec2_f32(max(arg_2.a, vec2<f32>(-1000f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 21u)]))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-530f, global2[_wgslsmith_index_u32(38061u, 21u)], -1983f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, 2221f, arg_2.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-133f, global2[_wgslsmith_index_u32(arg_3, 21u)], 348f) - vec3<f32>(global2[_wgslsmith_index_u32(13202u, 21u)], global2[_wgslsmith_index_u32(arg_3, 21u)], 1307f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1656f, arg_2.a.x, global2[_wgslsmith_index_u32(1u, 21u)]) - vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-973f, global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)])))))));
    let var_2 = !func_2(var_1.c, arg_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.d.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -1289f, global2[_wgslsmith_index_u32(4294967295u, 21u)])), vec3<f32>(-998f, arg_2.a.x, var_1.c.c), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1128f, 205f, global2[_wgslsmith_index_u32(13195u, 21u)]) - vec3<f32>(-102f, 840f, -1962f))))).c.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.c.c)))));
    return var_1.c.d.zxy;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 21>();
    var var_0 = !select(func_1(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)])) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50282u, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6218u, 32u)], 32u)], 4294967295u), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 5025u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14540u, 32u)], 32u)])) % vec4<u32>(32u)), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(-18240i, u_input.b.x), 2147483647i >> (global0[_wgslsmith_index_u32(4647u, 32u)] % 32u)), global4[_wgslsmith_index_u32(~6703u, 2u)], 2372u), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(73925u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46158u, 32u)], 32u)], 32u)], 32u)]), 21u)], _wgslsmith_f_op_f32(ceil(659f)), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9291u, 32u)], 21u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 21u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 21u)]) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31961u, 32u)], 32u)], 32u)], 32u)], 32u)], 21u)], -1327f, 548f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], -101f)))))), global0[_wgslsmith_index_u32(~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 32u)], 32u)])), 32u)], 77926u, 1904f);
}

