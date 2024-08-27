struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: i32;

var<private> global2: f32 = 191f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(u_input.a, global0[_wgslsmith_index_u32(1u, 18u)] ^ (global0[_wgslsmith_index_u32(~(~u_input.a.x), 18u)] | vec4<u32>(countOneBits(u_input.a.x), 6730u, ~u_input.a.x, u_input.a.x)));
    var var_1 = 489f;
    let var_2 = ~(~max(15585u, abs(0u)));
    var_1 = -1151f;
    var var_3 = select(select(vec4<bool>(!(arg_1.x && true), true, any(select(vec4<bool>(false, true, arg_0.b, arg_1.x), vec4<bool>(arg_0.b, arg_0.b, true, false), true)), true), vec4<bool>(select(arg_1.x, true, arg_1.x), true, false, all(vec4<bool>(false, arg_1.x, false, false))), all(arg_1.yx)), !(!select(!vec4<bool>(false, arg_1.x, arg_0.b, arg_1.x), vec4<bool>(arg_1.x, true, arg_0.b, true), select(true, true, false))), true);
    return arg_0.b;
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, -620f))), vec2<f32>(_wgslsmith_f_op_f32(floor(-377f)), _wgslsmith_f_op_f32(343f + -105f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -189f), -1158f)))));
    var var_1 = Struct_2(u_input.c, all(vec3<bool>(any(vec2<bool>(false, true)) && arg_0.x, true, all(arg_0))));
    global0 = array<vec4<u32>, 18>();
    global2 = var_0.x;
    var var_2 = Struct_3(Struct_2(vec3<i32>(4961i, min(-u_input.b, -330i), _wgslsmith_sub_i32(0i, 2147483647i)), any(vec3<bool>(select(arg_0.x, false, var_1.b), arg_0.x, true))));
    return select(!arg_0, !(!arg_0), vec4<bool>(any(!vec2<bool>(var_1.b, false)), arg_0.x, !func_3(Struct_2(var_1.a, var_1.b), vec3<bool>(false, false, arg_0.x)), false));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(vec3<i32>(countOneBits(-2147483647i), firstTrailingBit(u_input.d), 0i), arg_1.x);
    var_0 = Struct_2(-select(abs(u_input.c) | vec3<i32>(var_0.a.x, var_0.a.x, -1i), -(vec3<i32>(u_input.b, var_0.a.x, u_input.b) ^ vec3<i32>(u_input.d, u_input.d, 39360i)), select(arg_1.wzx, arg_1.zxy, vec3<bool>(arg_1.x, false, var_0.b))), var_0.b);
    var_0 = Struct_2(u_input.c, true);
    let var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x ^ u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, ~10027u), ~(~1u)) < (~_wgslsmith_div_u32(u_input.a.x | 20341u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) ^ _wgslsmith_mult_u32(~(u_input.a.x << (1u % 32u)), u_input.a.x));
    let var_2 = u_input.a.zx;
    return Struct_2(-vec3<i32>(2147483647i, -abs(-2147483647i), _wgslsmith_sub_i32(~var_0.a.x, u_input.c.x << (5768u % 32u))), true);
}

fn func_5(arg_0: Struct_2) -> i32 {
    global2 = 405f;
    global0 = array<vec4<u32>, 18>();
    global0 = array<vec4<u32>, 18>();
    return -(~(~(_wgslsmith_div_i32(arg_0.a.x, u_input.b) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-6607i, 47178i, -1i, 2147483647i), vec4<i32>(-1i, 43103i, arg_0.a.x, 102i)))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(all(vec2<bool>(true, true)), false);
    global1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-u_input.c, vec3<i32>(u_input.d ^ u_input.d, _wgslsmith_mult_i32(u_input.b, u_input.d), u_input.b)) ^ func_5(func_4(!vec2<bool>(var_0.x, false), func_2(vec4<bool>(true, true, true, false)))), u_input.d);
    var var_1 = !(!select(select(func_2(vec4<bool>(false, var_0.x, false, var_0.x)), !vec4<bool>(var_0.x, false, false, var_0.x), !var_0.x), !func_2(vec4<bool>(false, true, var_0.x, false)), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, false, var_0.x, true), !vec4<bool>(var_0.x, false, false, var_0.x))));
    let var_2 = !var_1.yz;
    let var_3 = Struct_1(vec3<u32>(~u_input.a.x, u_input.a.x, 45174u), ~(~vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(u_input.a.x, 67401u, 13910u), 1u)));
    return Struct_2(~firstLeadingBit(_wgslsmith_clamp_vec3_i32(u_input.c, abs(vec3<i32>(-2147483647i, 0i, u_input.d)), ~u_input.c)), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1006f;
    let var_0 = func_1();
    let var_1 = select(!vec2<bool>(func_1().b, var_0.b), func_2(vec4<bool>(var_0.b, var_0.b, var_0.b, any(!vec4<bool>(false, var_0.b, var_0.b, true)))).wy, vec2<bool>(false, false));
    global0 = array<vec4<u32>, 18>();
    global1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, ~0u), ~u_input.a.x));
}

