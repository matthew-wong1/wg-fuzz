struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(791f, 1000f, -272f);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = 1u;
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -474f, 2431f) - vec3<f32>(-1228f, global0.x, global0.x))))))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1138f - _wgslsmith_f_op_f32(191f - global0.x))), _wgslsmith_f_op_f32(select(-1856f, -1110f, any(vec3<bool>(global1.a, global1.a, true)) && global1.a))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, -190f)), 1827f, -1250f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1912f, global0.x, global0.x), vec3<f32>(-1015f, global0.x, -1000f)))), false)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -2094f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x))) * vec3<f32>(_wgslsmith_f_op_f32(-1326f - global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, 999f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -970f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-333f + global0.x))), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) - global0.x), 2212f))));
    var var_1 = Struct_1(global1.a, firstLeadingBit(global1.b));
    return var_1.a;
}

fn func_2() -> f32 {
    var var_0 = ~select(_wgslsmith_add_vec3_i32(max(vec3<i32>(global1.b, global1.b, global1.b), firstTrailingBit(vec3<i32>(global1.b, u_input.b, 41572i))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b, global1.b, 13630i), vec3<i32>(u_input.b, global1.b, global1.b), vec3<i32>(0i, global1.b, 33145i))), vec3<i32>(~(-u_input.b), ~(-19176i), _wgslsmith_mod_i32(-59835i & global1.b, 1i)), !select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(true, true, false), func_3()));
    global1 = Struct_1(false, var_0.x);
    var var_1 = Struct_1(func_3(), global1.b);
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.a, u_input.c), _wgslsmith_sub_u32(u_input.a | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.c, u_input.a)))), u_input.a);
    var var_3 = Struct_1(select(false, any(!(!vec4<bool>(var_1.a, true, var_1.a, var_1.a))), any(vec4<bool>(!global1.a, true, true, var_1.a))), reverseBits(-(~(var_0.x ^ 0i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(337f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(150f, global0.x)), all(vec4<bool>(global1.a, true, var_3.a, true))))));
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = Struct_1(!(global1.a && (true != (u_input.b >= 2147483647i))), -2147483647i);
    var var_0 = global0.x;
    let var_1 = global0.x;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.x)))), 670f, -1510f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2()), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1426f, 240f)))));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(true, global1.b);
    let var_1 = !(_wgslsmith_add_i32(global1.b, 2147483647i) != ~(~global1.b << (4294967295u % 32u)));
    var var_2 = abs(vec4<i32>(arg_2.x & ~var_0.b, -37803i, 2147483647i, arg_2.x));
    global1 = Struct_1(true, _wgslsmith_dot_vec3_i32(reverseBits(~var_2.wxw), vec3<i32>(-1i, _wgslsmith_add_i32(0i, arg_1.b), firstTrailingBit(var_2.x))));
    var_0 = arg_1;
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(select((select(arg_3.b, 40187i, arg_2.a) >= 88972i) == func_3(), true, false), arg_2, vec2<i32>(_wgslsmith_mult_i32(arg_3.b, countOneBits(-u_input.b)), abs(reverseBits(0i))), vec4<bool>(false, false, arg_3.a || !(!arg_3.a), u_input.a <= 84517u));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1209f) + global0.x))), global0.x)));
    var var_1 = Struct_1(global1.a, -_wgslsmith_sub_i32(_wgslsmith_add_i32(-27124i, u_input.b), abs(1i)));
    var var_2 = -1555f;
    var var_3 = func_5(_wgslsmith_add_u32(~0u, u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -528f, global0.x)) - vec3<f32>(142f, -1525f, global0.x)))), func_4(any(vec4<bool>(all(vec3<bool>(var_1.a, false, true)), func_1(Struct_1(global1.a, 1i)), u_input.c < u_input.c, any(vec3<bool>(global1.a, var_1.a, var_1.a)))), Struct_1(true, ~u_input.b << (~u_input.a % 32u)), ~firstTrailingBit(-vec2<i32>(-69234i, global1.b)), select(select(select(vec4<bool>(global1.a, var_1.a, true, false), vec4<bool>(var_1.a, var_1.a, var_1.a, global1.a), vec4<bool>(var_1.a, true, true, false)), select(vec4<bool>(false, var_1.a, false, false), vec4<bool>(global1.a, true, var_1.a, global1.a), global1.a), select(vec4<bool>(global1.a, false, false, false), vec4<bool>(false, var_1.a, false, global1.a), vec4<bool>(false, var_1.a, var_1.a, false))), select(select(vec4<bool>(false, global1.a, true, var_1.a), vec4<bool>(global1.a, global1.a, true, var_1.a), false), !vec4<bool>(global1.a, var_1.a, global1.a, false), select(vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(true, global1.a, var_1.a, global1.a), var_1.a)), func_1(Struct_1(true, -24556i)))), func_4(!any(!vec3<bool>(false, var_1.a, global1.a)), func_4(2147483647i == u_input.b, func_4(false | global1.a, Struct_1(false, var_1.b), ~vec2<i32>(-31005i, global1.b), vec4<bool>(global1.a, global1.a, true, global1.a)), ~firstTrailingBit(vec2<i32>(-13067i, var_1.b)), select(vec4<bool>(true, global1.a, global1.a, var_1.a), select(vec4<bool>(var_1.a, global1.a, false, false), vec4<bool>(false, false, true, false), vec4<bool>(var_1.a, var_1.a, false, false)), vec4<bool>(false, false, false, true))), -select(vec2<i32>(var_1.b, -2147483647i), max(vec2<i32>(global1.b, 4834i), vec2<i32>(1i, u_input.b)), vec2<bool>(false, global1.a)), !(!select(vec4<bool>(var_1.a, true, false, global1.a), vec4<bool>(false, false, var_1.a, var_1.a), vec4<bool>(var_1.a, global1.a, var_1.a, var_1.a)))));
    var_1 = Struct_1(var_3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-6915i, u_input.b, -24443i, -46937i), vec4<i32>(var_1.b, 2861i, var_1.b, max(_wgslsmith_div_i32(2147483647i, -2147483647i), u_input.b))));
    var var_4 = _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-58437i, var_1.b << (9116u % 32u)), min(select(vec2<i32>(-5632i, 2147483647i), vec2<i32>(var_3.b, 2147483647i), vec2<bool>(global1.a, true)), vec2<i32>(0i, 1i))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(5889i, -1i, 4041i), ~vec3<i32>(var_1.b, 1i, 1i), firstLeadingBit(vec3<i32>(0i, var_3.b, -1i))), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_1.b, u_input.b, 0i), -vec3<i32>(global1.b, var_1.b, 36351i))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, global1.b, 56719i, var_1.b), vec4<i32>(-1i, var_3.b, 31591i, 0i)), -var_1.b, _wgslsmith_div_i32(global1.b << (u_input.a % 32u), -global1.b))));
    let var_5 = func_5(~u_input.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(619f, global0.x)), global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f + var_0.x))))), Struct_1((_wgslsmith_sub_i32(global1.b, var_4.x) | countOneBits(1i)) == max(i32(-1i) * -2147483647i, var_4.x), global1.b), Struct_1(!(!(!global1.a)), u_input.b));
    var var_6 = !(!(!select(!vec3<bool>(var_1.a, false, var_5.a), vec3<bool>(var_1.a, false, var_5.a), select(vec3<bool>(var_1.a, var_5.a, true), vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(true, var_3.a, global1.a)))));
    let var_7 = ~_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(8302i, var_4.x, 2147483647i, -25303i)), ~vec4<i32>(-16557i >> (0u % 32u), _wgslsmith_div_i32(-2147483647i, var_4.x), var_4.x, min(var_3.b, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), 677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 2447f) - -627f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-406f + 608f), _wgslsmith_f_op_f32(trunc(global0.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 360f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, var_0.x)))) - var_0));
}

