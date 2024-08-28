struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    let var_0 = reverseBits(1u) > u_input.d;
    let var_1 = Struct_2(u_input.b.xzw, _wgslsmith_mult_u32(~0u, u_input.d), Struct_1(u_input.c.x >> (6258u % 32u), min(max(vec4<u32>(u_input.d, 98636u, 23695u, 10361u), vec4<u32>(26001u, u_input.e.x, 48161u, u_input.c.x)), max(vec4<u32>(u_input.d, u_input.c.x, 0u, u_input.e.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 0u))) >> (_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, 18357u, 4294967295u, 5337u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.e.x, u_input.e.x, 4294967295u), vec4<u32>(u_input.d, u_input.e.x, u_input.c.x, u_input.e.x))) % vec4<u32>(32u)), select(_wgslsmith_mod_vec2_u32(u_input.e.xz, vec2<u32>(37051u, u_input.c.x)), ~vec2<u32>(u_input.d, u_input.c.x) & firstLeadingBit(vec2<u32>(u_input.d, 7544u)), !var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f - -468f) + -591f)), reverseBits(~(~abs(vec4<i32>(0i, u_input.b.x, u_input.a, u_input.b.x)))));
    let var_2 = -1i ^ u_input.b.x;
    let var_3 = vec3<u32>(19451u, 1u, ~u_input.d);
    var var_4 = Struct_3(vec3<bool>(any(vec2<bool>(!var_0, all(vec3<bool>(var_0, var_0, false)))), true, var_0), (~var_1.b > 4294967295u) | true, vec2<i32>(~var_1.a.x, u_input.b.x), ~0u, var_1.c);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_1.d)) * vec2<f32>(839f, var_1.d))))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = firstLeadingBit(~(~(~1u & u_input.d)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1330f, 1160f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-849f, -378f) * vec2<f32>(243f, 564f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-793f, 734f) * vec2<f32>(-939f, 613f))))));
    var_0 = ~abs(u_input.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1209f, 437f, -358f, var_1.x), vec4<f32>(1990f, var_1.x, -307f, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    return Struct_2(arg_0, 60466u, Struct_1(~u_input.e.x, reverseBits(vec4<u32>(4294967295u ^ u_input.c.x, u_input.d, 10931u ^ u_input.c.x, u_input.d | u_input.e.x)), firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.e.yx, vec2<u32>(u_input.e.x, 82825u) | u_input.c.zy))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1125f, 1528f)) - -327f), var_1.x)), u_input.b);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, -1679f, -550f) - vec3<f32>(1448f, -1000f, 556f))))))));
    let var_1 = 33604u;
    var var_2 = func_2(countOneBits(reverseBits(~(-u_input.b.ywz))));
    let var_3 = any(vec3<bool>(true, ~(~u_input.e.x) >= 40896u, true));
    let var_4 = var_2.c.b.xz;
    return countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~var_2.e, firstTrailingBit(var_2.e)) ^ ~_wgslsmith_mod_i32(0i, -20079i), _wgslsmith_sub_i32(_wgslsmith_div_i32(-var_2.a.x, u_input.b.x), max(_wgslsmith_sub_i32(36153i, u_input.b.x), -40642i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, 1422f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-283f, 1000f))))));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), max(-u_input.b.x, ~(-2147483647i))), -func_1(), -51015i, -58424i);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(924f, -1395f), vec2<bool>(false, false)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1853f, 443f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1341f, -158f) + vec2<f32>(var_0.x, var_0.x)))))));
    let var_2 = func_2(vec3<i32>(firstLeadingBit(6917i), _wgslsmith_sub_i32(-15228i, i32(-1i) * -40369i) << (~u_input.c.x % 32u), ~max(u_input.a | u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)))).c;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 1402f))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(abs(-1000f)))));
    let var_4 = ~u_input.a;
    let var_5 = true;
    let var_6 = Struct_5(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_2.b.x, 1u, 4294967295u, var_2.b.x) & var_2.b), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.a, var_2.c.x, var_2.b.x), vec4<u32>(3270u, 9145u, u_input.d, 19800u) << (var_2.b % vec4<u32>(32u)))), ~var_2.a, u_input.c.x), Struct_2(u_input.b.yzy, (firstLeadingBit(u_input.e.x) | var_2.a) << (8078u % 32u), func_2(_wgslsmith_div_vec3_i32(~vec3<i32>(-11583i, -1i, u_input.b.x), u_input.b.xwx)).c, 1247f, ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_4, var_4), var_1) | -(vec4<i32>(var_4, var_1.x, var_1.x, var_1.x) >> (vec4<u32>(1u, 0u, u_input.e.x, 1u) % vec4<u32>(32u)))), ~u_input.e, vec2<bool>(all(!vec3<bool>(var_5, true, true)), true), Struct_4(var_1.wyz, vec4<i32>(~(-51507i), u_input.b.x, _wgslsmith_div_i32(var_4, func_2(vec3<i32>(var_4, var_1.x, u_input.a)).a.x), -(~u_input.b.x)), var_0.x > var_3.x, select(!select(vec4<bool>(var_5, var_5, true, true), vec4<bool>(true, true, var_5, var_5), vec4<bool>(var_5, true, false, var_5)), vec4<bool>(!var_5, var_5, var_5, var_5), true), Struct_2(min(max(vec3<i32>(-19613i, 3741i, -9558i), vec3<i32>(var_1.x, -13252i, var_1.x)), _wgslsmith_clamp_vec3_i32(var_1.wzy, u_input.b.yzw, vec3<i32>(-6768i, 1i, var_4))), var_2.b.x, Struct_1(4294967295u, firstLeadingBit(var_2.b), select(u_input.c.zz, u_input.c.xz, true)), -664f, vec4<i32>(func_1(), -1i, 2147483647i, -10017i))));
    let x = u_input.a;
    s_output = StorageBuffer(-766f, ~(~(abs(u_input.c.x) ^ var_2.a)), vec4<i32>(func_2(vec3<i32>(0i, var_1.x, -2147483647i)).a.x ^ ~func_2(var_6.e.b.xwz).e.x, ~var_1.x, 17249i, -u_input.b.x), _wgslsmith_add_vec4_u32(~var_6.e.e.c.b, vec4<u32>(63048u, 78897u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(34884u, 4294967295u), var_2.c))));
}

