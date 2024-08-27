struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    let var_0 = u_input.a.x;
    let var_1 = vec2<i32>(var_0, -62639i);
    global1 = vec3<bool>(all(select(vec2<bool>(global1.x, global1.x), select(!global1.yy, vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, global1.x), global1.x)), vec2<bool>(true, true))), global1.x | any(select(!vec3<bool>(global1.x, false, false), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, global1.x)), true)), true);
    let var_2 = !any(select(select(select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(false, global1.x, true, global1.x)), vec4<bool>(true, global1.x, false, global1.x), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), false)), vec4<bool>(!global1.x, !global1.x, global1.x, true), vec4<bool>(!global1.x, true, !global1.x, select(true, true, false))));
    var var_3 = !select(any(vec2<bool>(global1.x, true)), true, true);
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    return -u_input.a.x;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_1(vec2<bool>(global1.x, all(select(select(vec4<bool>(false, true, global1.x, arg_0), vec4<bool>(global1.x, false, false, true), false), vec4<bool>(arg_0, arg_0, false, arg_0), !vec4<bool>(arg_0, true, true, false)))), func_4((51549i & (-1657i >> (u_input.b.x % 32u))) | ~u_input.a.x, func_3(), Struct_1(!vec2<bool>(global1.x, arg_0), _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x), vec2<i32>(-9974i | u_input.a.x, 14024i), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, global1.x), true))), vec2<i32>(1i, ~(u_input.a.x & min(u_input.a.x, 3725i))), select(select(vec3<bool>(select(false, arg_0, arg_0), all(vec3<bool>(global1.x, global1.x, true)), arg_0 && global1.x), vec3<bool>(true, true, true), !(!vec3<bool>(arg_0, false, global1.x))), vec3<bool>(firstLeadingBit(u_input.a.x) >= (u_input.a.x | -1i), all(vec2<bool>(global1.x, arg_0)), any(select(vec4<bool>(arg_0, arg_0, global1.x, true), vec4<bool>(global1.x, false, arg_0, arg_0), false))), select(select(vec3<bool>(false, global1.x, arg_0), !vec3<bool>(false, global1.x, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(global1.x, arg_0, true), global1.x), !vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(global1.x, false, arg_0), vec3<bool>(false, arg_0, global1.x), vec3<bool>(global1.x, true, false))), vec3<bool>(any(vec2<bool>(true, arg_0)), global1.x, !arg_0))));
    let var_1 = 4294967295u <= select(_wgslsmith_mod_u32(~(~u_input.b.x), ~min(u_input.b.x, 39547u)), ~36645u, all(select(!vec4<bool>(global1.x, arg_0, global1.x, false), !vec4<bool>(arg_0, false, global1.x, false), all(vec4<bool>(true, arg_0, global1.x, false)))));
    var var_2 = var_0.b >> (_wgslsmith_clamp_u32(countOneBits(~4294967295u), u_input.b.x | _wgslsmith_clamp_u32(u_input.b.x, ~0u, u_input.b.x), _wgslsmith_div_u32(1u, u_input.b.x)) % 32u);
    let var_3 = u_input.b.x;
    let var_4 = Struct_1(!vec2<bool>(1u <= firstLeadingBit(var_3), all(select(var_0.d, vec3<bool>(arg_0, false, true), global1.x))), -7796i, min(-_wgslsmith_sub_vec2_i32(u_input.a.yx, ~vec2<i32>(-1i, 21282i)), vec2<i32>(var_0.b, -5366i)), !select(vec3<bool>(false, var_0.d.x | arg_0, !global1.x), !vec3<bool>(false, global1.x, var_0.a.x), select(select(var_0.d, var_0.d, arg_0), vec3<bool>(arg_0, true, arg_0), !var_0.d)));
    return _wgslsmith_div_f32(-299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))));
}

fn func_1() -> StorageBuffer {
    global1 = vec3<bool>(_wgslsmith_f_op_f32(func_2(false)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1093f + _wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(step(global0.x, -1833f)))))), true || any(select(!vec4<bool>(global1.x, global1.x, global1.x, false), !vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, true))), true);
    let var_0 = vec2<u32>(select(u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_sub_u32(157358u, 9248u), _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(1u, u_input.b.x))) & _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(84415u, 8675u)), false), ~27640u);
    var var_1 = global1.x;
    let var_2 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -(u_input.a.x << (3355u % 32u))), u_input.a.x);
    let var_3 = u_input.b.x << (~_wgslsmith_mult_u32(1u, u_input.b.x) % 32u);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)) + -535f), vec3<u32>(~(~(~var_0.x)), var_3, reverseBits(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-5487i, u_input.a.x, 1i, -u_input.a.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x, u_input.b.x) % vec4<u32>(32u))), abs(min(select(firstLeadingBit(u_input.a), min(vec4<i32>(-92278i, 36i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 15386i, 2147483647i, 0i)), global1.x), u_input.a)));
    let x = u_input.a;
    s_output = func_1();
}

