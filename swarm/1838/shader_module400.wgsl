struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_4,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(vec3<i32>(14779i, -1i, 2147483647i)), vec4<f32>(417f, -549f, -660f, -413f), Struct_4(Struct_1(vec2<u32>(4294967295u, 29054u)), 0u, vec3<f32>(-174f, 126f, -207f)), Struct_1(vec2<u32>(46919u, 0u)), Struct_3(vec3<i32>(-1i, 2147483647i, -26915i), Struct_2(vec3<i32>(-5822i, -1i, 2147483647i))));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = vec2<i32>(0i, -global0.a.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c.x))))));
    var var_2 = global0.b.zwz;
    let var_3 = all(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))));
    let var_4 = Struct_4(Struct_1(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c.b, global0.d.a.x), global0.d.a))), ~select(4294967295u, global0.d.a.x, !var_3), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, var_2.x, arg_3), vec3<f32>(771f, -817f, -1018f)))))))));
    return 34277u;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = Struct_5(global0.e.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(556f, global0.b.x, -1639f, 341f) * vec4<f32>(492f, global0.b.x, global0.b.x, global0.c.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1866f, global0.b.x, 300f, global0.b.x)))))), global0.c, Struct_1(global0.c.a.a), global0.e);
    let var_0 = vec2<bool>(true, (~(~arg_0.a.x) > arg_0.a.x) | any(vec4<bool>(true, true, true, true)));
    var var_1 = global0.c;
    var var_2 = Struct_5(arg_0, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.c.x)), -834f, global0.c.c.x, _wgslsmith_f_op_f32(-global0.b.x)))))), Struct_4(global0.c.a, global0.c.b ^ func_3(min(-2147483647i, u_input.a.x), _wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(-105f, -1394f, var_1.c.x, -761f)), global0.e.b, 483f), _wgslsmith_f_op_vec3_f32(-global0.c.c)), Struct_1(_wgslsmith_sub_vec2_u32(global0.c.a.a, _wgslsmith_add_vec2_u32(vec2<u32>(28999u, global0.c.b), vec2<u32>(1u, 35957u)) << (var_1.a.a % vec2<u32>(32u)))), global0.e);
    let var_3 = var_0.x;
    return var_1.a;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = global0.c.a;
    global0 = Struct_5(Struct_2(~firstLeadingBit(-vec3<i32>(arg_2, 1i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1990f, global0.c.c.x, _wgslsmith_f_op_f32(global0.c.c.x - _wgslsmith_f_op_f32(floor(global0.c.c.x))), global0.b.x)), global0.c, func_2(global0.a), arg_0);
    var var_1 = (_wgslsmith_add_i32(8721i, -_wgslsmith_sub_i32(-2147483647i, global0.a.a.x)) ^ u_input.a.x) | _wgslsmith_div_i32(~arg_2, ~(~(~(-2147483647i))));
    let var_2 = _wgslsmith_mult_i32(i32(-1i) * -global0.a.a.x, 47426i);
    global0 = Struct_5(Struct_2(global0.a.a), global0.b, Struct_4(func_2(arg_0.b), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.c)))), Struct_1(~vec2<u32>(~var_0.a.x, 0u)), Struct_3(vec3<i32>(1i, ~1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.a.a.x), vec2<i32>(arg_2, arg_0.b.a.x))), global0.a));
    return Struct_2(vec3<i32>(abs(i32(-1i) * -1i) ^ u_input.a.x, -(i32(-1i) * -31885i), reverseBits(arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(827f, global0.b.x, global0.b.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, 542f, global0.c.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -681f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(318f + global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) + _wgslsmith_f_op_f32(max(global0.b.x, -2531f))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.c * vec3<f32>(global0.c.c.x, 116f, 1097f))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(655f, 125f)))), global0.b.x, _wgslsmith_f_op_f32(-1047f * _wgslsmith_f_op_f32(-1223f - global0.c.c.x))))));
    var var_1 = Struct_5(global0.e.b, _wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(953f, global0.b.x, -2556f, global0.b.x)) + global0.b), any(vec4<bool>(true, true, false, true)))), global0.c, global0.c.a, Struct_3(abs(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), -1766i, global0.a.a.x)), Struct_2(-(global0.a.a | vec3<i32>(-3725i, global0.a.a.x, -45506i)))));
    let var_2 = func_1(global0.e, reverseBits(global0.d.a.x), var_1.e.b.a.x);
    var_1 = Struct_5(func_1(var_1.e, countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.c.a.a, var_1.c.a.a), ~var_1.d.a)), -1i), global0.b, global0.c, global0.d, Struct_3(_wgslsmith_mult_vec3_i32(var_2.a, ~global0.a.a), func_1(Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.a.x, -22944i, -44558i), vec3<i32>(var_2.a.x, 1i, u_input.a.x), u_input.a.xzz), func_1(Struct_3(u_input.a.wyx, global0.e.b), 1u, global0.a.a.x)), ~(~4294967295u), global0.e.a.x)));
    let var_3 = false;
    var_1 = Struct_5(func_1(var_1.e, _wgslsmith_mult_u32(global0.c.b, var_1.d.a.x), u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(151f, _wgslsmith_f_op_f32(select(-540f, -1210f, false))), _wgslsmith_f_op_f32(abs(-212f)), 820f, var_0.x)), Struct_4(func_2(Struct_2(~vec3<i32>(1i, 2147483647i, -2147483647i))), min(1u, firstLeadingBit(var_1.d.a.x) << (~global0.c.b % 32u)), var_1.c.c), Struct_1(vec2<u32>(global0.d.a.x & global0.c.b, ~86605u)), Struct_3(~var_1.e.a, Struct_2(~(-u_input.a.wxy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(abs(-1232i), -(~(-2147483647i)) | -_wgslsmith_sub_i32(var_1.a.a.x, var_1.e.a.x), _wgslsmith_dot_vec2_i32(countOneBits(var_2.a.xy), min(global0.a.a.zx, var_2.a.yy)) >> (~13685u % 32u)), _wgslsmith_f_op_vec3_f32(trunc(var_1.c.c)), countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.e.a.x, global0.a.a.x, global0.a.a.x, -51920i), u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.a.x, u_input.a.x, -11288i, -7686i), vec4<i32>(26133i, global0.e.a.x, 13518i, u_input.a.x)))));
}

