struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = ~arg_0.zy;
    let var_1 = !(!(any(vec3<bool>(false, false, false)) & any(vec4<bool>(false, true, false, false)))) || all(vec4<bool>(-u_input.a >= 1i, true, _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) > arg_1.x, true));
    var var_2 = ~0i;
    var_2 = i32(-1i) * -1i;
    let var_3 = arg_1.x;
    return var_0.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = ~max(func_3(select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(0u, 4294967295u, arg_0), vec3<bool>(true, true, true)) << ((vec3<u32>(arg_0, arg_0, 30522u) & vec3<u32>(arg_0, 0u, 1u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-133f, 817f, -858f) + vec3<f32>(-645f, 478f, -240f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-947f, 867f, -2167f))))), min(16739u, 1u));
    var var_1 = select(any(vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), all(vec2<bool>(true, true)))), !(u_input.a != _wgslsmith_mult_i32(-2147483647i, countOneBits(u_input.a))), true);
    let var_2 = Struct_2(Struct_1(vec2<i32>(-2147483647i, min(-1i, u_input.a) << (_wgslsmith_mult_u32(0u, 1u) % 32u)), vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))), Struct_1(vec2<i32>(-55086i, 1i), vec2<bool>(true, true)));
    var var_3 = Struct_5(abs(1u), vec3<f32>(-286f, _wgslsmith_f_op_f32(-896f + _wgslsmith_div_f32(-1079f, 671f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f))));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(var_3.b.x - var_3.b.x), _wgslsmith_add_vec2_u32(min(vec2<u32>(0u ^ var_0, firstLeadingBit(60301u)), vec2<u32>(var_3.a, var_0)), vec2<u32>(arg_0, var_3.a)), 1u);
    return Struct_1(var_2.a.a, vec2<bool>(false, u_input.a < 1i));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = !arg_2.a.b.x;
    var var_1 = (arg_1 << (arg_1 % vec4<u32>(32u))) << (vec4<u32>(~arg_1.x, arg_0, arg_0, ~abs(arg_0 | arg_1.x)) % vec4<u32>(32u));
    var var_2 = func_2(0u);
    var var_3 = var_0;
    var var_4 = var_2.b;
    return func_2(~52622u);
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    let var_0 = all(select(!(!arg_0.b.b), arg_0.b.b, select(vec2<bool>(false, !arg_0.b.b.x), arg_0.a.b, !vec2<bool>(arg_0.a.b.x, arg_0.a.b.x))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-2037f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1560f, -258f) - _wgslsmith_div_f32(822f, -646f)))), abs(reverseBits(firstTrailingBit(~vec2<u32>(1u, 1u)))), 0u);
    let var_2 = var_1;
    let var_3 = Struct_2(arg_0.b, arg_0.a);
    var var_4 = any(!(!vec2<bool>(true, all(vec2<bool>(var_0, true)))));
    return Struct_5(1u, vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -334f), var_1.a));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_5(Struct_2(func_4(~_wgslsmith_clamp_u32(1u, 1u, 16676u), vec4<u32>(65956u, reverseBits(4294967295u), ~1u, 1u), Struct_3(func_2(28466u), Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false)), Struct_1(vec2<i32>(-901i, u_input.a), vec2<bool>(false, arg_0))), Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true)), Struct_1(vec2<i32>(-25882i, 0i), arg_1)), ~u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1489f)), Struct_1(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-23787i, u_input.a))), arg_1)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), -531f)), _wgslsmith_mod_vec2_u32(firstTrailingBit(countOneBits(~vec2<u32>(41289u, 54578u))), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, 6657u), ~vec2<u32>(0u, 46203u)))), ~((var_0.a ^ var_0.a) & func_3(select(vec3<u32>(62879u, 0u, var_0.a), vec3<u32>(var_0.a, var_0.a, 8197u), true), _wgslsmith_f_op_vec3_f32(ceil(var_0.b)))));
    var_0 = func_5(Struct_2(Struct_1(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(18361i, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, 74827i))), vec2<bool>(any(vec2<bool>(true, arg_1.x)), !arg_0)), Struct_1(~(-vec2<i32>(-2147483647i, -80916i)), arg_1)));
    var_0 = func_5(Struct_2(Struct_1(~vec2<i32>(-2147483647i, u_input.a), arg_1), Struct_1(~vec2<i32>(-23218i, 2147483647i), vec2<bool>(arg_1.x, u_input.a < u_input.a))));
    var var_2 = arg_1.x & all(vec2<bool>(_wgslsmith_f_op_f32(trunc(var_1.a)) != var_1.a, true));
    return Struct_1(reverseBits(-abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(u_input.a, 21513i)))), select(!func_2(1u).b, arg_1, any(!vec3<bool>(arg_1.x, arg_0, arg_1.x))));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = vec4<bool>(arg_0.b.b.b.x, false, arg_1.x, false);
    var_0 = select(vec4<bool>(!all(func_4(arg_2, vec4<u32>(arg_2, arg_2, 0u, arg_2), Struct_3(Struct_1(arg_0.b.b.a, arg_0.c.a.b), arg_0.b, arg_0.c, 2147483647i), 1335f).b), true, func_1(var_0.x & func_4(24752u, vec4<u32>(arg_2, 126813u, arg_2, arg_2), Struct_3(arg_0.c.a, Struct_2(Struct_1(arg_0.b.a.a, vec2<bool>(arg_0.c.b.b.x, var_0.x)), Struct_1(arg_0.b.a.a, vec2<bool>(arg_1.x, true))), Struct_2(arg_0.c.b, Struct_1(vec2<i32>(1i, 2147483647i), var_0.xz)), arg_0.b.a.a.x), 1721f).b.x, vec2<bool>(true, any(vec2<bool>(var_0.x, false)))).b.x, true), select(vec4<bool>(false || arg_0.c.b.b.x, func_2(arg_2).b.x, arg_0.c.b.b.x, true), select(select(select(vec4<bool>(true, false, arg_1.x, var_0.x), arg_1, vec4<bool>(arg_0.b.b.b.x, true, arg_0.b.a.b.x, false)), vec4<bool>(false, arg_1.x, arg_1.x, true), true), arg_1, !vec4<bool>(arg_1.x, false, true, true)), func_1(true, arg_1.yz).b.x), select(select(!arg_1, arg_1, select(arg_0.c.b.b.x, any(arg_1.xwy), true)), !(!arg_1), !select(vec4<bool>(false, var_0.x, arg_0.c.b.b.x, arg_1.x), select(vec4<bool>(arg_0.a.b.x, false, arg_0.a.b.x, var_0.x), vec4<bool>(arg_0.b.b.b.x, true, true, arg_1.x), vec4<bool>(true, false, true, true)), func_1(true, var_0.wy).b.x)));
    var var_1 = _wgslsmith_f_op_f32(abs(-303f));
    let var_2 = ~(-_wgslsmith_add_vec2_i32(~arg_0.b.a.a, -vec2<i32>(u_input.a, 48200i))) << (abs(vec2<u32>(countOneBits(arg_2), ~4294967295u)) % vec2<u32>(32u));
    var_1 = _wgslsmith_div_f32(-1159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(517f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-386f * 1281f), _wgslsmith_f_op_f32(f32(-1f) * -272f), arg_0.b.b.b.x)))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_2, arg_2, ~arg_2), arg_2), arg_2), max(~firstTrailingBit(1u) | func_5(Struct_2(Struct_1(vec2<i32>(-1i, 0i), arg_0.a.b), arg_0.c.b)).a, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -556f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -436f)))), 1212f);
    var var_2 = func_6(Struct_3(func_1(any(vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_2(func_4(3612u, firstTrailingBit(vec4<u32>(1u, 25057u, 0u, 51444u)), Struct_3(Struct_1(vec2<i32>(u_input.a, -37595i), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<i32>(36149i, 35398i), vec2<bool>(false, true)), Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true))), Struct_2(Struct_1(vec2<i32>(45747i, 7829i), vec2<bool>(false, false)), Struct_1(vec2<i32>(u_input.a, 1i), vec2<bool>(true, false))), u_input.a), _wgslsmith_f_op_f32(-128f * var_1.x)), Struct_1(~vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true))), Struct_2(func_1(false, vec2<bool>(true, true)), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-3788i, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), u_input.a), vec4<bool>(func_1(false, vec2<bool>(false, false)).b.x && (all(vec4<bool>(true, true, true, false)) & true), -33222i != (_wgslsmith_dot_vec4_i32(vec4<i32>(32765i, u_input.a, -60613i, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, -1i)) | u_input.a), false, false), 21549u);
    var var_3 = Struct_2(func_4(~var_2.b.x, firstLeadingBit(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c, var_2.c, 1u, var_2.b.x), vec4<u32>(4294967295u, 53617u, var_2.b.x, 42522u)), vec4<u32>(var_2.c, var_2.c, var_2.b.x, var_2.c) & vec4<u32>(15936u, 24576u, var_2.c, var_2.c), vec4<bool>(true, true, true, true))), Struct_3(Struct_1(vec2<i32>(-1i, u_input.a), vec2<bool>(true, false)), Struct_2(func_2(var_2.b.x), Struct_1(vec2<i32>(u_input.a, 16887i), vec2<bool>(true, true))), Struct_2(func_1(true, vec2<bool>(true, false)), func_4(41539u, vec4<u32>(var_2.b.x, var_2.b.x, var_2.c, var_2.c), Struct_3(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true)), Struct_2(Struct_1(vec2<i32>(u_input.a, 0i), vec2<bool>(true, true)), Struct_1(vec2<i32>(-2147483647i, u_input.a), vec2<bool>(false, false))), Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)), Struct_1(vec2<i32>(u_input.a, -2147483647i), vec2<bool>(false, true))), 25236i), var_0)), u_input.a), var_2.a), func_2(var_2.c << (81472u % 32u)));
    let var_4 = Struct_3(Struct_1(select(func_4(4294967295u, vec4<u32>(var_2.c, 0u, 57212u, var_2.c) << (vec4<u32>(var_2.c, var_2.b.x, 25751u, var_2.c) % vec4<u32>(32u)), Struct_3(Struct_1(vec2<i32>(1i, 0i), var_3.b.b), Struct_2(var_3.b, var_3.a), Struct_2(Struct_1(var_3.a.a, vec2<bool>(var_3.b.b.x, true)), Struct_1(var_3.a.a, vec2<bool>(false, true))), u_input.a), _wgslsmith_f_op_f32(-776f - 403f)).a, ~vec2<i32>(u_input.a, var_3.b.a.x) << (~vec2<u32>(80078u, var_2.b.x) % vec2<u32>(32u)), !select(var_3.b.b, var_3.a.b, false)), func_2(max(abs(4294967295u), var_2.b.x)).b), Struct_2(var_3.b, func_1(var_3.b.b.x, var_3.a.b)), Struct_2(func_1(all(vec4<bool>(var_3.b.b.x, var_3.b.b.x, var_3.b.b.x, false)), vec2<bool>(true, true)), var_3.b), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_3.a.a.x, u_input.a) >> (_wgslsmith_mod_vec2_u32(var_2.b, min(vec2<u32>(var_2.c, 44381u), var_2.b)) % vec2<u32>(32u)), vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(-1i, var_3.a.a.x))));
    var_3 = var_4.b;
    var var_5 = func_5(Struct_2(Struct_1(vec2<i32>(-2147483647i << (var_2.b.x % 32u), _wgslsmith_sub_i32(var_4.a.a.x, 1i)), vec2<bool>(true, var_4.a.b.x && true)), Struct_1(firstLeadingBit(select(var_3.b.a, var_4.b.a.a, false)), vec2<bool>(true, true))));
    var var_6 = _wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(5196u, var_5.a, ~10127u, _wgslsmith_mult_u32(19293u, 34617u))), ~(reverseBits(~vec4<u32>(4294967295u, var_5.a, 11868u, var_5.a)) | firstLeadingBit(vec4<u32>(54128u, var_5.a, var_2.b.x, 122350u) | vec4<u32>(var_2.b.x, 48313u, 0u, var_2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.x, 314f))))) * _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(var_5.b.zx - vec2<f32>(2051f, -1543f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), var_5.b.x, var_5.b.x, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -217f)))), ~(~55635u));
}

