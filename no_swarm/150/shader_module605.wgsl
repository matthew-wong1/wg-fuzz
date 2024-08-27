struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> i32 {
    return -19282i;
}

fn func_3() -> f32 {
    let var_0 = Struct_3(-u_input.a.x, Struct_1(1u, u_input.c.zxz, 0i == u_input.c.x, vec2<i32>(~(~u_input.a.x), 7716i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -241f))))), Struct_2(_wgslsmith_sub_u32(~(75389u << (1u % 32u)), abs(29272u)), Struct_1(1u, u_input.c.xxy, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-28147i, -31917i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2451f - 986f))), vec3<u32>(u_input.b, 0u, _wgslsmith_mult_u32(0u, 21013u) << (u_input.b % 32u)), select(firstLeadingBit(-1i), 11747i, false) | 1i), Struct_2(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, 0u))), Struct_1(abs(~4294967295u), u_input.a, true && (4294967295u <= u_input.d), ~countOneBits(vec2<i32>(-6289i, u_input.a.x)), _wgslsmith_f_op_f32(917f * _wgslsmith_f_op_f32(f32(-1f) * -3319f))), select(~vec3<u32>(932u, u_input.d, u_input.d) >> (vec3<u32>(u_input.d, 1u, 29348u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(4294967295u, 1u, 105283u)), vec3<u32>(1u, 55437u, u_input.b)), vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), min(_wgslsmith_add_i32(1i, select(0i, -1728i, true)), -2147483647i)), (u_input.c.x & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -25412i, u_input.c.x), -u_input.c.ywx)) < firstLeadingBit(~(~u_input.c.x)));
    global1 = var_0.b.a;
    var var_1 = -1121f;
    var var_2 = _wgslsmith_div_f32(-1020f, var_0.d.b.e);
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f))));
    return 117f;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(281f, -234f))), ~(~(~(~vec4<u32>(4294967295u, arg_1.c.x, arg_1.b.a, u_input.d)))), 1i);
    let var_1 = ~firstTrailingBit(u_input.b << (~arg_1.c.x % 32u));
    var var_2 = arg_1.b.a;
    let var_3 = Struct_5(arg_0, 92016u, _wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(func_3())), vec2<f32>(arg_1.b.e, -108f))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(132f, -873f) + var_0.a), vec4<u32>(~var_1, ~14580u, arg_1.c.x << (var_0.b.x % 32u), var_0.b.x) ^ var_0.b, abs(_wgslsmith_add_i32(var_0.c << (72527u % 32u), 44275i))));
    var var_4 = var_3;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(func_3()));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_add_i32(~(-1i), arg_3.d.x);
    global0 = -35388i;
    global0 = arg_3.d.x;
    global1 = _wgslsmith_add_u32(~max(4294967295u, u_input.b), _wgslsmith_div_u32(10420u, abs(1u)));
    let var_0 = ~vec2<u32>(arg_3.a, arg_3.a);
    return Struct_3(arg_3.d.x, arg_3, Struct_2(u_input.d, Struct_1(_wgslsmith_clamp_u32(77147u, 1u, u_input.b), vec3<i32>(_wgslsmith_clamp_i32(arg_3.b.x, arg_3.d.x, 2147483647i), abs(0i), ~(-65991i)), (i32(-1i) * -28110i) <= -arg_3.d.x, vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, arg_3.d.x), -arg_3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(33739i, Struct_2(var_0.x, Struct_1(u_input.d, arg_3.b, arg_2, vec2<i32>(arg_3.b.x, u_input.c.x), 526f), vec3<u32>(arg_3.a, 1u, u_input.b), -28785i))))), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.a, 11032u, 4294967295u), vec3<u32>(var_0.x, 1u, 1u))) ^ abs(vec3<u32>(4294967295u, 4294967295u, 62257u)), _wgslsmith_dot_vec3_i32(vec3<i32>(42915i, arg_3.d.x, 1i), u_input.a)), Struct_2(0u, Struct_1(1u, _wgslsmith_div_vec3_i32(-arg_3.b, ~u_input.c.ywz), !(!arg_3.c), _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.yx), abs(arg_3.d)), _wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(abs(arg_3.e)))), ~vec3<u32>(0u, 19773u, ~0u), u_input.c.x), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(sign(321f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f * 372f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f * 778f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1014f, _wgslsmith_f_op_f32(floor(258f)))) - _wgslsmith_f_op_f32(func_2(func_1(-2480f, vec4<f32>(1067f, 444f, -1140f, -590f), u_input.c.x), Struct_2(4294967295u, Struct_1(u_input.b, u_input.a, false, u_input.a.xz, 696f), vec3<u32>(4294967295u, u_input.d, 79040u), u_input.c.x)))), _wgslsmith_f_op_f32(ceil(-938f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1957f - -1153f)))), true, Struct_1(u_input.d, firstLeadingBit(-vec3<i32>(u_input.a.x, 31794i, u_input.c.x) << (~vec3<u32>(16192u, u_input.d, 4294967295u) % vec3<u32>(32u))), !select(true, true, all(vec4<bool>(true, false, false, false))), _wgslsmith_div_vec2_i32(~(-vec2<i32>(u_input.c.x, u_input.a.x)), u_input.c.zw), -1139f));
    var var_1 = func_4(!var_0.c.b.c & any(vec3<bool>(all(vec2<bool>(false, true)), var_0.c.b.c | var_0.e, var_0.b.c)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1370f, _wgslsmith_f_op_f32(var_0.b.e - 448f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.b.e)))), true, func_4(all(vec3<bool>(var_0.d.b.c, -2147483647i >= var_0.d.d, var_0.c.b.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(143f, 1000f, -1000f), vec3<f32>(var_0.b.e, 1376f, 590f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(102f, -438f, var_0.c.b.e) + vec3<f32>(647f, -1360f, var_0.d.b.e)))), !select(true, var_0.e, u_input.b == 15162u), func_4(~u_input.c.x < -20014i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.b.e, var_0.d.b.e, var_0.b.e)), false, var_0.d.b).d.b).d.b).c.b.b.x;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-352f, var_0.b.e), vec2<f32>(var_0.c.b.e, -1264f))), vec2<f32>(_wgslsmith_f_op_f32(step(var_0.d.b.e, -557f)), _wgslsmith_div_f32(-1161f, 645f)), select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.d.b.c), var_0.d.b.c), select(vec2<bool>(var_0.c.b.c, true), vec2<bool>(true, var_0.c.b.c), vec2<bool>(var_0.d.b.c, var_0.b.c)), true)))), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(6560u, u_input.b, 1u, 4294967295u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(28421u, func_4(true, vec3<f32>(var_0.c.b.e, -106f, var_0.b.e), var_0.c.b.c, Struct_1(var_0.c.b.a, vec3<i32>(43697i, u_input.c.x, -40069i), true, vec2<i32>(var_0.c.b.b.x, u_input.a.x), var_0.c.b.e)).b.a, var_0.b.a >> (68940u % 32u), 1u), _wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.d, var_0.c.c.x, var_0.b.a, var_0.b.a), vec4<bool>(var_0.b.c, true, false, true)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.d, u_input.b, u_input.d), vec4<u32>(1u, 54447u, u_input.b, u_input.b))), ~(~vec4<u32>(u_input.d, u_input.b, 4508u, var_0.c.a)))), _wgslsmith_dot_vec2_i32(var_0.b.b.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c.d, min(u_input.c.x, u_input.c.x)), -vec2<i32>(var_0.a, 2147483647i), u_input.a.yy)));
    var var_3 = ~_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(~1u, var_2.b.x)), max(var_0.c.c.yy, vec2<u32>(48048u, var_2.b.x)) << (~(var_0.d.c.yx | vec2<u32>(0u, 114971u)) % vec2<u32>(32u)));
    global0 = ~var_2.c;
    var var_4 = _wgslsmith_mod_i32(~func_4(var_0.d.b.c, vec3<f32>(-192f, _wgslsmith_div_f32(var_0.c.b.e, var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)), true, Struct_1(105923u, vec3<i32>(18458i, var_0.c.b.b.x, 2147483647i), true, min(u_input.c.yx, u_input.a.xy), _wgslsmith_f_op_f32(var_2.a.x - 618f))).b.b.x, -(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_2.c, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, -1905i)) | -15916i));
    var_3 = max(_wgslsmith_sub_vec2_u32(select(_wgslsmith_sub_vec2_u32(~var_2.b.zx, var_2.b.wz), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), var_2.b.xx, vec2<u32>(var_2.b.x, var_2.b.x)), vec2<bool>(var_0.b.c, false)), vec2<u32>(max(var_2.b.x, 0u), _wgslsmith_sub_u32(max(48516u, 25570u), var_2.b.x))), _wgslsmith_clamp_vec2_u32(~abs(var_0.c.c.xy & vec2<u32>(1u, 52556u)), ~vec2<u32>(func_4(true, vec3<f32>(var_2.a.x, 941f, -1359f), true, var_0.d.b).d.c.x, _wgslsmith_add_u32(u_input.d, u_input.d)), var_0.c.c.zy));
    global0 = firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(~var_2.c, var_2.c, abs(var_0.c.d)), countOneBits(u_input.c.wxx)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<i32>(2147483647i, var_2.c, _wgslsmith_dot_vec3_i32(var_0.d.b.b, ~var_0.b.b), -2620i), u_input.c, var_0.b.d.x);
}

