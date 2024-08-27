struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_2(Struct_1(1i), -1189f, vec4<bool>(true, any(select(global0.c.wy, global0.c.yx, global0.c.xw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(682f, global0.b))) >= -1000f, true), global0.c.x);
    var var_0 = global0.c.zzy;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(362f * global0.b), select(global0.c, select(select(select(vec4<bool>(global0.c.x, false, global0.c.x, var_0.x), global0.c, vec4<bool>(var_0.x, var_0.x, true, true)), !vec4<bool>(var_0.x, global0.c.x, global0.c.x, global0.d), global0.c.x & true), select(global0.c, select(vec4<bool>(var_0.x, false, false, global0.c.x), vec4<bool>(global0.c.x, global0.d, var_0.x, false), var_0.x), false), global0.c), true), !any(select(select(vec4<bool>(var_0.x, false, false, false), global0.c, false), vec4<bool>(true, global0.d, false, false), vec4<bool>(false, true, var_0.x, global0.c.x))));
    global0 = Struct_2(Struct_1(firstLeadingBit(global0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) * -435f), !vec4<bool>(u_input.a >= _wgslsmith_sub_u32(u_input.a, 1094u), reverseBits(global0.a.a) > global0.a.a, any(select(global0.c.yxw, vec3<bool>(false, false, false), global0.c.ywy)), any(global0.c.yyz)), any(vec4<bool>(false, any(select(global0.c.zw, var_0.yx, vec2<bool>(false, false))), u_input.a != ~u_input.a, true)));
    let var_1 = global0.a.a;
    return vec4<bool>(false, var_0.x, var_0.x, false);
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 167f, global0.b)) + vec3<f32>(-781f, -1061f, -754f))))));
    let var_1 = global0.a;
    var var_2 = Struct_2(Struct_1(global0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_div_f32(-476f, _wgslsmith_f_op_f32(trunc(var_0.x))), global0.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -649f)))), func_3(), true);
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(min(var_2.b, -1674f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -1541f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b, 446f, -825f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -260f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -1017f, _wgslsmith_f_op_f32(global0.b - var_2.b)))))));
    var_2 = Struct_2(global0.a, -1871f, global0.c, var_2.d);
    return var_2.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    global0 = Struct_2(global0.a, arg_1, func_2(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.x, ~(-1122i), ~global0.a.a), arg_0)), !global0.d | !global0.c.x);
    global0 = Struct_2(Struct_1(arg_0.x >> ((u_input.a & _wgslsmith_div_u32(10850u, 1u)) % 32u)), -403f, global0.c, !(!(global0.a.a >= arg_0.x)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -118f);
    var var_1 = countOneBits(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11529u, u_input.a, u_input.a), vec3<u32>(179842u, u_input.a, u_input.a)), ~u_input.a), u_input.a), 7082u, ~abs(u_input.a)));
    global0 = Struct_2(Struct_1(17197i), arg_1, !global0.c, false | (var_1.x < _wgslsmith_mod_u32(3319u, _wgslsmith_dot_vec2_u32(var_1.yx, vec2<u32>(var_1.x, 1u)))));
    return Struct_1(_wgslsmith_dot_vec4_i32(select(-(~arg_0), select(reverseBits(arg_0), vec4<i32>(-8770i, -1i, arg_0.x, global0.a.a), all(global0.c.zx)), !func_3()), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, global0.a.a, 9348i, global0.a.a), vec4<i32>(-14862i, arg_0.x, global0.a.a, _wgslsmith_sub_i32(arg_0.x, 3218i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.a, -(~global0.a.a), global0.a.a, 1i), ~vec4<i32>(-39634i, select(global0.a.a, global0.a.a, true), countOneBits(-1i), global0.a.a)), -892f);
    global0 = Struct_2(func_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(5203i, var_0.a), global0.a.a | -2817i), 0i >> (~u_input.a % 32u), 1i, var_0.a), _wgslsmith_f_op_f32(floor(1687f))), _wgslsmith_f_op_f32(trunc(-1230f)), vec4<bool>(!select(true, true, 307f >= global0.b), all(global0.c), !(!any(vec2<bool>(false, global0.d))), false), !global0.c.x);
    var var_1 = Struct_2(func_1(abs(abs(vec4<i32>(global0.a.a, global0.a.a, 2147483647i, -2147483647i))), _wgslsmith_f_op_f32(ceil(2513f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-974f * -1137f)))), select(func_3(), global0.c, all(global0.c)), false);
    var_1 = Struct_2(func_1(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-26346i, var_1.a.a, var_0.a, var_0.a), vec4<i32>(0i, var_0.a, -24060i, -1i)) >> ((vec4<u32>(16409u, u_input.a, u_input.a, 4294967295u) & vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), -1135f, global0.c.x))), _wgslsmith_f_op_f32(sign(global0.b)), !global0.c, any(!global0.c.wy));
    var var_2 = 1u;
    var var_3 = vec4<u32>(u_input.a, u_input.a, _wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.a, select(4447u, u_input.a, true)), u_input.a, 1u), min(u_input.a, countOneBits(reverseBits(46367u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yy, ~abs(vec4<u32>(38733u, var_3.x, u_input.a, 71399u)) & vec4<u32>(var_3.x, 4294967295u, ~_wgslsmith_div_u32(u_input.a, var_3.x), u_input.a));
}

