struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> bool {
    var var_0 = 1u;
    var var_1 = arg_2.x;
    let var_2 = Struct_1(16701u | _wgslsmith_mult_u32(min(global0.a.a, u_input.d.x) << (arg_3.x % 32u), ~0u), u_input.d, _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(global0.a.c.x, _wgslsmith_f_op_f32(floor(-803f))), arg_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-632f)), global0.a.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - arg_0.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, global0.a.c.x, -2158f, global0.a.c.x)))));
    let var_3 = Struct_3(Struct_2(u_input.d.yzz, min(i32(-1i) * -arg_1.x, firstTrailingBit(-2147483647i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.c.yzw))))), global0.b), var_2, _wgslsmith_dot_vec2_i32(arg_1, arg_1));
    let var_4 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(global0.b ^ -2147483647i, 2147483647i, -1i), abs(vec3<i32>(global0.b, u_input.b, arg_1.x) | (vec3<i32>(var_3.c, var_3.c, u_input.b) ^ vec3<i32>(5312i, 2147483647i, u_input.b))), _wgslsmith_mod_vec3_i32(max(-vec3<i32>(-2147483647i, global0.b, global0.b), vec3<i32>(global0.b, 2147483647i, global0.b)), min(_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_3.c, arg_1.x), vec3<i32>(u_input.b, u_input.b, var_3.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.b, -9617i, 26048i), vec3<i32>(global0.b, arg_1.x, 2147483647i))))) << (firstTrailingBit(~vec3<u32>(reverseBits(global0.a.a), var_3.b.b.x, 1u)) % vec3<u32>(32u));
    return (_wgslsmith_mod_i32(-global0.b, 0i) ^ var_4.x) == ~_wgslsmith_clamp_i32(27288i, global0.b, ~global0.b);
}

fn func_2(arg_0: Struct_5) -> f32 {
    global0 = Struct_4(Struct_1(select(~arg_0.c.a.x, ~0u, _wgslsmith_f_op_f32(-global0.a.c.x) <= 1017f), u_input.d ^ countOneBits(global0.a.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.a.c * global0.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, 403f, arg_0.a.c.x) + global0.a.c), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(953f, arg_0.c.c.x, arg_0.c.c.x, arg_0.a.c.x), global0.a.c))))), u_input.b);
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, _wgslsmith_f_op_f32(-arg_0.c.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1117f), arg_0.c.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.c.x + _wgslsmith_f_op_f32(arg_0.a.c.x + 359f)), _wgslsmith_f_op_f32(327f + _wgslsmith_f_op_f32(-arg_0.a.c.x)), all(vec4<bool>(true, arg_0.b, arg_0.b, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x, 400f), global0.a.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, global0.a.c.x, arg_0.a.c.x, arg_0.a.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2051f, 1508f, -158f, arg_0.a.c.x))))) + global0.a.c));
    global1 = _wgslsmith_f_op_f32(trunc(-232f));
    global0 = Struct_4(global0.a, ~_wgslsmith_div_i32(u_input.b, -4052i << (0u % 32u)));
    let var_1 = !func_3(global0.a, -firstTrailingBit(vec2<i32>(1i, 1i)), vec3<bool>(arg_0.b, arg_0.b, !any(vec4<bool>(false, arg_0.b, true, true))), vec2<u32>(_wgslsmith_mult_u32(arg_0.c.a.x, 4294967295u) | global0.a.b.x, u_input.d.x ^ ~arg_0.c.a.x));
    return _wgslsmith_f_op_f32(ceil(arg_0.c.c.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_5(Struct_2(global0.a.b.wyy, u_input.b, global0.a.c.yxz, -1739i), false, Struct_2(vec3<u32>(arg_1.x, 0u, u_input.c), 4982i, global0.a.c.xyz, 1585i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.c.x))))));
    var var_1 = u_input.d.xy;
    let var_2 = true || select(true, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), all(vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_f_op_f32(sign(-1094f));
    var var_4 = Struct_4(Struct_1(~reverseBits(u_input.a.x ^ 1u), ~vec4<u32>(~global0.a.a, var_1.x, _wgslsmith_mult_u32(26872u, arg_1.x), global0.a.a & var_1.x), global0.a.c), -11841i);
    return ~(~var_1.x) | (_wgslsmith_div_u32(max(var_1.x, arg_1.x) & 0u, ~(var_4.a.a >> (arg_1.x % 32u))) << (u_input.a.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(Struct_1(_wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.d.x, 15493u), u_input.c), u_input.d ^ countOneBits(vec4<u32>(90943u, 77883u, u_input.d.x, global0.a.b.x) >> (vec4<u32>(u_input.a.x, 75129u, global0.a.b.x, global0.a.a) % vec4<u32>(32u))), global0.a.c), 0i);
    global0 = Struct_4(Struct_1(min(func_1(vec3<f32>(1905f, -445f, -1066f), firstLeadingBit(global0.a.b)), ~4294967295u >> (global0.a.a % 32u)), vec4<u32>(min(u_input.a.x, 25332u), global0.a.a, 53956u, global0.a.b.x) >> (vec4<u32>(global0.a.b.x >> (6445u % 32u), global0.a.a, ~4294967295u, ~44716u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.c.x, -1962f, global0.a.c.x, 1623f))))))), (global0.b & ~(~u_input.b)) ^ -(firstLeadingBit(6095i) ^ -u_input.b));
    global0 = Struct_4(Struct_1(u_input.d.x ^ global0.a.a, vec4<u32>(~_wgslsmith_clamp_u32(11212u, global0.a.b.x, 47830u), ~global0.a.b.x, ~global0.a.b.x, global0.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0.a.c))))), 1i);
    global0 = Struct_4(Struct_1((max(u_input.a.x, global0.a.b.x) & ~17370u) << (54344u % 32u), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(0u, 61264u, u_input.c, global0.a.b.x)) | (global0.a.b | global0.a.b), global0.a.b), global0.a.c), ~(~(-30251i)));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-533f * -1303f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1207f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.c.xw), global0.a.c.yw)), vec2<f32>(-399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c.x * 2472f) - _wgslsmith_f_op_f32(global0.a.c.x * global0.a.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c.x * global0.a.c.x) * _wgslsmith_f_op_f32(842f - global0.a.c.x)))), vec2<bool>(true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.a.c.x)))))), var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(120f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.c.x + var_0.x), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(582f, -1468f)), -1015f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.a.c))))));
}

