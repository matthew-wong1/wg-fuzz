struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(73174u, 0u, 43306u, 0u, 2539u, 52346u, 1u, 59829u, 0u, 4294967295u, 56787u, 99938u, 11241u, 51250u, 0u, 0u, 4294967295u, 75599u, 0u, 0u, 4294967295u, 8649u, 4294967295u, 1u, 1u, 90861u, 1u);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1i, 84256u, vec3<f32>(-1723f, 1000f, -1194f), 4614u, 988f), Struct_1(9900i, 9084u, vec3<f32>(-508f, 2159f, -1034f), 40425u, 535f), Struct_1(-41074i, 0u, vec3<f32>(-329f, 1000f, 2492f), 27684u, 682f), Struct_1(-1i, 12524u, vec3<f32>(-2309f, 1863f, 154f), 0u, 933f), Struct_1(1i, 1u, vec3<f32>(-1000f, -1067f, 712f), 55843u, -525f), Struct_1(-1i, 75576u, vec3<f32>(851f, -1197f, -1427f), 15016u, -193f), Struct_1(27441i, 39189u, vec3<f32>(-159f, 1097f, -948f), 5840u, 1680f), Struct_1(2147483647i, 1u, vec3<f32>(-114f, 962f, -334f), 0u, -687f), Struct_1(2147483647i, 2617u, vec3<f32>(265f, 369f, 1390f), 8402u, -2538f), Struct_1(0i, 61903u, vec3<f32>(-217f, 1249f, -1533f), 0u, 1332f), Struct_1(1i, 0u, vec3<f32>(-644f, 1518f, 493f), 0u, -382f), Struct_1(1i, 1u, vec3<f32>(377f, -1008f, 1145f), 1u, -1000f), Struct_1(6462i, 1u, vec3<f32>(1000f, 1000f, 1073f), 68321u, -994f), Struct_1(2147483647i, 51294u, vec3<f32>(-661f, 505f, 424f), 1u, -186f), Struct_1(3223i, 1u, vec3<f32>(-1187f, 903f, 914f), 4294967295u, -1135f), Struct_1(i32(-2147483648), 3643u, vec3<f32>(1570f, -920f, 1255f), 68187u, 917f), Struct_1(14074i, 2622u, vec3<f32>(515f, 1153f, 670f), 65568u, 1735f), Struct_1(i32(-2147483648), 0u, vec3<f32>(-1610f, 2070f, 1080f), 1u, 706f), Struct_1(2147483647i, 10597u, vec3<f32>(-957f, -916f, 397f), 28144u, -293f));

var<private> global2: Struct_1 = Struct_1(1i, 73591u, vec3<f32>(-307f, 260f, 261f), 35955u, -606f);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min((global2.d << (~18768u % 32u)) & ~0u, _wgslsmith_mod_u32(u_input.c, u_input.c)), u_input.b), 19u)];
    let var_1 = ~(~u_input.c) & 4294967295u;
    let var_2 = firstLeadingBit(max(~vec4<u32>(~var_1, ~global2.b, global0[_wgslsmith_index_u32(global2.b, 27u)] >> (global2.d % 32u), countOneBits(25353u)), ~(~vec4<u32>(var_1, 0u, 38315u, var_0.b))));
    let var_3 = ~(_wgslsmith_add_i32(reverseBits(-var_0.a), -2147483647i) | ~global2.a);
    let var_4 = global4[_wgslsmith_index_u32(~1u, 12u)];
    return 1u;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_3();
    let var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-(~u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, global2.a, u_input.e.x) | u_input.e.yxw, select(u_input.e.wyw, vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x), vec3<bool>(true, true, true)))), u_input.d), var_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.c, vec3<f32>(arg_0.c.x, 1123f, -405f), false))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.c.x, 866f)) + _wgslsmith_f_op_f32(abs(2289f))), 2020f, 907f))), global0[_wgslsmith_index_u32(abs(firstLeadingBit(31076u)), 27u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(arg_0.c.x - 198f))));
    let var_2 = Struct_1(0i, global0[_wgslsmith_index_u32(~0u, 27u)], _wgslsmith_f_op_vec3_f32(-var_1.c), ~0u, global2.e);
    global0 = array<u32, 27>();
    global3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.e, global2.c.x, global3.x, global2.c.x))))))));
    return select(vec4<bool>(any(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), false, false)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))), select(false, true, true), true), vec4<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), false, any(vec3<bool>(true, true, all(vec3<bool>(false, true, false)))), !any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true))) && all(vec2<bool>(true, true)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 19>();
    global0 = array<u32, 27>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = !select(!select(func_2(Struct_1(-1i, arg_3.b, global3.yzx, 0u, 1176f)), !vec4<bool>(arg_1.x, false, true, arg_1.x), !vec4<bool>(var_0.x, false, arg_1.x, arg_1.x)), !vec4<bool>(var_0.x != false, false, false, false), global0[_wgslsmith_index_u32(arg_3.b, 27u)] < ~(~global2.d));
    var var_2 = select(vec3<bool>(true, any(!arg_1.yx), all(vec2<bool>(arg_1.x, true))), !select(func_2(global1[_wgslsmith_index_u32(0u, 19u)]).xwx, vec3<bool>(any(vec4<bool>(var_0.x, false, true, true)), all(vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x), select(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(false, false, false), false), vec3<bool>(arg_1.x, true, var_0.x), !var_1.zxy)), global2.a != arg_3.a);
    return global4[_wgslsmith_index_u32(u_input.c, 12u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<f32>) -> i32 {
    global3 = vec4<f32>(-1177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-402f))))), _wgslsmith_f_op_f32(-1084f * global3.x), _wgslsmith_f_op_f32(step(648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), -990f))))));
    global4 = array<Struct_1, 12>();
    var var_0 = func_1(5711i, func_2(Struct_1(_wgslsmith_div_i32(u_input.d, u_input.d) | 65564i, ~countOneBits(4294967295u), global2.c, _wgslsmith_mod_u32(2213u, _wgslsmith_add_u32(17518u, arg_1.b)), arg_3.x)).ywz, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, global2.c.x) * arg_1.c.yx), true))))), global1[_wgslsmith_index_u32(~4807u, 19u)]);
    let var_1 = Struct_1(arg_2.x, 27644u >> (global0[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(max(u_input.c, u_input.b), 27u)], ~0u), 27u)] % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c)), arg_1.d, 1f);
    var var_2 = func_1(global2.a, vec3<bool>(global2.a <= var_0.a, !select(true, false, true), !(true || any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1731f))))), global4[_wgslsmith_index_u32(0u, 12u)]);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a.x, 12u)];
    var var_1 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(-var_0.a, ~0i, select(global2.a, -2147483647i, true), func_4(u_input.a, func_1(0i, vec3<bool>(true, false, false), vec2<f32>(214f, 624f), global4[_wgslsmith_index_u32(global2.b, 12u)]), u_input.e.xz, global3.xy)), u_input.e), -(firstTrailingBit(vec4<i32>(var_0.a, 2147483647i, var_0.a, u_input.d)) << (_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global2.b, 27u)], 35903u, 61848u, u_input.c), vec4<u32>(12168u, global2.b, 55138u, 1u)) % vec4<u32>(32u))));
    var var_2 = global2.a;
    global2 = Struct_1(var_0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~20753u, global2.d, 42439u, u_input.c), vec4<u32>(global2.b, 2812u, 15231u, ~1u)), vec4<u32>(_wgslsmith_sub_u32(func_3(), _wgslsmith_clamp_u32(u_input.a.x, 0u, 1279u)), ~0u, _wgslsmith_sub_u32(u_input.b | u_input.b, var_0.b), _wgslsmith_sub_u32(global2.b ^ 26871u, global0[_wgslsmith_index_u32(var_0.b, 27u)] ^ var_0.d))), global3.xyw, select(~0u, abs(_wgslsmith_mod_u32(70119u >> (var_0.d % 32u), 37955u)), false), 1299f);
    var var_3 = Struct_1(~(~func_4(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(21256u, 27u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global2.b, 27u)], 4294967295u)), global4[_wgslsmith_index_u32(1u, 12u)], u_input.e.wz, _wgslsmith_f_op_vec2_f32(global2.c.zz + global2.c.xz))), var_0.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global3.xyy - vec3<f32>(_wgslsmith_f_op_f32(-global3.x), -216f, _wgslsmith_f_op_f32(select(global2.c.x, -654f, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(271f, 620f, 2428f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e, -1669f, -1598f)))))), reverseBits(global0[_wgslsmith_index_u32(16916u, 27u)]), 1101f);
    global2 = global1[_wgslsmith_index_u32(var_3.d, 19u)];
    global2 = Struct_1(var_0.a, ~(var_3.b & var_0.b), global2.c, u_input.a.x >> (~global0[_wgslsmith_index_u32(firstLeadingBit(8773u), 27u)] % 32u), 823f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(abs(~(~90439u)), 4294967295u & u_input.b));
}

