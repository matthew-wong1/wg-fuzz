struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, vec2<f32>(488f, 1479f), -64236i), Struct_1(true, vec2<f32>(261f, 717f), -10015i), Struct_1(false, vec2<f32>(-195f, -744f), -1i), Struct_1(true, vec2<f32>(-192f, -342f), -1i), Struct_1(true, vec2<f32>(528f, 225f), -37563i), Struct_1(true, vec2<f32>(-546f, 594f), 1i), Struct_1(false, vec2<f32>(-509f, -976f), 1i), Struct_1(false, vec2<f32>(-295f, -790f), -1i), Struct_1(true, vec2<f32>(-1993f, 1428f), -1i), Struct_1(false, vec2<f32>(1548f, -875f), 32449i), Struct_1(false, vec2<f32>(153f, 1000f), -8067i), Struct_1(false, vec2<f32>(-854f, 1893f), 2147483647i), Struct_1(false, vec2<f32>(1430f, 334f), i32(-2147483648)), Struct_1(true, vec2<f32>(-120f, 1596f), -43101i), Struct_1(false, vec2<f32>(519f, 958f), 46494i), Struct_1(false, vec2<f32>(-1141f, -614f), 1i), Struct_1(false, vec2<f32>(-1348f, 712f), 44i), Struct_1(false, vec2<f32>(1000f, 122f), -29743i), Struct_1(true, vec2<f32>(-1911f, -231f), 1837i), Struct_1(true, vec2<f32>(-963f, -280f), 21491i), Struct_1(false, vec2<f32>(-544f, 1000f), -1i), Struct_1(false, vec2<f32>(501f, 1536f), 2147483647i));

var<private> global1: u32 = 0u;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec2<f32>(-1997f, 1192f), i32(-2147483648)), Struct_1(true, vec2<f32>(-788f, -1853f), 1i), Struct_1(true, vec2<f32>(1605f, 340f), 2147483647i), Struct_1(false, vec2<f32>(-1434f, -2066f), -10959i), Struct_1(false, vec2<f32>(1229f, -1605f), 2147483647i), Struct_1(true, vec2<f32>(1379f, 910f), -12714i), Struct_1(false, vec2<f32>(-856f, -1000f), -1i), Struct_1(false, vec2<f32>(430f, 153f), -1i), Struct_1(true, vec2<f32>(-746f, 1469f), 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 22>();
    let var_0 = Struct_1(75703u >= u_input.a, arg_0.b, arg_0.c);
    global0 = array<Struct_1, 22>();
    var var_1 = !(!vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, var_0.a), true)), ~62978u != ~u_input.a));
    global1 = 66842u;
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 22>();
    let var_0 = global0[_wgslsmith_index_u32((0u | u_input.a) | arg_3, 22u)];
    global2 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(235f, _wgslsmith_f_op_f32(sign(arg_2)))))));
    var var_2 = -arg_0.c;
    return Struct_1(all(vec3<bool>(true, var_0.a, min(u_input.a, u_input.a) > u_input.a)), arg_0.b, arg_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_0.b.x;
    var var_1 = Struct_1(false, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(250f, arg_1)), 504f), arg_1), reverseBits(arg_2) ^ _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.c, arg_0.c, arg_3.c) ^ vec3<i32>(0i, -18702i, arg_0.c)), vec3<i32>(arg_2, -25715i, _wgslsmith_div_i32(3119i, -17588i))));
    var var_2 = abs(vec3<u32>(~u_input.a, abs(~1u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 410u) << (vec4<u32>(1u, u_input.a, u_input.a, 15677u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 58877u), vec4<u32>(u_input.a, 4294967295u, 67202u, 15501u)), vec4<u32>(62740u, 4294967295u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(min(vec4<u32>(0u, 72260u, 35471u, 65299u), vec4<u32>(1u, u_input.a, 54199u, u_input.a)), vec4<u32>(u_input.a, 49675u, u_input.a, 42233u)))));
    global0 = array<Struct_1, 22>();
    var var_3 = Struct_1(all(!select(!vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, true, true), select(vec3<bool>(arg_3.a, true, arg_3.a), vec3<bool>(var_1.a, true, arg_0.a), vec3<bool>(var_1.a, false, arg_0.a)))), _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(var_1.b.x, -762f)), 33911i);
    return ~vec2<i32>(~arg_3.c, 0i);
}

fn func_1() -> vec4<bool> {
    var var_0 = ~_wgslsmith_clamp_u32(100078u, 24954u, 0u) | u_input.a;
    let var_1 = func_4(global3[_wgslsmith_index_u32(u_input.a, 9u)], _wgslsmith_f_op_f32(f32(-1f) * -385f), -12217i, func_3(Struct_1(select(true, func_2(global3[_wgslsmith_index_u32(7580u, 9u)]), true), vec2<f32>(_wgslsmith_f_op_f32(394f + 524f), 555f), _wgslsmith_add_i32(1i, -34905i) | (0i << (u_input.a % 32u))), global3[_wgslsmith_index_u32(firstTrailingBit(~(u_input.a | u_input.a)), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-699f * -567f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-242f + -2456f) * _wgslsmith_f_op_f32(-706f + 1000f))), ~55322u));
    global2 = func_3(func_3(func_3(func_3(Struct_1(false, vec2<f32>(143f, 221f), var_1.x), func_3(global0[_wgslsmith_index_u32(1u, 22u)], Struct_1(true, vec2<f32>(1158f, 1241f), 1i), 980f, u_input.a), 1308f, u_input.a), func_3(global3[_wgslsmith_index_u32(23425u, 9u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), 22u)], _wgslsmith_f_op_f32(1000f - 833f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 6185u, 1u, u_input.a))), 395f, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1870u, u_input.a, u_input.a), vec3<u32>(u_input.a, 19388u, u_input.a))), func_3(func_3(Struct_1(true, vec2<f32>(1000f, -472f), var_1.x), Struct_1(true, vec2<f32>(-216f, 884f), var_1.x), -204f, _wgslsmith_clamp_u32(u_input.a, 56514u, 22901u)), func_3(func_3(Struct_1(true, vec2<f32>(-276f, -523f), -2147483647i), global0[_wgslsmith_index_u32(u_input.a, 22u)], -520f, u_input.a), Struct_1(false, vec2<f32>(1072f, -542f), -2147483647i), _wgslsmith_f_op_f32(trunc(-800f)), firstLeadingBit(4294967295u)), -670f, ~(~3941u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(511f)), -443f), _wgslsmith_mod_u32(7168u, abs(23640u) | firstTrailingBit(u_input.a))), func_3(Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), -5165i), global0[_wgslsmith_index_u32(~(~(~1u)), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(658f, 120f, false)) - _wgslsmith_div_f32(-234f, 864f))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 40420u), vec2<u32>(u_input.a, u_input.a)) ^ (vec2<u32>(u_input.a, 31726u) ^ vec2<u32>(30776u, u_input.a)), vec2<u32>(~4294967295u, 29822u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(596f, -831f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(285f * 1304f), any(vec2<bool>(true, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f))))), 0u).a;
    let var_2 = !(!all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec4<bool>(true, true, false, false)))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(146f * 814f))), _wgslsmith_f_op_f32(-1356f - 616f)))));
    return !select(select(!select(vec4<bool>(true, var_2, false, true), vec4<bool>(var_2, var_2, var_2, true), var_2), vec4<bool>(func_3(global3[_wgslsmith_index_u32(u_input.a, 9u)], Struct_1(var_2, vec2<f32>(-782f, 366f), 5697i), -934f, u_input.a).a, false, false, true), !vec4<bool>(var_2, var_2, false, var_2)), select(vec4<bool>(any(vec4<bool>(true, var_2, var_2, false)), false, true, var_2), vec4<bool>(true, false, 129456u <= u_input.a, var_2 == true), func_3(func_3(Struct_1(true, vec2<f32>(354f, -1755f), -1i), global0[_wgslsmith_index_u32(u_input.a, 22u)], -474f, u_input.a), global0[_wgslsmith_index_u32(0u, 22u)], 1278f, u_input.a).a), !(!vec4<bool>(var_2, var_2, var_2, true)));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a ^ _wgslsmith_div_u32(~u_input.a, 19522u), 36260u), 22u)];
    let var_1 = -854f;
    var var_2 = Struct_1(var_0.a, func_3(func_3(Struct_1(arg_0.x, vec2<f32>(-575f, var_0.b.x), ~(-38898i)), func_3(func_3(Struct_1(false, vec2<f32>(arg_1.x, var_1), var_0.c), global0[_wgslsmith_index_u32(31204u, 22u)], 500f, 13606u), Struct_1(arg_0.x, var_0.b, arg_2), _wgslsmith_f_op_f32(floor(arg_1.x)), min(45543u, 4294967295u)), 2093f, u_input.a), global3[_wgslsmith_index_u32(0u, 9u)], -1878f, u_input.a).b, arg_2);
    var_2 = global3[_wgslsmith_index_u32(u_input.a, 9u)];
    var var_3 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(min(vec2<i32>(1i, ~arg_2), ~reverseBits(vec2<i32>(-5895i, var_2.c)))), abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c, -21278i), vec2<i32>(-25611i, 10903i)), ~vec2<i32>(1i, var_2.c)) << (~(vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), -((vec2<i32>(-1i) * -vec2<i32>(36433i, arg_2)) << (vec2<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u), u_input.a) % vec2<u32>(32u))));
    return select(~((vec3<i32>(26476i, arg_2, var_0.c) | vec3<i32>(12485i, var_0.c, -2147483647i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 28721u), vec3<u32>(0u, 0u, 1u)) % vec3<u32>(32u))) & -vec3<i32>(abs(6362i), -53107i, ~var_0.c), firstTrailingBit(~countOneBits(~vec3<i32>(var_2.c, var_2.c, var_0.c))), vec3<bool>(!var_0.a, true, var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global1 = u_input.a;
    var var_0 = select(-func_5(func_1(), _wgslsmith_div_vec3_f32(vec3<f32>(-1255f, -2337f, 2110f), vec3<f32>(-540f, -2253f, -1801f)), 14516i), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(42932i, -1i, 53010i), vec3<i32>(-1i, 5539i, -24186i)), vec3<i32>(-1i, -8638i, -60207i), vec3<i32>(1i, 1i, 1i)) & vec3<i32>(1i, 1i, 1i), !vec3<bool>(any(vec3<bool>(true, false, true)), func_1().x, 8531u == u_input.a)) >> (~(~select(vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 4294967295u), true)) % vec3<u32>(32u));
    var var_1 = func_3(func_3(func_3(Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(177f, -392f))), 491i), Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(1642f, -1000f), vec2<f32>(-944f, 1000f)), -6419i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f)), ~_wgslsmith_sub_u32(u_input.a, 1u)), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1851f, 399f) - vec2<f32>(256f, -717f))), reverseBits(~var_0.x)), _wgslsmith_div_f32(func_3(global0[_wgslsmith_index_u32(u_input.a & 58884u, 22u)], func_3(global0[_wgslsmith_index_u32(50051u, 22u)], Struct_1(false, vec2<f32>(135f, -210f), var_0.x), 1542f, u_input.a), -1000f, _wgslsmith_add_u32(4294967295u, u_input.a)).b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2093f - -2794f), _wgslsmith_f_op_f32(1059f - 1130f)))), 54933u), Struct_1(func_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2246f, -1000f), vec2<f32>(1078f, 967f), false)), ~var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1187f, -686f) - vec2<f32>(562f, -276f))))), ~_wgslsmith_dot_vec2_i32(var_0.xy >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(var_0.x, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -714f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(721f, 460f)))))), 70179u);
    let var_2 = vec2<i32>(-(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -27119i, -2147483647i, -22293i), vec4<i32>(var_0.x, -3301i, 66412i, -2147483647i))) << (~_wgslsmith_div_u32(0u, 60893u) % 32u)), -1799i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -926f, var_1.b.x, var_1.b.x))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(func_3(Struct_1(true, var_1.b, var_2.x), global0[_wgslsmith_index_u32(u_input.a, 22u)], 1000f, 30317u).b.x, _wgslsmith_div_f32(var_1.b.x, var_1.b.x), -223f, -482f))), select(vec4<bool>(var_1.a, 172f != var_1.b.x, any(vec2<bool>(var_1.a, false)), !var_1.a), !vec4<bool>(true, var_1.a, var_1.a, true), vec4<bool>(all(vec2<bool>(var_1.a, var_1.a)), all(vec3<bool>(var_1.a, false, var_1.a)), true || var_1.a, false)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2178f, var_1.b.x), var_1.b) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) * vec2<f32>(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(var_1.b.x, var_1.b.x), var_1.a)))), var_1.b)), vec2<i32>(1i, var_1.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + -112f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, 420f), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)), var_1.b.x, 177f))));
}

