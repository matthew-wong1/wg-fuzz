struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(204f, -1565f, 715f, -1090f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    var var_0 = ~abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, 34961i), -1i), u_input.b.x, -13115i, -abs(5580i)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(global0.x * 505f));
    var var_1 = _wgslsmith_f_op_f32(326f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(227f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, global0.x)), 882f, !any(vec3<bool>(true, false, true))))));
    let var_2 = Struct_1(~((vec2<i32>(-8328i, var_0.x) >> (arg_0.wz % vec2<u32>(32u))) | u_input.b.xy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, _wgslsmith_f_op_f32(-global0.x), global0.x, global0.x))), ~u_input.b.x);
    var_0 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(_wgslsmith_add_i32(var_0.x, var_0.x), 31241i, var_0.x, -21179i)), firstLeadingBit(_wgslsmith_sub_vec4_i32(abs(select(vec4<i32>(96694i, var_2.c, var_2.a.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, 423i), vec4<bool>(true, true, true, false))), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.x, 26436i, -1i, 2147483647i), vec4<i32>(var_0.x, var_0.x, u_input.b.x, var_0.x)))), _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(var_0.x), 22678i, _wgslsmith_dot_vec2_i32(var_2.a >> (arg_3.zw % vec2<u32>(32u)), vec2<i32>(-3116i, -2147483647i)), _wgslsmith_clamp_i32(23348i, ~var_2.c, -43277i)), vec4<i32>(var_2.a.x, u_input.b.x, ~_wgslsmith_mult_i32(-49687i, 9265i), -2147483647i)));
    return -(~0i);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> vec3<f32> {
    var var_0 = !arg_0.x;
    var var_1 = _wgslsmith_div_vec2_f32(global0.wy, vec2<f32>(_wgslsmith_f_op_f32(select(570f, _wgslsmith_f_op_f32(f32(-1f) * -967f), arg_0.x)), -428f));
    var var_2 = vec3<bool>(false, true, arg_0.x);
    var var_3 = u_input.b.x;
    let var_4 = Struct_1(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, -u_input.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -560f)), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1965f, var_1.x)) + _wgslsmith_f_op_f32(606f * global0.x)))), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), u_input.b.x, func_3(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), u_input.a, u_input.a, vec4<u32>(u_input.a, u_input.a, arg_1, u_input.a))), vec3<i32>(1i, _wgslsmith_mult_i32(-56448i, u_input.b.x), 0i))));
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-2254f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * -2274f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.b.x)) + _wgslsmith_f_op_f32(round(global0.x)))))));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(2336f, -213f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)) * 918f), global0.x)));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), countOneBits(u_input.a))))), Struct_1(u_input.b.xx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1251f, global0.x, 1239f, 507f) * vec4<f32>(global0.x, 572f, global0.x, global0.x)) - vec4<f32>(-104f, 1000f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, global0.x, 454f, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1109f, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), -86361i));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(3066f, var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f) + _wgslsmith_f_op_f32(362f * -1211f))), var_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-334f, global0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.b.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(2905f)), -1037f, _wgslsmith_f_op_f32(round(global0.x))))));
    let var_1 = Struct_2(var_0.b.b.wyw, Struct_1(max(var_0.b.a, vec2<i32>(-34219i, ~var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(-var_0.b.b), -u_input.b.x));
    let var_2 = Struct_2(global0.yyz, var_0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(865f, var_2.b.b.x) + _wgslsmith_div_f32(1317f, _wgslsmith_f_op_f32(trunc(-209f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(global0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_f32(478f - _wgslsmith_f_op_f32(max(global0.x, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1345f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1030f - 566f) + global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1377f, global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(global0.x > global0.x, true, any(vec4<bool>(true, true, true, false)), true), ~_wgslsmith_mod_u32(u_input.a, 0u))).x, -1573f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1697f, 352f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 662f) * _wgslsmith_f_op_f32(f32(-1f) * -310f))), _wgslsmith_f_op_f32(-global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(0u)), firstLeadingBit(-(i32(-1i) * -4936i)), ~_wgslsmith_div_vec3_i32(select(u_input.b, select(u_input.b, u_input.b, vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), firstLeadingBit(u_input.b)), min(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 96868u) & vec2<u32>(u_input.a, 1u)), 4294967295u, u_input.a), ~vec3<u32>(~u_input.a, abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(45608u, u_input.a, u_input.a)))));
}

