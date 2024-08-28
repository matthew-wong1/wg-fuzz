struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<bool>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -392f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> i32 {
    return -(((max(0i, 22666i) & (1i ^ u_input.d.x)) << (arg_0 % 32u)) << (_wgslsmith_add_u32(~u_input.e.x, _wgslsmith_mod_u32(48072u, 61346u) | arg_1.b.b.a) % 32u));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_add_i32(~(-(20787i | func_3(u_input.e.x, Struct_5(vec3<bool>(true, true, false), Struct_3(vec2<u32>(u_input.e.x, 1u), Struct_1(4294967295u, vec3<f32>(279f, -1491f, 1046f), vec3<i32>(u_input.d.x, -2147483647i, -3218i)), Struct_1(u_input.c.x, vec3<f32>(-556f, 723f, -379f), u_input.d), vec4<i32>(-1i, 35094i, u_input.d.x, -2147483647i), vec4<f32>(201f, -1043f, 261f, -1469f)), vec3<bool>(false, false, true), vec2<f32>(-1000f, 585f), u_input.d.x)))), i32(-1i) * -u_input.d.x);
    let var_1 = select(select(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.e.x, u_input.b) ^ u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 32376u), _wgslsmith_mult_vec2_u32(u_input.c, u_input.e.wx))), 1u, false), 32224u, false & !(select(false, true, true) || true));
    var var_2 = Struct_1(max(var_1, _wgslsmith_mult_u32(u_input.a, var_1)), vec3<f32>(1744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -261f)))), _wgslsmith_f_op_f32(sign(-691f))), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xz, -vec2<i32>(16177i, u_input.d.x)), u_input.d.x, select(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), 1i, u_input.d.x < 1i)) << (max(select(vec3<u32>(var_1, var_1, u_input.c.x), ~u_input.e.xwx, vec3<bool>(false, false, true)), select(vec3<u32>(var_1, var_1, u_input.a), vec3<u32>(u_input.b, 1u, 54286u) | vec3<u32>(var_1, 1u, u_input.c.x), true)) % vec3<u32>(32u)));
    let var_3 = Struct_1(countOneBits(countOneBits(_wgslsmith_div_u32(select(39524u, 4294967295u, true), ~17769u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b * vec3<f32>(1332f, var_2.b.x, var_2.b.x)) * vec3<f32>(245f, var_2.b.x, -168f)))), u_input.d);
    let var_4 = _wgslsmith_f_op_f32(-var_2.b.x);
    return true;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_5 {
    var var_0 = vec3<u32>(~(~_wgslsmith_sub_u32(1862u, u_input.e.x)), abs(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(37784u, u_input.a)), vec2<u32>(1u, u_input.c.x)))), u_input.a);
    var var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f * 230f)) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1475f, -448f) + _wgslsmith_f_op_f32(floor(-1780f))), arg_1, !any(vec2<bool>(false, true))), !select(select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, true, false), vec3<bool>(arg_1, arg_1, arg_1)), !vec3<bool>(arg_1, arg_1, arg_1), all(vec4<bool>(false, true, arg_1, true))), !vec3<bool>(arg_1, false, false), false), vec3<bool>(any(vec2<bool>(true, true)), arg_1, arg_1));
    var_1 = !vec3<bool>(any(!(!var_1.xz)), var_1.x, true);
    var var_2 = firstLeadingBit(vec2<i32>(~_wgslsmith_sub_i32(i32(-1i) * -2147483647i, arg_2), ~(~(~(-17715i)))));
    var_1 = vec3<bool>(any(vec3<bool>(false, 0u > u_input.e.x, true)), false, false);
    return Struct_5(vec3<bool>(all(vec4<bool>(var_1.x, arg_1 == var_1.x, var_1.x, var_1.x)), select(_wgslsmith_sub_u32(var_0.x, 25304u) >= ~71015u, true, arg_1), any(vec2<bool>(!arg_1, true))), Struct_3(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x) & var_0.zy, vec2<u32>(85706u, u_input.a))), Struct_1(abs(~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1293f, 1422f, -242f))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_2.x, -13749i, -2147483647i), vec3<i32>(arg_0, 0i, 28555i), vec3<bool>(arg_1, arg_1, arg_1)), _wgslsmith_div_vec3_i32(u_input.d, u_input.d))), Struct_1(~max(u_input.e.x, 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1155f, 630f, 720f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(934f, -891f, -885f))), u_input.d), select(reverseBits(vec4<i32>(var_2.x, var_2.x, u_input.d.x, 0i)) & ~vec4<i32>(arg_0, arg_2, u_input.d.x, u_input.d.x), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), ~var_2.x, _wgslsmith_add_i32(13466i, u_input.d.x), u_input.d.x), var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(-318f + 411f), _wgslsmith_f_op_f32(max(823f, -273f)), 346f))), select(vec3<bool>(true, all(vec4<bool>(arg_1, arg_1, true, arg_1)), var_1.x), vec3<bool>(_wgslsmith_f_op_f32(ceil(1172f)) != 1f, false, false), vec3<bool>(false, !var_1.x, arg_1 != (arg_2 <= var_2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1217f, _wgslsmith_f_op_f32(step(678f, 1026f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 213f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1116f, 869f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1165f, 1121f) * vec2<f32>(-819f, 275f))))), _wgslsmith_add_i32(func_3(~(~u_input.c.x), Struct_5(vec3<bool>(true, true, true), Struct_3(vec2<u32>(0u, 0u), Struct_1(var_0.x, vec3<f32>(668f, 283f, -727f), vec3<i32>(34098i, arg_0, arg_0)), Struct_1(34005u, vec3<f32>(-356f, -659f, 1603f), vec3<i32>(-28633i, u_input.d.x, 19495i)), vec4<i32>(var_2.x, arg_0, u_input.d.x, arg_2), vec4<f32>(-578f, 1353f, -2172f, 2283f)), !vec3<bool>(true, var_1.x, true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-827f, -681f))), arg_2)), ~(~var_2.x ^ abs(37507i))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1099f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-703f)) - func_4(-1i, arg_1.a.x, 0i).d.x), 106f)));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.c.b.x), _wgslsmith_f_op_f32(min(-825f, _wgslsmith_f_op_f32(-1355f - -258f)))));
    var var_2 = 1i >> (_wgslsmith_add_u32(arg_0.b.b.a, 1u) % 32u);
    var var_3 = -1000f;
    return arg_1.d.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(-305f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(func_4(-1i, func_2(), i32(-1i) * -1i), func_4(-arg_0.x, all(vec2<bool>(true, true)), max(3752i, 2147483647i)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), Struct_1(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1224f, 744f, -201f)), abs(vec3<i32>(-4537i, u_input.d.x, -1i))))))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(Struct_5(vec3<bool>(true, true, true), func_4(1i, true, _wgslsmith_mult_i32(arg_1.c.x, -1i)).b, vec3<bool>(true, false, true), func_4(_wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.yx), all(vec2<bool>(true, true)), _wgslsmith_add_i32(25269i, u_input.d.x)).b.b.b.zy, 25354i), Struct_5(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), Struct_3(vec2<u32>(20345u, u_input.b), arg_1, arg_1, ~vec4<i32>(86194i, -2147483647i, arg_1.c.x, arg_1.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1208f, arg_1.b.x, 647f, arg_1.b.x))), vec3<bool>(true, true, true), arg_1.b.zz, arg_1.c.x), !(!(arg_1.b.x >= -1051f)), func_4(arg_1.c.x, any(func_4(-8286i, false, u_input.d.x).c), u_input.d.x).b.b))));
    let var_0 = arg_1.b.x;
    let var_1 = _wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(_wgslsmith_add_u32(countOneBits(arg_1.a >> (arg_1.a % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(arg_1.a, u_input.e.x, arg_1.a, 61939u)), ~u_input.e)), ~abs(_wgslsmith_mod_u32(u_input.b, 20632u)), ~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), _wgslsmith_mod_u32(firstLeadingBit(u_input.e.x), 4294967295u)));
    global0 = _wgslsmith_f_op_f32(abs(-1599f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))) * -327f))) * var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f))))) * -236f);
    var var_0 = min(firstLeadingBit(i32(-1i) * -1i), i32(-1i) * -772i);
    var_0 = _wgslsmith_add_i32(-1i, u_input.d.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1322f * 362f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -381f))) + _wgslsmith_f_op_f32(f32(-1f) * -530f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(-40819i, u_input.d.x), Struct_1(4294967295u, vec3<f32>(-386f, 1203f, -1820f), vec3<i32>(0i, u_input.d.x, u_input.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -169f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.xz, u_input.d.yz), func_4(-38810i, false, 1i).b.c)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -724f, -202f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, var_1.x, var_1.x, -642f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(781f, var_1.x, var_1.x, var_1.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(285f, -169f, 547f, -1796f), vec4<f32>(var_1.x, var_1.x, -1386f, var_1.x), vec4<bool>(false, true, false, false))))))));
    var var_3 = Struct_1(~func_4(-1i, !any(vec2<bool>(true, false)), 1i).b.c.a, _wgslsmith_f_op_vec3_f32(ceil(var_2.yyw)), -_wgslsmith_sub_vec3_i32(-u_input.d | (vec3<i32>(-22501i, 0i, u_input.d.x) & vec3<i32>(-16624i, u_input.d.x, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 1i, 0i), vec3<i32>(-23118i, -10688i, -2147483647i))));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1847f, var_2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * -735f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(firstTrailingBit(u_input.d.x)), countOneBits(~_wgslsmith_sub_u32(var_3.a, _wgslsmith_mod_u32(var_3.a, 8888u))));
}

