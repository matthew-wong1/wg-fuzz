struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_0.b.a), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d, global1.e);
    var var_1 = _wgslsmith_f_op_f32(910f - arg_1.a.x);
    global1 = Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.a)), -589f, Struct_1(vec2<f32>(-2173f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.a.x, -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(var_0.e.x, reverseBits(1u), ~arg_0.e.x, var_0.e.x) ^ vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, ~0u), 4294967295u, 44849u, _wgslsmith_dot_vec2_u32(~global0.e.zx, select(var_0.e.zx, u_input.d.zw, arg_2.xy))));
    var_1 = -1883f;
    let var_2 = var_0.b;
    return var_2.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_2 {
    global0 = Struct_2(global0.d, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global1.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.a.x, 1567f))), !(!arg_1.yz)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(843f - _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global0.b.a), Struct_1(global0.d.a), global1.b.a.x, Struct_1(vec2<f32>(global1.d.a.x, global1.b.a.x)), vec4<u32>(global1.e.x, 1419u, global0.e.x, global1.e.x)), global0.b, arg_0.yyz))), global1.b.a.x))), global1.a, ~u_input.d);
    global1 = Struct_2(Struct_1(global0.d.a), Struct_1(global1.a.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1253f, 572f)))), global1.a, select(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global1.e, vec4<u32>(1u, global1.e.x, global1.e.x, u_input.d.x)), min(u_input.d, vec4<u32>(4294967295u, 21339u, u_input.d.x, u_input.d.x))), vec4<u32>(0u, 7583u, 1u ^ global0.e.x, u_input.d.x), !vec4<bool>(arg_0.x, true, arg_1.x, arg_0.x)) & reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(38709u, u_input.d.x, 37457u, global0.e.x), global0.e)));
    var var_0 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, global1.a.a.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(1239f, global0.c), global1.d.a)) + vec2<f32>(global0.b.a.x, -1180f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.a.x, _wgslsmith_f_op_f32(ceil(810f))) * vec2<f32>(_wgslsmith_f_op_f32(global1.c - global1.b.a.x), _wgslsmith_f_op_f32(floor(global1.a.a.x))))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global1.e.x, u_input.d.x), 38346u, ~4294967295u, firstLeadingBit(1u)), global0.e));
    let var_1 = Struct_2(Struct_1(global0.a.a), var_0.b, _wgslsmith_f_op_f32(-var_0.c), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a.x, 608f) + vec2<f32>(var_0.a.a.x, 2155f)))))), vec4<u32>(~1u, _wgslsmith_sub_u32(~global0.e.x, ~var_0.e.x), _wgslsmith_dot_vec2_u32(global0.e.yw, vec2<u32>(0u, ~global0.e.x)), _wgslsmith_dot_vec2_u32(var_0.e.zz, ~vec2<u32>(global0.e.x, 35422u))));
    var var_2 = (global1.e.xww | global0.e.xwz) | ~min(select(var_1.e.wwx, var_1.e.zzw, select(arg_0.xwz, arg_1, false)), firstLeadingBit(_wgslsmith_mult_vec3_u32(var_1.e.zzy, vec3<u32>(var_0.e.x, 4294967295u, u_input.d.x))));
    return var_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    global0 = func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(true, -2147483647i >= arg_1.x, true), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), vec4<bool>(any(vec2<bool>(true, false)), 0u == global0.e.x, true, all(vec4<bool>(true, true, false, true))))), vec3<bool>(min(-arg_1.x, arg_1.x) <= _wgslsmith_div_i32(2147483647i, u_input.b), false, all(vec4<bool>(true, true, true, true))));
    let var_0 = arg_0.a;
    var var_1 = arg_1.x;
    global0 = arg_0;
    var_1 = ~(~(arg_1.x & _wgslsmith_sub_i32(-arg_1.x, ~8877i)));
    return global1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global1.a, global0.a, global1.d.a.x, Struct_1(vec2<f32>(-829f, global1.d.a.x)), u_input.d);
    let var_0 = u_input.c.x;
    global1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.a.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(761f - global0.d.a.x), -172f)))), Struct_1(global0.d.a), global0.b.a.x, global1.a, vec4<u32>(min(~func_1(Struct_2(Struct_1(global0.a.a), global1.a, global0.c, global1.a, vec4<u32>(global1.e.x, u_input.d.x, u_input.d.x, global0.e.x)), u_input.a), ~(~4294967295u)), select(1u, 7385u, true), select(4294967295u, _wgslsmith_div_u32(global1.e.x ^ 31126u, 1u), u_input.e > u_input.b), global0.e.x));
    var var_1 = false;
    global0 = func_2(select(!vec4<bool>(any(vec2<bool>(true, false)), true, all(vec3<bool>(true, true, false)), true), vec4<bool>(!all(vec4<bool>(true, true, false, false)), all(vec4<bool>(true, true, true, true)), !(u_input.d.x < 51524u), true), select(vec4<bool>(select(true, true, true), true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true))), !vec3<bool>(!all(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(global1.d.a.x - -863f) != _wgslsmith_f_op_f32(789f - global1.c), true));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1099f, -1680f) + global0.d.a), _wgslsmith_f_op_vec2_f32(select(global1.a.a, vec2<f32>(540f, -545f), true)))))), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.x)), Struct_1(global1.a.a), vec4<u32>(~(_wgslsmith_dot_vec3_u32(global0.e.yyx, u_input.d.yzw) << (global0.e.x % 32u)), ~0u, ~(~reverseBits(33916u)), ~(~67262u)));
    var_1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a.x > var_0, global1.e.x >= 1u, false, true), !all(vec4<bool>(true, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(max(~var_2.e.wy, global0.e.yx), ~reverseBits(vec2<u32>(1u, 0u))), max(global1.e.zx, vec2<u32>(0u, 0u)) << (vec2<u32>(u_input.d.x >> (0u % 32u), 33974u) % vec2<u32>(32u))), ~(~_wgslsmith_mult_vec2_u32(u_input.d.wz, global1.e.yy)), var_2.e.yyx);
}

