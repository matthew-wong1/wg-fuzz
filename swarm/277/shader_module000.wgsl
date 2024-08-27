struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(793f, vec4<f32>(-705f, -190f, 792f, -1434f), false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = false;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - global0.a) * global0.a), _wgslsmith_f_op_f32(f32(-1f) * -188f), !var_0 | !var_0))), _wgslsmith_f_op_vec4_f32(-global0.b), u_input.a <= ~50545u);
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.b.x), global0.b, true);
    var var_1 = 20707i;
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(global0.b)), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(1155f, -101f), _wgslsmith_f_op_f32(-1420f * -134f), 290f))), true);
    return vec4<f32>(_wgslsmith_f_op_f32(1197f - global0.b.x), _wgslsmith_f_op_f32(-307f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)) - -780f)))), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(floor(1f))), -287f);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.b.x)))), global0.b, !global0.c);
    global0 = var_0;
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3());
    global0 = Struct_1(_wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))) - _wgslsmith_f_op_f32(f32(-1f) * -447f))), vec4<f32>(_wgslsmith_f_op_f32(min(209f, var_1.a)), var_1.a, global0.a, -1000f), var_1.c);
    return arg_0.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = vec3<i32>(-13196i, -2147483647i, ~(~func_2(vec3<i32>(2020i, 2147483647i, -1i))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -210f))))), _wgslsmith_f_op_vec4_f32(global0.b + global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918f - 781f) - _wgslsmith_f_op_f32(select(arg_0.x, -1238f, global0.c)))) <= 1307f);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 987f)), _wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1473f, arg_0.x))), 252f), vec3<f32>(-614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-905f * arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1390f - arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(822f)) - _wgslsmith_f_op_f32(var_1.b.x + arg_0.x)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(589f + 1451f), 979f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-816f, var_2.x))))), arg_0));
    var var_4 = var_1.a;
    return vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(abs(u_input.a), ~arg_1.x), arg_1), ~_wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_clamp_u32(0u, 0u, u_input.a), max(_wgslsmith_mult_u32(u_input.a, 73935u), firstLeadingBit(u_input.a))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(613f, -602f)), -192f)))), _wgslsmith_f_op_f32(1021f * arg_0.x), _wgslsmith_f_op_f32(-415f - -924f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.x)))));
    let var_1 = vec2<i32>(~_wgslsmith_div_i32(firstLeadingBit(-14404i) >> ((317u << (arg_3.x % 32u)) % 32u), ~(-13867i)), 1i);
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -442f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.zx)) - _wgslsmith_f_op_vec2_f32(-arg_2.b.yw)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1701f))))));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(213f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(-763f, global0.b.x, global0.a, -1024f), all(vec4<bool>(global0.c, true, global0.c, global0.c)), Struct_1(-302f, global0.b, true), func_1(vec2<f32>(global0.a, 1077f), vec2<u32>(1u, 47023u))))))), global0.c);
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(961f - global0.b.x), _wgslsmith_f_op_f32(global0.a * global0.a), -398f) - global0.b)), false);
    let var_0 = Struct_1(-320f, _wgslsmith_f_op_vec4_f32(trunc(global0.b)), all(vec4<bool>(true, global0.c, false, (global0.a <= global0.b.x) != (global0.c | true))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.b.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec4_f32(func_3()).x, 390f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-797f - _wgslsmith_f_op_f32(select(global0.a, -901f, true))), var_0.a))), 115775u != _wgslsmith_mod_u32(u_input.a, ~_wgslsmith_sub_u32(33880u, 29118u)));
    let var_2 = var_1;
    let var_3 = -1470f;
    global0 = Struct_1(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(-var_0.b), u_input.a != u_input.a);
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, 15544i), 1i, countOneBits(24020i)), _wgslsmith_sub_vec3_i32(vec3<i32>(30113i, -29546i, -2177i), abs(vec3<i32>(-1i, 1i, -15044i)))), ~(-vec3<i32>(0i, 2147483647i, 0i))), -1i, abs(reverseBits(~vec4<i32>(1i, 1i, 1i, 1i))), abs(~vec2<u32>(abs(96361u), 11992u)));
}

