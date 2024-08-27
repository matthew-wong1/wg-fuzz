struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = !all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), true));
    var_0 = _wgslsmith_sub_i32(0i, 26838i) < abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), reverseBits(vec2<i32>(46982i, -2147483647i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-7501i, -51928i), -7130i)));
    let var_1 = Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), true), true), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-45112i, -1i, 76455i, 61450i)), vec4<i32>(1i, 1i, i32(-1i) * -31017i, 2147483647i)) >> (~vec4<u32>(select(u_input.a.x, u_input.a.x, false), ~0u, ~u_input.a.x, 4294967295u) % vec4<u32>(32u)), max(reverseBits(reverseBits(vec3<i32>(-1i, -1i, 28827i))), -firstTrailingBit(~vec3<i32>(-1i, 2147483647i, -1207i))), _wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(86946u, 77122u)), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.a.x, 36373u, 0u, 17998u), ~u_input.a), vec4<u32>(4294967295u, u_input.a.x, 60190u, u_input.a.x))), vec4<u32>(11309u, 1u, abs(_wgslsmith_add_u32(0u, firstLeadingBit(u_input.a.x))), 0u));
    let var_2 = ~(vec3<u32>(17969u, u_input.a.x, ~_wgslsmith_add_u32(var_1.d, u_input.a.x)) << (firstTrailingBit(var_1.e.wzw) % vec3<u32>(32u)));
    var var_3 = vec4<i32>(~var_1.c.x, var_1.b.x, var_1.c.x, _wgslsmith_add_i32(~(-43644i), -21992i));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(648f + -416f))) - 500f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(327f, -461f)), _wgslsmith_f_op_f32(f32(-1f) * -2033f), all(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x)))), !(var_3.x == var_1.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1353f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(637f, -929f) + 1000f)), -614f, select(false && all(var_1.a.zwz), !var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.b.x), var_3.wx) == max(var_1.b.x, 1i)))));
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    var var_1 = vec4<i32>(37348i, 1i, _wgslsmith_dot_vec4_i32(reverseBits(firstLeadingBit(-vec4<i32>(30543i, 2147483647i, 1i, -1i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1206i, 10647i, -68190i, -50283i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, -1i, -39948i), vec4<i32>(58211i, -22718i, 489i, 1i))), vec4<i32>(1i, -1i, 1i, i32(-1i) * -60340i))), abs(_wgslsmith_mult_i32(~(~1i), -1i)));
    var_1 = ~vec4<i32>(reverseBits(select(var_1.x, var_1.x, false) << (firstLeadingBit(1u) % 32u)), i32(-1i) * -(~2147483647i), reverseBits(var_1.x), var_1.x);
    var_1 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(-1i << (u_input.a.x % 32u), -2147483647i, ~var_1.x, ~var_1.x) & -max(vec4<i32>(71527i, -2147483647i, var_1.x, 0i), vec4<i32>(var_1.x, 10601i, -63033i, 36796i)), vec4<i32>(max(var_1.x ^ 0i, -var_1.x), _wgslsmith_dot_vec3_i32(var_1.xyx, var_1.xww) >> (max(37365u, u_input.a.x) % 32u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -2147483647i, 828i, var_1.x), vec4<i32>(var_1.x, 36468i, -34251i, var_1.x)), -5991i), false), firstLeadingBit(max(_wgslsmith_mod_vec4_i32(vec4<i32>(42063i, var_1.x, var_1.x, var_1.x), ~vec4<i32>(-2147483647i, var_1.x, -872i, var_1.x)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(19627i, var_1.x, var_1.x, var_1.x)), -vec4<i32>(-28824i, var_1.x, -1i, 36172i), vec4<i32>(var_1.x, -2147483647i, -1i, 61205i)))));
    let var_2 = Struct_1(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, false, 0u >= _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), var_0.x != var_0.x), min(firstTrailingBit(~(vec4<i32>(var_1.x, var_1.x, var_1.x, 0i) >> (u_input.a % vec4<u32>(32u)))), vec4<i32>(-2147483647i, -1i, max(abs(var_1.x), -var_1.x), _wgslsmith_div_i32(var_1.x, var_1.x))), select(var_1.wzx & var_1.yxy, abs(var_1.wxx), true), 4294967295u, ~(~reverseBits(u_input.a)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zz - var_0.yx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1012f + -791f), _wgslsmith_f_op_f32(var_0.x * var_0.x)) - var_0.yx)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2714f, 939f) - vec2<f32>(833f, -500f)))))) - _wgslsmith_f_op_vec2_f32(func_2()));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1017f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 616f) + 424f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -939f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, 1842f)), !arg_0))))));
    return 2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = any(select(vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true, true, any(vec3<bool>(true, false, false))), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), vec4<bool>(true, any(vec3<bool>(true, false, true)), true, select(false, false, false)))));
    var_0 = any(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), vec3<bool>(!any(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true)), true), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(908f, _wgslsmith_f_op_f32(floor(641f)), _wgslsmith_div_f32(327f, 2134f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-363f, -861f)), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -357f)))));
    let var_2 = -205f;
    var_0 = ~arg_1.x < -9821i;
    return Struct_2(Struct_1(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, false), false)), -abs(vec4<i32>(arg_1.x, 0i, -2147483647i, arg_1.x)), arg_1 >> (vec3<u32>(select(u_input.a.x, 14344u, false), select(0u, 6170u, false), _wgslsmith_mod_u32(7833u, u_input.a.x)) % vec3<u32>(32u)), u_input.a.x | 68608u, vec4<u32>(~countOneBits(u_input.a.x), firstTrailingBit(54434u), u_input.a.x, ~42330u)), !(!all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1000f, var_2)))) + vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, -614f)), _wgslsmith_f_op_f32(f32(-1f) * -2175f), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(758f * var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mult_vec4_i32(~(~(-vec4<i32>(0i, 1i, 1i, -20380i))), min(_wgslsmith_mod_vec4_i32(select(vec4<i32>(0i, -2147483647i, -1i, -9839i), vec4<i32>(24191i, -28849i, 0i, 1838i), true), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(31382i, 0i, 1i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, -32535i, -44524i, -1i)))), vec3<i32>(i32(-1i) * -2147483647i, -(~min(-1i, -2147483647i)), func_1(true, countOneBits(vec4<i32>(45492i, -2147483647i, 1i, 2147483647i))) ^ -1i));
    let var_1 = Struct_3(func_4(var_0.a.b, _wgslsmith_add_vec3_i32(var_0.a.b.wwz, ~var_0.a.c)).a, vec3<u32>(1u, 4294967295u, var_0.a.e.x), Struct_1(vec4<bool>(true, var_0.a.c.x != 2147483647i, !func_4(vec4<i32>(-1i, var_0.a.b.x, -2147483647i, -37735i), var_0.a.b.wxx).b, select(var_0.a.a.x || var_0.b, any(var_0.a.a.zxy), var_0.b & var_0.a.a.x)), -max(vec4<i32>(9673i, -1i, var_0.a.b.x, 1i), _wgslsmith_sub_vec4_i32(var_0.a.b, var_0.a.b)), reverseBits(~var_0.a.c), var_0.a.e.x, firstLeadingBit(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u) & max(var_0.a.e, vec4<u32>(u_input.a.x, 5674u, var_0.a.d, var_0.a.d)))), -28126i);
    var var_2 = !any(var_1.c.a);
    var_2 = var_1.a.a.x;
    var var_3 = Struct_3(func_4(~_wgslsmith_sub_vec4_i32(vec4<i32>(7585i, var_0.a.c.x, var_1.d, var_1.c.b.x), vec4<i32>(var_1.c.c.x, -2147483647i, var_0.a.c.x, var_0.a.b.x)) & (-var_0.a.b ^ ~vec4<i32>(var_0.a.b.x, var_1.a.b.x, 7220i, 13538i)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.c.x, var_1.c.c.x, var_1.a.b.x), vec3<i32>(-2147483647i, -1i, var_1.d))), var_0.a.b.zyz, countOneBits(max(vec3<i32>(1i, -1i, var_0.a.b.x), vec3<i32>(1i, -55638i, var_1.a.b.x))))).a, ~u_input.a.wwx, Struct_1(var_0.a.a, firstTrailingBit(vec4<i32>(-var_1.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, -1i, var_0.a.c.x), var_0.a.b.zww), select(-9862i, var_1.a.c.x, true), 0i)), vec3<i32>(i32(-1i) * -8094i, var_0.a.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.c.x, var_1.d, var_1.d, var_1.a.c.x), var_0.a.b), var_1.c.c.x)), (max(var_1.c.d, var_0.a.d) | (var_0.a.d << (7705u % 32u))) << (1u % 32u), _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, var_0.a.e.x ^ 37413u, ~0u, 26182u), ~vec4<u32>(104999u, 4294967295u, 47942u, u_input.a.x) | var_0.a.e, var_1.a.e)), 1i);
    var var_4 = func_4(func_4(vec4<i32>(14625i, _wgslsmith_div_i32(12724i & var_3.a.b.x, abs(var_0.a.c.x)), var_3.d, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.a.c.x, 29668i), reverseBits(-13487i))), ~(~vec3<i32>(0i, -2147483647i, var_3.a.b.x) ^ vec3<i32>(-2147483647i, var_0.a.b.x, var_0.a.c.x))).a.b, vec3<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.b.x, var_1.a.c.x, 105383i), var_1.c.b.wwx) | firstLeadingBit(var_0.a.c.x)), var_1.c.b.x, _wgslsmith_sub_i32(-(~var_3.d), i32(-1i) * -var_1.d))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.e.wyw);
}

