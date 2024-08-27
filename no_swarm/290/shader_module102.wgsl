struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec4<bool>(true, true, true, true), vec3<u32>(1u, 0u, 19161u), 4294967295u, vec2<f32>(-1084f, 115f), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(32044i, 81931i, -1560i, 1i), vec3<f32>(151f, 589f, 2350f), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-10547i, 1i, 47096i, -26523i), vec3<f32>(1000f, 1032f, -1060f), vec2<bool>(false, false)), 81524u, Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-1i, -1i, -1i, -23324i), vec3<f32>(-723f, 1799f, -637f), vec2<bool>(false, false)))), Struct_3(vec4<bool>(true, true, false, false), vec3<u32>(24447u, 20957u, 63248u), 52115u, vec2<f32>(1000f, 210f), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-50054i, 2681i, 19396i, 17119i), vec3<f32>(392f, -1000f, 524f), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-25215i, 2147483647i, 15395i, -1i), vec3<f32>(1073f, 431f, -365f), vec2<bool>(true, true)), 18671u, Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(1i, -4078i, 32761i, 2147483647i), vec3<f32>(506f, 464f, 1070f), vec2<bool>(true, true)))), Struct_3(vec4<bool>(true, false, false, true), vec3<u32>(31137u, 4294967295u, 1u), 1u, vec2<f32>(-910f, -1224f), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(22530i, 2147483647i, 8735i, -89759i), vec3<f32>(-134f, 986f, -616f), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(2147483647i, 1i, i32(-2147483648), 23974i), vec3<f32>(1000f, 759f, 1000f), vec2<bool>(true, true)), 1u, Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(0i, 1i, 1i, 2147483647i), vec3<f32>(1000f, -1071f, 1201f), vec2<bool>(false, false)))));

var<private> global1: array<i32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<i32> {
    global1 = array<i32, 30>();
    var var_0 = false;
    let var_1 = ~firstLeadingBit(~(~vec4<u32>(67875u, 0u, 1u, 19291u)));
    let var_2 = _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_1.x, 30u)], -66255i);
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, 1000f, 265f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-980f, -987f, -1999f), vec3<f32>(907f, -833f, -716f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-328f, 928f, 680f))))), true)))), var_1, vec3<f32>(_wgslsmith_f_op_f32(abs(-315f)), -919f, _wgslsmith_f_op_f32(floor(-253f))));
    return vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(abs(reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(var_1.x, 30u)], var_2, 2147483647i, -25670i))), abs(select(vec4<i32>(var_2, u_input.b, 4809i, u_input.a.x), vec4<i32>(global1[_wgslsmith_index_u32(0u, 30u)], -4788i, u_input.b, 49779i), vec4<bool>(false, false, false, false))));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(select(select(select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0.x), vec4<bool>(true, true, false, true), arg_0.x), !(!select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), true), -func_3(), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1521f, -1878f), 1644f, any(vec3<bool>(true, true, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-560f, -1118f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1515f, 100f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1406f)), _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(f32(-1f) * -291f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(633f, -168f, 991f) + vec3<f32>(-276f, -142f, 1683f)), vec3<f32>(384f, 961f, 174f)))), vec2<bool>(true, true));
    global0 = array<Struct_3, 3>();
    var var_1 = Struct_3(var_0.a, _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(~24650u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 18009u), vec3<u32>(15620u, 1u, 1u)), firstLeadingBit(0u))), vec3<u32>(~(~19037u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(47755u, 18606u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u))), 0u)), _wgslsmith_clamp_u32(~max(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, 2359u, 59621u, 44696u)), vec4<u32>(0u, 62383u, 1u, 25018u), _wgslsmith_div_vec4_u32(vec4<u32>(80524u, 4294967295u, 1u, 37691u), vec4<u32>(69463u, 10385u, 44544u, 1u)))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(63145u, 4294967295u), ~vec2<u32>(55647u, 1u))), _wgslsmith_f_op_vec2_f32(-var_0.c.xx), Struct_2(Struct_1(select(!var_0.a, select(vec4<bool>(arg_0.x, var_0.d.x, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x), var_0.d.x), !vec4<bool>(var_0.a.x, arg_0.x, true, var_0.d.x)), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(684f, var_0.c.x, var_0.c.x) + vec3<f32>(-1449f, -263f, 968f))), select(arg_0, !vec2<bool>(arg_0.x, var_0.a.x), any(vec3<bool>(false, true, false)))), Struct_1(vec4<bool>(!arg_0.x, true, false, arg_0.x), var_0.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1225f, var_0.c.x, var_0.c.x))), select(!arg_0, !var_0.a.xz, 847f <= var_0.c.x)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~27674u, 1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 0u), 1u)), Struct_1(var_0.a, max(max(vec4<i32>(global1[_wgslsmith_index_u32(59271u, 30u)], 5385i, u_input.a.x, u_input.a.x), var_0.b), -var_0.b), var_0.c, vec2<bool>(arg_0.x & arg_0.x, !var_0.d.x))));
    global0 = array<Struct_3, 3>();
    let var_2 = ~(-vec4<i32>(var_1.e.d.b.x, i32(-1i) * -var_0.b.x, _wgslsmith_sub_i32(-14850i, i32(-1i) * -10025i), -1i));
    return ~15138u;
}

fn func_1() -> Struct_5 {
    let var_0 = ~vec3<u32>(~(~1u), reverseBits(~(~56898u)), func_2(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1333f, _wgslsmith_f_op_f32(max(493f, 1193f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(381f, 381f) * _wgslsmith_f_op_f32(f32(-1f) * -738f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 196f))), 417f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f + -668f) + 780f) - -173f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(-376f, -1433f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -209f))), -719f));
    let var_2 = select(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), true), !vec2<bool>(any(vec3<bool>(true, true, true)), true), false);
    return Struct_5(Struct_1(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, var_2.x, false, var_2.x), true), vec4<bool>(false, var_2.x, false, var_2.x), true), ((vec4<i32>(1i, u_input.a.x, u_input.b, 0i) >> (vec4<u32>(var_0.x, 1u, var_0.x, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(-1i, global1[_wgslsmith_index_u32(var_0.x, 30u)], u_input.b, u_input.b)) >> (~(~vec4<u32>(0u, var_0.x, var_0.x, 49867u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-422f, var_1.x, -607f)))), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(~var_0.x, 3u)], u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_5(Struct_1(var_0.b.e.a.a, vec4<i32>(abs(u_input.a.x) >> (0u % 32u), _wgslsmith_div_i32(select(-19129i, u_input.b, var_0.a.a.x), var_0.b.e.b.b.x), _wgslsmith_dot_vec3_i32(var_0.b.e.b.b.wzy >> (vec3<u32>(4294967295u, var_0.b.c, 6871u) % vec3<u32>(32u)), vec3<i32>(global1[_wgslsmith_index_u32(1u, 30u)], u_input.b, u_input.a.x)), -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1341f)), var_0.b.e.d.c.x, _wgslsmith_f_op_f32(-376f * var_0.a.c.x))), vec2<bool>(!var_0.b.a.x, var_0.b.a.x)), Struct_3(select(var_0.b.a, !(!vec4<bool>(var_0.a.d.x, false, true, var_0.a.a.x)), !var_0.a.d.x), var_0.b.b, countOneBits(var_0.b.c) & abs(var_0.b.c), vec2<f32>(var_0.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -315f)), Struct_2(func_1().a, var_0.b.e.b, abs(~var_0.b.b.x), var_0.a)), ~vec2<i32>(func_3().x << ((3022u | var_0.b.e.c) % 32u), countOneBits(u_input.b) & func_3().x));
    global1 = array<i32, 30>();
    let var_1 = Struct_4(var_0.a.c, firstLeadingBit(~vec4<u32>(~var_0.b.c, 4294967295u, 0u, var_0.b.b.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1085f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1795f, 2646f) - -2158f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1080f) * var_0.b.d.x), var_0.b.d.x));
    var var_2 = vec2<i32>(max(-1i, -34682i), ~_wgslsmith_sub_i32(~var_0.b.e.d.b.x, abs(_wgslsmith_add_i32(1i, -1i))));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1015f, ~var_1.b, var_1.a.x);
}

