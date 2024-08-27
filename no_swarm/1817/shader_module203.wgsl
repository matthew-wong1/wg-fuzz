struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-887f, -2030f, 256f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = -_wgslsmith_div_i32(-1i, -firstLeadingBit(i32(-1i) * -1i));
    let var_1 = arg_1;
    global0 = var_1;
    global0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-404f, 1989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, var_1.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(-938f, 284f, var_1.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a + global0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1414f, 1000f, 960f) - vec3<f32>(global0.a.x, arg_1.a.x, 786f))))));
    global0 = arg_1;
    return firstLeadingBit(u_input.b.x);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(65693u, u_input.a.x), func_3(vec2<bool>(false, true), Struct_1(global0.a)) ^ ~4294967295u), _wgslsmith_mult_u32(reverseBits(max(func_3(vec2<bool>(false, true), Struct_1(vec3<f32>(1000f, global0.a.x, global0.a.x))), 29532u & u_input.a.x)), u_input.a.x), abs(u_input.a.x));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, 337f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(floor(-190f)), false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -712f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    var var_1 = min(~(~vec3<u32>(4294967295u, var_0.x, 63854u) ^ vec3<u32>(var_0.x, var_0.x, 50125u)), ~(~select(vec3<u32>(31871u, var_0.x, 4294967295u), vec3<u32>(12350u, 0u, var_0.x), vec3<bool>(true, true, true)))) << (vec3<u32>(69093u, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u)) | 0u, ~((0u & var_0.x) | reverseBits(var_0.x))) % vec3<u32>(32u));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(global0.a.x, 1093f, 575f))))))));
    return true;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x * 1582f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(988f - -229f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1226f))))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 639f) + global0.a.xy), global0.a.xx, vec2<bool>(false, func_2(373i))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-251f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-704f, global0.a.x) + global0.a.x)))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(316f, _wgslsmith_f_op_f32(ceil(2223f))))), var_1.x, -580f));
    let var_3 = !select(vec4<bool>(true, (1i << (u_input.b.x % 32u)) == _wgslsmith_clamp_i32(1i, -87806i, 930i), all(vec2<bool>(true, true)), !func_2(22636i)), vec4<bool>(false, true || any(vec2<bool>(true, false)), true, true), true);
    let var_4 = true;
    return select(vec2<bool>(func_2(0i), any(vec2<bool>(true, var_4)) && (u_input.b.x < ~u_input.b.x)), vec2<bool>(!var_4, true), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-39650i, 54116i, -1i, -1i), vec4<i32>(16186i, -2147483647i, -12237i, 2147483647i), vec4<bool>(true, var_3.x, var_4, true)), -vec4<i32>(0i, -3870i, -21128i, -2383i)) < -1i);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: bool) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1097f, 519f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1881f - _wgslsmith_f_op_f32(floor(-290f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))))));
    let var_1 = u_input.a.x;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.www - global0.a) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, global0.a.x, global0.a.x), vec3<f32>(arg_0.x, -249f, global0.a.x), vec3<bool>(arg_2, arg_1.x, arg_2))), _wgslsmith_f_op_vec3_f32(-var_0.yzy))) - var_0.yxy));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(arg_0.zxz)))));
    let var_3 = 1u;
    return true;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>) -> bool {
    global0 = Struct_1(global0.a);
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.a + global0.a)))), global0.a)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(trunc(-126f)), -128f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1768f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, -369f, true)))), arg_1)));
    let var_1 = vec2<bool>(false, arg_1.x);
    let var_2 = Struct_1(var_0.a);
    return false;
}

fn func_6(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(select(~abs(vec3<i32>(2147483647i, 1556i, -2147483647i)), -vec3<i32>(i32(-1i) * -72382i, max(14113i, -48831i), 2147483647i), !arg_2.x));
    let var_1 = vec2<f32>(arg_0, global0.a.x);
    var var_2 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(63684i, -2147483647i, var_0.x, var_0.x), vec4<i32>(-1i, var_0.x, 35838i, var_0.x)), vec4<i32>(var_0.x, var_0.x, var_0.x, 52487i)), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_0.x, 46548i, var_0.x, var_0.x)), ~vec4<i32>(var_0.x, 40937i, var_0.x, -3012i))), vec4<i32>(select(-2147483647i, var_0.x << (arg_1.x % 32u), false), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, var_0.x, var_0.x, 28957i)), -vec4<i32>(-50266i, -2147483647i, var_0.x, var_0.x)), _wgslsmith_div_i32(~var_0.x, ~(-27326i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_0.x, var_0.x, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, 2147483647i), vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i)))));
    let var_3 = -1i;
    let var_4 = Struct_1(global0.a);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, _wgslsmith_f_op_f32(step(-170f, 171f)), var_4.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    var var_0 = func_6(_wgslsmith_f_op_f32(global0.a.x - 1102f), ~firstLeadingBit((u_input.b.xy | u_input.b.yy) ^ _wgslsmith_add_vec2_u32(u_input.b.xx, vec2<u32>(4294967295u, u_input.a.x))), vec2<bool>(func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1000f, global0.a.x, global0.a.x) - vec4<f32>(global0.a.x, -485f, global0.a.x, 748f)), func_1(), true), vec3<bool>(true, true, true)), _wgslsmith_clamp_u32(41261u, ~u_input.b.x, u_input.a.x) >= u_input.a.x));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~select(4886u, (1u ^ u_input.b.x) & ~32725u, (var_1 | false) != true), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, var_0.a.x))))), _wgslsmith_mult_u32(1u, 0u), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(513f, -992f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(712f + -371f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, global0.a.x))))));
}

