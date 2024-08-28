struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<Struct_2, 15>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: bool) -> f32 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~u_input.a | ~1u, ~global0[_wgslsmith_index_u32(u_input.a ^ 4294967295u, 7u)]), ~39337u, ~1u, u_input.a), firstTrailingBit(4294967295u));
    var var_1 = true;
    let var_2 = Struct_2(_wgslsmith_mod_u32(0u, (countOneBits(4294967295u) << (_wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a) % 32u)) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(123679u, 1u, global2.b, 0u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 7u)], 4294967295u, 1u)) ^ countOneBits(4294967295u))), ~_wgslsmith_add_u32(~12802u, ~global2.b), vec2<bool>(arg_3, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global2.d)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global2.d))))), Struct_1(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0.a, var_0.a), global2.e.a), global0[_wgslsmith_index_u32(countOneBits(~(70388u ^ var_0.a.x)), 7u)]));
    var var_3 = -vec2<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.b.wz, u_input.c.wx));
    var var_4 = all(vec2<bool>(var_2.c.x, var_2.c.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-469f, -322f))), _wgslsmith_f_op_f32(ceil(global2.d.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_1(abs(~arg_0.a), min(~(~(~4294967295u)), arg_1.b));
    let var_1 = -u_input.b.wy;
    let var_2 = vec3<u32>(~global0[_wgslsmith_index_u32(~(~var_0.b) | 1u, 7u)], ~(~2491u), firstLeadingBit(abs(4294967295u)) >> (abs(~(~global0[_wgslsmith_index_u32(4294967295u, 7u)])) % 32u));
    let var_3 = select(select(vec3<bool>(true, _wgslsmith_clamp_u32(0u, u_input.a, 33228u) < (var_0.b << (4294967295u % 32u)), arg_3.x), vec3<bool>(global2.c.x, false, _wgslsmith_div_f32(global2.d.x, global2.d.x) != _wgslsmith_f_op_f32(sign(-1000f))), arg_3.wzz), vec3<bool>(any(vec2<bool>(all(arg_3.wz), all(vec2<bool>(arg_3.x, false)))), global2.c.x, !all(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x))), arg_3.wyy);
    var var_4 = _wgslsmith_div_vec3_u32(max(vec3<u32>(arg_1.a, 38922u, var_2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(var_2.x), firstLeadingBit(arg_0.a.x), ~global0[_wgslsmith_index_u32(51632u, 7u)]), ~abs(arg_1.e.a.zwz))), var_0.a.yxy);
    return select(!var_3.xy, select(select(vec2<bool>(0u != u_input.a, !var_3.x), arg_3.zw, vec2<bool>(true, var_1.x >= 22733i)), !select(select(vec2<bool>(false, false), vec2<bool>(global2.c.x, false), false), select(vec2<bool>(var_3.x, false), vec2<bool>(arg_1.c.x, var_3.x), arg_3.zy), any(var_3)), vec2<bool>(arg_1.c.x, !any(vec4<bool>(true, true, true, arg_1.c.x)))), arg_3.xx);
}

fn func_2() -> vec4<bool> {
    global2 = Struct_2(_wgslsmith_mult_u32(~(~(~global2.e.a.x)), 52464u), _wgslsmith_dot_vec4_u32(firstLeadingBit(global2.e.a), ~vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 7u)], 21356u), 1u, ~3782u, 0u)), vec2<bool>(true, any(global2.c)), _wgslsmith_f_op_vec4_f32(-global2.d), global2.e);
    var var_0 = global1[_wgslsmith_index_u32(1u, 15u)];
    var var_1 = Struct_2(var_0.a, ~var_0.a, !func_4(global2.e, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 115670u), 15u)], vec4<f32>(var_0.d.x, global2.d.x, _wgslsmith_f_op_f32(func_3(vec4<i32>(-25773i, -38561i, -50404i, u_input.b.x), 396f, -52065i, global2.c.x)), -412f), vec4<bool>(true, true, true, true)), var_0.d, Struct_1(max(global2.e.a, reverseBits(var_0.e.a)), ~_wgslsmith_mult_u32(reverseBits(48289u), select(22266u, u_input.a, var_0.c.x))));
    global2 = Struct_2(var_0.a, var_0.e.b, vec2<bool>(global2.c.x, true), _wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.d.x)), _wgslsmith_f_op_f32(min(global2.d.x, global2.d.x)), var_0.d.x, -1423f), var_0.d))), var_0.e);
    var var_2 = !(!global2.c.x) && all(vec3<bool>(global2.c.x != global2.c.x, !(!var_1.c.x), var_0.c.x));
    return !vec4<bool>(global2.c.x, !func_4(Struct_1(var_0.e.a, var_1.a), Struct_2(var_1.e.a.x, 50802u, global2.c, var_1.d, var_1.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(1341f, var_1.d.x, global2.d.x, 625f) + vec4<f32>(225f, var_0.d.x, 206f, 715f)), vec4<bool>(var_1.c.x, false, var_0.c.x, var_1.c.x)).x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c.x, u_input.d), ~vec3<i32>(u_input.d, u_input.d, u_input.d)) <= reverseBits(_wgslsmith_add_i32(u_input.d, u_input.c.x)), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global2 = Struct_2(global0[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_mod_u32(~abs(_wgslsmith_sub_u32(u_input.a, 4294967295u)), min(0u, ~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], 12034u, global0[_wgslsmith_index_u32(3240u, 7u)]))), func_4(Struct_1(~vec4<u32>(global2.e.b, 3507u, arg_2.e.a.x, 71200u), ~1u), Struct_2(11385u, _wgslsmith_mod_u32(1u, arg_2.e.a.x), global2.c, vec4<f32>(arg_2.d.x, _wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(round(global2.d.x))), arg_2.e), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d.x, -104f)), arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f + -790f))), select(!vec4<bool>(arg_1, arg_0.x, false, arg_1), arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(max(global2.d, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(-global2.d.x), global2.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(436f - 189f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x - arg_2.d.x) - -841f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-205f)), arg_2.d.x, arg_0.x))))), arg_2.e);
    global2 = Struct_2(global0[_wgslsmith_index_u32(global2.b, 7u)], global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(16327u, 7u)] ^ max(_wgslsmith_mod_u32(4294967295u, global2.e.b), global2.b << (global0[_wgslsmith_index_u32(global2.e.a.x, 7u)] % 32u))), 7u)], !vec2<bool>(arg_2.c.x, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(global2.d.x * 1377f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_div_f32(arg_2.d.x, 1216f), global2.c.x)), -618f)), Struct_1(abs(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_2.a, 24398u), 7u)], global0[_wgslsmith_index_u32(abs(46370u), 7u)], _wgslsmith_dot_vec2_u32(arg_2.e.a.wy, vec2<u32>(arg_2.b, 81576u)), ~37717u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(min(0u, 144153u), ~global2.b), ~(arg_2.b & arg_2.b))));
    let var_0 = all(arg_0);
    global1 = array<Struct_2, 15>();
    let var_1 = ~28876u;
    return Struct_2(~var_1, ~select(var_1, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.e.a.zy, arg_2.e.a.wz, vec2<u32>(var_1, 4294967295u)), arg_2.e.a.yy), all(vec4<bool>(arg_0.x, false, true, global2.c.x))), vec2<bool>(arg_0.x, false), vec4<f32>(1163f, global2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(491f, _wgslsmith_f_op_f32(sign(global2.d.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1648f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -769f))), Struct_1(~arg_2.e.a << (firstTrailingBit(global2.e.a) % vec4<u32>(32u)), 6641u));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(vec4<u32>(24581u, global0[_wgslsmith_index_u32(~global2.b, 7u)] << (global2.a % 32u), abs(~u_input.a), 28758u) | vec4<u32>(abs(~51861u), select(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(5443u, 7u)]), global2.b, global2.c.x), ~_wgslsmith_clamp_u32(global2.a, global2.a, global0[_wgslsmith_index_u32(u_input.a, 7u)]), firstLeadingBit(_wgslsmith_sub_u32(12837u, global2.a))), abs(114026u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(30096u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 7u)], 7u)]), _wgslsmith_mult_vec2_u32(~global2.e.a.zz, global2.e.a.xz)) % 32u));
    var var_1 = Struct_2(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(u_input.a, 61854u), u_input.a), global2.e.a.x, global2.c, vec4<f32>(_wgslsmith_f_op_f32(min(-1578f, 404f)), 2312f, global2.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1317f) + _wgslsmith_f_op_f32(-global2.d.x))))), Struct_1(min(var_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global2.b, 7u)], var_0.b, 4294967295u, 72395u), vec4<u32>(36442u, var_0.a.x, 86318u, 4294967295u)) >> (vec4<u32>(6637u, 26730u, global0[_wgslsmith_index_u32(var_0.b, 7u)], global2.a) % vec4<u32>(32u))), (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(var_0.b, 7u)], 4294967295u) << ((23011u ^ global0[_wgslsmith_index_u32(0u, 7u)]) % 32u)) << (u_input.a % 32u)));
    var var_2 = func_5(select(func_2(), vec4<bool>(func_2().x, global2.c.x, var_1.c.x, (782i >= u_input.d) || func_2().x), u_input.d < -8342i), all(func_2().xxx), Struct_2(select(23283u << (_wgslsmith_sub_u32(var_1.b, u_input.a) % 32u), _wgslsmith_clamp_u32(u_input.a | 1u, reverseBits(45685u), 17876u << (global2.e.b % 32u)), all(vec3<bool>(global2.c.x, global2.c.x, false))), var_0.a.x, select(!(!var_1.c), select(global2.c, select(vec2<bool>(false, false), global2.c, vec2<bool>(global2.c.x, true)), !vec2<bool>(global2.c.x, var_1.c.x)), var_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2684f, global2.d.x, global2.d.x, 445f) * global2.d))), Struct_1(min(global2.e.a, ~var_1.e.a), ~1u)), 59389i);
    let var_3 = global0[_wgslsmith_index_u32(41903u >> (~(~u_input.a) % 32u), 7u)];
    var var_4 = !(!select(vec3<bool>(!var_2.c.x, !var_1.c.x, var_2.c.x), select(func_2().wzz, select(vec3<bool>(var_1.c.x, var_2.c.x, var_2.c.x), vec3<bool>(global2.c.x, global2.c.x, var_1.c.x), var_2.c.x), vec3<bool>(false, false, var_1.c.x)), global2.c.x));
    return func_5(!func_2(), var_2.c.x, global1[_wgslsmith_index_u32(~(~(~var_0.b >> (~u_input.a % 32u))), 15u)], 35701i);
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.zzx;
    let var_1 = func_1();
    let var_2 = vec4<u32>(arg_3.a.x, arg_3.b, ~4294967295u, ~4294967295u) << (_wgslsmith_sub_vec4_u32(global2.e.a, vec4<u32>(reverseBits(55971u), arg_2.e.a.x, var_1.e.b, ~10272u ^ u_input.a)) % vec4<u32>(32u));
    global2 = global1[_wgslsmith_index_u32(1u, 15u)];
    var var_3 = 24234i;
    return func_5(func_2(), all(select(select(select(vec3<bool>(arg_1, true, arg_2.c.x), vec3<bool>(true, true, arg_1), var_1.c.x), select(vec3<bool>(var_1.c.x, arg_1, true), vec3<bool>(false, false, arg_1), false), true), vec3<bool>(true, true, true), !(!vec3<bool>(arg_1, arg_1, false)))), Struct_2(arg_0.x, ~124050u, vec2<bool>(true, any(!vec3<bool>(arg_1, false, true))), var_1.d, func_1().e), firstLeadingBit(u_input.c.x)).e;
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    return global1[_wgslsmith_index_u32(~(arg_1.a.x | 14571u), 15u)];
}

fn func_8(arg_0: Struct_2) -> Struct_2 {
    global1 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) + global2.d.x) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), 173f);
    let var_1 = vec4<i32>(u_input.b.x, ~(-2147483647i), u_input.b.x, u_input.c.x << (_wgslsmith_mult_u32(max(global0[_wgslsmith_index_u32(4294967295u, 7u)], 25295u) | ~1u, ~(0u | global2.a)) % 32u));
    let var_2 = func_1().e;
    var var_3 = -33115i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 15>();
    global0 = array<u32, 7>();
    var var_0 = func_8(func_7(_wgslsmith_div_u32(u_input.a, select(global2.e.b >> (28809u % 32u), 55094u, true)), func_6(_wgslsmith_mod_vec3_u32(global2.e.a.yww, ~global2.e.a.ywx), false, func_1(), Struct_1(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], 51177u, global2.b, global0[_wgslsmith_index_u32(1u, 7u)]), 100946u)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -2147483647i) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), firstTrailingBit(u_input.b.yx))), Struct_2(firstTrailingBit(global2.b) >> (u_input.a % 32u), ~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 125636u, 1u), select(global2.c, !vec2<bool>(global2.c.x, false), !global2.c.x), _wgslsmith_div_vec4_f32(func_1().d, vec4<f32>(1392f, -610f, 275f, global2.d.x)), func_1().e)));
    let var_1 = global2.d.xzw;
    let var_2 = var_0.e;
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_mod_i32(0i, 55866i);
    var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, global2.d.x, _wgslsmith_f_op_vec2_f32(-global2.d.zz), 4294967295u);
}

