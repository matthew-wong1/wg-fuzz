struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: bool;

var<private> global1: array<f32, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = array<f32, 13>();
    let var_0 = Struct_1(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(515u, 4294967295u, 4294967295u), arg_2.e), u_input.c), 1u, arg_1.c && false, abs(countOneBits(1i)), 1u);
    return var_0;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = false;
    let var_0 = u_input.c;
    let var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(u_input.c.x, var_0.x))) << (u_input.b % 32u), 13u)];
    let var_2 = u_input.a.yx;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(12278u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 13u)]), 846f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-898f)), -1350f, func_2(vec3<bool>(true, false, arg_1.c), arg_1, arg_1, arg_1.c).c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 13u)], -1852f, global1[_wgslsmith_index_u32(24396u, 13u)], global1[_wgslsmith_index_u32(arg_2.e, 13u)])))))))));
    return ~abs(u_input.d.x);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-16828i, -func_3(vec3<i32>(arg_0.d, arg_0.d, u_input.d.x), func_2(vec3<bool>(arg_0.c, arg_0.c, true), Struct_1(20417u, u_input.c.x, arg_0.c, u_input.e, 1u), Struct_1(arg_0.b, 78014u, false, -14108i, arg_0.b), true), func_2(vec3<bool>(arg_0.c, true, false), arg_0, Struct_1(0u, arg_0.a, false, 32234i, 84324u), arg_0.c)), u_input.d.x), _wgslsmith_div_vec3_i32(u_input.a.wwx, vec3<i32>(6623i, ~(~arg_0.d), _wgslsmith_mod_i32(~u_input.a.x, u_input.a.x))));
    var var_1 = 1u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) - global1[_wgslsmith_index_u32(u_input.b << (4294967295u % 32u), 13u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.e, 13u)]))))) > -224f;
    let var_2 = arg_0;
    var_0 = _wgslsmith_div_vec3_i32(min(vec3<i32>(20318i | u_input.a.x, ~2147483647i, -u_input.e), reverseBits(vec3<i32>(var_2.d, arg_0.d, u_input.e) & u_input.a.xzz)) & ~u_input.a.ywy, -vec3<i32>(var_0.x, 1i, var_2.d));
    return !any(vec4<bool>(true, false, 4294967295u < (arg_0.b >> (55441u % 32u)), arg_0.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<u32>(821u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.x, ~u_input.b, arg_1.b, reverseBits(arg_1.e)), vec4<u32>(abs(~u_input.c.x), _wgslsmith_sub_u32(arg_2.b, 149408u) & (arg_3.x << (u_input.b % 32u)), arg_3.x, 1u)), 4294967295u, _wgslsmith_clamp_u32(2303u, 0u, reverseBits(1u)) >> (reverseBits(_wgslsmith_mult_u32(arg_3.x, ~24857u)) % 32u));
    global1 = array<f32, 13>();
    let var_1 = ~(-105896i);
    global0 = true;
    let var_2 = Struct_1(~_wgslsmith_div_u32(max(_wgslsmith_mult_u32(1u, 0u), ~arg_2.b), var_0.x), firstLeadingBit(~(~func_2(vec3<bool>(arg_2.c, arg_1.c, arg_1.c), Struct_1(0u, arg_3.x, arg_1.c, u_input.d.x, 27158u), arg_1, arg_2.c).a)), false, min(_wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_1.d, u_input.d.x), vec2<i32>(u_input.d.x, 0i)), -u_input.d), abs(arg_1.d)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(22673u, arg_2.b), arg_3.x, firstTrailingBit(9880u), abs(arg_3.x)), vec4<u32>(arg_2.e, 4294967295u, ~11370u, 1u)) % 32u), firstTrailingBit(1u));
    return func_2(!(!(!vec3<bool>(true, true, arg_2.c))), arg_2, func_2(select(!select(vec3<bool>(arg_2.c, true, arg_1.c), vec3<bool>(true, arg_1.c, arg_1.c), vec3<bool>(true, false, arg_2.c)), vec3<bool>(select(true, false, arg_2.c), all(vec4<bool>(arg_1.c, true, var_2.c, false)), true), all(select(vec4<bool>(arg_1.c, var_2.c, false, arg_1.c), vec4<bool>(false, true, false, arg_2.c), vec4<bool>(true, arg_1.c, var_2.c, false)))), func_2(!vec3<bool>(true, true, arg_1.c), func_2(!vec3<bool>(false, arg_2.c, arg_2.c), func_2(vec3<bool>(true, arg_1.c, false), arg_1, Struct_1(var_0.x, 4294967295u, var_2.c, -1i, 71370u), arg_1.c), func_2(vec3<bool>(var_2.c, true, arg_1.c), Struct_1(var_0.x, 27305u, arg_1.c, 1i, u_input.b), arg_1, true), true), arg_2, _wgslsmith_f_op_f32(trunc(-416f)) == _wgslsmith_f_op_f32(f32(-1f) * -429f)), func_2(!select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2.c, arg_2.c), vec3<bool>(true, true, false)), Struct_1(var_2.b, arg_2.b, any(vec2<bool>(arg_2.c, false)), -17900i | var_2.d, _wgslsmith_dot_vec3_u32(var_0.wzx, vec3<u32>(87747u, 22467u, arg_3.x))), var_2, true), any(select(select(vec2<bool>(arg_1.c, true), vec2<bool>(false, arg_1.c), vec2<bool>(false, arg_1.c)), vec2<bool>(false, arg_1.c), select(vec2<bool>(true, arg_1.c), vec2<bool>(true, arg_1.c), vec2<bool>(var_2.c, var_2.c))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1825f, global1[_wgslsmith_index_u32(10391u, 13u)], -571f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, -654f, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], -454f)), vec4<bool>(true, false, true, true)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], -1000f, 671f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(9456u, 13u)], 474f, 1460f, -1552f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], 110f, 610f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1406f, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)]) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])))))), Struct_1(u_input.c.x, 1u, func_1(Struct_1(u_input.b & u_input.b, u_input.b, true, 0i, u_input.c.x >> (1u % 32u))), 48696i, _wgslsmith_div_u32(2838u, func_2(vec3<bool>(false, false, false), Struct_1(56196u, u_input.b, false, -1i, 4294967295u), Struct_1(u_input.b, 32122u, true, u_input.a.x, u_input.b), true).e)), func_2(vec3<bool>((4294967295u != u_input.b) & any(vec4<bool>(false, false, false, true)), !any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(sign(-2028f)) <= global1[_wgslsmith_index_u32(36242u, 13u)]), Struct_1(select(u_input.c.x, 0u, true), 70993u, true, -1i, ~11779u), func_2(vec3<bool>(true, true, true), Struct_1(~u_input.c.x, ~u_input.c.x, func_2(vec3<bool>(false, true, true), Struct_1(u_input.c.x, u_input.c.x, true, 0i, 0u), Struct_1(4294967295u, u_input.c.x, true, -2514i, u_input.c.x), true).c, func_2(vec3<bool>(true, true, false), Struct_1(4318u, 51128u, true, u_input.d.x, 4294967295u), Struct_1(31837u, u_input.b, true, 55215i, u_input.b), true).d, 1u), func_2(vec3<bool>(true, false, false), Struct_1(17041u, u_input.c.x, false, u_input.a.x, u_input.b), func_2(vec3<bool>(true, false, true), Struct_1(u_input.c.x, u_input.c.x, false, 41101i, u_input.b), Struct_1(u_input.c.x, u_input.c.x, true, u_input.e, 69453u), false), all(vec4<bool>(false, true, true, true))), any(vec3<bool>(true, true, true))), true), vec2<u32>(~u_input.c.x & 4294967295u, min(0u, u_input.c.x)));
    var var_1 = func_4(vec4<f32>(global1[_wgslsmith_index_u32(~0u, 13u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.b, 13u)] * -650f) - global1[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 13u)] + 1678f))))), 364f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 13u)] * global1[_wgslsmith_index_u32(u_input.c.x, 13u)])), Struct_1(u_input.b, ~u_input.c.x, select(!var_0.c, all(select(vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, var_0.c, var_0.c), true)), var_0.c), max(firstLeadingBit(_wgslsmith_add_i32(var_0.d, var_0.d)), -24327i), abs(66812u | u_input.b) | 1u), Struct_1(~(~(var_0.e | 44296u)), min(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.c.x, 81165u, 0u), vec4<u32>(var_0.a, u_input.c.x, var_0.e, 0u))), 25917u), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.b, 13u)], global1[_wgslsmith_index_u32(var_0.e, 13u)], global1[_wgslsmith_index_u32(var_0.e, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), func_2(vec3<bool>(true, false, false), Struct_1(0u, u_input.c.x, false, var_0.d, 8241u), Struct_1(u_input.c.x, 68356u, true, -46100i, 0u), var_0.c), func_2(vec3<bool>(var_0.c, var_0.c, true), Struct_1(u_input.b, 71001u, false, var_0.d, 58674u), Struct_1(4294967295u, u_input.b, var_0.c, -58164i, 824u), true), abs(vec2<u32>(var_0.a, u_input.c.x))).d < (-6152i | _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, u_input.a.x))), -2147483647i, countOneBits(func_2(vec3<bool>(var_0.c, var_0.c, var_0.c), Struct_1(0u, 4294967295u, false, var_0.d, var_0.e), Struct_1(13465u, var_0.b, false, var_0.d, u_input.c.x), false).b >> (reverseBits(u_input.b) % 32u))), min(vec2<u32>(~66349u, reverseBits(15727u)), ~u_input.c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13847u, 13u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b, 13u)])))) - 197f);
    let var_3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, abs(u_input.d.x), var_0.d, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, var_0.d, 0i), u_input.a.xxy)), ~(~(~select(u_input.a, vec4<i32>(-30018i, 15004i, var_1.d, 2147483647i), vec4<bool>(false, false, true, var_0.c)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1306f, -1845f, -1172f, -527f) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])), Struct_1(u_input.b, 18478u, var_1.c, 1i, var_1.b), func_2(vec3<bool>(var_0.c, var_1.c, var_1.c), Struct_1(u_input.b, var_0.b, false, -1i, 11853u), Struct_1(var_1.e, u_input.c.x, false, var_0.d, var_1.b), false), _wgslsmith_mod_vec2_u32(u_input.c, u_input.c)).e, 13u)]))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~var_0.b, 13u)], _wgslsmith_f_op_f32(round(579f)))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(59920u, 0u, var_1.b), 13u)])))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-448f)))) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 13u)] * -880f)))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -742f);
    let var_5 = global1[_wgslsmith_index_u32((u_input.c.x >> (var_0.e % 32u)) << (var_0.b % 32u), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e);
}

