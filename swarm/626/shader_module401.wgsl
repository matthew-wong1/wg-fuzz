struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~u_input.d & ~u_input.d, arg_0) << (~(~(~arg_0.x)) % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) + -569f);
    let var_2 = vec3<i32>(-9835i, 2147483647i, -16089i);
    global0 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-global0.a.x)) + -352f)));
    return vec3<bool>(true, arg_2.x, arg_2.x);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = func_2(u_input.d, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(global0.a, global0.a)))))), vec4<bool>(true | (_wgslsmith_add_i32(-33225i, u_input.b) >= arg_0), 1000f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1005f))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !any(vec2<bool>(true, true))));
    var var_1 = true | (38311i != abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, 0i, u_input.a.x), max(-2147483647i, -15636i))));
    let var_2 = countOneBits(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-1i, 0i)) ^ _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(u_input.b, 28623i)), -min(u_input.a, vec2<i32>(0i, -2147483647i)))) << (u_input.d % vec2<u32>(32u));
    var_1 = var_0.x;
    var var_3 = Struct_1(global0.a);
    return vec4<bool>(var_0.x | (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.d.x, u_input.c, u_input.c) | vec3<u32>(0u, u_input.d.x, 67984u)) > u_input.c), var_0.x, select(true, var_0.x, !((true && var_0.x) | all(var_0.xx))), select(true, _wgslsmith_f_op_f32(-global0.a.x) <= 398f, var_0.x));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = vec3<u32>(~_wgslsmith_div_u32(firstTrailingBit(4294967295u) | 5096u, u_input.d.x), u_input.c, arg_0);
    var var_1 = ~reverseBits(_wgslsmith_add_i32(1i, abs(~1i)));
    var_1 = 8257i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-678f, -647f, 613f, 850f))))))));
    var_1 = abs(-1i);
    return _wgslsmith_f_op_vec4_f32(trunc(var_2.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_0.x, select(vec3<bool>(true, false, !arg_1), vec3<bool>(true, arg_1 & arg_1, true), select(func_2(vec2<u32>(arg_0.x, arg_0.x), Struct_1(vec4<f32>(-1987f, 172f, 827f, 437f)), vec4<bool>(false, arg_1, arg_1, arg_1)), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, false, arg_1)), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, true, true), true))), select(func_3(u_input.b | -2147483647i), !vec4<bool>(arg_1, true, arg_1, arg_1), !vec4<bool>(true, arg_1, arg_1, arg_1)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, 175f, var_0.x, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -454f, 869f, var_0.x))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(var_1.a, vec4<f32>(var_0.x, var_0.x, -1082f, 1513f)))))))));
    var var_2 = i32(-1i) * -56056i;
    var var_3 = vec3<bool>(all(vec3<bool>(true, func_2(_wgslsmith_sub_vec2_u32(arg_0.zy, vec2<u32>(arg_0.x, 20898u)), Struct_1(vec4<f32>(var_0.x, var_0.x, var_1.a.x, var_1.a.x)), vec4<bool>(arg_1, false, false, arg_1)).x, !arg_1 | arg_1)), true, arg_1);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(u_input.d.x, 591u, u_input.d.x), false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f * -1645f));
    let var_2 = 17678i;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.a))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-236f, global0.a.x, var_0.a.x, -2009f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 749f, 533f, -1885f))))))));
    let var_3 = !(func_2(u_input.d, Struct_1(var_0.a), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, false), func_3(27813i).x)).x || (false | any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, -1i), ~u_input.a, vec2<f32>(1118f, _wgslsmith_f_op_f32(abs(var_0.a.x))));
}

