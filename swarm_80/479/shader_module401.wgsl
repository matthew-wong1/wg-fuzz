struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32) -> u32 {
    var var_0 = Struct_2(!(!select(select(arg_1.a.a, vec4<bool>(true, arg_1.a.a.x, true, arg_1.a.c.x), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, arg_1.a.a.x, true, false), vec4<bool>(false, false, false, arg_1.b.c.x), arg_1.a.e), !arg_1.a.e)), _wgslsmith_div_i32(-u_input.a, arg_1.b.b), arg_1.b.a, arg_1.a.d, false);
    let var_1 = _wgslsmith_f_op_f32(234f * 1833f);
    var_0 = arg_1.b;
    var var_2 = vec2<bool>(var_0.a.x, any(vec2<bool>(true & all(arg_1.a.c), false)));
    let var_3 = Struct_4(countOneBits(vec4<i32>(-2147483647i, arg_2, arg_1.b.b, abs(u_input.a << (u_input.b.x % 32u)))));
    return firstTrailingBit(~u_input.e);
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_1(vec3<u32>(u_input.b.x << (func_3(vec4<i32>(-1i, -6758i, -29100i, u_input.a), Struct_3(Struct_2(vec4<bool>(true, true, true, false), 14216i, vec4<bool>(false, false, false, false), vec4<f32>(arg_0, arg_0, arg_0, arg_0), true), Struct_2(vec4<bool>(true, false, false, true), 44230i, vec4<bool>(true, false, false, false), vec4<f32>(1106f, arg_0, -192f, arg_0), true)), firstTrailingBit(14149i)) % 32u), 39498u, 0u), abs(u_input.b.wz), ~(~max(u_input.c, u_input.d)));
    var var_2 = Struct_4(min(vec4<i32>(~8634i, _wgslsmith_mod_i32(u_input.a, 25102i), _wgslsmith_div_i32(-1i, 24709i), 1i), -vec4<i32>(u_input.a, -33714i, u_input.a, -6392i)) << (select(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 46917u), ~0u, _wgslsmith_clamp_u32(78635u, var_1.b.x, u_input.e), ~24781u), _wgslsmith_mod_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))) % vec4<u32>(32u)));
    var_2 = Struct_4(vec4<i32>(max(u_input.a, _wgslsmith_dot_vec3_i32(var_2.a.zzz, vec3<i32>(-1913i, u_input.a, u_input.a))) << (select(0u, 4294967295u, all(vec3<bool>(false, false, false))) % 32u), -2147483647i, 433i, firstTrailingBit(i32(-1i) * -16571i)));
    var_0 = false;
    return Struct_4(vec4<i32>(~var_2.a.x, _wgslsmith_mod_i32(max(2147483647i, abs(-24508i)), min(var_2.a.x, 1i)), select(firstTrailingBit(-59504i), u_input.a >> (var_1.c % 32u), all(vec3<bool>(false, false, true))), u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> f32 {
    let var_0 = u_input.b.x;
    var var_1 = arg_3;
    let var_2 = _wgslsmith_dot_vec2_u32(select(~select(u_input.b.wy ^ arg_0.zz, _wgslsmith_clamp_vec2_u32(arg_0.wx, u_input.b.zw, vec2<u32>(43921u, 47606u)), vec2<bool>(arg_3.a.x, false)), ~vec2<u32>(firstTrailingBit(arg_0.x), ~21213u), false), ~(~(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, arg_0.x), vec2<u32>(arg_0.x, 17578u)) ^ ~vec2<u32>(var_0, 2117u))));
    var var_3 = vec2<u32>(var_2, firstLeadingBit(52447u));
    let var_4 = vec2<i32>(-2147483647i, u_input.a);
    return _wgslsmith_f_op_f32(max(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(207f, 1301f, arg_2)), arg_3.d.x, true))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~0u, arg_0.x, ~9178u), u_input.b), func_2(-1000f), arg_2, Struct_2(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), -firstLeadingBit(-5171i), !arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(770f, -641f, -1106f, 853f)))), _wgslsmith_f_op_f32(ceil(-958f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1438f)) * 458f))));
    var_0 = 666f;
    let var_1 = _wgslsmith_sub_vec3_i32(~firstLeadingBit(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, 2147483647i, u_input.a)), vec3<i32>(u_input.a, u_input.a, -1i) | vec3<i32>(2147483647i, 2147483647i, -2147483647i))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(50182i, u_input.a, 2147483647i) & ~vec3<i32>(u_input.a, 382i, u_input.a)), -(vec3<i32>(u_input.a, 2147483647i, -2147483647i) >> (~vec3<u32>(u_input.b.x, arg_0.x, 1u) % vec3<u32>(32u)))));
    var var_2 = all(!arg_1);
    var var_3 = Struct_3(Struct_2(vec4<bool>(false, all(select(vec2<bool>(true, true), arg_1.ww, vec2<bool>(false, false))), !any(arg_1.wz), any(select(arg_1.zx, arg_1.yz, vec2<bool>(false, true)))), _wgslsmith_add_i32(2147483647i, min(u_input.a, u_input.a)) << (u_input.c % 32u), select(select(arg_1, !arg_1, select(vec4<bool>(true, false, true, true), arg_1, arg_1)), !(!arg_1), !arg_1), vec4<f32>(1f, 1f, 1f, 1f), arg_2 | false), Struct_2(!(!arg_1), u_input.a, select(!(!arg_1), arg_1, any(select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), arg_1.zy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, -461f, 697f, 1208f) + vec4<f32>(1740f, 778f, 1000f, -1229f)))), !(!arg_1.x)));
    return vec4<i32>(u_input.a, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a.d.x, -2361f, !arg_1.x)) * -1398f)).a.x, countOneBits(u_input.a), -1i);
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> bool {
    var var_0 = vec2<f32>(720f, -1091f);
    let var_1 = true;
    var var_2 = Struct_3(Struct_2(vec4<bool>(var_1, !(true || arg_0), !any(vec4<bool>(arg_0, false, var_1, arg_0)), !(!arg_0)), min(_wgslsmith_clamp_i32(min(-4014i, -2147483647i), reverseBits(u_input.a), i32(-1i) * -2171i), ~(i32(-1i) * -1i)), vec4<bool>(all(select(vec4<bool>(false, false, arg_0, false), vec4<bool>(var_1, false, arg_0, false), vec4<bool>(var_1, arg_0, false, false))), false, _wgslsmith_f_op_f32(-var_0.x) >= var_0.x, all(!vec3<bool>(true, true, var_1))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1643f, 1000f, var_0.x, var_0.x))))), true), Struct_2(vec4<bool>(false, any(select(vec3<bool>(true, arg_0, false), vec3<bool>(true, false, arg_0), arg_0)), true, all(!vec3<bool>(true, arg_0, arg_0))), min(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, arg_1.a.x), vec2<i32>(u_input.a, u_input.a)), 20283i), select(vec4<bool>(any(vec4<bool>(arg_0, var_1, false, var_1)), select(var_1, false, arg_0), true & arg_0, any(vec2<bool>(true, var_1))), !select(vec4<bool>(var_1, arg_0, arg_0, var_1), vec4<bool>(true, var_1, var_1, false), true), true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), 400f, var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)))), any(select(select(vec4<bool>(false, var_1, false, var_1), vec4<bool>(false, var_1, true, arg_0), vec4<bool>(arg_0, var_1, true, false)), !vec4<bool>(false, var_1, false, var_1), select(true, true, true)))));
    var var_3 = u_input.a & func_1(u_input.b.yx, !vec4<bool>(true, true, arg_0, true), all(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(var_1, false, false), var_2.b.a.xwx), var_2.b.a.zzw, u_input.a < 27204i)), abs(~1u ^ select(u_input.b.x, 66155u, true))).x;
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - _wgslsmith_f_op_f32(553f + -2344f)) * _wgslsmith_f_op_f32(sign(var_0.x)))), var_2.a.d.xx);
    return any(var_2.a.a.zw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-477f, _wgslsmith_f_op_f32(1598f + 673f)))), 788f)), _wgslsmith_f_op_f32(f32(-1f) * -1575f), func_5(!all(vec4<bool>(true, false, true, false)), Struct_4(func_1(vec2<u32>(32274u, u_input.b.x), vec4<bool>(false, true, false, true), true, 17879u))) & false));
    let var_1 = ~u_input.b.wzy | min(reverseBits(u_input.b.yzy), u_input.b.wwx);
    let var_2 = true;
    var var_3 = !vec2<bool>(var_2, true);
    var_3 = vec2<bool>(!((1i <= ~u_input.a) & var_2), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(-1006f))), var_0, var_0, -313f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2112f, var_0, 732f, var_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1711f, var_0, var_0, var_0) - vec4<f32>(1415f, -1077f, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, 1000f, var_0, 1564f)))))), _wgslsmith_f_op_f32(exp2(var_0)), reverseBits(~var_1.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-530f, -415f, var_0, var_0))), vec4<f32>(230f, var_0, var_0, -933f), all(vec2<bool>(true, true))))), vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), var_0))));
}

