struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<u32, 30> = array<u32, 30>(32351u, 71890u, 16593u, 0u, 4294967295u, 30701u, 7198u, 0u, 1u, 77535u, 6161u, 4294967295u, 229u, 1u, 54271u, 43473u, 1u, 12385u, 119074u, 22360u, 42216u, 3648u, 1u, 0u, 56350u, 33371u, 43120u, 79423u, 0u, 4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))) - arg_0.b.yz) + vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(952f, arg_1.x)) + -569f))));
    var var_1 = ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], _wgslsmith_sub_u32(~53454u, firstTrailingBit(1u)), 0u);
    var_1 = countOneBits(vec3<u32>(~firstTrailingBit(_wgslsmith_sub_u32(43308u, 38622u)), abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.c.e, arg_0.c.e), 30u)]) | min(reverseBits(arg_0.c.e.x), global1[_wgslsmith_index_u32(countOneBits(1u), 30u)]), 61764u));
    let var_2 = !(!select(vec2<bool>(u_input.a <= -2147483647i, true), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(54932u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68231u, 30u)], 30u)]), 11u)], !global0[_wgslsmith_index_u32(64408u, 11u)]));
    global1 = array<u32, 30>();
    return ((arg_2 << (global1[_wgslsmith_index_u32(~14586u & u_input.b.x, 30u)] % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_3.yzz, vec3<i32>(u_input.a, -2147483647i, 1i)), i32(-1i) * -2147483647i, _wgslsmith_mod_i32(arg_3.x, u_input.a)), select(vec3<i32>(-41573i, 0i, 19295i), arg_3.xyx, vec3<bool>(true, true, true)))) & 51583i;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> vec2<bool> {
    global0 = array<vec2<bool>, 11>();
    var var_0 = arg_1 << (abs(~abs(vec2<u32>(11966u, global1[_wgslsmith_index_u32(4294967295u, 30u)]) | u_input.b.yz)) % vec2<u32>(32u));
    let var_1 = -595f;
    return vec2<bool>(!select(true, false, (global1[_wgslsmith_index_u32(54274u, 30u)] >= global1[_wgslsmith_index_u32(0u, 30u)]) & true), !arg_2);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> vec4<i32> {
    var var_0 = vec3<i32>(arg_2, i32(-1i) * -26658i, _wgslsmith_dot_vec3_i32(~countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(20781i, arg_2, arg_2), vec3<i32>(arg_2, -6196i, arg_2))), vec3<i32>(~(-2147483647i), u_input.c, 1i)));
    global0 = array<vec2<bool>, 11>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-arg_1.zz));
    let var_2 = select(select(!(!global0[_wgslsmith_index_u32(1u, 11u)]), func_4(func_3(Struct_4(global1[_wgslsmith_index_u32(0u, 30u)], vec4<f32>(arg_1.x, var_1.a.x, 135f, arg_1.x), Struct_1(var_1.a.x, false, false, true, vec4<u32>(0u, global1[_wgslsmith_index_u32(114249u, 30u)], 12657u, 19258u))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, var_1.a.x, arg_1.x))), 16721i, vec4<i32>(1i, -7136i, -58161i, 36564i)), var_0.xz, select(arg_3, arg_3, arg_3) == true), vec2<bool>(true, true)), select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 43329u, global1[_wgslsmith_index_u32(53619u, 30u)], 0u), vec4<u32>(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(1u, 30u)], 0u))), 30u)], 11u)], vec2<bool>(arg_0, true), !func_4(1i & var_0.x, ~var_0.xy, arg_3 || false)), !global0[_wgslsmith_index_u32(countOneBits(~(~u_input.b.x)), 11u)]);
    var var_3 = Struct_2(arg_1.x, max(3297i, ~(i32(-1i) * -1i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -112f), any(!select(vec4<bool>(false, true, true, arg_3), vec4<bool>(var_2.x, true, arg_3, false), vec4<bool>(var_2.x, arg_0, arg_3, arg_3))), 0i <= _wgslsmith_div_i32(arg_2, -54711i), arg_3, select(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], global1[_wgslsmith_index_u32(72723u, 30u)], u_input.b.x, u_input.b.x)), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], u_input.b.x, global1[_wgslsmith_index_u32(38861u, 30u)]), select(vec4<bool>(arg_0, var_2.x, arg_0, var_2.x), vec4<bool>(arg_0, false, true, true), vec4<bool>(false, false, var_2.x, arg_3))) << (~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52501u, 30u)], 30u)], u_input.b.x, u_input.b.x, 29470u)) % vec4<u32>(32u))), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(trunc(585f)))), !select(func_4(arg_2 | arg_2, var_0.xy, true), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 39197u, 61750u)), 11u)], any(var_2)));
    return ~(-vec4<i32>(reverseBits(-2147483647i), abs(2673i), _wgslsmith_clamp_i32(min(2147483647i, 1i), _wgslsmith_mult_i32(var_3.b, u_input.a), -1492i), countOneBits(reverseBits(-22983i))));
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, 305f)) * vec2<f32>(-991f, 278f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1352f, 968f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1973f, -581f) + vec2<f32>(2415f, 809f)), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1429f, 502f)))), vec2<f32>(_wgslsmith_div_f32(1169f, -556f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<vec2<bool>, 11>();
    var var_1 = max(func_2(false | !all(global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(855f, 1023f, -2085f) + vec3<f32>(-172f, var_0.a.x, 1524f)))), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-351f)) * _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), -abs(~(-vec4<i32>(u_input.c, -2147483647i, -17477i, 46181i))));
    var var_2 = Struct_4(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~28684u, 30u)], ~firstTrailingBit(0u) << (u_input.b.x % 32u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2465f), -537f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(-628f + 229f)))), Struct_1(-1101f, any(vec4<bool>(true, true, true, true)) && true, true, true, _wgslsmith_mod_vec4_u32(~vec4<u32>(38262u, 4294967295u, global1[_wgslsmith_index_u32(77229u, 30u)], 47998u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(75910u, 15026u, 36374u, u_input.b.x), vec4<u32>(u_input.b.x, 23190u, 0u, 24755u))))));
    var_2 = Struct_4(_wgslsmith_dot_vec2_u32(~(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u) ^ max(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(0u, 30u)]), var_2.c.e.zw)), var_2.c.e.xz), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_2.c.a, var_2.b.x, var_2.c.a)), vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(max(var_2.b.x, var_2.c.a)), 690f, _wgslsmith_f_op_f32(step(-877f, var_0.a.x))), select(select(vec4<bool>(var_2.c.c, var_2.c.d, var_2.c.b, true), vec4<bool>(var_2.c.c, var_2.c.d, var_2.c.d, true), true), !vec4<bool>(var_2.c.b, false, var_2.c.d, true), select(vec4<bool>(false, false, true, var_2.c.b), vec4<bool>(false, true, var_2.c.b, var_2.c.b), var_2.c.c)))), _wgslsmith_div_vec4_f32(var_2.b, var_2.b), !(!vec4<bool>(var_2.c.c, true, var_2.c.c, false)))), var_2.c);
    return select(abs(firstLeadingBit(vec3<u32>(42284u, var_2.a, 81571u) << (~vec3<u32>(38864u, 10827u, u_input.b.x) % vec3<u32>(32u)))), ~vec3<u32>(~global1[_wgslsmith_index_u32(reverseBits(var_2.c.e.x), 30u)], 33314u, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 77394u), var_2.c.e.zy), 30u)]), global1[_wgslsmith_index_u32(firstLeadingBit(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20129u, 30u)], 30u)]), 30u)] >= ~(~79512u));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(63179u, u_input.b.x);
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, firstLeadingBit(u_input.a | u_input.a)) | -23132i, 1i);
    var var_2 = -410f;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1902f) - _wgslsmith_f_op_f32(f32(-1f) * -1279f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 387f)))), Struct_1(-779f, true, true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), countOneBits(vec4<u32>(arg_0.x, global1[_wgslsmith_index_u32(reverseBits(1u), 30u)], u_input.b.x, 1u))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1395f) * 767f))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-9553i, ~u_input.a, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-73216i, 9810i, 15788i, 2147483647i), vec4<i32>(52937i, 1i, 1i, u_input.c)) & countOneBits(1i)), Struct_1(_wgslsmith_f_op_f32(select(-896f, _wgslsmith_f_op_f32(f32(-1f) * -1037f), func_4(u_input.c, vec2<i32>(-42664i, u_input.a), false).x)), true, any(vec3<bool>(true, true, true)), false, abs(reverseBits(vec4<u32>(var_0, 22592u, arg_0.x, 1u)))), 576f, select(select(!global0[_wgslsmith_index_u32(arg_0.x, 11u)], select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(13045u, 11u)], false), global0[_wgslsmith_index_u32(1u, 11u)]), vec2<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, true))), vec2<bool>(false, true))), !(!vec4<bool>(u_input.c >= 13999i, all(vec3<bool>(true, true, false)), true, true)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1363f, -797f)))));
    var var_1 = func_5(func_1(), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 30u)], reverseBits(arg_1.c.c.e.x))).c.c;
    let var_2 = Struct_5(var_0.a);
    var var_3 = select(~4294967295u, var_1.e.x, arg_0.x);
    var var_4 = func_4(-arg_1.c.b, _wgslsmith_mod_vec2_i32(~countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.a, -32889i))), select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c.b, u_input.a), vec2<i32>(-5253i, u_input.a)), vec2<i32>(-21632i, -57107i), var_2.a.x > var_2.a.x) | (vec2<i32>(-1i, 2147483647i) ^ firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), !all(vec4<bool>(arg_0.x, true, !var_1.b, arg_0.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 11>();
    var var_0 = func_6(vec3<bool>(any(vec2<bool>(true, true)), true, (false && (-2147483647i != u_input.c)) && true), func_5(func_1(), _wgslsmith_div_u32(~1u | _wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 0u) & ~4294967295u)));
    var var_1 = vec2<f32>(1349f, func_6(select(var_0.d.zwy, select(func_6(var_0.d.yzx, Struct_3(vec2<f32>(var_0.b.a, var_0.c.c.a), var_0.c.c, Struct_2(var_0.b.a, 16301i, var_0.c.c, -342f, var_0.d.xy), var_0.d)).d.zxx, var_0.d.wxz, var_0.d.xwx), var_0.d.zyy), func_6(select(vec3<bool>(var_0.d.x, var_0.c.e.x, false), var_0.d.wzz, var_0.c.e.x), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c.a, var_0.c.c.a) * vec2<f32>(var_0.b.a, var_0.a.x)), func_5(vec3<u32>(0u, 0u, 11201u), var_0.c.c.e.x).b, func_6(var_0.d.xyy, Struct_3(var_0.a, var_0.c.c, var_0.c, vec4<bool>(var_0.b.c, var_0.b.b, false, true))).c, vec4<bool>(true, var_0.c.c.d, true, true)))).c.c.a);
    let var_2 = Struct_4(4294967295u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, -634f, -867f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_1.x, 1284f, var_0.c.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2248f, var_0.a.x, 553f, var_0.b.a) + vec4<f32>(var_0.b.a, var_0.a.x, var_1.x, var_1.x)))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1151f + -456f)), var_0.a.x)), true, select(var_0.b.d, !var_0.c.e.x, true), var_0.b.c == !func_5(u_input.b, 31145u).d.x, countOneBits(abs(~var_0.b.e))));
    var var_3 = var_0.d.xyx;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, vec4<bool>(var_0.d.x, true, var_3.x, false))))))) * var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(-func_5(vec3<u32>(1u, global1[_wgslsmith_index_u32(31183u | global1[_wgslsmith_index_u32(47298u, 30u)], 30u)], 4294967295u & var_2.c.e.x), _wgslsmith_dot_vec4_u32(var_2.c.e | var_0.b.e, firstLeadingBit(var_0.c.c.e))).c.b);
}

