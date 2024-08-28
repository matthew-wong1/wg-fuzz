struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(44240u, 1119u, 2033u);

var<private> global1: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(133f, -155f, -1000f), vec3<f32>(1172f, 2290f, -779f), vec3<f32>(518f, 2227f, 1000f), vec3<f32>(947f, 466f, 312f), vec3<f32>(276f, -1166f, 274f), vec3<f32>(622f, -1000f, -1272f), vec3<f32>(-240f, 784f, -209f), vec3<f32>(309f, 849f, -180f), vec3<f32>(-1171f, -1049f, -141f), vec3<f32>(-1000f, -1549f, -174f), vec3<f32>(2139f, -512f, -751f), vec3<f32>(-351f, 1467f, -1080f), vec3<f32>(-186f, -1484f, -1239f), vec3<f32>(845f, -166f, 108f), vec3<f32>(1000f, 522f, 1366f), vec3<f32>(331f, -693f, 2524f), vec3<f32>(-1349f, 673f, -1035f), vec3<f32>(-148f, -1217f, 359f), vec3<f32>(-997f, 1640f, 1000f), vec3<f32>(1000f, -899f, 1281f));

var<private> global2: array<f32, 4> = array<f32, 4>(497f, 775f, 1156f, -1500f);

var<private> global3: Struct_1 = Struct_1(-1000f, vec3<u32>(0u, 85342u, 2561u), 1i, 47698u, 1260f);

var<private> global4: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    global3 = arg_0;
    let var_0 = arg_0.e;
    var var_1 = arg_0;
    global3 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), ~vec3<u32>(11698u << (global0.x % 32u), u_input.a, global3.d), ~(-_wgslsmith_clamp_i32(arg_1, 0i, 1i) & (arg_1 >> (_wgslsmith_add_u32(global0.x, global0.x) % 32u))), select(1u, _wgslsmith_div_u32(u_input.a, ~(~global0.x)), select(false, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true)))), 734f);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a, 520f, true)), _wgslsmith_f_op_f32(round(1443f)))))), arg_0.b, -29333i, 4294967295u, global3.e);
    return firstLeadingBit(vec3<i32>(u_input.b, 0i, abs(var_1.c)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    global2 = array<f32, 4>();
    var var_0 = (false || !select(true, true, true)) && any(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    var var_1 = _wgslsmith_add_vec3_i32(-(_wgslsmith_add_vec3_i32(func_3(Struct_1(-1853f, global3.b, u_input.b, 27286u, 158f), u_input.b), -vec3<i32>(u_input.b, global3.c, u_input.b)) >> (~countOneBits(global3.b) % vec3<u32>(32u))), reverseBits(max(-vec3<i32>(u_input.b, 1i, global3.c), select(-vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(-2147483647i, -7810i, 0i) << (global3.b % vec3<u32>(32u)), vec3<bool>(true, false, true)))));
    var var_2 = _wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.b, var_1.x, 2147483647i, -2147483647i) ^ vec4<i32>(-2147483647i, -4469i, 31783i, global3.c)) | vec4<i32>(_wgslsmith_add_i32(0i, global3.c), 845i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global3.c, 1i, 13793i), vec4<i32>(3621i, 0i, 1i, -61321i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-10386i, 2147483647i, -1844i, 20026i), vec4<i32>(40047i, global3.c, -1i, 13188i))), vec4<i32>(~(~7222i), u_input.b, -u_input.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.c, -27334i), firstLeadingBit(2147483647i)))) >> (select(_wgslsmith_mod_vec4_u32(~(vec4<u32>(arg_0.x, 1u, 22650u, 34210u) >> (vec4<u32>(arg_0.x, 20302u, 23573u, global0.x) % vec4<u32>(32u))), vec4<u32>(49093u, abs(arg_0.x), select(0u, global0.x, false), 33306u)), abs(~vec4<u32>(u_input.a, global0.x, 70621u, 4294967295u) | abs(vec4<u32>(94338u, global0.x, arg_0.x, global3.d))), !select(true, all(vec2<bool>(false, true)), 632f >= global2[_wgslsmith_index_u32(global0.x, 4u)])) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~select(global3.b, vec3<u32>(global0.x, u_input.a, 41154u), true), vec3<u32>(global3.d, global3.b.x, u_input.a)), 4u)]));
    return ~countOneBits(~(select(19385u, global0.x, true) ^ _wgslsmith_dot_vec3_u32(global3.b, global3.b)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = Struct_1(global3.e, ~arg_0.xwz, u_input.b, 31597u, global2[_wgslsmith_index_u32((global0.x ^ ~4294967295u) >> (global3.d % 32u), 4u)]);
    let var_1 = _wgslsmith_sub_vec2_u32(global0.yz, global0.yx);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -622f), ~(~vec3<u32>(global0.x >> (15454u % 32u), ~0u, _wgslsmith_clamp_u32(var_1.x, 29044u, 58345u))), u_input.b, _wgslsmith_clamp_u32(var_0.b.x | _wgslsmith_div_u32(select(0u, var_1.x, false), func_2(vec2<u32>(86937u, 1u), global3.e)), var_1.x, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(max(-1000f, global3.e)))) - global2[_wgslsmith_index_u32(arg_0.x, 4u)]));
    var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-110f + global2[_wgslsmith_index_u32(var_0.b.x, 4u)]), 1f)))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(max(var_2.b.x, 19868u), ~4294967295u), ~global0.x), arg_0.xxw), -1i, ~((_wgslsmith_mod_u32(4294967295u, var_0.b.x) | var_0.d) | _wgslsmith_mult_u32(~arg_0.x, reverseBits(arg_0.x))), _wgslsmith_f_op_f32(sign(-1015f)));
    var var_3 = select(arg_0, vec4<u32>(1u, ~0u, countOneBits(~var_0.b.x), _wgslsmith_sub_u32(global0.x, 0u)), select(vec4<bool>(true, any(vec2<bool>(false, true)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, true, false)), true, false))) << (~(~vec4<u32>(var_2.d, ~var_1.x, select(4294967295u, 22884u, true), ~global0.x)) % vec4<u32>(32u));
    return -_wgslsmith_sub_i32(17906i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 4>();
    let var_0 = vec4<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 4u)]) + -765f) < 1561f, !all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))));
    global4 = func_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(88668u, global3.d, 0u, global3.d) ^ countOneBits(vec4<u32>(0u, global3.d, u_input.a, u_input.a) | vec4<u32>(43621u, global3.b.x, u_input.a, 71757u)), min(~(vec4<u32>(0u, global0.x, global3.d, u_input.a) << (vec4<u32>(global3.b.x, 0u, 0u, global3.d) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(global0.x, global0.x, u_input.a, 1u), vec4<u32>(u_input.a, 4294967295u, 0u, 8780u), vec4<bool>(false, false, var_0.x, false)), min(vec4<u32>(4060u, 20574u, 0u, 4294967295u), vec4<u32>(0u, u_input.a, global0.x, 4294967295u)))), firstTrailingBit(select(~vec4<u32>(u_input.a, 4294967295u, 33155u, 4294967295u), ~vec4<u32>(u_input.a, global0.x, global0.x, global0.x), true))));
    global1 = array<vec3<f32>, 20>();
    global2 = array<f32, 4>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-262f - 404f)))) + vec2<f32>(_wgslsmith_f_op_f32(-global3.e), global2[_wgslsmith_index_u32(3101u | _wgslsmith_clamp_u32(global0.x, 52382u, u_input.a), 4u)])));
    global4 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1425f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), -767f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + -2096f), _wgslsmith_f_op_f32(var_1.x - var_1.x)))))), global2[_wgslsmith_index_u32(u_input.a, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f)) + _wgslsmith_f_op_f32(-global3.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)), all(vec3<bool>(any(vec3<bool>(var_0.x, true, false)), any(var_0.xzx), true)))));
}

