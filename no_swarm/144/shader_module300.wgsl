struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1257f, 419f, -325f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(619f, -531f, 524f) + vec3<f32>(-1791f, -1000f, -553f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(764f, 2506f, -249f)), arg_2.a.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(858f, -384f, 372f), vec3<f32>(732f, -1655f, -873f), vec3<bool>(false, true, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, 1442f, -754f))), vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1337f, -711f, 538f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-625f, 1000f, 924f)))))), select(!select(select(vec3<bool>(false, arg_1.b.x, false), vec3<bool>(true, false, arg_0.b.x), arg_3.a.x), !vec3<bool>(arg_0.a.x, arg_2.b.x, arg_2.b.x), all(vec4<bool>(true, arg_2.b.x, true, false))), !select(select(vec3<bool>(false, arg_3.b.x, arg_2.a.x), vec3<bool>(true, true, true), arg_1.b.x), select(vec3<bool>(arg_1.b.x, true, arg_2.b.x), vec3<bool>(arg_3.b.x, false, true), true), false), true)));
    var var_1 = _wgslsmith_mult_i32(-(~(~(~u_input.b))), u_input.b);
    var_1 = _wgslsmith_sub_i32(-2662i, 1i);
    var_1 = 2147483647i;
    var_1 = u_input.b ^ u_input.b;
    return all(arg_1.b.xz);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    let var_0 = select(vec4<bool>(select(arg_0.a.x, arg_0.a.x, true || arg_0.b.x), !select(all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), true, true), !(!arg_0.b.x) || func_3(Struct_1(vec3<bool>(true, false, arg_0.b.x), vec3<bool>(true, false, false), arg_0.c, vec2<u32>(arg_0.d.x, u_input.a.x)), Struct_1(arg_0.b, vec3<bool>(arg_0.b.x, false, arg_0.a.x), vec3<u32>(0u, u_input.a.x, 4294967295u), arg_0.c.zx), arg_0, arg_0), arg_0.a.x), !vec4<bool>(!(arg_0.b.x && false), true, arg_0.b.x, true), vec4<bool>(!(arg_0.b.x & false), !(!(false || arg_0.b.x)), true, arg_0.b.x));
    var var_1 = arg_0;
    let var_2 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, !func_3(arg_0, Struct_1(vec3<bool>(false, true, arg_0.a.x), var_0.zxy, vec3<u32>(u_input.a.x, arg_0.c.x, 551u), var_1.c.yy), arg_0, arg_0), select(!var_0.x, any(var_0), any(vec4<bool>(var_0.x, false, var_0.x, true)))), var_1.a.x), vec3<bool>(all(vec2<bool>(!var_1.b.x, arg_0.b.x)), all(vec3<bool>(true, var_0.x, !var_1.b.x)), true), ~arg_0.c, vec2<u32>(44153u, (firstTrailingBit(4204u) & var_1.d.x) << (var_1.c.x % 32u)));
    var_1 = arg_0;
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.c, vec3<u32>(40043u, var_1.c.x, var_1.c.x)), _wgslsmith_mult_vec3_u32(var_2.c, var_2.c)) & vec3<u32>(~u_input.a.x, ~arg_0.c.x, u_input.a.x), vec3<u32>(64080u, 4294967295u, 30473u) << (~vec3<u32>(~var_1.d.x, 1284u, var_1.d.x >> (var_1.c.x % 32u)) % vec3<u32>(32u)));
    return true;
}

fn func_1() -> bool {
    var var_0 = ~_wgslsmith_div_vec2_u32(u_input.a, u_input.a);
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(abs((i32(-1i) * -2147483647i) | select(u_input.b, u_input.b, true)), 16914i, _wgslsmith_add_i32(-2147483647i, i32(-1i) * -93426i)), min(_wgslsmith_mod_i32(u_input.b, -5084i), i32(-1i) * -u_input.b) & -1i, ~_wgslsmith_clamp_i32(~u_input.b | u_input.b, ~u_input.b | firstLeadingBit(u_input.b), _wgslsmith_clamp_i32(-1i, u_input.b >> (var_0.x % 32u), ~5371i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(108f, 406f, -651f, -1055f) + vec4<f32>(-300f, 1000f, 793f, -899f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1070f, -358f, -279f, -1055f), vec4<f32>(-1091f, 607f, 2217f, -1678f), vec4<bool>(false, true, false, false))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(854f, 1755f, -1491f, 1444f) + vec4<f32>(415f, -218f, 127f, -587f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-709f - -1747f), -3766f, _wgslsmith_f_op_f32(f32(-1f) * -1801f), _wgslsmith_div_f32(502f, 606f)))));
    var_0 = _wgslsmith_mult_vec2_u32(u_input.a, abs(_wgslsmith_add_vec2_u32(u_input.a | vec2<u32>(var_0.x, 1u), abs(u_input.a)))) << (vec2<u32>(firstTrailingBit(~var_0.x), 7498u) % vec2<u32>(32u));
    let var_3 = Struct_1(vec3<bool>(func_2(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false), vec3<u32>(14810u, var_0.x, 100684u) ^ vec3<u32>(var_0.x, u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, 48054u)), _wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(var_2.x, 2079f, var_2.x, var_2.x))), true, !(~1u != var_0.x)), vec3<bool>(true, func_3(Struct_1(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<u32>(37375u, 49312u, u_input.a.x) & vec3<u32>(var_0.x, 8486u, 79702u), select(vec2<u32>(var_0.x, u_input.a.x), u_input.a, vec2<bool>(false, true))), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, true), reverseBits(vec3<u32>(1u, u_input.a.x, 1u)), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(45854u, u_input.a.x))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<u32>(36179u, 4294967295u, 6280u), vec3<u32>(15658u, u_input.a.x, var_0.x), vec3<bool>(false, false, true)), vec2<u32>(u_input.a.x, var_0.x)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false), ~vec3<u32>(37713u, var_0.x, 1u), vec2<u32>(u_input.a.x, var_0.x) | vec2<u32>(25577u, u_input.a.x))), !any(vec2<bool>(true, true))), ~vec3<u32>(4294967295u, u_input.a.x, ~20853u), vec2<u32>((u_input.a.x ^ _wgslsmith_div_u32(1u, u_input.a.x)) & var_0.x, ~max(u_input.a.x, 73662u) << (~u_input.a.x % 32u)));
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~2147483647i;
    var_0 = u_input.b;
    let var_1 = false;
    var var_2 = -70728i;
    var var_3 = vec3<bool>(func_1(), -_wgslsmith_sub_i32(3043i, _wgslsmith_mod_i32(0i, u_input.b)) == _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(2147483647i, 0i))), firstTrailingBit(-vec2<i32>(u_input.b, u_input.b))), false);
    var_2 = abs(u_input.b);
    var_0 = u_input.b;
    var_0 = -_wgslsmith_sub_i32(u_input.b << (_wgslsmith_mult_u32(u_input.a.x, reverseBits(52596u)) % 32u), 0i);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-311f, -1344f, 535f, -1176f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(983f, 152f, 352f, -1376f) + vec4<f32>(-193f, -282f, 496f, 805f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 692f, 1497f, 190f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, 1957f, 872f, -1878f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(405f, -1149f, 1036f, -240f))))), var_3.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-982f, -294f, -123f, -2674f), vec4<f32>(-1164f, 129f, 221f, -1394f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, 417f, 747f, 641f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-308f, -1922f, 848f, -1560f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) - _wgslsmith_f_op_f32(-297f - -949f)), _wgslsmith_f_op_f32(f32(-1f) * -427f), 167f, _wgslsmith_f_op_f32(-163f + _wgslsmith_f_op_f32(sign(1496f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(select(-2147483647i, -u_input.b, var_1), abs(0i), min(_wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(u_input.b, 2147483647i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -22295i), vec2<i32>(1i, 1i)))), vec3<i32>(_wgslsmith_div_i32(2147483647i, ~(~(-2147483647i))), select(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b, false) | 1i, -_wgslsmith_mod_i32(1i, -58578i)), 0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.x)) - 1045f), -296f), vec4<f32>(1f, var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.x), -623f))), _wgslsmith_div_f32(414f, 791f)));
}

