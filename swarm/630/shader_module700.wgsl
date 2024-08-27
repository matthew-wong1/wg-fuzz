struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(2147483647i, -36133i, 2433i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -3253i, 22104i, 0i), vec4<i32>(-31682i, 0i, -7208i, 1i), vec4<i32>(2147483647i, 15071i, 0i, -33728i), vec4<i32>(0i, -12316i, -41366i, 41738i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 38079i), vec4<i32>(-42409i, 9394i, 1i, -30638i), vec4<i32>(-64494i, 29586i, 0i, -42699i), vec4<i32>(-44770i, 1i, 2823i, -30541i), vec4<i32>(1i, 29522i, 30012i, 13732i), vec4<i32>(1201i, 1i, 11270i, 41501i), vec4<i32>(38500i, 1i, 11474i, -1i), vec4<i32>(-19052i, -1i, -7827i, -1i), vec4<i32>(-42705i, 31961i, 25480i, 32316i), vec4<i32>(23575i, -66426i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -35408i, 50123i, 14165i), vec4<i32>(-9198i, 2147483647i, -1i, 1i), vec4<i32>(2147483647i, 1i, -12177i, 12133i), vec4<i32>(1i, 0i, 2147483647i, 0i), vec4<i32>(-1i, 1i, -25406i, 0i), vec4<i32>(-15953i, 7725i, 1i, i32(-2147483648)), vec4<i32>(1i, -20199i, i32(-2147483648), 36372i), vec4<i32>(2147483647i, 9474i, 2147483647i, -1i), vec4<i32>(1i, 5787i, 2147483647i, 9158i), vec4<i32>(55509i, -18962i, -28401i, 49631i), vec4<i32>(i32(-2147483648), -19240i, 2147483647i, -50384i), vec4<i32>(4853i, -21108i, -1i, -22969i), vec4<i32>(606i, 12255i, 2147483647i, i32(-2147483648)), vec4<i32>(-7794i, -1i, i32(-2147483648), -9239i), vec4<i32>(-1i, i32(-2147483648), -10599i, 19511i), vec4<i32>(2147483647i, -1i, 61686i, 1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_1(!vec4<bool>(false, true, true & (arg_0 && arg_0), arg_0), ~vec3<u32>(firstLeadingBit(4294967295u) & (u_input.d | 39468u), firstLeadingBit(u_input.d), 0u), global1.x);
    let var_1 = Struct_1(select(select(select(select(vec4<bool>(true, true, arg_0, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, true, var_0.a.x, false)), select(var_0.a, vec4<bool>(true, true, true, arg_0), var_0.a.x), var_0.a), !(!vec4<bool>(false, var_0.a.x, true, arg_0)), vec4<bool>(var_0.a.x, u_input.c.x < u_input.b, var_0.a.x, false)), !vec4<bool>(var_0.a.x, select(true, false, true), var_0.a.x, arg_0), var_0.a), var_0.b, -645f);
    let var_2 = Struct_5(var_1, vec2<i32>(~(~(-21982i)), abs(0i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 574f, 1737f, var_0.c) * vec4<f32>(1446f, var_1.c, -496f, -1129f)) - vec4<f32>(var_2.a.c, var_0.c, 404f, 115f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 925f, var_0.c, var_1.c) + vec4<f32>(-1146f, 1061f, arg_1.x, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, 1311f, var_2.a.c, -352f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.c, var_2.a.c, global1.x, 711f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, global1.x, 1197f, 1236f))))), select(!select(var_1.a, var_0.a, vec4<bool>(var_0.a.x, false, var_1.a.x, false)), select(select(vec4<bool>(true, var_1.a.x, true, var_0.a.x), var_2.a.a, arg_0), var_0.a, arg_0), select(vec4<bool>(arg_0, arg_0, true, var_1.a.x), select(var_2.a.a, vec4<bool>(false, true, arg_0, var_0.a.x), var_2.a.a), var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var var_4 = firstTrailingBit(var_1.b.x);
    return 240f;
}

fn func_2() -> vec4<f32> {
    global0 = -1i;
    let var_0 = Struct_4(~(~vec4<u32>(1658u, u_input.d, u_input.d, 0u) << (~(vec4<u32>(1u, u_input.d, u_input.d, 1u) | vec4<u32>(45082u, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u))));
    let var_1 = Struct_3(Struct_2(reverseBits(~2147483647i), !(select(true, true, true) || true), ~_wgslsmith_add_vec4_u32(vec4<u32>(9380u, 4294967295u, u_input.d, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4522u, var_0.a.x, 78u), vec4<u32>(4294967295u, 35292u, u_input.d, 4294967295u))), _wgslsmith_sub_vec2_i32((vec2<i32>(-3231i, u_input.a) >> (vec2<u32>(4294967295u, var_0.a.x) % vec2<u32>(32u))) | ~u_input.c.zz, -abs(u_input.c.zx)), Struct_1(vec4<bool>(true, true, true, true), ~(~vec3<u32>(0u, 4294967295u, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-840f, global1.x)))), -firstTrailingBit(49420i));
    var var_2 = var_1.a.e;
    var var_3 = var_1;
    return vec4<f32>(_wgslsmith_f_op_f32(func_3(!select(false != var_1.a.b, 762f < var_2.c, true), global1.yxx)), var_3.a.e.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.e.c, var_3.a.e.c)) - _wgslsmith_f_op_f32(-386f * -1133f)))), 615f);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = !all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = -2147483647i;
    var var_1 = Struct_4(vec4<u32>(~(~(~u_input.d)), u_input.d, 1u, u_input.d));
    let var_2 = true;
    var var_3 = -156f;
    return Struct_1(select(vec4<bool>(false, var_2, false, var_2), !(!select(vec4<bool>(true, true, var_2, true), vec4<bool>(true, var_0, var_2, true), true)), vec4<bool>(false, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, var_2), vec3<bool>(false, var_0, false))), var_0, false && any(vec2<bool>(var_2, var_0)))), ~firstLeadingBit(var_1.a.wwz >> (var_1.a.yyx % vec3<u32>(32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1443f)) - global1.x))))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.x, _wgslsmith_f_op_f32(select(1000f, global1.x, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-689f, -1000f))))) + _wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_dot_vec2_i32(select(u_input.c.yx, u_input.e.zy, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), firstLeadingBit(u_input.e.zz) | ~arg_0) | _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 72479i, 2457i), vec3<i32>(8904i, u_input.b, u_input.c.x)), 59683i), arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1769f)))), global1.x));
    var var_1 = firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(1u, abs(70364u)), 0u));
    let var_2 = Struct_4(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(var_0.b.x, 1u, 4294967295u, var_1.x), ~vec4<u32>(18539u, u_input.d, u_input.d, u_input.d), var_0.a), vec4<u32>(var_0.b.x, u_input.d, func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(984f, global1.x, 1096f, var_0.c), vec4<f32>(global1.x, var_0.c, var_0.c, var_0.c))), ~(-1i), -493f).b.x, 1u)));
    global2 = array<vec4<i32>, 31>();
    global2 = array<vec4<i32>, 31>();
    return var_2;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_vec3_i32(-u_input.c, _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(1i, -11283i), max(~u_input.c.x, -15683i), select(-2147483647i, -2551i, true)), vec3<i32>(i32(-1i) * -42627i, ~u_input.e.x, 1i)));
    var var_1 = all(!(!(!arg_1.a.a)));
    global0 = _wgslsmith_clamp_i32(~var_0.x, u_input.e.x, u_input.c.x) << (~u_input.d % 32u);
    global0 = _wgslsmith_div_i32(-(~var_0.x), arg_1.b.x);
    let var_2 = ~arg_1.a.b.x;
    return vec2<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.c, global1.x))), 332f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_5(func_1(firstLeadingBit(abs(u_input.c.yz))), Struct_5(Struct_1(vec4<bool>(true, false, true, true), ~vec3<u32>(0u, u_input.d, 1u), _wgslsmith_f_op_f32(sign(1000f))), u_input.e.zz))));
}

