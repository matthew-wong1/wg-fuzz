struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_3;

var<private> global2: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global2 = global1.a.c.a;
    var var_0 = vec2<f32>(global1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global1.a.b)))) - 2979f));
    var var_1 = arg_0.d.yyx;
    let var_2 = Struct_3(arg_0);
    let var_3 = ~(~arg_0.c.d.yx);
    return _wgslsmith_sub_u32(69869u, _wgslsmith_mult_u32(1u, u_input.d.x));
}

fn func_1() -> f32 {
    var var_0 = ~(~_wgslsmith_add_vec3_u32(~u_input.d, u_input.d << (u_input.d % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.d.x, 1u, 89342u), ~u_input.d.x), _wgslsmith_clamp_u32(countOneBits(4294967295u) & ~global1.a.a, 1u, ~u_input.d.x | ~u_input.d.x), func_2(Struct_2(global1.a.a, -1997f, Struct_1(global1.a.c.a, vec2<bool>(global1.a.d.x, false), u_input.d.x, global1.a.c.d), vec4<bool>(true, global1.a.c.b.x, true, global1.a.d.x))) ^ 1u) % vec3<u32>(32u));
    let var_1 = Struct_3(global1.a);
    let var_2 = _wgslsmith_mod_i32(u_input.c, 29305i ^ _wgslsmith_mult_i32(u_input.a, -(~23279i)));
    let var_3 = global1.a.c.d.xwx;
    var var_4 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.b - -1127f) - 121f));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -709f), global1.a.c.a.x));
    let var_1 = global1.a;
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(global1.a.c.d, vec4<u32>(var_1.c.d.x, 0u, 53582u, u_input.d.x), true) & var_1.c.d, _wgslsmith_div_vec4_u32(~global1.a.c.d, vec4<u32>(u_input.d.x, 0u, 9166u, arg_1))), vec4<u32>(~4294967295u, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a.c.d.x, var_1.a), abs(vec2<u32>(arg_1, 0u))), ~(~4294967295u))), var_1.c.d);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_5) -> vec3<u32> {
    let var_0 = arg_2.a.x;
    global1 = Struct_3(global1.a);
    var var_1 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_1.d * vec4<f32>(563f, global2.x, global2.x, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.d))))) + _wgslsmith_f_op_vec4_f32(-arg_1.d)), _wgslsmith_mult_u32(arg_2.c, arg_1.c)).x;
    let var_2 = vec3<u32>(~global1.a.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global1.a.a), min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8154u, 11628u), global1.a.c.d.xy), 0u), ~select(arg_3.a.yz, global1.a.c.d.ww, global1.a.c.b.x))), arg_1.c);
    global1 = Struct_3(global1.a);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(select(countOneBits(global1.a.c.d.yz) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.c.c, global1.a.a), vec2<u32>(global1.a.c.d.x, u_input.d.x), vec2<u32>(32764u, 0u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~global1.a.c.d.xx, vec2<u32>(global1.a.a, u_input.d.x)), global1.a.d.yw) & (vec2<u32>(u_input.d.x, u_input.d.x ^ 0u) ^ vec2<u32>(~71367u, ~global1.a.c.c)));
    global2 = _wgslsmith_f_op_vec3_f32(-global1.a.c.a);
    let var_1 = 2147483647i;
    let var_2 = global1.a.c.b.x;
    let var_3 = abs(vec4<i32>(i32(-1i) * -var_1, -_wgslsmith_div_i32(var_1 & -12433i, countOneBits(u_input.e.x)), var_1, u_input.c));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))) * -844f);
    let var_5 = global1.a.c;
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.c.d.x, u_input.d, var_5.d.x, func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.a.x, -914f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.x))), Struct_4(select(vec3<bool>(true, global1.a.d.x, true), global1.a.d.xzz, true), _wgslsmith_f_op_f32(step(241f, _wgslsmith_f_op_f32(-161f + global2.x))), reverseBits(49266u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_5.a.x, global1.a.b, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, global1.a.c.a.x, global1.a.c.a.x, global2.x)))), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-820f, var_5.a.x, 453f, 1000f), vec4<f32>(-1000f, global1.a.c.a.x, -1133f, -1959f), global1.a.d)), _wgslsmith_mod_u32(var_0.x, 4294967295u))), Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a.c.a), !select(global1.a.d.wy, var_5.b, vec2<bool>(true, true)), 0u, global1.a.c.d), Struct_5(~(~var_5.d))));
}

