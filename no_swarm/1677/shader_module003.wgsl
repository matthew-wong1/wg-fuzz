struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)), false))), Struct_1(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), Struct_1(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), true))), Struct_1(vec3<bool>(true, true, true)), true);
    var var_1 = !(!select(!var_0.c.a.yy, var_0.c.a.xz, true));
    let var_2 = vec4<f32>(-156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(771f - 269f)))), 414f, 1560f);
    var_1 = !var_0.c.a.yy;
    let var_3 = var_2.wxz;
    return var_2.zy;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(true, any(!select(vec4<bool>(true, arg_2, true, true), vec4<bool>(false, true, true, arg_2), arg_2)), true));
    let var_1 = !arg_2;
    var var_2 = !vec3<bool>(var_0.a.x, all(vec4<bool>(var_0.a.x, !arg_2, true, false)), false);
    var var_3 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-666f * -749f) - -251f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_0.a.x)), var_3.x))) > 360f;
    return Struct_2(Struct_1(vec3<bool>(all(vec2<bool>(true, true)), !var_2.x, true)), Struct_1(!vec3<bool>(true, arg_2, true)), Struct_1(var_0.a), Struct_1(select(select(select(var_0.a, var_0.a, var_2.x), select(vec3<bool>(var_2.x, var_0.a.x, var_1), var_0.a, arg_2), !var_0.a), var_0.a, var_0.a.x || (arg_1 <= u_input.c))), !all(select(var_2.yx, !vec2<bool>(arg_2, false), true)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1000f), _wgslsmith_f_op_f32(-arg_1.x)) - arg_1.x));
    let var_1 = vec3<f32>(-138f, arg_1.x, _wgslsmith_f_op_vec2_f32(func_3()).x);
    var var_2 = func_2(vec4<u32>(1u, 0u, min(~(~14123u), u_input.a.x), select(firstTrailingBit(47132u) >> (u_input.b % 32u), u_input.d, arg_2.c.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-abs(2147483647i), max(u_input.c, -377i) >> (max(4294967295u, arg_3.x) % 32u), u_input.c, ~(-u_input.c)), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 6251i, -74269i), vec4<i32>(2147483647i, u_input.c, -3992i, -2147483647i), vec4<i32>(31595i, -1i, 0i, -1i)), vec4<i32>(49415i, u_input.c, u_input.c, u_input.c), true)), true).b;
    var_2 = func_2(~vec4<u32>(_wgslsmith_div_u32(u_input.b, 1u), ~arg_3.x, 1u, ~arg_3.x) | _wgslsmith_mod_vec4_u32(countOneBits(u_input.a & vec4<u32>(u_input.b, 1u, 4294967295u, arg_3.x)), max(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(14289u, arg_3.x, 51964u, 4294967295u)), u_input.a)), u_input.c, !arg_0).a;
    var var_3 = ~vec2<u32>(arg_3.x, _wgslsmith_add_u32(25770u, abs(arg_3.x))) >> (_wgslsmith_mod_vec2_u32(~(~u_input.a.zx) << ((u_input.a.zy & ~vec2<u32>(arg_3.x, 78857u)) % vec2<u32>(32u)), firstTrailingBit(~vec2<u32>(4294967295u, 0u))) % vec2<u32>(32u));
    return func_2(~vec4<u32>(~(~var_3.x), 32711u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, u_input.d) >> (u_input.a.xx % vec2<u32>(32u)), min(vec2<u32>(51288u, 93558u), vec2<u32>(4294967295u, var_3.x))), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_3.x, u_input.a.x), 37074u)), -(~u_input.c), var_2.a.x).d;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(func_4(!any(!arg_0.a), vec3<f32>(_wgslsmith_f_op_f32(773f * _wgslsmith_div_f32(1442f, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1098f - arg_1.x) + _wgslsmith_f_op_f32(173f - arg_1.x)), _wgslsmith_f_op_f32(-378f + _wgslsmith_f_op_f32(1711f - arg_1.x))), func_2(u_input.a, -(1i ^ u_input.c), !arg_0.a.x), u_input.a.ywz).a);
    var var_1 = func_4(_wgslsmith_sub_i32(-u_input.c, firstLeadingBit(u_input.c)) != (-36855i >> (_wgslsmith_mult_u32(u_input.b, 31016u) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -728f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) * arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(982f)) - -1421f) * arg_1.x), _wgslsmith_f_op_f32(floor(arg_1.x))), func_2(vec4<u32>(~(u_input.b << (1u % 32u)), _wgslsmith_mod_u32(0u, u_input.d), firstLeadingBit(50961u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 0u), ~u_input.a.zx)), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, -1i), 1i), !arg_0.a.x), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yxw, u_input.a.ywz, _wgslsmith_div_vec3_u32(u_input.a.xwz, u_input.a.yzx)), ~(~u_input.a.ywy), ~vec3<u32>(2937u, u_input.d, u_input.a.x)), firstTrailingBit(countOneBits(vec3<u32>(4294967295u, 0u, 0u)) >> (_wgslsmith_add_vec3_u32(u_input.a.yyx, u_input.a.wyx) % vec3<u32>(32u)))));
    let var_2 = arg_2;
    let var_3 = vec4<i32>(-20620i, -30193i, u_input.c, ~u_input.c);
    return Struct_2(Struct_1(func_4(false, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1385f, arg_1.x, -2209f) + vec3<f32>(-1280f, 972f, 1242f)))), func_2(u_input.a | u_input.a, -2147483647i, arg_0.a.x | arg_0.a.x), u_input.a.xzx).a), arg_2, func_4(u_input.a.x <= 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, 612f, -174f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, arg_1.x, 1586f) - vec3<f32>(-647f, arg_1.x, -1705f))))), Struct_2(func_2(~vec4<u32>(71825u, u_input.d, u_input.b, 1u), -2147483647i, false).c, Struct_1(arg_2.a), func_4(false, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, 1181f, arg_1.x), vec3<f32>(-1034f, -1656f, arg_1.x))), Struct_2(arg_2, Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true)), var_0, Struct_1(vec3<bool>(var_1.a.x, false, false)), var_2.a.x), vec3<u32>(u_input.d, u_input.a.x, 60942u)), var_0, true), (~u_input.a.xwz ^ vec3<u32>(u_input.d, u_input.d, u_input.a.x)) | ~(vec3<u32>(1u, u_input.a.x, u_input.d) & vec3<u32>(u_input.b, 45079u, 14416u))), Struct_1(arg_2.a), true);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = func_5(func_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, -148f, 570f)))), func_2(_wgslsmith_sub_vec4_u32(~u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, u_input.b, 21119u, 57803u))), -(~u_input.c), all(vec4<bool>(false, true, false, false))), u_input.a.yxy), vec2<f32>(_wgslsmith_f_op_f32(min(-646f, -972f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(859f))), _wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_dot_vec3_u32(u_input.a.xzz, vec3<u32>(arg_0, 20141u, u_input.b)) <= _wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(arg_0, arg_0))))), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))));
    let var_1 = u_input.a.xyy;
    var_0 = func_5(var_0.b, _wgslsmith_f_op_vec2_f32(func_3()), Struct_1(var_0.b.a));
    var_0 = func_2(abs(vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 83151u, arg_0)), _wgslsmith_mult_u32(arg_0, 86413u), _wgslsmith_div_u32(arg_0 << (0u % 32u), 1u | var_1.x), u_input.d)), u_input.c, !var_0.c.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(898f, 1570f, 1000f, 428f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(890f, -1053f, 401f, 367f))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, 127101u), ~u_input.b)), u_input.c);
    var var_1 = Struct_2(func_5(var_0, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-653f + 2770f), 182f), _wgslsmith_f_op_f32(ceil(-158f))), var_0).d, Struct_1(!select(!var_0.a, var_0.a, var_0.a)), Struct_1(var_0.a), var_0, !(!(u_input.c > 5247i)));
    var var_2 = func_5(Struct_1(select(!vec3<bool>(true, var_1.a.a.x, var_0.a.x), var_0.a, true)), vec2<f32>(1136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1147f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -1252f), !var_1.d.a.x)))), var_0);
    let var_3 = var_0;
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(-vec2<i32>(1i, u_input.c), abs(vec2<i32>(-2147483647i, -2147483647i)), !var_0.a.zx), -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-26332i, u_input.c))), _wgslsmith_div_vec2_i32(select(select(vec2<i32>(0i, -16681i), vec2<i32>(-33904i, -2147483647i), vec2<bool>(false, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(3992i, 2147483647i), vec2<i32>(1i, -1i)), vec2<bool>(true, var_0.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -40732i), ~vec2<i32>(-2147483647i, u_input.c)))) << (0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(199f, -1000f, 1263f, _wgslsmith_f_op_f32(f32(-1f) * -655f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -432f, 2084f, -1153f), vec4<f32>(-300f, 1000f, 988f, -930f))))), var_4, var_4, -455f);
}

