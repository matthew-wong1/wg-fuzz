struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(546f, 1u, 2147483647i, vec2<f32>(-201f, -755f)), Struct_1(-901f, 6236u, 2147483647i, vec2<f32>(-832f, 1797f)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(209f, 22704u, 61948i, vec2<f32>(-1000f, 468f)), Struct_1(113f, 1174u, -25209i, vec2<f32>(202f, 329f)), Struct_1(-251f, 15896u, 4811i, vec2<f32>(-413f, 188f)), Struct_1(-907f, 56639u, 0i, vec2<f32>(-1807f, -820f)), Struct_1(1209f, 50193u, -7012i, vec2<f32>(-755f, 381f)), Struct_1(-172f, 1u, 2147483647i, vec2<f32>(-216f, -598f)), Struct_1(-714f, 17918u, -8920i, vec2<f32>(-1342f, -749f)), Struct_1(1164f, 12712u, -1i, vec2<f32>(-204f, 943f)), Struct_1(-1958f, 0u, -16999i, vec2<f32>(3152f, 1000f)), Struct_1(-296f, 0u, -1i, vec2<f32>(1109f, 117f)), Struct_1(579f, 0u, -1i, vec2<f32>(-1538f, 906f)), Struct_1(-113f, 0u, -51016i, vec2<f32>(-640f, 801f)), Struct_1(-1000f, 52877u, 14587i, vec2<f32>(-1596f, -1644f)), Struct_1(-398f, 83032u, 2147483647i, vec2<f32>(-841f, -2653f)), Struct_1(-1616f, 4294967295u, 40001i, vec2<f32>(-321f, -118f)), Struct_1(884f, 0u, 4979i, vec2<f32>(-747f, -143f)), Struct_1(277f, 10645u, 2147483647i, vec2<f32>(-1497f, -426f)), Struct_1(248f, 29426u, 1i, vec2<f32>(1329f, -707f)), Struct_1(-370f, 1u, 61937i, vec2<f32>(1148f, 1208f)), Struct_1(-118f, 1u, 0i, vec2<f32>(897f, -1000f)), Struct_1(116f, 3334u, 0i, vec2<f32>(-1200f, 1000f)), Struct_1(-897f, 1u, i32(-2147483648), vec2<f32>(-124f, -954f)));

var<private> global3: f32 = -374f;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = abs(global1.c | _wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.e, global1.c ^ arg_1.a.c), _wgslsmith_div_i32(global1.c, _wgslsmith_sub_i32(1i, arg_0.a.c))));
    global3 = _wgslsmith_div_f32(-990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2579f)) - global1.a) - -351f)));
    global1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d.x + global1.a)), -606f))), arg_1.a.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.c, 9343i, var_0, arg_0.a.c), vec4<i32>(global1.c, var_0, arg_0.a.c, arg_0.a.c))), -(~vec4<i32>(arg_1.a.c, -2147483647i, 12077i, 0i))), firstTrailingBit(-1i)), global1.d);
    global0 = array<Struct_1, 2>();
    global4 = false;
    return select(!any(vec4<bool>(global1.a != -365f, arg_1.a.d.x == arg_0.a.d.x, any(vec2<bool>(false, true)), 688f == global1.d.x)), global1.b >= ~79046u, true);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = !select(arg_0, vec3<bool>(!func_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), !select(arg_0.x, arg_0.x, arg_0.x), !arg_0.x), vec3<bool>(_wgslsmith_f_op_f32(-global1.d.x) <= _wgslsmith_f_op_f32(ceil(-1000f)), all(!vec3<bool>(arg_0.x, true, false)), arg_0.x));
    global0 = array<Struct_1, 2>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.x), 593f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.d.x, 159f, var_1.x)) + _wgslsmith_f_op_f32(-arg_2.d.x)))) * _wgslsmith_f_op_f32(step(arg_2.a, 210f)));
    let var_3 = vec2<u32>(45289u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~global1.b), 1u, 34788u), firstLeadingBit(10165u)));
    return Struct_1(-926f, global1.b, _wgslsmith_clamp_i32(var_0, 1i, 0i | (arg_2.c | u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.d.x, _wgslsmith_f_op_f32(round(-386f)), arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_2))))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = Struct_1(arg_0.a.d.x, arg_0.a.b, _wgslsmith_mult_i32(max(reverseBits(_wgslsmith_clamp_i32(u_input.b, 1i, 2147483647i)), _wgslsmith_add_i32(0i, 10204i) ^ u_input.e), -arg_0.a.c), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(776f, _wgslsmith_f_op_f32(floor(arg_0.a.a))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f + arg_0.a.a))), _wgslsmith_div_f32(arg_0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-953f)))))), _wgslsmith_f_op_f32(-1805f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(217f, global1.a, false))))), false));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(func_2(vec3<bool>(false, false, true), -9047i, arg_1)))), 1387f), min(global1.b, 1u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(747u, reverseBits(arg_1.b), _wgslsmith_add_u32(global1.b, 0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), ~10831u, firstLeadingBit(u_input.c.x))), global1.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1193f + func_2(vec3<bool>(true, false, true), arg_1.c, Struct_1(1392f, arg_1.b, arg_0.x, arg_1.d)).d.x) * -971f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + 293f) * _wgslsmith_f_op_f32(func_4(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 2u)]))))))));
    var var_1 = min(~vec4<u32>(~_wgslsmith_sub_u32(arg_1.b, 74639u), ~firstLeadingBit(2722u), _wgslsmith_add_u32(~4294967295u, ~u_input.c.x), 1u), firstLeadingBit(_wgslsmith_mult_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 95320u, arg_1.b, global1.b), vec4<u32>(u_input.c.x, arg_1.b, u_input.a, 0u)), select(vec4<u32>(4294967295u, 0u, 17407u, 31319u), vec4<u32>(0u, arg_1.b, 4294967295u, 11482u), vec4<bool>(true, true, false, false))), vec4<u32>(select(arg_1.b, 24381u, true), var_0.b, ~4294967295u, 0u << (global1.b % 32u)))));
    let var_2 = vec3<i32>(arg_0.x, -_wgslsmith_div_i32(_wgslsmith_mult_i32(14152i, u_input.b), global1.c), -2147483647i);
    var var_3 = vec4<u32>(~_wgslsmith_dot_vec3_u32(var_1.zyz, ~_wgslsmith_add_vec3_u32(var_1.xwz, vec3<u32>(13210u, 4294967295u, arg_1.b))), ~min(arg_1.b, var_1.x), 1u, var_0.b);
    var var_4 = func_2(!vec3<bool>(_wgslsmith_f_op_f32(arg_1.d.x - -1353f) < _wgslsmith_div_f32(-2227f, var_0.a), _wgslsmith_div_f32(var_0.a, 299f) < 2043f, select(true, true, true)), var_0.c, func_2(vec3<bool>(false, any(vec3<bool>(true, true, false)), true), firstLeadingBit(_wgslsmith_dot_vec3_i32(var_2, vec3<i32>(-1i, -43287i, 18863i))), func_2(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), 17662i, func_2(vec3<bool>(true, true, true), var_2.x >> (global1.b % 32u), Struct_1(arg_1.a, var_0.b, global1.c, arg_1.d)))));
    return ~(~_wgslsmith_mod_u32(~func_2(vec3<bool>(false, false, false), -29312i, Struct_1(global1.d.x, var_0.b, arg_1.c, vec2<f32>(657f, arg_1.a))).b, var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    var var_0 = vec4<u32>(~(~u_input.d), firstTrailingBit(18203u), min(~_wgslsmith_clamp_u32(1u, ~0u, 1u), func_1(vec3<i32>(1i, _wgslsmith_clamp_i32(global1.c, u_input.e, u_input.e), u_input.b), Struct_1(-1000f, 1u, ~u_input.b, global1.d))), u_input.a);
    var var_1 = any(vec4<bool>(!(!any(vec3<bool>(false, false, true))), true, _wgslsmith_f_op_f32(func_4(Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 22u)]))) >= _wgslsmith_f_op_f32(ceil(global1.d.x)), select(func_3(Struct_2(global2[_wgslsmith_index_u32(10105u, 22u)]), Struct_2(global2[_wgslsmith_index_u32(global1.b, 22u)])), true, false)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(48128u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~u_input.c, var_0.xy), 1504u)), 22u)];
    var_1 = true && all(vec4<bool>(true, true, true, true));
    let var_3 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, false)))), vec4<bool>(true, !any(vec2<bool>(true, false)), false, true)), vec4<bool>(!(!any(vec4<bool>(true, false, true, false))), all(vec2<bool>(all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, true)))), func_3(Struct_2(Struct_1(var_2.d.x, 5722u, u_input.b, global1.d)), Struct_2(func_2(vec3<bool>(true, true, false), u_input.e, global2[_wgslsmith_index_u32(var_0.x, 22u)]))), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))))), !(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false))));
    let var_4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(-var_2.a))), var_4.x), _wgslsmith_add_u32(1u, firstTrailingBit(~var_2.b)), _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(select(-1488f, _wgslsmith_f_op_f32(-197f * _wgslsmith_f_op_f32(var_2.d.x + global1.d.x)), !any(var_3)))));
}

