struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_4(false);
    var_0 = Struct_4(!arg_0.b);
    let var_1 = Struct_4(!(select(7829u, ~arg_0.a, false) < 1u));
    let var_2 = _wgslsmith_mult_i32(~(-arg_1.x) << (_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(u_input.b, 79025u)) % 32u), min(u_input.e, u_input.e >> (u_input.b % 32u))) <= 2147483647i;
    var_0 = Struct_4(true);
    return -firstTrailingBit(arg_0.d);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1 | 0i;
    var var_1 = Struct_4(arg_2 | false);
    var var_2 = Struct_3(4294967295u, -2248f >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1137f, 1067f)), _wgslsmith_f_op_f32(f32(-1f) * -697f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f + 326f) - _wgslsmith_f_op_f32(select(-109f, 1840f, false))), !arg_2)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + -748f), -274f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1656f - _wgslsmith_f_op_f32(1000f - -654f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(741f - -1332f)))), (func_3(Struct_3(1u, var_1.a, vec3<f32>(712f, -237f, -1325f), vec4<i32>(-90120i, 0i, u_input.d.x, -31196i)), -vec2<i32>(arg_1, -6941i)) | min(vec4<i32>(1997i, 2147483647i, -26786i, u_input.e), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, arg_1, arg_1, arg_1), vec4<i32>(arg_1, -28873i, arg_1, 47231i)))) >> (~vec4<u32>(u_input.b, ~u_input.a.x, ~u_input.b, u_input.b) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2811f, _wgslsmith_f_op_f32(1014f - var_2.c.x)), var_2.c.x)))));
    var var_4 = _wgslsmith_add_i32(~15570i, 656i);
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1551f, var_3, var_2.c.x)))))), -892f, select(select(select(select(vec3<bool>(var_2.b, true, true), vec3<bool>(var_2.b, var_1.a, true), vec3<bool>(false, false, var_2.b)), select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.a, arg_2, arg_0), vec3<bool>(var_1.a, true, true)), var_2.b), !(!vec3<bool>(var_1.a, arg_0, true)), select(select(vec3<bool>(var_1.a, arg_2, false), vec3<bool>(false, var_2.b, false), arg_0), !vec3<bool>(arg_0, arg_2, true), var_2.c.x > -593f)), vec3<bool>(arg_2, !var_1.a, var_2.b | arg_0), true), abs(~(~(~u_input.a.x))));
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = func_2(0u != (4294967295u ^ arg_0.a), u_input.e, select(-13393i, arg_0.d.x, arg_0.b) > reverseBits(~max(-23706i, 2147483647i)));
    var var_1 = vec3<bool>(var_0.d.x, true, arg_0.b);
    var_1 = vec3<bool>(arg_0.b, true | var_1.x, select(false, all(!(!vec4<bool>(var_1.x, var_0.d.x, arg_0.b, var_0.d.x))), var_0.d.x));
    var_1 = vec3<bool>((!(var_1.x & var_0.a) | var_0.d.x) && (arg_0.c.x > arg_0.c.x), true, var_0.e <= 4294967295u);
    var var_2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.c * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, var_0.b.x, -1669f), vec3<f32>(565f, arg_0.c.x, 219f), var_0.d))))))), 702f, var_0.d, ~(~1u));
    return firstTrailingBit(vec4<u32>(func_2(arg_0.b | false, ~u_input.d.x, any(vec3<bool>(arg_0.b, false, arg_0.b))).e ^ ~_wgslsmith_div_u32(var_2.e, 1u), select(arg_0.a, _wgslsmith_div_u32(_wgslsmith_mult_u32(46704u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 65571u, 0u, 35462u), vec4<u32>(arg_0.a, 4294967295u, u_input.b, 15586u))), !var_2.d.x), countOneBits(0u), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((~func_1(Struct_3(u_input.a.x, true, vec3<f32>(-1693f, -680f, -644f), vec4<i32>(0i, 4835i, 1i, u_input.d.x))) >> (vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_clamp_u32(0u, u_input.b, u_input.a.x), ~8113u) % vec4<u32>(32u))) & ~(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.a.x) << (~vec4<u32>(41452u, 7367u, u_input.b, 35945u) % vec4<u32>(32u)))) << (_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b, 4294967295u, func_2(true, ~u_input.e, u_input.c < u_input.e).e, max(_wgslsmith_sub_u32(u_input.b, u_input.a.x), 4294967295u)), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 135600u, 34222u, u_input.b), ~vec4<u32>(u_input.b, u_input.b, 38050u, 1u)))) % vec4<u32>(32u));
    var var_1 = u_input.c;
    var_1 = u_input.d.x;
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(731f + _wgslsmith_f_op_f32(func_2(true, u_input.c, false).c + _wgslsmith_f_op_f32(-498f - 1000f))) > -1464f, false, !(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.x, var_0.x, u_input.b), vec4<u32>(12702u, 0u, var_0.x, 4294967295u)) < _wgslsmith_div_u32(1u, 6228u ^ var_0.x)));
    var_0 = vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(43364u, 0u), _wgslsmith_mult_u32(~(~(~var_0.x)), 28498u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1591f, func_2(any(!vec2<bool>(var_2.x, true)), u_input.d.x | u_input.e, true).b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-360f, -377f, -130f, -942f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, -808f, -1003f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1690f, 403f, 282f, -181f) * vec4<f32>(-511f, -1026f, 865f, -492f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(879f, -375f, -970f, -573f) - vec4<f32>(992f, -440f, 839f, -2210f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1110f, 1142f, 210f, -130f), vec4<f32>(353f, -294f, -281f, 811f)))))), select(!(!vec4<bool>(true, var_2.x, var_2.x, true)), select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), !vec4<bool>(var_2.x, var_2.x, false, true), false), vec4<bool>(any(var_2.zx), true, var_2.x, 25341i > u_input.d.x)))), _wgslsmith_div_i32(~(-1i), -8695i));
}

