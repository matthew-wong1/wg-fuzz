struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-237f, 639f), vec2<bool>(false, false), -400f, 35064u, vec4<bool>(true, false, false, false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<bool> {
    let var_0 = abs(vec3<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x));
    global0 = Struct_1(global0.a, global0.b, global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, max(19225u, 1u | u_input.b.x)), abs(~(~u_input.b))), global0.e);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -901f, _wgslsmith_f_op_f32(floor(1441f)), _wgslsmith_f_op_f32(floor(global0.a.x)))))), !(!all(vec4<bool>(global0.b.x, global0.e.x, true, global0.b.x))), abs(countOneBits(reverseBits(vec4<u32>(u_input.b.x, 1u, 4294967295u, global0.d)))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.c)), global0.b, -830f, ~17249u, vec4<bool>(false, all(select(global0.e, global0.e, vec4<bool>(true, global0.b.x, global0.b.x, false))), var_1.b, !global0.e.x && true)), i32(-1i) * -18601i);
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a.xz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, 475f), vec2<f32>(-1693f, global0.c))))), vec2<f32>(global0.c, -187f)), !(!select(var_2.a.b, vec2<bool>(true, true), false)), _wgslsmith_f_op_f32(floor(-1540f)), ~(var_2.a.d & _wgslsmith_sub_u32(~var_2.a.d, ~var_2.a.d)), select(select(vec4<bool>(global0.b.x, global0.b.x, false, any(global0.e.xxy)), select(vec4<bool>(global0.b.x, var_2.a.b.x, false, var_2.a.e.x), vec4<bool>(true, var_1.b, var_2.a.e.x, var_1.b), global0.e.x), var_2.a.b.x), !select(select(vec4<bool>(var_1.b, true, true, true), var_2.a.e, var_2.a.e), select(var_2.a.e, global0.e, var_1.b), global0.e), var_2.a.e));
    return vec2<bool>(false, any(var_2.a.e));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_5 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), select(vec2<bool>(arg_2.a.e.x, _wgslsmith_f_op_f32(global0.c + -531f) == 861f), select(global0.e.wx, func_3(), global0.b), vec2<bool>(true, func_3().x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), ~0u, arg_3);
    global0 = arg_2.a;
    let var_0 = Struct_3(max(34195u, ~106305u), Struct_2(vec4<f32>(-519f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(trunc(arg_2.a.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.a.x)) - -1054f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c * arg_2.a.c)))), !arg_3.x, firstLeadingBit(vec4<u32>(arg_0, _wgslsmith_div_u32(arg_0, 4294967295u), arg_0, 0u))), !(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(28092u, arg_2.a.d, u_input.b.x), vec3<u32>(global0.d, 0u, 14416u)), vec3<u32>(4294967295u, 1u, 1u)) < 1u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-firstLeadingBit(u_input.a.wzy), u_input.a.wwx ^ vec3<i32>(arg_2.b, arg_1, arg_1)), select(vec3<i32>(~u_input.a.x, min(1i, arg_1), u_input.a.x), -vec3<i32>(-29167i, arg_2.b, u_input.a.x), arg_2.a.e.wxz)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))), global0.e.xy, _wgslsmith_f_op_f32(-arg_2.a.a.x), global0.d, vec4<bool>(!arg_2.a.b.x, ~(global0.d ^ arg_0) != (min(76231u, arg_0) & 1u), !(!(-406f == var_0.b.a.x)), !all(!vec4<bool>(false, global0.b.x, arg_2.a.b.x, arg_2.a.e.x))));
    var var_1 = arg_2.b;
    return Struct_5(0u, var_0.b, all(arg_3.yx));
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.b.a.zz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.a + global0.a))) * _wgslsmith_f_op_vec2_f32(-arg_0.b.a.xz))), global0.b, global0.c, _wgslsmith_mod_u32(u_input.b.x, global0.d | global0.d), select(global0.e, vec4<bool>(any(vec3<bool>(false, global0.e.x, false)), arg_0.b.b, select(true, !global0.e.x, select(global0.b.x, global0.e.x, global0.b.x)), arg_0.c), false));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, 1383f), arg_0.b.a.yy), vec2<f32>(-557f, -197f))))) - vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.x - arg_0.b.a.x)))), func_3(), _wgslsmith_f_op_f32(step(1596f, _wgslsmith_f_op_f32(trunc(global0.c)))), abs(~firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_0.b.c, arg_0.b.c))), vec4<bool>(select(false, false, any(global0.e)), !(global0.c == _wgslsmith_f_op_f32(floor(-230f))), true, all(select(global0.b, func_3(), global0.b))));
    var var_0 = ~_wgslsmith_add_vec3_u32(~arg_0.b.c.xww, firstTrailingBit(vec3<u32>(arg_0.b.c.x << (67190u % 32u), arg_0.a, 46803u)));
    var var_1 = !global0.e.wz;
    var_1 = vec2<bool>(arg_0.c, arg_0.b.a.x > 1906f);
    return !global0.e;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = global0.e.wwy;
    var var_1 = vec2<bool>(select(true, !global0.e.x, all(!global0.e.wwz)) && (_wgslsmith_f_op_f32(-global0.a.x) > global0.a.x), true);
    var_0 = !global0.e.xzw;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), !(!(!vec2<bool>(false, arg_0))), global0.a.x, 2463u, vec4<bool>(!all(vec2<bool>(global0.e.x, var_0.x)) || true, false, true, all(func_4(func_2(global0.d, -5524i, Struct_4(Struct_1(global0.a, var_0.yy, -237f, 4294967295u, global0.e), u_input.a.x), global0.e)))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(833f, global0.a.x), vec2<f32>(-1000f, global0.a.x))) + _wgslsmith_f_op_vec2_f32(-global0.a)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, 553f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c, 1985f))), global0.e.x))), select(var_0.xx, !(!vec2<bool>(false, var_1.x)), func_3()), _wgslsmith_f_op_f32(sign(179f)), ~(~global0.d) << (0u % 32u), global0.e), u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_5, arg_3: Struct_5) -> vec3<i32> {
    var var_0 = func_4(Struct_5(6580u, arg_2.b, !(!any(vec3<bool>(true, false, true))))).x;
    let var_1 = !global0.e.zz;
    var var_2 = vec4<i32>(u_input.a.x, firstTrailingBit(abs(firstTrailingBit(u_input.a.x << (arg_3.a % 32u)))), u_input.a.x, _wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, ~2147483647i, select(-53752i, u_input.a.x, arg_2.b.b)), abs(min(-1475i, u_input.a.x)))));
    var var_3 = arg_2.b.a;
    var_0 = select(all(!global0.e), !(firstTrailingBit(1i) == _wgslsmith_mod_i32(2147483647i, u_input.a.x)) | var_1.x, select(select(true, global0.b.x, global0.b.x), !(!all(global0.e.www)), var_1.x));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, ~_wgslsmith_add_i32(-u_input.a.x, min(1i, var_2.x))), vec3<i32>(var_2.x, -1i, max(-22841i, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_1(global0.b.x | true)), -359f, func_2(max(min(1u, ~global0.d), countOneBits(_wgslsmith_div_u32(u_input.b.x, u_input.b.x))), 50805i, Struct_4(Struct_1(vec2<f32>(2862f, global0.a.x), global0.b, global0.c, ~69282u, vec4<bool>(true, false, global0.b.x, false)), 22944i), func_4(Struct_5(u_input.b.x, func_2(4294967295u, u_input.a.x, Struct_4(Struct_1(vec2<f32>(-424f, -302f), vec2<bool>(true, global0.b.x), -810f, 47301u, global0.e), 0i), vec4<bool>(global0.b.x, global0.e.x, true, false)).b, global0.e.x && global0.b.x))), func_2(1u, ~max(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), !vec2<bool>(global0.e.x, false), _wgslsmith_f_op_f32(max(global0.c, -1046f)), ~1u, global0.e), reverseBits(-1i)), vec4<bool>(true || !global0.e.x, func_2(1u >> (global0.d % 32u), u_input.a.x, Struct_4(Struct_1(global0.a, global0.b, -1603f, u_input.b.x, vec4<bool>(false, false, global0.e.x, global0.e.x)), u_input.a.x), global0.e).c, func_4(Struct_5(u_input.b.x, Struct_2(vec4<f32>(-1357f, -858f, -270f, global0.a.x), global0.b.x, vec4<u32>(1u, u_input.b.x, global0.d, global0.d)), true)).x & global0.e.x, global0.e.x)));
    let var_1 = vec2<bool>(false, global0.e.x);
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-412f, -525f) - vec2<f32>(global0.a.x, -986f)) * func_2(55442u, 2147483647i, Struct_4(Struct_1(vec2<f32>(global0.c, -484f), vec2<bool>(var_1.x, var_1.x), 384f, 30984u, global0.e), -2147483647i), global0.e).b.a.wx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(global0.a.x, global0.c)))), vec2<bool>(any(!var_1), true), _wgslsmith_f_op_f32(global0.a.x - global0.a.x), 73236u, global0.e), -2147483647i);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, -1232f, global0.a.x, var_2.a.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, global0.c, -466f, 145f)))))), global0.b.x, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.b << (vec2<u32>(1u, 46345u) % vec2<u32>(32u))), ~(~(-27008i)), Struct_4(Struct_1(var_2.a.a, var_2.a.e.zx, var_2.a.c, 36175u, var_2.a.e), -u_input.a.x), func_4(func_2(u_input.b.x, -1i, Struct_4(Struct_1(vec2<f32>(-1000f, -520f), vec2<bool>(true, global0.b.x), 1328f, 0u, vec4<bool>(global0.e.x, false, global0.e.x, var_1.x)), 2147483647i), vec4<bool>(false, true, var_2.a.e.x, var_2.a.b.x)))).b.c & (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.d, global0.d, 0u, u_input.b.x), vec4<u32>(1u, var_2.a.d, 30164u, var_2.a.d))) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global0.d, u_input.b.x, 26796u) << (vec4<u32>(37796u, var_2.a.d, 1u, 51064u) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, var_2.a.d, 60279u, 4294967295u))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.a + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-553f, global0.c)))) * vec2<f32>(1000f, _wgslsmith_div_f32(var_2.a.a.x, var_3.a.x))), vec2<bool>(false, var_1.x), -1262f, ~(~(~max(u_input.b.x, var_3.c.x))), var_2.a.e);
    var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, _wgslsmith_f_op_f32(1727f * 1000f))), select(func_4(func_2(global0.d, -30222i, Struct_4(Struct_1(global0.a, var_4.b, -2140f, 24533u, var_4.e), -35646i), vec4<bool>(false, global0.b.x, false, global0.e.x))).yw, func_3(), false), _wgslsmith_f_op_f32(trunc(-265f)), 0u, global0.e), _wgslsmith_dot_vec4_i32(reverseBits(-u_input.a), _wgslsmith_mult_vec4_i32(u_input.a, abs(~u_input.a))));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(~(~4294967295u), -var_2.b, Struct_4(var_2.a, 6305i), vec4<bool>(true, true, false, all(global0.e.zzz))).b.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c + 1516f))))), 1467f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, min(~_wgslsmith_mod_vec2_u32(u_input.b, var_3.c.xy), _wgslsmith_clamp_vec2_u32(~var_3.c.xw, var_3.c.yw, vec2<u32>(var_2.a.d, 1u))), _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x & 23476u, u_input.b.x, min(global0.d, var_2.a.d), 4294967295u), _wgslsmith_mod_vec4_u32(max(vec4<u32>(var_4.d, 1u, u_input.b.x, global0.d), var_3.c), func_2(u_input.b.x, var_2.b, Struct_4(Struct_1(var_3.a.ww, vec2<bool>(var_2.a.e.x, false), global0.c, 4041u, vec4<bool>(global0.e.x, true, false, var_2.a.e.x)), var_0.x), vec4<bool>(global0.b.x, false, true, var_4.e.x)).b.c))));
}

