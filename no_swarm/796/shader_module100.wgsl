struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    global0 = true && !(~firstTrailingBit(5399i) == countOneBits(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)));
    var var_0 = arg_1;
    return arg_0;
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global0 = true;
    global0 = all(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(false, true, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, true, false, true))), any(vec2<bool>(false, true))), true));
    var var_0 = Struct_1(reverseBits(arg_0.a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.b, _wgslsmith_div_vec2_f32(arg_0.a.b, _wgslsmith_f_op_vec2_f32(arg_0.a.b + vec2<f32>(arg_0.a.b.x, -516f))), vec2<bool>(all(vec2<bool>(true, false)), true)))), min(0u, ~_wgslsmith_dot_vec2_u32(select(arg_0.a.a.xy, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false)), abs(vec2<u32>(arg_0.a.c, arg_0.a.a.x)))));
    var var_1 = any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = all(vec2<bool>(all(vec3<bool>(true, true, true)), true));
    return vec4<u32>(_wgslsmith_sub_u32(26078u, var_0.c) & 1u, arg_0.a.c, ~(arg_0.a.c | min(arg_0.a.a.x, 0u | arg_0.a.c)), abs(~var_0.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = Struct_1(firstLeadingBit(func_3(func_2(Struct_2(Struct_1(arg_0.a.a, vec2<f32>(-123f, 536f), 4294967295u)), arg_0, vec2<bool>(true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.b * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.x, -467f) + arg_0.a.b), _wgslsmith_f_op_vec2_f32(arg_0.a.b - arg_0.a.b), true))), _wgslsmith_f_op_vec2_f32(-arg_0.a.b)), arg_0.a.c);
    global0 = ~min(_wgslsmith_sub_u32(abs(arg_0.a.c), ~arg_1), arg_0.a.c) >= min(72005u, 0u);
    let var_1 = ~arg_0.a.a.wyx;
    var var_2 = 1340f;
    let var_3 = abs(_wgslsmith_clamp_vec2_i32(u_input.a, abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -1i), select(vec2<i32>(u_input.a.x, 0i), u_input.a, vec2<bool>(false, true)))), ~u_input.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -881f))), _wgslsmith_f_op_f32(trunc(-548f))))) + _wgslsmith_f_op_f32(min(arg_2, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2023f, -2007f, 1464f, -1057f)) * vec4<f32>(1691f, -193f, -487f, 1235f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, 367f, 983f, -1685f))) - vec4<f32>(_wgslsmith_f_op_f32(-466f - 708f), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1u), vec2<f32>(-1707f, -165f), 17675u)), 4294967295u, -2085f, u_input.a.x)), -1558f, -1695f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 114f, -3217f, 1004f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2168f, -390f, -298f, -349f)))) + vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = Struct_1(~(~vec4<u32>(1u, 12177u >> (1u % 32u), 1u, 1u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 206f), vec2<f32>(1000f, var_0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1037f, var_0.x), var_0.xw, true)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1544f, var_0.x)), _wgslsmith_f_op_vec2_f32(-var_0.yy))), false))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(65536u, 1u)), 22277u, 1u), vec3<u32>(109362u, ~27926u >> (1u % 32u), firstLeadingBit(~19509u))));
    global0 = any(vec4<bool>(false, !any(vec2<bool>(false, false)), (abs(var_1.a.x) | var_1.c) <= func_2(Struct_2(Struct_1(vec4<u32>(var_1.c, var_1.c, 0u, var_1.c), vec2<f32>(342f, var_0.x), 73923u)), func_2(Struct_2(var_1), Struct_2(Struct_1(vec4<u32>(var_1.c, 31436u, 0u, var_1.c), vec2<f32>(var_1.b.x, var_0.x), 1u)), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))).a.c, false));
    var var_2 = func_2(Struct_2(var_1), Struct_2(Struct_1(~max(vec4<u32>(var_1.c, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(var_1.a.x, var_1.a.x, 0u, 4911u)), func_2(Struct_2(var_1), Struct_2(Struct_1(var_1.a, vec2<f32>(var_1.b.x, -1486f), var_1.c)), vec2<bool>(true, true)).a.b, 1u >> (~var_1.c % 32u))), vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)))).a;
    let var_3 = max(abs(u_input.a), countOneBits(-_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(11030i, -16236i), vec2<i32>(0i, -21120i), u_input.a), select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, false))));
    var_2 = var_1;
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) * 532f))));
}

