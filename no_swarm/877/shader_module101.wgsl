struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(45471i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-15672i, 2147483647i, -50148i, 0i), vec4<i32>(1385i, 24674i, -5046i, 20972i), vec4<i32>(-36753i, -1i, 0i, -1i), vec4<i32>(1i, 0i, -1i, i32(-2147483648)), vec4<i32>(6558i, -5657i, 5688i, 0i), vec4<i32>(46486i, 0i, 1i, 2799i));

var<private> global2: array<f32, 10>;

var<private> global3: array<vec3<i32>, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<f32, 10>();
    global3 = array<vec3<i32>, 10>();
    global1 = array<vec4<i32>, 7>();
    global1 = array<vec4<i32>, 7>();
    global2 = array<f32, 10>();
    return -1000f;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    let var_0 = firstTrailingBit(~(1816u | (global0[_wgslsmith_index_u32(u_input.d & 4294967295u, 26u)] >> (u_input.d % 32u))));
    var var_1 = arg_0;
    var var_2 = 1u;
    let var_3 = false;
    var var_4 = u_input.a;
    return vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(23456u, var_0, 4294967295u), ~u_input.d), vec2<u32>(global0[_wgslsmith_index_u32(var_0, 26u)], global0[_wgslsmith_index_u32(u_input.d, 26u)] ^ 0u))), u_input.b, ~u_input.b);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    global1 = array<vec4<i32>, 7>();
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(u_input.c, global0[_wgslsmith_index_u32(28160u, 26u)]), u_input.c), 26u)], u_input.b), func_4(Struct_1(_wgslsmith_f_op_f32(func_3(4294967295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-199f, -724f, arg_1.a) + vec3<f32>(759f, 609f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 10u)])), !arg_0, arg_1.d, arg_1.e), !any(vec4<bool>(true, arg_0, arg_1.c, arg_1.c)))), ~global0[_wgslsmith_index_u32(0u, 26u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.d, min(var_0.x, 22152u)), 10u)] - arg_1.b.x), _wgslsmith_f_op_vec3_f32(arg_1.b + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1411f))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~var_0.x, 10u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.d)) + _wgslsmith_f_op_f32(-636f * 1335f)))), arg_0 || any(vec3<bool>(arg_1.d, !arg_0, all(vec2<bool>(true, false)))), 0u == _wgslsmith_dot_vec4_u32(vec4<u32>(~16838u, countOneBits(u_input.c), ~4294967295u, u_input.b), firstTrailingBit(select(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 26u)], u_input.b, 1u), vec4<u32>(var_0.x, var_0.x, 90693u, u_input.d), true))), u_input.a.yy);
    var var_2 = firstLeadingBit(vec3<i32>(arg_1.e.x, 20813i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), max(vec2<i32>(31486i, arg_1.e.x), max(var_1.e, vec2<i32>(var_1.e.x, -57336i))))));
    global0 = array<u32, 26>();
    return 6028i;
}

fn func_5(arg_0: i32) -> vec3<f32> {
    var var_0 = 53557i;
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43782u, 26u)], 10u)] - global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67290u, 26u)], 10u)]))), 480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(22079u, 10u)]) - _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.c, 10u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 10u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46806u, 26u)], 10u)], -261f, -227f, 290f), vec4<f32>(-327f, -154f, -1528f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], 10u)])), vec4<f32>(global2[_wgslsmith_index_u32(15762u, 10u)], 294f, -1000f, -1188f))) * vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)] >> (1u % 32u), 10u)], _wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 10u)] * global2[_wgslsmith_index_u32(15529u, 10u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 10u)]))))), Struct_1(-1423f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2134f, -995f, 1051f), vec3<f32>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 10u)], 715f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.b)), global2[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.d, 10u)], 1272f)), true)), (~0u ^ firstLeadingBit(global0[_wgslsmith_index_u32(5698u, 26u)])) == ~global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(24254u, 26u)]), 26u)], false, vec2<i32>(u_input.a.x, (-15052i & u_input.a.x) << (9046u % 32u))), Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-867f, 112f, global2[_wgslsmith_index_u32(u_input.d, 10u)]), vec3<f32>(172f, 223f, global2[_wgslsmith_index_u32(47632u, 10u)]))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(606f, -855f, global2[_wgslsmith_index_u32(39585u, 10u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(601f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.d, 10u)], global2[_wgslsmith_index_u32(0u, 10u)])) != -279f, global2[_wgslsmith_index_u32(~4294967295u | min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], u_input.d), 10u)] <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1126f - global2[_wgslsmith_index_u32(0u, 10u)])), ~u_input.a.zz), -(~_wgslsmith_div_i32(~u_input.a.x, ~0i)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) * -1319f) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -550f)))));
    var var_3 = vec3<bool>((u_input.d < max(u_input.b & u_input.d, u_input.c)) && any(select(!vec4<bool>(true, var_2.e, var_2.e, var_2.e), select(vec4<bool>(var_2.c.c, false, true, var_2.b.d), vec4<bool>(true, false, var_2.c.c, var_2.e), vec4<bool>(var_2.b.c, var_2.b.d, var_2.c.d, true)), vec4<bool>(true, var_2.e, true, var_2.e))), var_2.e, any(select(vec4<bool>(var_2.e, true, false, !var_2.b.d), select(select(vec4<bool>(true, true, var_2.c.d, var_2.c.d), vec4<bool>(var_2.b.c, true, true, var_2.b.d), vec4<bool>(var_2.c.d, false, var_2.e, var_2.b.c)), !vec4<bool>(var_2.e, true, true, true), var_2.e), false)));
    let var_4 = Struct_1(_wgslsmith_div_f32(var_2.c.b.x, global2[_wgslsmith_index_u32(31203u, 10u)]), vec3<f32>(-1657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(u_input.d)))) + global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23361u ^ ~u_input.b, 26u)], 26u)], 26u)], 10u)]), 2002f), var_2.b.c, var_3.x, reverseBits(select(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, 0i) & vec2<i32>(2147483647i, arg_0), -var_2.b.e), u_input.a.xx, select(var_3.zy, vec2<bool>(true, var_3.x), vec2<bool>(var_3.x, var_3.x)))));
    return vec3<f32>(var_2.c.a, var_4.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], 0u, 0u, u_input.b), vec4<u32>(global0[_wgslsmith_index_u32(74383u, 26u)], 27249u, 42956u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 26u)])), _wgslsmith_mod_u32(13979u, 84562u)), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a))))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1313f, global2[_wgslsmith_index_u32(4294967295u, 10u)])) + _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 26u)], 10u)], -1000f, 501f), vec3<f32>(-2150f, 934f, arg_1))) + _wgslsmith_f_op_vec3_f32(func_5(func_2(true, Struct_1(arg_1, vec3<f32>(-1169f, 702f, 415f), false, true, arg_2.yx))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 821f, -562f), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 26u)], 10u)], global2[_wgslsmith_index_u32(35294u, 10u)])))))));
    var var_2 = all(vec2<bool>(true, true));
    let var_3 = ~firstLeadingBit(4294967295u);
    var_0 = all(vec3<bool>(true, true, true));
    return Struct_1(_wgslsmith_f_op_vec3_f32(func_5(~firstLeadingBit(1i))).x, var_1, select(~arg_2.x != u_input.e, all(vec4<bool>(true, true, true, true)), true), !all(vec4<bool>(false, false, true, true)) && select(true, true, true && (arg_2.x > u_input.e)), ~u_input.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(42801u, 10u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(747f)) - -176f)) - _wgslsmith_f_op_f32(783f - 453f)), u_input.a);
    var var_1 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(92279u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])), ~abs(global0[_wgslsmith_index_u32(4294967295u, 26u)] << (0u % 32u))), 26u)], -1946f, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer((~firstTrailingBit(vec4<i32>(var_1.e.x, 21948i, var_0.e.x, u_input.e)) >> (~(vec4<u32>(4294967295u, u_input.c, global0[_wgslsmith_index_u32(84373u, 26u)], 37272u) ^ vec4<u32>(u_input.d, u_input.d, 0u, 15908u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 4294967295u), ~vec4<u32>(40878u, 4294967295u, u_input.c, u_input.b)), 0u, ~func_4(Struct_1(var_0.b.x, vec3<f32>(var_0.a, -1242f, 106f), var_0.c, var_1.c, u_input.a.yz), true).x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], 26u)], 0u, u_input.d), u_input.c)) % vec4<u32>(32u)), ~(-u_input.a) | global3[_wgslsmith_index_u32(~(u_input.d ^ u_input.c) | 102750u, 10u)]);
}

