struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: u32;

var<private> global1: f32 = 760f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_1(-(u_input.a.x & u_input.a.x));
    var var_1 = !(u_input.c.x < 1807u);
    let var_2 = ~vec2<u32>(5761u, arg_1.x);
    global0 = ~33651u;
    let var_3 = vec2<bool>(all(select(!select(vec3<bool>(true, arg_0, false), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, arg_0)), vec3<bool>(true, true, true), !select(true, false, arg_0))), all(vec3<bool>(78543i < _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(0i, u_input.a.x, var_0.a, -2147483647i)), true, all(!vec3<bool>(arg_0, false, false)))));
    return any(var_3);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    global0 = reverseBits(u_input.b);
    let var_0 = ~(~(~u_input.c.x));
    let var_1 = select(vec2<bool>(arg_1.x, true), !select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, any(vec3<bool>(false, arg_1.x, arg_1.x))), arg_1.x), arg_1.x);
    var var_2 = arg_0;
    global0 = (var_0 | ~1u) << (1u % 32u);
    return _wgslsmith_f_op_f32(-1029f - 2180f);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(-14876i), select(vec3<bool>(true, func_3(true, u_input.c.www), true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, any(vec2<bool>(true, true)))))));
    var var_1 = vec3<bool>(any(select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), vec4<bool>(u_input.c.x > u_input.c.x, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !((_wgslsmith_clamp_u32(73282u, 0u, u_input.c.x) | ~31641u) == u_input.c.x), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), u_input.c.yw) <= ~u_input.c.x, select(true, false, false), !all(vec2<bool>(true, false))) != true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -730f)))));
    let var_3 = Struct_1(-1i);
    let var_4 = ~(-2147483647i);
    return -344f;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = u_input.a.zz;
    global0 = _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(~0u, ~arg_0.x, _wgslsmith_div_u32(52722u, 1u), 1u) >> (~abs(vec4<u32>(arg_0.x, 4294967295u, 45682u, arg_0.x)) % vec4<u32>(32u))) << (0u % 32u);
    let var_1 = u_input.c.x;
    global1 = _wgslsmith_f_op_f32(-arg_3);
    return arg_2;
}

fn func_1() -> vec4<f32> {
    global0 = _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~(4294967295u & u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 93426u, 0u), vec4<u32>(u_input.b, 4294967295u, 26755u, 20873u)), 0u)) >> (0u % 32u);
    var var_0 = Struct_1(-_wgslsmith_sub_i32(-(u_input.d.x | -42041i), _wgslsmith_dot_vec2_i32(vec2<i32>(19719i, 21660i), vec2<i32>(-45316i, u_input.a.x)) ^ u_input.a.x));
    global0 = u_input.b;
    let var_1 = func_5(firstTrailingBit(vec2<u32>(85782u, u_input.c.x)), !(!(_wgslsmith_div_u32(u_input.c.x, 0u) >= 1u)), Struct_1(var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) * -332f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.d)) + -1047f)));
    let var_2 = u_input.b;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(128f + 1099f), -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-805f - -416f), _wgslsmith_f_op_f32(step(-1069f, -825f)))))), _wgslsmith_f_op_f32(f32(-1f) * -486f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2665f) - _wgslsmith_f_op_f32(f32(-1f) * -999f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-160f)) - _wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-548f))))) + -1206f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(814f + -611f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(_wgslsmith_mod_u32(u_input.b, 59864u));
    var var_0 = Struct_1(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_add_i32(u_input.d.x, -2147483647i)));
    global0 = 4294967295u;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f)));
}

