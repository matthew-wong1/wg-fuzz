struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2264f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(752f))))));
    global0 = arg_0.a.a;
    var var_0 = ~_wgslsmith_clamp_u32(1u, select(1u, arg_0.c.x, true), arg_0.b);
    var var_1 = Struct_4(arg_0.a.c.xzy, arg_0.a, !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    let var_2 = Struct_2(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1427f), !(!vec4<bool>(var_1.c.x, var_1.b.b.x < -531f, true || var_1.c.x, true)));
    return _wgslsmith_f_op_f32(-arg_0.a.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(func_3(Struct_3(arg_2, 4294967295u, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 54147u, arg_0.x), vec3<u32>(u_input.c, 36177u, u_input.c)), max(vec3<u32>(arg_1, arg_0.x, arg_0.x), vec3<u32>(0u, u_input.c, arg_0.x)))), vec2<u32>(max(1u, _wgslsmith_add_u32(u_input.c, u_input.c)), ~(~4294967295u)))));
    let var_0 = i32(-1i) * -select((12664i | u_input.d) & 0i, arg_2.d, true);
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, -30095i), _wgslsmith_dot_vec4_i32(vec4<i32>(55362i, -7585i, 44415i, 2147483647i), u_input.e), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, arg_2.c.x), vec2<i32>(-2147483647i, arg_2.d)), abs(1i)), ~_wgslsmith_mod_vec4_i32(arg_2.c, u_input.e)), _wgslsmith_add_i32(var_0, _wgslsmith_div_i32(1i, var_0)) | arg_2.c.x, -12954i), -u_input.a.x);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - -756f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2262f))) - _wgslsmith_div_f32(2206f, arg_2.a)) + 655f);
    global0 = _wgslsmith_f_op_f32(408f - arg_2.a);
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(-arg_2.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - arg_2.a), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(arg_2.b.x, vec3<f32>(arg_2.b.x, -1194f, arg_2.a), vec4<i32>(var_1.x, var_1.x, 1i, 14805i), -41415i), arg_0.x, vec3<u32>(u_input.b, 0u, u_input.b)), select(vec2<u32>(arg_1, arg_0.x), arg_0, vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)) - _wgslsmith_f_op_f32(2340f - -863f)))), u_input.e, var_0);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = !(true | !select(false, true, any(vec2<bool>(false, false))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(arg_3.b.x - arg_3.b.x)) * _wgslsmith_f_op_f32(-func_2(arg_0.c.xz, arg_0.b, arg_0.a).a)), _wgslsmith_f_op_f32(-arg_0.a.a)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2291f * -198f) + -927f)))));
    global0 = arg_0.a.b.x;
    let var_1 = 4294967295u;
    global0 = -1040f;
    return select(!select(vec2<bool>(all(vec3<bool>(true, false, var_0)), false), vec2<bool>(true, select(var_0, true, true)), var_0), vec2<bool>(all(vec3<bool>(true, false, var_0)), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_0, true, false), var_0))), select(!select(!vec2<bool>(false, var_0), vec2<bool>(var_0, true), true), vec2<bool>(true, true), var_0));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -283f);
    let var_0 = Struct_4(vec3<i32>(-(~u_input.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.e.x, ~1i), ~u_input.e.wx ^ vec2<i32>(19331i, -2147483647i)), u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(2414f, vec3<f32>(arg_0.b, arg_0.b, arg_0.b), vec4<i32>(u_input.a.x, u_input.d, u_input.d, u_input.d), u_input.d), 4294967295u, vec3<u32>(4294967295u, 1433u, 1u)), select(arg_1.yz, vec2<u32>(34218u, 13472u), arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1459f, 846f, 1739f)))), vec4<i32>(~u_input.a.x, -37334i, 0i, -1i), _wgslsmith_div_i32(u_input.a.x, 17228i)), func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-265f, arg_0.b, 1000f))), vec4<i32>(-19282i, -37546i, u_input.d, u_input.e.x), -17572i), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_1.xzx, vec3<u32>(u_input.b, 0u, 4294967295u)), 22314u), arg_1.ywx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, arg_0.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.b, -750f), vec2<f32>(arg_0.b, -647f))), _wgslsmith_div_vec2_f32(vec2<f32>(-2400f, 694f), vec2<f32>(1298f, arg_0.b)))), -(u_input.e.yzx >> (~vec3<u32>(arg_1.x, 0u, 0u) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(164f, 621f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2077f, arg_0.b, arg_0.b)), vec4<i32>(u_input.d, min(2147483647i, 22528i), _wgslsmith_sub_i32(-48649i, u_input.a.x), -1i), func_2(abs(arg_1.yy), arg_1.x, Struct_1(arg_0.b, vec3<f32>(arg_0.b, -679f, 534f), vec4<i32>(15590i, 0i, u_input.d, 1i), u_input.e.x)).d)));
    global0 = arg_0.b;
    let var_1 = countOneBits(-var_0.b.c);
    var var_2 = ~1u;
    return func_2(arg_1.ww, arg_1.x, var_0.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    global0 = arg_2;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1432f + 1108f)))));
    global0 = arg_2;
    let var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~131157u, 0u), ~(~u_input.b)), 20317u) << (_wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(22012u, arg_0.x)), 19874u ^ arg_0.x) % 32u);
    global0 = 640f;
    return func_5(Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), func_4(Struct_3(arg_1.a, 0u, arg_0), arg_1.a.b.xz, firstLeadingBit(u_input.e.xyy), func_2(arg_0.zy, 4294967295u, Struct_1(1478f, vec3<f32>(arg_2, 738f, arg_2), vec4<i32>(-31662i, u_input.e.x, u_input.a.x, u_input.d), arg_1.a.c.x))), any(vec2<bool>(true, true))), -1693f, vec4<bool>(all(vec2<bool>(true, false)), true, select(true, true, true), true)), vec4<u32>(_wgslsmith_clamp_u32(min(42409u, u_input.b), ~var_0, _wgslsmith_dot_vec3_u32(arg_1.c, arg_0)), abs(_wgslsmith_div_u32(0u, 64692u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 37332u), arg_0), _wgslsmith_clamp_u32(max(80137u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0, var_0, var_0), vec4<u32>(4294967295u, arg_1.c.x, 1u, 27205u)), _wgslsmith_dot_vec2_u32(arg_1.c.zx, arg_1.c.zz))) ^ vec4<u32>(~u_input.c >> (~arg_0.x % 32u), abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(24605u, u_input.c, u_input.c, var_0) >> (vec4<u32>(var_0, u_input.b, 4294967295u, arg_0.x) % vec4<u32>(32u)), select(vec4<u32>(var_0, arg_1.b, 28605u, 49801u), vec4<u32>(arg_0.x, arg_1.b, 0u, u_input.b), vec4<bool>(false, true, true, true))), ~(arg_0.x >> (arg_0.x % 32u))));
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = 4294967295u;
    var var_1 = !(u_input.d < -abs(10522i));
    var_0 = u_input.c;
    var var_2 = reverseBits(vec2<u32>(max(arg_0 & firstLeadingBit(0u), 1u), _wgslsmith_mod_u32(0u, 4294967295u)));
    var var_3 = Struct_3(Struct_1(func_1(vec3<u32>(0u, ~u_input.c, ~54278u), Struct_3(func_1(vec3<u32>(var_2.x, arg_0, 37120u), Struct_3(Struct_1(arg_1.b.x, vec3<f32>(439f, 325f, 725f), vec4<i32>(arg_1.c.x, 24906i, -2147483647i, 7823i), u_input.e.x), 0u, vec3<u32>(arg_0, var_2.x, var_2.x)), -625f), 0u, vec3<u32>(81333u, 4294967295u, 44410u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, -713f, true)) * _wgslsmith_f_op_f32(abs(2365f)))).b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.a - arg_1.b.x), _wgslsmith_f_op_f32(trunc(144f)), -529f)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(arg_1.c) ^ ~vec4<i32>(u_input.d, 0i, 18505i, arg_1.c.x), ~vec4<i32>(-1094i, arg_1.c.x, u_input.e.x, u_input.a.x), vec4<i32>(abs(-31553i), u_input.e.x, 522i, -2147483647i)), _wgslsmith_clamp_i32(u_input.d | arg_1.d, -27893i, 2147483647i) ^ 1i), 4294967295u, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(48894u, 4294967295u, 19636u), vec3<u32>(u_input.c, u_input.c, arg_0)), ~12364u, u_input.b), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(32038u, var_2.x, u_input.b)), vec3<u32>(77391u, arg_0, var_2.x) >> (vec3<u32>(arg_0, var_2.x, u_input.b) % vec3<u32>(32u))), firstLeadingBit(~vec3<u32>(arg_0, var_2.x, 4294967295u))));
    return _wgslsmith_mod_i32(var_3.a.d, arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~_wgslsmith_add_i32(abs(31563i), -61173i), _wgslsmith_div_i32(func_6(u_input.b, func_1(vec3<u32>(u_input.b, u_input.c, u_input.c), Struct_3(Struct_1(584f, vec3<f32>(-464f, -1062f, 1000f), u_input.e, u_input.e.x), 1u, vec3<u32>(0u, 26174u, u_input.c)), 491f)), -45983i)), abs(u_input.d));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-487f)))) - -516f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1382f, -195f), -270f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(447f, -1197f) + _wgslsmith_f_op_f32(720f + -329f)), 444f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) + _wgslsmith_f_op_f32(abs(161f))) * _wgslsmith_f_op_f32(trunc(1f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-244f - _wgslsmith_f_op_f32(max(-1226f, 621f))), 1761f)));
    var var_2 = func_2(~vec2<u32>(_wgslsmith_mult_u32(~u_input.c, _wgslsmith_mult_u32(u_input.c, 1u)), u_input.b), u_input.b, Struct_1(-866f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-256f * 172f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1155f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-716f, 1167f, -316f), vec3<f32>(var_1.x, -915f, 1548f))))), vec4<i32>(var_0, var_0, u_input.e.x, 54842i), max(49690i, reverseBits(i32(-1i) * -2147483647i))));
    var var_3 = Struct_4(_wgslsmith_mult_vec3_i32(u_input.e.wxy, var_2.c.zzz), func_5(Struct_2(vec2<bool>(false, true), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(905f, vec3<f32>(927f, var_1.x, -1213f), vec4<i32>(-2147483647i, 2147483647i, -1i, var_0), u_input.d), 1u, vec3<u32>(1u, 19131u, u_input.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(83339u, 3083u), vec2<u32>(4294967295u, u_input.b)))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), max(vec4<u32>(~79986u, 60320u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5908u, 74924u, u_input.b), vec4<u32>(1u, 4294967295u, 14494u, 0u)), u_input.b), ~vec4<u32>(68493u, u_input.c, 304u, 13576u) ^ abs(vec4<u32>(0u, u_input.c, u_input.b, u_input.c)))), !select(func_4(Struct_3(Struct_1(1182f, vec3<f32>(-370f, -1163f, 392f), var_2.c, 2147483647i), u_input.c, vec3<u32>(33725u, u_input.c, 5384u)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, 197f), var_2.b.zy), -vec3<i32>(31247i, var_2.d, -2147483647i), Struct_1(348f, vec3<f32>(var_2.b.x, -315f, var_1.x), vec4<i32>(-31203i, 9089i, u_input.a.x, var_2.c.x), var_0)), vec2<bool>(603f > var_1.x, true), vec2<bool>(true, true)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f - var_2.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -605f)));
    let var_4 = vec4<i32>(2147483647i, -2147483647i, -10329i, max(var_3.a.x, var_3.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b.x), ~(33503u ^ abs(max(18728u, u_input.b))));
}

