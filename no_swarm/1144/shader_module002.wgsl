struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-63578i, 11614i, -6968i, 1i), vec4<i32>(0i, -36924i, 50025i, -1i), vec4<i32>(-58356i, 42200i, 0i, 67759i), vec4<i32>(-68039i, 2147483647i, 852i, -6706i), vec4<i32>(-1i, -45787i, -73251i, -1i), vec4<i32>(-22410i, 2516i, -1i, -76817i), vec4<i32>(-56251i, i32(-2147483648), 2147483647i, 65837i), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, 1i, 2147483647i, -1i), vec4<i32>(-1101i, -1i, 20295i, 9883i), vec4<i32>(0i, -10518i, 37418i, -12418i), vec4<i32>(2147483647i, i32(-2147483648), -15590i, 2147483647i), vec4<i32>(26944i, -13899i, 4837i, i32(-2147483648)), vec4<i32>(0i, -1i, -1i, 2147483647i), vec4<i32>(2147483647i, -62755i, -3328i, 0i), vec4<i32>(2147483647i, 81904i, 47618i, 1i), vec4<i32>(0i, 956i, -51900i, 25617i), vec4<i32>(i32(-2147483648), 30192i, 24013i, 17263i), vec4<i32>(1i, -14539i, -69924i, -26891i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 276i), vec4<i32>(-29805i, 14117i, -31696i, 2147483647i), vec4<i32>(i32(-2147483648), 41811i, -521i, 2147483647i), vec4<i32>(11070i, 1i, -51108i, -43470i), vec4<i32>(i32(-2147483648), 0i, -5843i, 1i), vec4<i32>(-47496i, 1i, -43791i, -76641i), vec4<i32>(52795i, 1i, 1i, 1i), vec4<i32>(2147483647i, -2165i, -71664i, 2147483647i), vec4<i32>(26220i, 1i, i32(-2147483648), 12158i), vec4<i32>(1i, -39558i, 13427i, 1i));

var<private> global1: vec2<i32> = vec2<i32>(8485i, i32(-2147483648));

var<private> global2: array<u32, 3> = array<u32, 3>(5769u, 11473u, 1u);

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<vec4<i32>, 29>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 29u)] << ((vec4<u32>(~(arg_0.a >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)] % 32u)), _wgslsmith_div_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global2[_wgslsmith_index_u32(3640u, 3u)]), 1u), 63069u, arg_0.a) << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, arg_0.a), arg_0.a ^ global2[_wgslsmith_index_u32(13915u, 3u)]), firstLeadingBit(72395u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(arg_0.a, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]) & vec2<u32>(7766u, global2[_wgslsmith_index_u32(1u, 3u)]), ~vec2<u32>(arg_0.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31998u, 3u)], 3u)])), 28346u) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = ~vec4<i32>(-u_input.a, u_input.a, select(_wgslsmith_clamp_i32(26457i, -10295i & u_input.a, _wgslsmith_dot_vec2_i32(var_0.wx, vec2<i32>(u_input.a, var_0.x))), firstTrailingBit(-1590i ^ u_input.a), global3.x), var_0.x);
    var var_1 = true && (global3.x & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(818f, arg_0.c)))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1789f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1563f)) + 608f)));
    return -vec2<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(u_input.a, -1i), -reverseBits(global1.x), ~0i), ~(-57898i));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = array<u32, 3>();
    let var_0 = arg_2.b.zz;
    let var_1 = min(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-8137i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 41876i))), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -1i), func_3(Struct_1(arg_2.a, arg_0.e, arg_0.e.x, vec3<f32>(arg_2.e.x, arg_3, var_0.x), vec3<f32>(-1026f, arg_0.b.x, 1000f))))), 2147483647i));
    var var_2 = Struct_1(firstTrailingBit(reverseBits(firstLeadingBit(~global2[_wgslsmith_index_u32(60299u, 3u)]))), arg_0.d, -698f, arg_2.b, arg_0.b);
    global4 = 1585f;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec3<f32> {
    global4 = func_2(arg_0, ~vec3<u32>(~arg_0.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], ~(~global2[_wgslsmith_index_u32(46260u, 3u)])), func_2(arg_0, _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_0.a, 4125u), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5207u, 3u)], 3u)], 25664u, arg_0.a)) << (vec3<u32>(arg_0.a | 11621u, global2[_wgslsmith_index_u32(arg_0.a, 3u)], ~1u) % vec3<u32>(32u)), Struct_1(_wgslsmith_mod_u32(min(global2[_wgslsmith_index_u32(63326u, 3u)], 5572u), 35642u), vec3<f32>(_wgslsmith_f_op_f32(sign(794f)), _wgslsmith_f_op_f32(1000f * 811f), _wgslsmith_f_op_f32(sign(-363f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.e.x, -831f, global3.x)), _wgslsmith_f_op_f32(2095f - 325f))), arg_0.b, _wgslsmith_f_op_vec3_f32(exp2(arg_0.d))), _wgslsmith_f_op_f32(step(-593f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(522f)))))), arg_0.b.x).c;
    global3 = select(vec4<bool>(global3.x, !all(select(global3.yzw, vec3<bool>(global3.x, true, global3.x), global3.x)), global3.x, false), vec4<bool>(true, false, false, select(true, arg_0.c <= _wgslsmith_f_op_f32(floor(-1000f)), all(global3.wzy))), vec4<bool>(true, any(vec2<bool>(true, true)), true, !(!(arg_0.d.x != arg_0.c))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x * 639f), arg_0.b.x, 1605f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d)))));
}

fn func_1() -> vec3<f32> {
    let var_0 = ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~(~19977u)), 3u)], 3u)], 3u)];
    global2 = array<u32, 3>();
    let var_1 = !global3.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(487f)));
    let var_3 = Struct_1(~26651u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, 1080f) - _wgslsmith_f_op_f32(1469f + -400f)), var_2, 217f))), -172f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_1(global2[_wgslsmith_index_u32(var_0, 3u)], vec3<f32>(var_2, -3323f, 105f), var_2, vec3<f32>(146f, -107f, -1000f), vec3<f32>(var_2, 218f, var_2)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 4294967295u, 18536u)), Struct_1(0u, vec3<f32>(1445f, var_2, 1517f), -1147f, vec3<f32>(var_2, -110f, var_2), vec3<f32>(1220f, 2016f, -196f)), var_2), -16870i, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -1000f, -1432f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(var_3, ~vec3<u32>(global2[_wgslsmith_index_u32(var_0, 3u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82283u, 3u)], 3u)]), func_2(Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], var_3.b, 288f, vec3<f32>(-1088f, var_3.e.x, var_2), var_3.d), vec3<u32>(0u, 0u, var_3.a), var_3, 1000f), var_3.e.x).e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-725f, var_3.c)), var_3.c)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    var var_0 = firstLeadingBit(max(vec4<u32>(~0u, 0u, max(max(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), ~arg_0.a), 70666u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(53677u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<u32>(global2[_wgslsmith_index_u32(arg_0.a, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)])) ^ ~global2[_wgslsmith_index_u32(4294967295u, 3u)], select(_wgslsmith_mod_u32(55255u, 1u), 4294967295u & global2[_wgslsmith_index_u32(0u, 3u)], all(global3.xzy)), 1u, firstTrailingBit(_wgslsmith_clamp_u32(89177u, global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(24312u, 3u)])))));
    var_0 = ~min(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(58118u, 20514u, 37938u, 9168u), select(vec4<u32>(4294967295u, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 3u)], arg_0.a, 14014u, global2[_wgslsmith_index_u32(var_0.x, 3u)]), vec4<bool>(global3.x, global3.x, true, global3.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(34240u, 4294967295u, var_0.x, 863u) & vec4<u32>(arg_0.a, arg_0.a, 1u, 31474u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 110552u, 0u, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, 21596u, 1u), vec4<u32>(arg_0.a, 15126u, 1u, arg_0.a)), vec4<u32>(var_0.x, arg_0.a, 1u, var_0.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32052u, 0u, 7609u, global2[_wgslsmith_index_u32(arg_0.a, 3u)]) ^ vec4<u32>(17238u, 102182u, arg_0.a, global2[_wgslsmith_index_u32(var_0.x, 3u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, 25546u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a, 3u)], 3u)], 3u)]), vec4<u32>(1u, arg_0.a, 4294967295u, 4294967295u))), 27287u, ~arg_0.a, select(global2[_wgslsmith_index_u32(0u, 3u)], abs(1u), all(vec3<bool>(false, true, false)))));
    global1 = select(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 0i)), firstTrailingBit(vec2<i32>(u_input.a, -35605i)))), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(global1.x, -1i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-48616i, 72557i), vec2<i32>(global1.x, 32700i)))), firstTrailingBit(firstLeadingBit(firstTrailingBit(vec2<i32>(-2147483647i, 1i) | vec2<i32>(u_input.a, 4599i)))), !all(vec3<bool>(true, any(vec4<bool>(false, global3.x, false, global3.x)), global3.x || false)));
    global4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1996f)));
    let var_1 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 3u)], 11415u), 5915u, ~global2[_wgslsmith_index_u32(var_0.x, 3u)]), ~select(~global2[_wgslsmith_index_u32(0u, 3u)], ~33187u, false)), vec3<f32>(-547f, -806f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.c)), 1f))))), _wgslsmith_f_op_f32(-336f - 511f), arg_1, func_2(func_2(arg_0, vec3<u32>(0u, _wgslsmith_mod_u32(4294967295u, 1u), ~4294967295u), arg_0, 746f), countOneBits(var_0.zxx), Struct_1(~64302u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, vec3<bool>(global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.c))), arg_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_1, arg_1), _wgslsmith_f_op_vec3_f32(arg_0.d + vec3<f32>(arg_0.c, -304f, arg_1.x))), _wgslsmith_f_op_vec3_f32(func_4(arg_0, global1.x, 2147483647i))), arg_0.d.x).d);
    return 419u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 22555u, 1u) ^ (~vec3<u32>(1u, global2[_wgslsmith_index_u32(66794u, 3u)], global2[_wgslsmith_index_u32(45604u, 3u)]) | (vec3<u32>(6246u, 1u, 1u) << (vec3<u32>(61288u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 25983u) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u), ~vec3<u32>(0u, 17470u, 0u)) & firstTrailingBit(vec3<u32>(0u, global2[_wgslsmith_index_u32(30858u, 3u)], global2[_wgslsmith_index_u32(53134u, 3u)]) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30389u, 3u)], 3u)], 3u)], 3u)], 60886u, 1u))));
    var var_1 = Struct_1(func_5(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 3u)], 14566u, 1u), 3u)] << (20856u % 32u), _wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f * 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1720f, -292f, 1574f) - vec3<f32>(1767f, -443f, 1613f)), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(abs(1745f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(960f + -2164f), _wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(f32(-1f) * -1132f)) - vec3<f32>(-2384f, 983f, -287f))), vec3<f32>(-664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f - -736f) * _wgslsmith_div_f32(-1322f, -426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(step(-365f, _wgslsmith_f_op_f32(sign(-572f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-618f, -1947f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1740f, 796f, -1588f) + vec3<f32>(215f, -667f, -312f)), vec3<f32>(805f, -390f, -443f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(25386u, vec3<f32>(2290f, -2033f, -720f), -1149f, vec3<f32>(-705f, 2114f, -667f), vec3<f32>(456f, 331f, 826f)), global1.x | 54138i, global1.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(656f, -1074f, -998f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, -1766f, 228f)), global3.x)))), vec3<f32>(func_2(Struct_1(var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1749f, -333f, 1235f) * vec3<f32>(2013f, 115f, -1755f)), -1024f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2610f, -1160f, -1132f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(701f, 1535f, -606f) - vec3<f32>(-1740f, 2051f, -1000f))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 3u)], 3u)], 1u, global2[_wgslsmith_index_u32(var_0, 3u)])), reverseBits(vec3<u32>(26256u, global2[_wgslsmith_index_u32(0u, 3u)], 4294967295u)), select(vec3<u32>(24689u, var_0, 1u), vec3<u32>(51985u, var_0, 1u), global3.x)), Struct_1(firstTrailingBit(25561u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1010f, 910f, 1609f) - vec3<f32>(-516f, -1272f, 2109f)), _wgslsmith_f_op_f32(select(-1158f, -306f, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-829f, 713f, -498f) * vec3<f32>(-762f, 1527f, 1152f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, -558f, -906f))), _wgslsmith_f_op_f32(729f * func_2(Struct_1(14699u, vec3<f32>(333f, -2190f, -662f), -301f, vec3<f32>(-1355f, -998f, -1169f), vec3<f32>(854f, -1000f, -1254f)), vec3<u32>(0u, 1u, 4294967295u), Struct_1(1u, vec3<f32>(-1000f, -1000f, 396f), 1000f, vec3<f32>(1088f, -302f, 1861f), vec3<f32>(1000f, 1166f, -393f)), 117f).e.x)).e.x, _wgslsmith_f_op_f32(trunc(102f)), _wgslsmith_f_op_f32(step(-615f, -280f))));
    var var_2 = u_input.a;
    var_1 = Struct_1(~var_0, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f + var_1.d.x)), -2418f, var_1.c))), _wgslsmith_f_op_f32(max(-2792f, 2414f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), vec3<f32>(170f, 2674f, 1667f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -738f), var_1.c, _wgslsmith_f_op_f32(floor(1270f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -1354f, _wgslsmith_f_op_vec3_f32(func_1()).x)), var_1.d));
    global0 = array<vec4<i32>, 29>();
    var var_3 = -32089i;
    global0 = array<vec4<i32>, 29>();
    let var_4 = vec3<u32>(0u, ~(~(~1u)), var_1.a);
    var var_5 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, var_1.c, var_1.b.x)) - vec4<f32>(var_1.b.x, -203f, -352f, -501f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.e.x, 1000f, 3164f, 849f))))), select(vec4<bool>(false, false, true, global3.x), !vec4<bool>(true, global3.x, global3.x, global3.x), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(443f, -1586f, 993f, -1878f) * vec4<f32>(var_1.b.x, var_1.e.x, 1151f, var_1.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, var_1.d.x, -1221f, var_1.d.x), vec4<f32>(228f, var_1.c, 145f, var_1.c)))))), global2[_wgslsmith_index_u32(~select(var_0, (global2[_wgslsmith_index_u32(var_1.a, 3u)] & var_4.x) | 75674u, true), 3u)]);
}

