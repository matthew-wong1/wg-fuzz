struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = 7549i;
    let var_1 = 1u;
    var var_2 = u_input.a.x;
    var_2 = 55231i;
    let var_3 = Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, var_1, u_input.c.x), vec4<u32>(1u, var_1, 1u, var_1)) >> (select(vec4<u32>(var_1, 32186u, 4294967295u, u_input.c.x), vec4<u32>(22569u, u_input.c.x, u_input.c.x, u_input.d), false) % vec4<u32>(32u)), ~(~vec4<u32>(1u, 52320u, var_1, 4294967295u))), Struct_1(u_input.a.x), Struct_1(-17476i)), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)), -u_input.b.x, 1u, Struct_1(u_input.a.x));
    return reverseBits(vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(firstLeadingBit(-1i), u_input.a.x)), 0i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(202f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(189f - -1000f))));
    var_1 = _wgslsmith_f_op_f32(-2064f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-609f - -118f) - _wgslsmith_div_f32(-1468f, 517f)))));
    var var_2 = Struct_1(arg_3.a.a.c.a);
    var var_3 = ~min(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-9212i, 10929i), u_input.b.xz, arg_0.x) << (u_input.c.xz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a.x), ~u_input.a.yx, u_input.a.wy << (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u)))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -485f), vec2<f32>(1228f, -1125f), arg_2)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-1380f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1251f - 1991f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(367f, -1152f)))))), 322f, -2359f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(sign(1030f))), 981f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    var var_0 = arg_1.yxy;
    let var_1 = !(!select(arg_1, select(!arg_1, vec4<bool>(var_0.x, false, true, arg_1.x), false), -u_input.b.x >= u_input.b.x));
    var_0 = arg_1.wxy;
    var var_2 = Struct_3(Struct_2(~(~(vec4<u32>(u_input.d, u_input.c.x, 12593u, u_input.c.x) >> (vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.c.x) % vec4<u32>(32u)))), arg_2, Struct_1(u_input.a.x)), select(select(arg_1.xz, select(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_1.x), select(var_0.yz, var_0.xy, var_1.x), select(vec2<bool>(true, arg_1.x), var_0.yz, var_0.x)), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c) != u_input.d), var_0.zy, true), abs(arg_2.a), _wgslsmith_add_u32(abs(abs(45829u)) ^ firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c.yx)), u_input.c.x), Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, arg_2.a, -2147483647i, u_input.b.x), u_input.a))));
    return any(!select(select(select(vec3<bool>(true, false, var_1.x), var_1.wzx, false), vec3<bool>(var_0.x, true, false), true), arg_1.yzw, arg_1.ywz));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> u32 {
    let var_0 = arg_1.c.a.c;
    let var_1 = Struct_4(arg_1.a, false, Struct_3(arg_1.d.a, select(vec2<bool>(!arg_2, arg_1.d.b.x && true), arg_1.a.b, vec2<bool>(true, !arg_2)), u_input.b.x, reverseBits(~0u), Struct_1(-31412i)), Struct_3(arg_1.c.a, select(select(select(vec2<bool>(arg_2, arg_1.a.b.x), arg_1.a.b, arg_1.a.b.x), !vec2<bool>(arg_2, false), true), vec2<bool>(any(vec4<bool>(arg_2, arg_2, arg_2, false)), arg_1.a.b.x), false), var_0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.a.a.a.wz, u_input.c.yz), firstTrailingBit(_wgslsmith_div_vec2_u32(arg_1.a.a.a.wx, vec2<u32>(1u, 0u)))), Struct_1(1i)));
    let var_2 = Struct_5(vec4<f32>(arg_0, 668f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.b, arg_1.c.a);
    var var_3 = -2159f;
    return ~63772u;
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = !(func_5(142f, arg_2, false) != _wgslsmith_dot_vec4_u32((arg_2.c.a.a >> (vec4<u32>(u_input.d, arg_2.c.d, 13939u, 40495u) % vec4<u32>(32u))) << (vec4<u32>(arg_1, 26206u, arg_3.x, arg_2.d.d) % vec4<u32>(32u)), arg_3));
    return arg_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: bool) -> vec3<bool> {
    var var_0 = func_6(!vec4<bool>(arg_3, false, !arg_3, true), func_5(_wgslsmith_f_op_f32(select(-653f, -1521f, func_4(_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(true, arg_3, arg_3, arg_3), vec2<u32>(44331u, u_input.c.x), vec2<bool>(false, false), Struct_4(Struct_3(Struct_2(vec4<u32>(u_input.d, 38931u, 0u, 27932u), Struct_1(-2147483647i), Struct_1(1i)), vec2<bool>(false, false), 0i, 36406u, Struct_1(-1i)), true, Struct_3(Struct_2(vec4<u32>(19443u, arg_1, 20384u, 41551u), Struct_1(0i), Struct_1(-2147483647i)), vec2<bool>(arg_3, false), -1i, u_input.d, Struct_1(arg_2)), Struct_3(Struct_2(vec4<u32>(arg_1, u_input.c.x, 1u, 36187u), Struct_1(13073i), Struct_1(u_input.b.x)), vec2<bool>(arg_3, arg_3), arg_0.x, 4728u, Struct_1(arg_0.x))))), select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(arg_3, true, true, arg_3), false), Struct_1(arg_0.x)))), Struct_4(Struct_3(Struct_2(vec4<u32>(u_input.d, 0u, 0u, 20452u), Struct_1(arg_2), Struct_1(-1i)), select(vec2<bool>(true, arg_3), vec2<bool>(arg_3, false), vec2<bool>(true, false)), reverseBits(1871i), ~u_input.c.x, Struct_1(57737i)), arg_3 || !arg_3, Struct_3(Struct_2(vec4<u32>(43746u, 21227u, 109543u, 0u), Struct_1(u_input.a.x), Struct_1(arg_2)), vec2<bool>(arg_3, false), select(arg_0.x, 12699i, arg_3), ~arg_1, Struct_1(arg_0.x)), Struct_3(Struct_2(vec4<u32>(arg_1, 1u, 33441u, 1u), Struct_1(-2147483647i), Struct_1(-5436i)), vec2<bool>(arg_3, arg_3), -50999i, 73050u ^ arg_1, Struct_1(arg_2))), all(vec3<bool>(select(arg_3, false, true), any(vec3<bool>(false, true, arg_3)), all(vec2<bool>(false, arg_3))))), Struct_4(Struct_3(Struct_2(min(vec4<u32>(75198u, 1u, 0u, arg_1), vec4<u32>(u_input.c.x, 4294967295u, 58981u, u_input.c.x)), Struct_1(41244i), Struct_1(u_input.a.x)), select(!vec2<bool>(arg_3, arg_3), !vec2<bool>(arg_3, arg_3), !vec2<bool>(arg_3, false)), u_input.a.x, 1u, Struct_1(-1i)), arg_3, Struct_3(Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 4237u, 4294967295u, arg_1), vec4<u32>(arg_1, 0u, arg_1, 0u), vec4<u32>(23334u, 10862u, u_input.c.x, 72395u)), Struct_1(2147483647i), Struct_1(arg_2)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, arg_3)), !vec2<bool>(arg_3, arg_3), true), arg_0.x, ~reverseBits(u_input.c.x), Struct_1(_wgslsmith_mult_i32(32451i, 54442i))), Struct_3(Struct_2(min(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 38433u), vec4<u32>(arg_1, u_input.c.x, u_input.d, arg_1)), Struct_1(6812i), Struct_1(arg_0.x)), vec2<bool>(true, !arg_3), u_input.b.x, ~countOneBits(arg_1), Struct_1(-2147483647i & arg_2))), vec4<u32>(max(~(61893u | u_input.d), arg_1), arg_1, ~1u, _wgslsmith_sub_u32(~(4294967295u & arg_1), abs(5775u))));
    var var_1 = Struct_2(firstLeadingBit(~var_0.a.a.a), Struct_1(countOneBits(var_0.c.c ^ ~17157i)), var_0.a.e);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-148f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1739f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(563f)) + _wgslsmith_f_op_f32(-1012f - 669f)))), 705f);
    let var_3 = vec4<bool>(true, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 454f, 1000f)), !select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(false, var_0.d.b.x, true, true), false), Struct_1(max(0i, var_1.c.a))) | arg_3, var_0.b | !(max(-3868i, arg_0.x) != var_1.c.a), select(!func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, 1000f, var_2.x, -1017f)), select(vec4<bool>(true, var_0.d.b.x, false, false), vec4<bool>(false, arg_3, true, false), vec4<bool>(true, false, var_0.b, true)), func_6(vec4<bool>(var_0.a.b.x, true, var_0.d.b.x, var_0.c.b.x), 1u, Struct_4(var_0.a, false, var_0.a, Struct_3(Struct_2(vec4<u32>(1u, u_input.d, arg_1, 4294967295u), var_0.c.a.b, var_0.d.a.b), vec2<bool>(arg_3, arg_3), arg_2, u_input.d, var_1.c)), var_1.a).a.e), false, var_0.c.b.x));
    let var_4 = _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.c.d, ~_wgslsmith_dot_vec4_u32(var_0.d.a.a >> (var_0.c.a.a % vec4<u32>(32u)), vec4<u32>(var_1.a.x, 4294967295u, arg_1, 0u))), ~var_1.a.x);
    return var_3.zzw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), false);
    var var_1 = select(select(vec3<bool>(var_0.x, var_0.x, !var_0.x), !func_1(u_input.a.yyy, u_input.c.x, ~16708i, var_0.x), select(!func_1(vec3<i32>(u_input.b.x, u_input.a.x, 0i), 35475u, u_input.b.x, var_0.x), select(vec3<bool>(true, var_0.x, false), func_1(vec3<i32>(-6886i, u_input.a.x, u_input.a.x), u_input.d, 0i, true), !vec3<bool>(true, var_0.x, var_0.x)), true)), select(vec3<bool>(!(!var_0.x), !all(vec2<bool>(true, var_0.x)), true), vec3<bool>(~u_input.c.x <= 1u, var_0.x, true), vec3<bool>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, -1909f, 1799f, -649f)), vec4<bool>(var_0.x, false, var_0.x, var_0.x), Struct_1(0i)), false, !(!var_0.x))), any(!(!vec4<bool>(var_0.x, false, true, false))));
    let var_2 = false;
    var_0 = !vec2<bool>(!(_wgslsmith_clamp_u32(u_input.d, u_input.c.x, u_input.c.x) == _wgslsmith_div_u32(u_input.d, u_input.c.x)), any(vec3<bool>(func_1(vec3<i32>(-21962i, 35449i, -20301i), u_input.d, -7030i, true).x, var_0.x, true)));
    var_1 = !vec3<bool>(!(!var_2), false, all(func_1(u_input.a.yzz ^ u_input.b.wxz, ~u_input.d, u_input.a.x, any(vec2<bool>(var_2, false))).xx));
    var_0 = !var_1.yz;
    var var_3 = vec3<u32>(4294967295u, ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, u_input.c), ~vec3<u32>(59125u, 1u, u_input.c.x))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(101684u, 0u), vec2<u32>(0u, 4294967295u) | vec2<u32>(u_input.d, 0u)) ^ u_input.d, func_6(select(vec4<bool>(var_0.x, true, false, var_1.x), vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(false, var_0.x, var_1.x, false)), ~4294967295u, Struct_4(Struct_3(Struct_2(vec4<u32>(92263u, 1u, 1u, u_input.d), Struct_1(u_input.a.x), Struct_1(1i)), var_1.xy, u_input.b.x, 1u, Struct_1(u_input.a.x)), false, func_6(vec4<bool>(true, var_0.x, true, true), 12962u, Struct_4(Struct_3(Struct_2(vec4<u32>(18814u, 0u, u_input.d, u_input.d), Struct_1(u_input.a.x), Struct_1(11181i)), var_1.zy, 0i, 70573u, Struct_1(-9347i)), true, Struct_3(Struct_2(vec4<u32>(1u, u_input.d, 9940u, u_input.d), Struct_1(u_input.a.x), Struct_1(-1571i)), var_1.xy, u_input.b.x, u_input.d, Struct_1(u_input.a.x)), Struct_3(Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, 51450u, u_input.d), Struct_1(u_input.b.x), Struct_1(u_input.b.x)), vec2<bool>(true, var_1.x), u_input.a.x, 3926u, Struct_1(u_input.b.x))), vec4<u32>(u_input.c.x, u_input.d, 62003u, 1u)).a, func_6(vec4<bool>(false, true, var_2, var_2), u_input.c.x, Struct_4(Struct_3(Struct_2(vec4<u32>(45378u, u_input.d, u_input.d, u_input.d), Struct_1(8396i), Struct_1(u_input.a.x)), vec2<bool>(var_0.x, var_0.x), u_input.b.x, u_input.c.x, Struct_1(-25682i)), true, Struct_3(Struct_2(vec4<u32>(u_input.c.x, 23301u, 26430u, u_input.c.x), Struct_1(u_input.a.x), Struct_1(u_input.a.x)), var_1.yx, -49371i, u_input.c.x, Struct_1(17805i)), Struct_3(Struct_2(vec4<u32>(u_input.c.x, u_input.d, 0u, u_input.d), Struct_1(u_input.b.x), Struct_1(19839i)), var_1.yy, -1i, 13455u, Struct_1(u_input.b.x))), vec4<u32>(2760u, u_input.d, 81050u, 1u)).d), ~vec4<u32>(60864u, u_input.c.x, u_input.c.x, 47u)).c.d, abs(28947u)));
    var var_4 = Struct_4(func_6(vec4<bool>(var_0.x, true, true, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, 147f, -145f, 1105f) * vec4<f32>(-1189f, 1376f, 1303f, 170f)), vec4<bool>(false, false, true, var_1.x), Struct_1(u_input.a.x))), ~abs(var_3.x), func_6(vec4<bool>(var_1.x, false, var_1.x | var_0.x, false), min(var_3.x, 0u << (1u % 32u)), func_6(select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, var_2, false, var_1.x), vec4<bool>(false, var_0.x, true, true)), 24800u, func_6(vec4<bool>(var_0.x, var_2, false, var_0.x), 30121u, Struct_4(Struct_3(Struct_2(vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x), Struct_1(u_input.a.x), Struct_1(u_input.b.x)), var_1.zz, 0i, var_3.x, Struct_1(u_input.a.x)), false, Struct_3(Struct_2(vec4<u32>(u_input.c.x, u_input.d, 1u, var_3.x), Struct_1(41414i), Struct_1(u_input.a.x)), vec2<bool>(true, true), 4295i, u_input.c.x, Struct_1(u_input.b.x)), Struct_3(Struct_2(vec4<u32>(u_input.d, 24106u, 7872u, var_3.x), Struct_1(u_input.a.x), Struct_1(u_input.a.x)), var_1.xx, u_input.a.x, u_input.d, Struct_1(33321i))), vec4<u32>(66726u, u_input.d, var_3.x, 1u)), max(vec4<u32>(64952u, 12065u, u_input.c.x, 17135u), vec4<u32>(34316u, 63759u, var_3.x, u_input.c.x))), vec4<u32>(_wgslsmith_mult_u32(43867u, var_3.x), _wgslsmith_add_u32(4294967295u, u_input.d), var_3.x >> (u_input.d % 32u), 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, 1u, 1u, 4294967295u), vec4<u32>(1u, 15601u, 57618u, 53398u), ~vec4<u32>(u_input.c.x, var_3.x, var_3.x, u_input.d)) & max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 33237u, u_input.d, 0u), vec4<u32>(36007u, var_3.x, 4294967295u, 4481u)), vec4<u32>(var_3.x, 96520u, var_3.x, var_3.x))).c, !select(!var_0.x, any(vec3<bool>(true, var_1.x, true)), var_2) == all(func_1(vec3<i32>(2147483647i, u_input.a.x, 1i), 57456u & var_3.x, _wgslsmith_mult_i32(48648i, u_input.b.x), true)), func_6(vec4<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.b.x), u_input.b.xxw) <= _wgslsmith_add_i32(-1i, 31807i), var_0.x, var_2), var_3.x, func_6(vec4<bool>(true, any(vec3<bool>(false, true, true)), var_2, true), ~(~25066u), Struct_4(func_6(vec4<bool>(false, false, false, var_2), var_3.x, Struct_4(Struct_3(Struct_2(vec4<u32>(u_input.c.x, var_3.x, u_input.d, 1u), Struct_1(u_input.a.x), Struct_1(u_input.a.x)), var_1.yz, 72655i, 43064u, Struct_1(u_input.a.x)), var_1.x, Struct_3(Struct_2(vec4<u32>(54960u, var_3.x, 1u, 4229u), Struct_1(-26374i), Struct_1(26893i)), vec2<bool>(var_1.x, true), u_input.b.x, 0u, Struct_1(0i)), Struct_3(Struct_2(vec4<u32>(var_3.x, 36166u, 50158u, 15280u), Struct_1(u_input.a.x), Struct_1(-1i)), var_1.zy, 0i, 53091u, Struct_1(0i))), vec4<u32>(4294967295u, u_input.d, 22637u, 4294967295u)).c, func_6(vec4<bool>(var_1.x, false, var_1.x, var_2), 3011u, Struct_4(Struct_3(Struct_2(vec4<u32>(u_input.c.x, 1u, var_3.x, 25604u), Struct_1(0i), Struct_1(u_input.b.x)), vec2<bool>(true, true), 1i, 13560u, Struct_1(u_input.a.x)), true, Struct_3(Struct_2(vec4<u32>(u_input.c.x, 1u, 30237u, 1u), Struct_1(-37866i), Struct_1(u_input.b.x)), var_1.zz, u_input.a.x, 1u, Struct_1(u_input.b.x)), Struct_3(Struct_2(vec4<u32>(7996u, 13819u, 1u, 117494u), Struct_1(23495i), Struct_1(-48617i)), var_1.yy, u_input.b.x, var_3.x, Struct_1(10076i))), vec4<u32>(var_3.x, 50026u, var_3.x, u_input.c.x)).a.b.x, Struct_3(Struct_2(vec4<u32>(u_input.d, 1u, 1u, u_input.d), Struct_1(u_input.a.x), Struct_1(2147483647i)), var_1.yz, u_input.b.x, 27802u, Struct_1(2353i)), func_6(vec4<bool>(var_0.x, true, true, true), var_3.x, Struct_4(Struct_3(Struct_2(vec4<u32>(u_input.c.x, 4294967295u, u_input.d, u_input.d), Struct_1(-1i), Struct_1(u_input.b.x)), var_1.xx, -24497i, 13636u, Struct_1(u_input.b.x)), true, Struct_3(Struct_2(vec4<u32>(u_input.c.x, 26806u, u_input.c.x, 10617u), Struct_1(u_input.b.x), Struct_1(u_input.b.x)), var_1.zz, 54279i, 11317u, Struct_1(-61082i)), Struct_3(Struct_2(vec4<u32>(var_3.x, u_input.c.x, u_input.c.x, var_3.x), Struct_1(u_input.b.x), Struct_1(u_input.b.x)), var_1.yz, 38978i, 0u, Struct_1(u_input.b.x))), vec4<u32>(4294967295u, 8569u, u_input.d, 50724u)).c), vec4<u32>(_wgslsmith_mult_u32(53071u, 41229u), 4294967295u, func_6(vec4<bool>(false, true, false, var_0.x), u_input.c.x, Struct_4(Struct_3(Struct_2(vec4<u32>(1u, u_input.d, u_input.c.x, 1u), Struct_1(u_input.a.x), Struct_1(0i)), var_1.zx, u_input.a.x, 1u, Struct_1(76540i)), var_1.x, Struct_3(Struct_2(vec4<u32>(var_3.x, 1u, u_input.d, 75153u), Struct_1(u_input.a.x), Struct_1(-7463i)), var_1.xx, u_input.a.x, u_input.c.x, Struct_1(u_input.b.x)), Struct_3(Struct_2(vec4<u32>(var_3.x, 0u, var_3.x, 86057u), Struct_1(u_input.a.x), Struct_1(u_input.b.x)), vec2<bool>(false, var_1.x), 5103i, 32067u, Struct_1(41249i))), vec4<u32>(1u, 4294967295u, u_input.c.x, var_3.x)).a.d, var_3.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_3.x, u_input.d, u_input.d, u_input.c.x)), abs(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.d)))).c, Struct_3(Struct_2(vec4<u32>(u_input.c.x, countOneBits(u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 11371u, 4294967295u)), _wgslsmith_add_u32(u_input.d, var_3.x)), func_6(!vec4<bool>(var_0.x, false, var_0.x, var_2), ~u_input.d, Struct_4(Struct_3(Struct_2(vec4<u32>(u_input.c.x, var_3.x, 36350u, var_3.x), Struct_1(u_input.a.x), Struct_1(u_input.a.x)), var_1.zy, -2147483647i, 41981u, Struct_1(u_input.a.x)), false, Struct_3(Struct_2(vec4<u32>(1u, var_3.x, 0u, 73541u), Struct_1(u_input.a.x), Struct_1(u_input.b.x)), var_1.zy, u_input.a.x, var_3.x, Struct_1(1i)), Struct_3(Struct_2(vec4<u32>(3819u, var_3.x, 4294967295u, 9823u), Struct_1(u_input.a.x), Struct_1(-58121i)), var_1.xy, 0i, u_input.c.x, Struct_1(u_input.b.x))), ~vec4<u32>(u_input.d, 4294967295u, 17945u, 1u)).a.a.c, Struct_1(1i)), !var_1.yy, 1i, 4294967295u, func_6(select(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, true, var_1.x, var_0.x), var_0.x), select(vec4<bool>(false, true, true, var_2), vec4<bool>(var_1.x, true, var_0.x, var_2), var_0.x), !vec4<bool>(false, true, var_1.x, false)), ~func_5(-292f, Struct_4(Struct_3(Struct_2(vec4<u32>(var_3.x, u_input.c.x, 1u, 3115u), Struct_1(u_input.b.x), Struct_1(6806i)), var_1.xx, 6018i, var_3.x, Struct_1(0i)), var_1.x, Struct_3(Struct_2(vec4<u32>(1u, u_input.c.x, var_3.x, 37584u), Struct_1(99010i), Struct_1(u_input.b.x)), vec2<bool>(true, var_0.x), u_input.a.x, u_input.d, Struct_1(u_input.b.x)), Struct_3(Struct_2(vec4<u32>(u_input.c.x, 71534u, u_input.d, 51604u), Struct_1(u_input.b.x), Struct_1(-30785i)), var_1.xz, u_input.b.x, var_3.x, Struct_1(u_input.b.x))), true), Struct_4(func_6(vec4<bool>(true, false, false, var_2), var_3.x, Struct_4(Struct_3(Struct_2(vec4<u32>(20261u, u_input.d, var_3.x, 0u), Struct_1(u_input.a.x), Struct_1(u_input.a.x)), vec2<bool>(false, true), u_input.a.x, 5297u, Struct_1(2147483647i)), var_0.x, Struct_3(Struct_2(vec4<u32>(u_input.d, u_input.d, 0u, 4294967295u), Struct_1(-2147483647i), Struct_1(u_input.a.x)), var_1.zz, 2147483647i, var_3.x, Struct_1(2147483647i)), Struct_3(Struct_2(vec4<u32>(4294967295u, 0u, var_3.x, var_3.x), Struct_1(396i), Struct_1(69905i)), var_1.yz, u_input.b.x, 3076u, Struct_1(u_input.b.x))), vec4<u32>(u_input.c.x, u_input.c.x, 0u, var_3.x)).a, var_1.x & var_1.x, Struct_3(Struct_2(vec4<u32>(var_3.x, 1u, 33545u, 1u), Struct_1(-1i), Struct_1(-1i)), var_1.yz, 6344i, u_input.c.x, Struct_1(u_input.a.x)), Struct_3(Struct_2(vec4<u32>(89782u, u_input.c.x, 18216u, var_3.x), Struct_1(-9260i), Struct_1(0i)), vec2<bool>(var_1.x, false), u_input.a.x, 4294967295u, Struct_1(u_input.a.x))), ~(vec4<u32>(39123u, u_input.c.x, u_input.d, 28997u) | vec4<u32>(39283u, u_input.d, 1u, 68284u))).c.e));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

