struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(2147483647i, 9118i, -14450i), vec3<i32>(46983i, 24505i, -6595i), vec3<i32>(0i, 24813i, -13357i), vec3<i32>(-31573i, -2004i, 1i), vec3<i32>(1i, 0i, -32038i), vec3<i32>(i32(-2147483648), 1760i, -1i), vec3<i32>(-5963i, -53411i, 0i), vec3<i32>(2147483647i, 0i, -12663i), vec3<i32>(1i, 0i, -30789i), vec3<i32>(0i, 2147483647i, 22434i), vec3<i32>(24077i, -50052i, 37852i), vec3<i32>(-16189i, -1i, i32(-2147483648)), vec3<i32>(-17064i, -1i, 2358i), vec3<i32>(-21734i, -45296i, 0i), vec3<i32>(6225i, -30086i, 30735i), vec3<i32>(-6465i, -1i, -33326i), vec3<i32>(0i, -1i, -1i), vec3<i32>(86546i, -11637i, 2147483647i), vec3<i32>(47331i, 2147483647i, 0i), vec3<i32>(1i, -84282i, -1i), vec3<i32>(67036i, 0i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), -13455i, i32(-2147483648)), vec3<i32>(-7413i, 4322i, -1099i), vec3<i32>(-24494i, 2147483647i, 30541i), vec3<i32>(2147483647i, 12161i, -1i));

var<private> global1: vec4<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<u32>) -> bool {
    global0 = array<vec3<i32>, 26>();
    var var_0 = ~max(u_input.b.x & arg_1.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_2.x, 4294967295u), ~vec3<u32>(84109u, 20344u, 4294967295u)), 1u, arg_1.x));
    global0 = array<vec3<i32>, 26>();
    let var_1 = !select(!select(vec3<bool>(arg_0, arg_0, false), global1.wwx, all(vec4<bool>(global1.x, false, global1.x, false))), select(vec3<bool>(any(vec4<bool>(arg_0, false, arg_0, true)), all(vec3<bool>(global1.x, true, true)), any(vec3<bool>(global1.x, arg_0, arg_0))), !select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0), 0u < select(378u, arg_2.x, global1.x)), select(global1.xwx, !select(global1.ywx, vec3<bool>(false, true, true), global1.wxy), !vec3<bool>(arg_0, false, global1.x)));
    var var_2 = countOneBits(-firstTrailingBit(-13799i));
    return select(true, !select(select(true, true, true), true, arg_0), 1000f > _wgslsmith_f_op_f32(round(341f)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<i32>, 26>();
    global1 = vec4<bool>(true, select(all(select(vec2<bool>(global1.x, global1.x), global1.zx, true)), !(func_3(true, vec3<u32>(65486u, u_input.b.x, 103808u), vec3<u32>(62263u, u_input.b.x, u_input.b.x)) | true), global1.x), true, global1.x);
    let var_0 = Struct_1(u_input.b.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f - -1024f)))));
    let var_1 = reverseBits(-abs(i32(-1i) * -68063i));
    let var_2 = !(!global1.x);
    return Struct_1(4294967295u, !any(!vec4<bool>(var_2, false, global1.x, true)), -211f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = 27981u;
    global1 = vec4<bool>(arg_3.c <= arg_3.c, true, any(!(!select(vec4<bool>(global1.x, false, arg_2.c.b, false), vec4<bool>(false, true, arg_2.c.b, global1.x), false))), all(global1.wxw) != false);
    global0 = array<vec3<i32>, 26>();
    let var_1 = Struct_1(19169u, arg_0.b, -321f);
    var var_2 = Struct_1(arg_3.a, arg_2.c.b, _wgslsmith_f_op_f32(exp2(var_1.c)));
    return vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(37810u, min(1u | arg_3.a, var_2.a)), 3775u), _wgslsmith_div_u32(~var_2.a, firstTrailingBit(4294967295u & func_2().a)), ~(~(_wgslsmith_div_u32(var_1.a, var_2.a) & ~arg_3.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(), _wgslsmith_clamp_vec2_i32(-vec2<i32>(12536i, 16447i), ~(~vec2<i32>(-2147483647i, u_input.a.x)), countOneBits(vec2<i32>(u_input.a.x, 36940i) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)))) ^ ~u_input.a.zz, Struct_2(_wgslsmith_mod_vec4_u32(countOneBits(abs(vec4<u32>(80200u, 1u, u_input.b.x, u_input.b.x))), abs(~vec4<u32>(u_input.b.x, 31679u, u_input.b.x, u_input.b.x))), u_input.b, Struct_1(_wgslsmith_mod_u32(96002u, ~0u), func_3(global1.x, u_input.b, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -1466f)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, -22825i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 11961i) | vec4<i32>(-1i, 48966i, 1i, 18150i)), ~(-vec4<i32>(20418i, -1i, -6723i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-172f, 251f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, -321f))))), Struct_1(42140u, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -521f))))));
    let var_1 = u_input.a.x;
    global1 = !vec4<bool>(true, true, (var_0.x < u_input.b.x) != global1.x, global1.x);
    global1 = select(!select(vec4<bool>(global1.x, false, global1.x, !global1.x), vec4<bool>(!global1.x, select(global1.x, global1.x, true), true, true), select(select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, false)), !vec4<bool>(global1.x, global1.x, false, false), !global1.x)), select(select(vec4<bool>(true, select(false, true, false), u_input.a.x > 1i, any(vec3<bool>(global1.x, false, false))), select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, global1.x, false)), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, true), global1.x), true), select(!vec4<bool>(global1.x, global1.x, false, global1.x), !vec4<bool>(false, true, global1.x, global1.x), func_2().b)), vec4<bool>(!global1.x, any(select(vec3<bool>(false, false, global1.x), global1.xxx, global1.zwz)), true, all(select(global1.xxz, global1.zzz, false))), !(!(!global1.x))), !select(!(!vec4<bool>(global1.x, true, global1.x, true)), vec4<bool>(global1.x, !global1.x, any(global1.wy), global1.x == true), select(global1.x, !global1.x, false)));
    var_0 = abs(reverseBits(u_input.b));
    return Struct_1(func_2().a, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1299f)) + _wgslsmith_f_op_f32(1948f * -1003f)) - _wgslsmith_f_op_f32(sign(-1018f))) + -1295f));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = ~(~(vec4<u32>(1u, 43346u, arg_2.a, 53072u) & vec4<u32>(30075u, arg_0.c.a, 1u, arg_2.a)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, arg_2.a), min(vec4<u32>(u_input.b.x, 59565u, arg_0.c.a, arg_2.a), vec4<u32>(4294967295u, 0u, 39493u, arg_2.a))) % vec4<u32>(32u))) >> (arg_0.a % vec4<u32>(32u));
    let var_1 = arg_0;
    global1 = vec4<bool>(true, true, func_2().b, false);
    var var_2 = true && !arg_0.c.b;
    global1 = select(vec4<bool>(arg_2.b, (var_1.d.x < _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.x, 0i, 2147483647i), var_1.d.wxz)) && (false || !global1.x), true, arg_0.c.b), vec4<bool>(true, true || arg_2.b, arg_0.c.c < _wgslsmith_div_f32(arg_3, _wgslsmith_div_f32(218f, 218f)), (!var_1.c.b | arg_0.c.b) == all(select(vec4<bool>(arg_1, false, true, false), vec4<bool>(false, arg_0.c.b, true, false), true))), vec4<bool>(!global1.x, !(!var_1.c.b), select((u_input.a.x ^ u_input.a.x) > _wgslsmith_sub_i32(7224i, 491i), global1.x, !(!arg_0.c.b)), true));
    return !any(!(!global1.ww));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(true, !(all(vec2<bool>(false, global1.x)) | global1.x), true, 43563u < u_input.b.x);
    var var_0 = !select(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, global1.x)), any(vec4<bool>(false, false, true, global1.x))), !select(!vec4<bool>(global1.x, false, false, false), vec4<bool>(true, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, true, false)), select(!vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(false, u_input.b.x <= 113u, true, any(global1.xwy)), select(true, global1.x & false, true)));
    var var_1 = Struct_1(0u, var_0.x, -960f);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(401f + var_1.c)))) - var_1.c)));
    global1 = vec4<bool>(((u_input.a.x >> (_wgslsmith_sub_u32(51179u, var_1.a) % 32u)) & _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -30296i)) != -_wgslsmith_mod_i32(0i, -2147483647i), func_5(Struct_2(~select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(1u, var_1.a, u_input.b.x, 0u), vec4<bool>(var_0.x, var_0.x, true, false)), vec3<u32>(1u, 1u, 1u), func_1(), vec4<i32>(u_input.a.x, 7089i, 2147483647i, u_input.a.x) | abs(vec4<i32>(1i, 34315i, u_input.a.x, u_input.a.x)), vec2<f32>(-1060f, -834f)), func_2().b, Struct_1(~(~1u), _wgslsmith_f_op_f32(min(1000f, var_1.c)) != _wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(round(477f))), var_2), !(_wgslsmith_add_i32(abs(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 13078i), vec4<i32>(10437i, 25260i, u_input.a.x, u_input.a.x))) < (_wgslsmith_clamp_i32(-46685i, u_input.a.x, 45782i) << (21053u % 32u))), true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(abs(425f)), !var_0.x | true)), 1000f, _wgslsmith_div_f32(-1680f, 184f));
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

