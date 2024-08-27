struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.a;
    let var_1 = u_input.c.yx;
    var_0 = _wgslsmith_div_i32(min(21806i, countOneBits(u_input.b.x)) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), min(u_input.b.yy, u_input.b.yx)), u_input.a) << (u_input.d.x % 32u);
    var var_2 = Struct_1(arg_3.a, true, u_input.d);
    var_2 = Struct_1(arg_1.a, arg_3.b, _wgslsmith_add_vec3_u32(u_input.d ^ _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 35689u), reverseBits(vec3<u32>(var_2.c.x, var_1.x, arg_0.c.x))), ~arg_3.c));
    return _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -320f));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, -428f, 1412f) * vec4<f32>(878f, -451f, -1426f, 164f)), true, u_input.c), Struct_1(vec4<f32>(-1820f, 525f, -523f, 1428f), true, vec3<u32>(4294967295u, 40677u, 1u)), true, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-938f, 975f, 137f, 855f) + vec4<f32>(513f, 406f, -210f, -271f)), 4294967295u > u_input.c.x, u_input.c)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-445f, _wgslsmith_div_f32(-670f, -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-979f))))));
    var var_1 = -23553i;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, -813f, var_0, var_0))))) - vec4<f32>(-420f, _wgslsmith_f_op_f32(f32(-1f) * -339f), var_0, -1567f))), true, u_input.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = func_2();
    let var_1 = var_0;
    var var_2 = func_2();
    var_2 = func_2();
    var_2 = arg_3;
    return 43842u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec2_u32(~u_input.c.xz, vec2<u32>(~u_input.d.x, _wgslsmith_mod_u32(4294967295u, u_input.c.x))), vec2<i32>(-5438i, 21164i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), false, vec3<u32>(abs(func_1(vec3<bool>(false, true, false), vec3<u32>(0u, u_input.c.x, u_input.c.x), u_input.d.x, Struct_1(vec4<f32>(-361f, -677f, -328f, 531f), false, vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x)))), u_input.d.x, 0u))));
    var var_1 = abs(u_input.d.x);
    var var_2 = !vec2<bool>(true, !((u_input.a ^ -2147483647i) < max(u_input.b.x, 33752i)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1196f + _wgslsmith_f_op_f32(var_0 - var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(func_4(select(u_input.c.yx, ~abs(vec2<u32>(1u, 11809u)), select(!vec2<bool>(var_2.x, var_2.x), !vec2<bool>(var_2.x, var_2.x), select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), var_2.x))), vec2<i32>(i32(-1i) * -45859i, select(-u_input.b.x, -35938i, true)), func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f))) + _wgslsmith_f_op_f32(-var_0)));
    var var_4 = _wgslsmith_add_vec4_i32(-vec4<i32>(firstLeadingBit(~u_input.a), min(firstLeadingBit(u_input.b.x), 2147483647i), -1i, -7506i), ~vec4<i32>((0i >> (u_input.c.x % 32u)) ^ (i32(-1i) * -7817i), max(~u_input.b.x, select(-6803i, -21066i, var_2.x)), u_input.b.x, -2147483647i));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1054f, _wgslsmith_div_f32(var_3.x, var_0))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(var_3.x + -2146f), var_3.x));
    let var_5 = -10618i;
    var_1 = ~_wgslsmith_clamp_u32(4294967295u, countOneBits(~0u), ~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(var_5, u_input.a), i32(-1i) * -(~(-3412i)), -(var_5 & -1i), 14735i), 0u, u_input.d.x);
}

