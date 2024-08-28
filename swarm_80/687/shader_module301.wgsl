struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<bool>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-16465i, -61842i, -5829i, -33880i, 21156i, 65785i, -1i, 61269i, -53807i);

var<private> global1: u32 = 80060u;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<f32, 12> = array<f32, 12>(-311f, 951f, -1000f, 618f, -638f, 1083f, 148f, 1248f, -1000f, -1085f, -278f, -333f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    global1 = 76682u;
    var var_0 = Struct_4(~_wgslsmith_mult_u32(~1u, select(countOneBits(66680u), reverseBits(112413u), global3[_wgslsmith_index_u32(0u, 12u)] > global3[_wgslsmith_index_u32(4294967295u, 12u)])), Struct_3(arg_0, Struct_1(vec4<i32>(~arg_1.x, _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(u_input.b.x, 1i, arg_1.x)), 7691i, ~arg_1.x), false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(11994u, 12u)], 2686f, global3[_wgslsmith_index_u32(0u, 12u)]), vec3<f32>(885f, 207f, global3[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], 1265f, global3[_wgslsmith_index_u32(0u, 12u)]) + vec3<f32>(631f, 1664f, global3[_wgslsmith_index_u32(0u, 12u)])))), ~2147483647i, 274f), arg_0.x, Struct_1(vec4<i32>(arg_1.x, _wgslsmith_sub_i32(arg_1.x, global0[_wgslsmith_index_u32(54832u, 9u)]), arg_1.x, min(2147483647i, u_input.b.x)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1152f, -595f, 494f) - vec3<f32>(global3[_wgslsmith_index_u32(57811u, 12u)], global3[_wgslsmith_index_u32(67934u, 12u)], 116f))), min(0i, countOneBits(arg_1.x)), global3[_wgslsmith_index_u32(61705u, 12u)])), !select(vec3<bool>(all(vec4<bool>(false, false, false, arg_0.x)), global3[_wgslsmith_index_u32(4294967295u, 12u)] <= global3[_wgslsmith_index_u32(0u, 12u)], true), !(!vec3<bool>(global2.x, true, global2.x)), !arg_2), arg_0.x, Struct_3(!arg_0, Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-1i, u_input.a.x, 3122i), u_input.a.x, ~global0[_wgslsmith_index_u32(62363u, 9u)], -45044i), select(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(72208u, 12u)])), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 1344f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(48508u, 12u)])), 1i, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(reverseBits(15110u), 12u)]))), true, Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(44221i, u_input.b.x, 1i, -44438i), vec4<i32>(-6609i, 49037i, -8968i, 28087i)), 48031i, _wgslsmith_dot_vec2_i32(arg_1.yx, vec2<i32>(-2147483647i, arg_1.x)), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(57008u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)])), 0i, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(countOneBits(0u), 12u)] - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 12u)])))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a, 4294967295u), 12u)])) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b.b.c.x)), 1410f)))));
    let var_2 = var_0.e.d;
    let var_3 = Struct_2(vec3<f32>(var_2.c.x, var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2710f)))))), var_0.b.d, min(~(~vec3<u32>(59842u, var_0.a, var_0.a)), vec3<u32>(1u >> (var_0.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30197u, 29272u), vec3<u32>(var_0.a, 14601u, var_0.a)), ~var_0.a)) << ((vec3<u32>(var_0.a, firstLeadingBit(25814u), var_0.a) & ~reverseBits(vec3<u32>(9890u, var_0.a, var_0.a))) % vec3<u32>(32u)), ~(-2147483647i), -1661f);
    return _wgslsmith_f_op_f32(-var_0.b.b.c.x);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_4(4294967295u >> (_wgslsmith_div_u32(firstTrailingBit(min(4294967295u, 10755u)), min(_wgslsmith_mult_u32(0u, 58913u), reverseBits(34178u))) % 32u), Struct_3(!(!select(vec2<bool>(arg_0, true), vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x))), Struct_1(abs(reverseBits(vec4<i32>(23402i, arg_1.x, arg_1.x, arg_1.x))), all(vec4<bool>(false, false, true, false)) || !arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(24579u, 12u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(595f, global3[_wgslsmith_index_u32(0u, 12u)], 1731f) + vec3<f32>(global3[_wgslsmith_index_u32(25931u, 12u)], 3462f, -742f))), ~1i, _wgslsmith_f_op_f32(floor(-309f))), all(select(!vec2<bool>(true, arg_0), select(vec2<bool>(false, global2.x), vec2<bool>(arg_0, false), vec2<bool>(false, true)), global2.x | global2.x)), Struct_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -16871i, 18026i, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<i32>(-35164i, global0[_wgslsmith_index_u32(0u, 9u)], arg_1.x, global0[_wgslsmith_index_u32(1u, 9u)])), true & !arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(672f, 1279f, global3[_wgslsmith_index_u32(27987u, 12u)]))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global3[_wgslsmith_index_u32(20556u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)])))), -2147483647i, _wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, false), vec2<bool>(true, global2.x), vec2<bool>(global2.x, false)), -arg_1, arg_0)))), vec3<bool>(true, true, true), true || global2.x, Struct_3(!(!select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), global2.x)), Struct_1(~(vec4<i32>(global0[_wgslsmith_index_u32(1u, 9u)], -20856i, 0i, arg_1.x) ^ vec4<i32>(u_input.b.x, -1i, global0[_wgslsmith_index_u32(26764u, 9u)], u_input.b.x)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1960f, 659f, -378f), vec3<f32>(-418f, 242f, global3[_wgslsmith_index_u32(101450u, 12u)]))), -u_input.a.x, 656f), !(!any(vec3<bool>(arg_0, arg_0, true))), Struct_1(select(vec4<i32>(u_input.b.x, 0i, 2147483647i, 2147483647i) >> (vec4<u32>(1u, 79564u, 20545u, 0u) % vec4<u32>(32u)), min(vec4<i32>(1i, arg_1.x, 2147483647i, 1i), vec4<i32>(-27347i, -15707i, arg_1.x, -84761i)), vec4<bool>(true, true, true, false)), true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(0u, 12u)], 135f, global3[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(452f, global3[_wgslsmith_index_u32(20245u, 12u)], -218f)))), -arg_1.x, -853f)));
    var var_1 = var_0.b.d.c.x;
    global3 = array<f32, 12>();
    let var_2 = var_0.b.d;
    var var_3 = Struct_4(var_0.a, Struct_3(!var_0.b.a, Struct_1(abs(~var_2.a), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.d.c + vec3<f32>(var_0.e.b.e, 305f, var_2.e))), -14699i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.e.a, vec3<i32>(var_2.a.x, var_0.e.b.d, global0[_wgslsmith_index_u32(var_0.a, 9u)]), arg_0)))), all(select(vec3<bool>(true, var_2.b, arg_0), vec3<bool>(var_0.e.b.b, var_0.c.x, true), vec3<bool>(arg_0, true, false))), Struct_1(vec4<i32>(-1i, ~var_0.e.d.a.x, 2147483647i >> (1u % 32u), select(var_0.e.d.a.x, var_2.d, arg_0)), var_2.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.b.e, -1794f, -1000f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.c.x, var_2.c.x, global3[_wgslsmith_index_u32(var_0.a, 12u)]))), vec3<bool>(global2.x, false, global2.x))), 8912i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2113f)))))), select(var_0.c, !select(select(var_0.c, var_0.c, vec3<bool>(true, true, true)), var_0.c, true), vec3<bool>(arg_0, false, var_2.b)), all(!select(var_0.c, vec3<bool>(var_2.b, true, true), var_0.c)), var_0.e);
    return true;
}

fn func_4(arg_0: bool) -> Struct_1 {
    global2 = !vec2<bool>(true, abs(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a.x)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(27465i, 1340i), vec2<i32>(-61119i, u_input.b.x) << (vec2<u32>(69481u, 1u) % vec2<u32>(32u))));
    let var_0 = -(~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.b.x, -2147483647i)), select(global0[_wgslsmith_index_u32(~4294967295u, 9u)], max(global0[_wgslsmith_index_u32(1u, 9u)], -70330i), !global2.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1118f, global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], -271f), vec4<f32>(1058f, -680f, 706f, -659f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(0u, 12u)], 349f, global3[_wgslsmith_index_u32(1747u, 12u)], -686f), vec4<f32>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], 1520f, global3[_wgslsmith_index_u32(1u, 12u)]))), true)) - vec4<f32>(529f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(78173u, 12u)]), global3[_wgslsmith_index_u32(~1u, 12u)], _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(19591u, 12u)], -2305f, global2.x)))))));
    let var_2 = Struct_3(vec2<bool>(true, !(-107f != _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(7982u, 12u)], global3[_wgslsmith_index_u32(4544u, 12u)])))), Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 51080i, var_0.x, -4373i), vec4<i32>(1i, 1i, 1i, 1i)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(9077u, 14261u, 20092u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), true, var_1.yyy, -54521i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1411f, 124f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -832f)))), false, Struct_1(vec4<i32>(-var_0.x, ~u_input.a.x, var_0.x << (1u % 32u), 1i) & vec4<i32>(_wgslsmith_sub_i32(var_0.x, 1i), i32(-1i) * -2147483647i, reverseBits(u_input.b.x), -var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(710f, -536f)))) < _wgslsmith_f_op_f32(-1093f * var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.yxz)), -var_0.x, -499f));
    let var_3 = ~reverseBits(54631u);
    return var_2.b;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    return func_4(func_2(!global2.x, ~vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -1i), max(38628i, -2147483647i), global0[_wgslsmith_index_u32(abs(arg_0), 9u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 12>();
    var var_0 = 1i;
    let var_1 = func_1(1u, ~vec3<u32>(1u, ~(~2771u), ~1u));
    var var_2 = ~0u;
    let var_3 = Struct_3(!(!vec2<bool>(!var_1.b, select(var_1.b, var_1.b, var_1.b))), var_1, global2.x, func_1(1u, vec3<u32>(1u, 1u, 1u)));
    let var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(-16726i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.a.x, var_1.a.x)), ~u_input.b)), ~vec2<i32>(1i, -var_3.b.a.x)) | vec2<i32>(_wgslsmith_mult_i32((var_3.d.d & var_1.d) ^ var_3.b.d, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 9u)], var_1.a.x, u_input.b.x, global0[_wgslsmith_index_u32(40113u, 9u)]) << (vec4<u32>(4294967295u, 1u, 151011u, 44491u) % vec4<u32>(32u)), select(vec4<i32>(global0[_wgslsmith_index_u32(1u, 9u)], u_input.b.x, 0i, var_3.b.a.x), var_1.a, var_1.b))), func_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 11824u), vec3<u32>(1u, 1938u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), ~(~vec3<u32>(1u, 22579u, 20765u))).a.x);
    global0 = array<i32, 9>();
    let var_5 = -_wgslsmith_sub_i32(var_3.b.a.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, ~reverseBits(4955u) >> (reverseBits(0u) % 32u)), func_1(_wgslsmith_mod_u32(1u, 21971u), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(96210u, 61340u, 24446u))).a, abs(-67783i) >> (_wgslsmith_mod_u32(0u, 38156u) % 32u), ~1u);
}

