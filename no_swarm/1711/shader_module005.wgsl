struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    global0 = array<vec3<bool>, 10>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.x)))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.d.x);
    global0 = array<vec3<bool>, 10>();
    var_0 = -2054f;
    return arg_3.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2147f, 2953f, -2255f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1378f, 1000f) - vec3<f32>(190f, 937f, 595f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-736f)), _wgslsmith_f_op_f32(floor(-1000f)), 1342f) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1451f, 605f, -1228f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1781f, -1123f, -723f))))))), Struct_1(min(_wgslsmith_mod_i32(arg_0.x, firstLeadingBit(1i)), ~1i), u_input.b, select(vec2<bool>(true, true), vec2<bool>(true, u_input.a.x != 4294967295u), !select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, 2129f, 2271f, 1078f))), vec4<f32>(-1415f, -1000f, _wgslsmith_f_op_f32(abs(-144f)), _wgslsmith_f_op_f32(-206f + -1242f))))), vec4<i32>(abs(~u_input.b ^ _wgslsmith_mod_i32(-1i, -1i)), -arg_0.x, ~_wgslsmith_dot_vec3_i32(arg_0.yxy & vec3<i32>(85124i, arg_0.x, arg_0.x), arg_0.yzx), _wgslsmith_dot_vec4_i32(firstLeadingBit(firstTrailingBit(arg_0)), abs(-vec4<i32>(2147483647i, 52830i, u_input.b, -64548i)))), false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -696f)))), _wgslsmith_f_op_f32(abs(276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(307f - 1026f) * _wgslsmith_f_op_f32(sign(-2031f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1330f) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-199f, -891f), _wgslsmith_f_op_f32(f32(-1f) * -774f))))));
    var var_1 = !vec3<bool>(var_0.b.c.x, select(var_0.b.c.x, var_0.b.c.x, all(vec2<bool>(true, var_0.b.c.x))), !(!all(vec4<bool>(var_0.d, var_0.d, var_0.b.c.x, true))));
    var_1 = !(!(!global0[_wgslsmith_index_u32(~u_input.a.x, 10u)]));
    let var_2 = _wgslsmith_add_u32(arg_1 ^ 25196u, min(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~0u, arg_1, 17584u), _wgslsmith_mult_u32(select(42437u, u_input.a.x, true), _wgslsmith_mod_u32(u_input.a.x, 4294967295u)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-820f)))) + -265f));
    return ~(~abs((u_input.a.yx << (u_input.a.yy % vec2<u32>(32u))) & ~u_input.a.yz));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = max(func_4(~(~vec4<i32>(-22903i, u_input.b, 20884i, 2147483647i)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(26870u, 0u, u_input.a.x, 89055u), vec4<u32>(u_input.a.x, 58477u, u_input.a.x, u_input.a.x)), vec4<u32>(57062u, 4294967295u, 1u, 97356u) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_u32(func_3(Struct_1(u_input.b, -2147483647i, vec2<bool>(arg_1.c.x, false), arg_1.b.d), arg_1.c, Struct_2(arg_1.a, arg_1.b, vec2<bool>(false, arg_1.c.x), arg_1.d, arg_1.a.xxy), vec4<u32>(78301u, 4294967295u, u_input.a.x, 1u)), u_input.a.x, 0u))), u_input.a.xx);
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    let var_1 = Struct_4(vec3<f32>(-988f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - -1000f), arg_0, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))), Struct_1(arg_1.b.b, ~1i, !(!(!vec2<bool>(arg_1.c.x, arg_1.c.x))), _wgslsmith_f_op_vec4_f32(sign(arg_1.d))), arg_1.a, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -753f), 1196f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1.b.d.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 250f, arg_1.b.d.x, arg_0))) * vec4<f32>(arg_0, 230f, arg_1.d.x, 1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(781f, 1693f, -915f, arg_1.b.d.x), vec4<f32>(315f, arg_1.b.d.x, arg_1.b.d.x, -1782f), vec4<bool>(arg_1.c.x, arg_1.c.x, false, true)))))));
    global0 = array<vec3<bool>, 10>();
    return !((min(-21563i, -93558i) & _wgslsmith_clamp_i32(-arg_1.b.b, arg_1.b.a, 17654i)) >= _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -25080i, var_1.b.a, var_1.c.x), vec4<i32>(10604i, 14154i, var_1.c.x, u_input.b)) & (var_1.b.a & -13155i), 0i));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = arg_0 > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + 469f))), 903f, true & func_2(arg_0, Struct_2(vec4<i32>(-2147483647i, 92589i, u_input.b, u_input.b), Struct_1(u_input.b, 21515i, vec2<bool>(false, true), vec4<f32>(1268f, 762f, arg_0, -172f)), vec2<bool>(true, true), vec4<f32>(arg_0, 1111f, arg_0, -1445f), vec3<i32>(2147483647i, u_input.b, -1i)))))));
    let var_1 = ~u_input.a.x;
    var var_2 = abs(_wgslsmith_div_vec3_u32(u_input.a, u_input.a)) >> (vec3<u32>(~(abs(var_1) >> (min(u_input.a.x, var_1) % 32u)), u_input.a.x, var_1) % vec3<u32>(32u));
    var var_3 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b) << (~var_2.x % 32u)), -15923i, -1i, -18257i), Struct_1(~u_input.b, 1i, !(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) * vec4<f32>(391f, arg_0, 234f, arg_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1000f, arg_0, 1003f) + vec4<f32>(arg_0, arg_0, 1081f, 1000f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, -323f, 1335f)))))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(select(vec2<bool>(false, false), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), !vec2<bool>(var_0, var_0), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), vec2<bool>(true, false)), !vec2<bool>(var_0, var_0), var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1646f, 651f, 641f, -447f)))))), countOneBits(reverseBits(reverseBits(vec3<i32>(-9523i, u_input.b, u_input.b))) | vec3<i32>(u_input.b, -u_input.b, 2147483647i)));
    let var_4 = Struct_2(~select(max(select(vec4<i32>(-2879i, var_3.e.x, 2147483647i, 6127i), vec4<i32>(var_3.b.a, -1i, u_input.b, var_3.a.x), false), _wgslsmith_clamp_vec4_i32(var_3.a, vec4<i32>(-1i, var_3.e.x, 62466i, 11505i), var_3.a)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(0i, u_input.b, 1i, var_3.b.b)), vec4<i32>(u_input.b, 0i, -1i, 6121i)), var_3.d.x < var_3.b.d.x), var_3.b, vec2<bool>(false, var_1 < 1u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-108f, arg_0), 1119f, _wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(round(var_3.b.d.x)))))), select(vec3<i32>(u_input.b, -9807i, countOneBits(var_3.b.a)), _wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(var_3.e.x, var_3.b.b, -2147483647i), vec3<i32>(3442i, 12707i, var_3.b.b)), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, u_input.b, var_3.e.x), ~var_3.a.zzz), vec3<i32>(max(var_3.e.x, -1i), abs(u_input.b), _wgslsmith_mod_i32(var_3.a.x, var_3.b.b))), true));
    return var_4.c;
}

fn func_5(arg_0: vec2<bool>) -> Struct_5 {
    var var_0 = u_input.a;
    var_0 = ~u_input.a;
    var_0 = ~((vec3<u32>(u_input.a.x, ~u_input.a.x, ~u_input.a.x) << (vec3<u32>(u_input.a.x | 4294967295u, 1u, ~var_0.x) % vec3<u32>(32u))) | select(u_input.a, u_input.a | ~vec3<u32>(var_0.x, 57093u, var_0.x), any(global0[_wgslsmith_index_u32(u_input.a.x, 10u)])));
    var_0 = vec3<u32>(55242u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, var_0.x & _wgslsmith_div_u32(31454u, var_0.x))), ~abs(~94840u >> (u_input.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1335f, -914f, 621f, -2007f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(638f, -315f, -639f, -1127f), vec4<f32>(-103f, 585f, -374f, 881f))))))));
    return Struct_5(all(vec2<bool>(!arg_0.x, arg_0.x)), Struct_1(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.b, u_input.b), vec2<i32>(6548i, 1i)), u_input.b), vec2<bool>(true, false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), 177f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + _wgslsmith_f_op_f32(var_1.x - var_1.x)))), u_input.b, select(-vec3<i32>(2147483647i, 8595i, u_input.b), ~(~vec3<i32>(u_input.b, -53691i, 57198i)), vec3<bool>(arg_0.x, arg_0.x, true)) ^ ((~vec3<i32>(32932i, -1578i, u_input.b) & firstLeadingBit(vec3<i32>(-1i, -2147483647i, 4494i))) | ~(-vec3<i32>(u_input.b, u_input.b, u_input.b))), (arg_0.x | (!arg_0.x | !arg_0.x)) || !arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 10>();
    let var_0 = func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(233f)))))));
    var var_1 = Struct_5(var_0.a, Struct_1(var_0.b.b, abs(i32(-1i) * -5316i), vec2<bool>(func_2(_wgslsmith_f_op_f32(var_0.b.d.x - -757f), Struct_2(vec4<i32>(-2364i, -1i, u_input.b, 2147483647i), Struct_1(25422i, 1i, vec2<bool>(var_0.b.c.x, var_0.b.c.x), var_0.b.d), vec2<bool>(false, var_0.a), vec4<f32>(222f, 1000f, var_0.b.d.x, -576f), var_0.d)), (-2448f > var_0.b.d.x) && (var_0.b.c.x | var_0.a)), var_0.b.d), u_input.b, var_0.d, !(!all(vec4<bool>(false, var_0.a, var_0.a, false))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d.x)), func_5(var_1.b.c).b.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.d.x))), _wgslsmith_div_f32(-1942f, var_1.b.d.x))), var_1.b.d);
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], func_5(select(var_0.b.c, !var_0.b.c, _wgslsmith_f_op_f32(exp2(var_1.b.d.x)) > _wgslsmith_f_op_f32(f32(-1f) * -996f))).b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(34965u | ~_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xx), u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 12620u, 54481u, 0u), vec4<u32>(u_input.a.x, 16752u, u_input.a.x, u_input.a.x)), select(vec4<u32>(1u, u_input.a.x, u_input.a.x, 64581u), vec4<u32>(1u, 1u, 84192u, 44830u), vec4<bool>(false, var_3.a.x, var_3.b.c.x, false)))), ~(~1u)));
}

