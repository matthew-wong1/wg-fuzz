struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = 1i;
    var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    var_0 = -_wgslsmith_add_i32(u_input.c.x, ~(u_input.c.x & (u_input.a.x | -1i)));
    var_0 = abs(-65561i);
    return Struct_1(0u, firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.d, _wgslsmith_mult_vec2_u32(~u_input.e, vec2<u32>(0u, 0u)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x, u_input.e.x, arg_0.a, 37077u), vec4<u32>(arg_0.b.x, arg_0.a, arg_0.b.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.b, u_input.b, u_input.b)), ~(~vec4<u32>(u_input.d.x, u_input.d.x, arg_0.a, 0u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, u_input.e.x, 114672u, arg_0.a), vec4<u32>(1u, 29767u, u_input.e.x, 0u)), u_input.e.x), u_input.d.x), u_input.d, ~(~reverseBits(u_input.d))), arg_0.b);
    var var_1 = Struct_5(Struct_4(Struct_3(select(u_input.c, select(u_input.c, u_input.c, vec3<bool>(false, true, true)), any(vec3<bool>(false, false, true))), Struct_2(vec4<bool>(true, true, true, true), arg_0, vec3<bool>(false, false, true)), Struct_1(4294967295u >> (var_0.x % 32u), firstLeadingBit(arg_0.b)), arg_1 & arg_1, Struct_2(vec4<bool>(true, true, true, true), arg_0, vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(sign(335f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-173f, -891f), -733f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-593f + _wgslsmith_f_op_f32(735f + 1665f))))));
    let var_2 = Struct_3(~vec3<i32>(arg_1, _wgslsmith_div_i32(-u_input.a.x, 26701i), ~abs(u_input.c.x)), Struct_2(vec4<bool>(var_1.a.a.e.a.x, false, !var_1.a.a.e.c.x, any(!var_1.a.a.e.c)), Struct_1(arg_0.a, vec2<u32>(~1u, u_input.d.x >> (64468u % 32u))), select(vec3<bool>(true, !var_1.a.a.e.c.x, true), select(!vec3<bool>(var_1.a.a.b.a.x, var_1.a.a.e.a.x, false), vec3<bool>(var_1.a.a.b.a.x, var_1.a.a.b.a.x, var_1.a.a.e.a.x), true), vec3<bool>(var_1.a.b >= -312f, true, true))), Struct_1(~_wgslsmith_mod_u32(16920u, ~var_1.a.a.b.b.b.x), countOneBits(var_1.a.a.c.b)), var_1.a.a.a.x, var_1.a.a.b);
    var_1 = Struct_5(var_1.a);
    var_0 = select(~vec2<u32>(30131u, u_input.d.x) | u_input.d, ~vec2<u32>(var_0.x | _wgslsmith_div_u32(4294967295u, arg_0.a), var_0.x), any(!select(select(vec4<bool>(var_2.e.c.x, true, var_2.e.c.x, var_2.b.a.x), vec4<bool>(true, var_1.a.a.b.c.x, var_1.a.a.b.c.x, var_1.a.a.b.c.x), vec4<bool>(var_2.b.c.x, var_1.a.a.e.c.x, true, var_2.b.a.x)), !vec4<bool>(var_1.a.a.e.c.x, var_1.a.a.b.c.x, var_2.e.c.x, var_1.a.a.b.a.x), any(var_2.b.a))));
    return Struct_2(!select(var_1.a.a.b.a, select(vec4<bool>(var_2.e.a.x, true, false, true), var_2.b.a, vec4<bool>(false, false, var_2.e.c.x, false)), !(!vec4<bool>(true, var_2.b.a.x, var_2.b.c.x, true))), func_2(), vec3<bool>(false, var_1.a.a.e.a.x, var_2.e.c.x));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    var var_1 = arg_2;
    var var_2 = select(arg_2.a.a.e.c.zz, !vec2<bool>(!any(vec4<bool>(true, false, var_1.a.a.b.a.x, true)), false), true);
    var var_3 = Struct_3(-var_1.a.a.a, var_1.a.a.e, arg_3, 2147483647i >> (arg_2.a.a.c.b.x % 32u), func_3(func_2(), 2147483647i));
    let var_4 = ~abs(var_1.a.a.b.b.b.x);
    return _wgslsmith_f_op_f32(632f - arg_2.a.d);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_5(Struct_4(Struct_3(select(vec3<i32>(55087i, u_input.a.x, u_input.c.x) & u_input.a.zwx, ~u_input.c, vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, true, true, true), func_2(), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), Struct_1(_wgslsmith_dot_vec2_u32(u_input.d, u_input.e), vec2<u32>(58506u, 49266u) & vec2<u32>(u_input.e.x, arg_0)), u_input.a.x | u_input.a.x, func_3(Struct_1(21485u, u_input.e), -1i)), arg_2.x, arg_2.x, 2025f));
    var var_1 = var_0.a.a;
    let var_2 = _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u & arg_1, select(0u, 1u, var_0.a.a.e.a.x), _wgslsmith_add_u32(~arg_3, ~u_input.b), ~_wgslsmith_mod_u32(31914u, var_0.a.a.b.b.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 0u, abs(var_0.a.a.c.b.x)), reverseBits(vec3<u32>(arg_0, 13605u, u_input.b) | vec3<u32>(41550u, 0u, 101485u))), ~(var_0.a.a.c.a | 1u), _wgslsmith_mult_u32(1u, select(u_input.d.x, 1u, var_0.a.a.b.c.x)), var_0.a.a.b.b.b.x));
    let var_3 = var_0.a;
    let var_4 = var_0.a.a.c.a;
    return Struct_2(select(var_1.e.a, vec4<bool>(all(func_3(var_3.a.e.b, var_1.d).a), false, !var_1.e.c.x, !any(vec4<bool>(false, var_0.a.a.b.c.x, true, var_3.a.e.a.x))), !func_3(var_0.a.a.b.b, _wgslsmith_clamp_i32(var_3.a.a.x, var_0.a.a.d, 0i)).a), Struct_1(_wgslsmith_mult_u32(arg_0, 4294967295u), ~vec2<u32>(func_2().a, ~24622u)), !var_3.a.e.a.zyw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.b, u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-424f))), -866f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-565f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1001f, 1131f)) * _wgslsmith_f_op_f32(-1926f * 1398f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, firstTrailingBit(vec2<i32>(1i, 1i)), Struct_5(Struct_4(Struct_3(vec3<i32>(-19199i, u_input.c.x, 28569i), Struct_2(vec4<bool>(false, true, true, true), Struct_1(u_input.d.x, vec2<u32>(u_input.b, 4294967295u)), vec3<bool>(true, true, false)), Struct_1(1u, u_input.e), u_input.a.x, Struct_2(vec4<bool>(false, true, true, false), Struct_1(0u, vec2<u32>(u_input.d.x, u_input.e.x)), vec3<bool>(false, true, false))), 1303f, -322f, 2281f)), Struct_1(0u, u_input.d))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-290f * -1393f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.e.x, 1u), 0u));
    var_0 = func_3(Struct_1(func_2().a, var_0.b.b), -27685i);
    var_0 = Struct_2(vec4<bool>(false, var_0.c.x, any(!var_0.a), var_0.c.x), func_3(var_0.b, u_input.a.x).b, select(!vec3<bool>(any(var_0.a), var_0.a.x, false), !func_4(~var_0.b.a, u_input.d.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1498f, -1368f, 1513f, -688f))), _wgslsmith_sub_u32(78305u, var_0.b.a)).a.xxx, func_3(var_0.b, -5379i).c.x));
    var_0 = Struct_2(vec4<bool>(!(!(u_input.c.x != 7028i)), !(u_input.c.x != 1i) | true, var_0.c.x, true), Struct_1(0u, _wgslsmith_add_vec2_u32(u_input.d, select(vec2<u32>(u_input.d.x, 1u), func_3(Struct_1(u_input.d.x, vec2<u32>(var_0.b.a, var_0.b.b.x)), u_input.c.x).b.b, !var_0.a.ww))), func_3(Struct_1(44879u, func_3(var_0.b, _wgslsmith_div_i32(2147483647i, u_input.a.x)).b.b), _wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(u_input.a.x, -4971i, 2147483647i)), u_input.a.xxx << (vec3<u32>(3202u, 11835u, 14877u) % vec3<u32>(32u)), true), -(vec3<i32>(u_input.c.x, u_input.a.x, 17623i) | u_input.c))).c);
    var var_1 = Struct_4(Struct_3(-min(u_input.a.xxx, -u_input.c), Struct_2(var_0.a, Struct_1(var_0.b.a, u_input.d ^ var_0.b.b), func_4(var_0.b.b.x, u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-877f, -273f, -378f, 346f)), u_input.e.x).a.xwz), func_3(Struct_1(var_0.b.a, u_input.e), 17657i).b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(u_input.a.x), reverseBits(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, 4594i), firstTrailingBit(vec3<i32>(-24116i, u_input.c.x, u_input.c.x)))), func_3(Struct_1(_wgslsmith_mult_u32(u_input.e.x, u_input.d.x), vec2<u32>(u_input.e.x, var_0.b.b.x) & var_0.b.b), _wgslsmith_sub_i32(27226i, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -165f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f + -579f)), true))), 247f, -164f);
    var_0 = func_3(var_1.a.c, u_input.c.x);
    var_0 = func_3(Struct_1(u_input.d.x, _wgslsmith_sub_vec2_u32((var_0.b.b << (vec2<u32>(var_1.a.c.a, var_1.a.e.b.b.x) % vec2<u32>(32u))) << (~vec2<u32>(57194u, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(var_0.b.b, var_1.a.e.b.b) << (abs(vec2<u32>(u_input.e.x, 4294967295u)) % vec2<u32>(32u)))), _wgslsmith_clamp_i32(34101i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a.a.x, 22274i, u_input.a.x), vec4<i32>(u_input.a.x, -3555i, u_input.c.x, 2147483647i))), var_1.a.a.x) << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_mod_i32(0i, u_input.c.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-u_input.a.wx, vec2<i32>(-40502i, 31559i) | var_1.a.a.zx), 1i), !var_1.a.b.a.x));
}

