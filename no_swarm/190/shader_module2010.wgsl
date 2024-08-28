struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, arg_0.a), vec3<u32>(1u, var_0.a, u_input.d.x))), var_0.a), vec2<u32>(0u, ~4294967295u));
    let var_2 = ~(~var_0.a);
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, u_input.d.x), countOneBits(reverseBits(var_1))));
    let var_4 = vec4<u32>(~(_wgslsmith_mod_u32(32982u, 1u) >> (_wgslsmith_sub_u32(65718u, max(var_0.a, var_0.a)) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(1u, var_0.a, u_input.b)), vec3<u32>(var_3.a, var_1.x, var_3.a), u_input.d), ~(~u_input.d ^ u_input.d)), ~((firstTrailingBit(var_2) | ~1u) ^ (arg_0.a >> (select(var_2, arg_0.a, false) % 32u))), ~_wgslsmith_clamp_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(33412u, u_input.d.x), vec2<u32>(1908u, u_input.d.x)), 0u & var_1.x, false), ~4294967295u, ~firstLeadingBit(54233u)));
    return all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(5381u, 2u)], !global0[_wgslsmith_index_u32(67279u, 2u)]), select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(43838u, 2u)], false), vec2<bool>(global0[_wgslsmith_index_u32(27435u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), global0[_wgslsmith_index_u32(42984u, 2u)]), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(19532u, 2u)], true), true)), !(global0[_wgslsmith_index_u32(var_4.x, 2u)] | false)), !vec2<bool>(!global0[_wgslsmith_index_u32(arg_0.a, 2u)], global0[_wgslsmith_index_u32(var_0.a, 2u)]), vec2<bool>(select(true, arg_0.a > var_2, global0[_wgslsmith_index_u32(1u, 2u)]), any(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 2u)], global0[_wgslsmith_index_u32(u_input.d.x, 2u)])) & true)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<f32>) -> u32 {
    return 39795u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1322f, 151f) * _wgslsmith_f_op_f32(floor(-340f)))), vec4<bool>(true, func_3(Struct_1(u_input.b)), !func_3(arg_1), ~71719u <= u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1951f, 824f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(718f, -301f), vec2<f32>(-1324f, 706f)))))));
    let var_1 = 1f;
    let var_2 = vec2<f32>(-1205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    var var_3 = vec4<u32>(15931u, var_0.a, arg_1.a, func_4(-444f, select(select(!vec4<bool>(arg_0.x, false, false, false), select(vec4<bool>(true, arg_2, true, arg_0.x), vec4<bool>(arg_0.x, arg_2, global0[_wgslsmith_index_u32(0u, 2u)], true), vec4<bool>(false, false, arg_2, true)), func_3(arg_1)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, arg_0.x, false), vec4<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(arg_1.a, 2u)], false), global0[_wgslsmith_index_u32(4294967295u, 2u)]), !vec4<bool>(true, arg_2, true, true), vec4<bool>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(arg_1.a, 2u)], arg_2)), vec4<bool>(!arg_2, !arg_0.x, true, any(vec2<bool>(arg_2, false)))), _wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(var_1, -1347f))));
    var var_4 = arg_1;
    return vec3<bool>(any(select(!arg_0, vec2<bool>(739f < var_1, global0[_wgslsmith_index_u32(max(1u, 54762u), 2u)]), !vec2<bool>(global0[_wgslsmith_index_u32(9995u, 2u)], arg_0.x))), !arg_2, true && any(vec4<bool>(true, -281f <= var_2.x, !global0[_wgslsmith_index_u32(1u, 2u)], u_input.c < u_input.c)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(653f, arg_2, -1661f, 1341f), vec4<f32>(arg_2, -674f, -1832f, arg_1.x), false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(182f, -753f, 2998f, -1000f)))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1372f))), -1000f);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(arg_2 + arg_1.x)), var_0.x, var_0.x, _wgslsmith_f_op_f32(1149f * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f - -224f) * _wgslsmith_f_op_f32(var_1.x + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(346f - 1599f) - -893f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f * 1031f)), 1069f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_2, arg_1.x, -537f), vec4<f32>(1335f, var_0.x, 829f, arg_2), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_3.a, 2u)], false, true))) + vec4<f32>(577f, -350f, 1000f, arg_1.x)) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(abs(1305f)), arg_1.x))));
    let var_3 = arg_3.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.zzw)));
    return vec4<i32>(abs(u_input.e.x), max(u_input.e.x, u_input.e.x), -1i, u_input.e.x);
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = 1i;
    let var_1 = u_input.b;
    global1 = -977f;
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 8202u), u_input.d.xy), _wgslsmith_mult_vec2_u32(u_input.d.yz, vec2<u32>(arg_2, 4294967295u)), vec2<bool>(true, true)), ~vec2<u32>(0u, 45628u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~(u_input.d.zy & vec2<u32>(arg_2, var_1)), ~(~u_input.d.zy)), max(vec2<u32>(~u_input.d.x, 34324u), vec2<u32>(4496u, _wgslsmith_div_u32(10621u, 3468u)))));
    global0 = array<bool, 2>();
    return Struct_1(0u);
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    let var_0 = Struct_1(u_input.d.x);
    let var_1 = Struct_1(3264u);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(549f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(264f))))));
    var var_2 = var_1;
    var_2 = func_6(func_5(func_2(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec2<bool>(true, true), true), var_0, any(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 2u)], false), global0[_wgslsmith_index_u32(u_input.b, 2u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2442f, -1000f) - vec2<f32>(163f, -456f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(929f, -467f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1103f + _wgslsmith_f_op_f32(min(254f, 1564f))), -456f)), var_0), -(~u_input.e | select(vec3<i32>(u_input.e.x, -1i, -1i), select(vec3<i32>(-2147483647i, 19362i, -42415i), vec3<i32>(-16814i, arg_0.x, u_input.e.x), global0[_wgslsmith_index_u32(var_2.a, 2u)]), true)), ~var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(-1468f + -601f), true)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(579f * -238f), _wgslsmith_f_op_f32(108f - -311f))))));
    return StorageBuffer(_wgslsmith_mult_vec4_i32(arg_0, vec4<i32>((i32(-1i) * -2147483647i) ^ select(arg_0.x, -27090i, global0[_wgslsmith_index_u32(var_0.a, 2u)]), arg_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_0, arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, arg_0.x, 25771i), vec4<i32>(12210i, u_input.a, 1i, arg_0.x))), abs(arg_0.x))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~select(var_1.a, var_0.a, false), 1u), _wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.d), vec3<u32>(13586u, 44055u, ~var_1.a))), var_2.a, vec3<u32>(~abs(countOneBits(var_0.a)), var_0.a << (var_0.a % 32u), _wgslsmith_mod_u32(68309u, 25047u >> (1u % 32u)) | var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 47696u;
    let var_1 = Struct_1(_wgslsmith_mult_u32(13874u, ~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d)));
    var var_2 = 103861u;
    var var_3 = 11424u;
    let var_4 = Struct_1(_wgslsmith_add_u32(var_0, ~u_input.b));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = func_1(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c, -632i, -2147483647i) & vec4<i32>(u_input.e.x, u_input.c, 18871i, u_input.c), abs(vec4<i32>(u_input.c, 1i, -53416i, u_input.a)))));
}

