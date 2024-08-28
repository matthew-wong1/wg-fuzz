struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_1(!vec3<bool>(any(vec3<bool>(false, false, true)), true, true));
    let var_1 = arg_1;
    return reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -u_input.c.x, u_input.c.x, 0i), u_input.b), -vec4<i32>(u_input.b.x, u_input.b.x ^ 2147483647i, 9771i, max(u_input.d.x, -47755i)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(39325i, 1i, u_input.b.x), u_input.b.yzx), _wgslsmith_mod_i32(u_input.d.x, 1i)), -40160i, ~u_input.d.x, -abs(-26881i))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>) -> bool {
    let var_0 = vec2<f32>(-2205f, 1000f);
    var var_1 = Struct_1(!vec3<bool>(true, select(true, all(vec4<bool>(true, false, true, false)), true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))));
    var var_2 = abs(vec4<i32>(-4520i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(arg_1.x, arg_1.x)), (u_input.b.x ^ arg_1.x) | -16767i, 1i)) | ~vec4<i32>(arg_1.x, _wgslsmith_mult_i32(i32(-1i) * -1i, select(2147483647i, 3088i, true)), ~(-2147483647i), arg_1.x);
    let var_3 = vec3<bool>(var_1.a.x, false, var_1.a.x);
    var_2 = ~reverseBits(-arg_1) | _wgslsmith_mult_vec4_i32(arg_1, vec4<i32>(u_input.d.x, -48097i, max(u_input.c.x, -14148i), ~(var_2.x & var_2.x)));
    return false;
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = select(vec3<bool>(true, func_4(reverseBits(abs(u_input.a.zy)), _wgslsmith_div_vec4_i32(-u_input.d, func_3(vec4<bool>(true, false, true, true), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), u_input.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), true)) == arg_0.x), !vec3<bool>(all(vec4<bool>(true, true, true, true)), false, !func_4(vec2<u32>(37193u, 4294967295u), vec4<i32>(-6281i, u_input.c.x, -15950i, 9849i))), vec3<bool>(!(any(vec3<bool>(false, true, false)) != any(vec4<bool>(true, false, true, false))), false, !(u_input.a.x < 11437u)));
    var var_1 = Struct_1(var_0);
    let var_2 = Struct_1(!vec3<bool>(false, _wgslsmith_mult_i32(u_input.d.x, u_input.c.x) > u_input.b.x, firstTrailingBit(186u) != abs(u_input.a.x)));
    var var_3 = var_2.a.yx;
    let var_4 = !vec3<bool>(any(select(select(vec4<bool>(var_2.a.x, var_2.a.x, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, var_2.a.x, var_2.a.x, true)), vec4<bool>(false, true, false, false), func_4(vec2<u32>(u_input.a.x, u_input.a.x), vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.b.x)))), !var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x) <= arg_0.x);
    return select(!select(var_2.a.zy, !var_4.xy, !(!var_4.xz)), vec2<bool>(false, var_0.x), vec2<bool>(arg_0.x != arg_0.x, any(select(vec2<bool>(true, var_2.a.x), vec2<bool>(var_3.x, false), vec2<bool>(var_4.x, true)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = -_wgslsmith_add_vec2_i32(select(select(abs(u_input.d.zw), -vec2<i32>(14294i, u_input.c.x), false), countOneBits(vec2<i32>(u_input.d.x, 7128i)), select(func_2(vec3<f32>(261f, 126f, -504f)), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.d.zx);
    let var_1 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(!select(false, true, true), var_0.x < u_input.c.x, true), select(vec3<bool>(select(true, false, false), u_input.d.x >= 23257i, func_4(vec2<u32>(arg_1, u_input.a.x), vec4<i32>(u_input.b.x, u_input.d.x, var_0.x, var_0.x))), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)))));
    var var_2 = func_4(select(vec2<u32>(~select(u_input.a.x, u_input.a.x, var_1.a.x), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_1), countOneBits(u_input.a.zy), vec2<u32>(arg_1, 52305u) ^ u_input.a.zy), _wgslsmith_div_vec2_u32(u_input.a.zy, ~vec2<u32>(1u, arg_1))), (abs(u_input.c.x) ^ ~0i) == _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, u_input.b.x, 21382i, u_input.d.x), -vec4<i32>(-1i, -2147483647i, var_0.x, var_0.x))), u_input.d);
    var_2 = all(var_1.a.xy) & var_1.a.x;
    let var_3 = vec4<i32>(2147483647i, 943i | _wgslsmith_add_i32(u_input.d.x, -10033i), -(~(~93950i)), -14995i);
    return Struct_1(select(vec3<bool>(true, var_1.a.x || true, var_1.a.x), vec3<bool>(true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, _wgslsmith_f_op_f32(f32(-1f) * -1096f)))), _wgslsmith_div_u32(~u_input.a.x, firstTrailingBit(u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, -520f, -819f) - vec3<f32>(-439f, 946f, 245f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-397f, 1076f, -334f)))))))));
    let var_2 = vec4<i32>(25761i, u_input.b.x, _wgslsmith_div_i32(-2147483647i, 2147483647i), ~1i);
    var_0 = Struct_1(vec3<bool>(true, all(vec3<bool>(true, var_0.a.x, var_0.a.x)) || !all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), func_4(vec2<u32>(~u_input.a.x, u_input.a.x), -_wgslsmith_mod_vec4_i32(var_2, u_input.d))));
    let var_3 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(4294967295u, 1u, 7847u, 22917u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), select(vec4<u32>(u_input.a.x, 31288u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true))), ~(~vec4<u32>(66748u, 1u, 79040u, 38323u)), ~vec4<u32>(u_input.a.x, ~91034u, abs(32643u), u_input.a.x));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1285f, -655f, var_1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(187f, var_1.x, -684f) - vec3<f32>(-248f, var_1.x, -405f))))));
    let var_4 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1568f);
}

