struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<i32> {
    let var_0 = reverseBits(_wgslsmith_mult_u32(~u_input.a, u_input.a) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 1u, u_input.a)) % 32u)) & (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(78225u, u_input.c, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 31709u), vec3<u32>(1u, u_input.d, 8464u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, 16212u), vec3<u32>(u_input.d, u_input.c, u_input.c))) ^ 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-750f, _wgslsmith_f_op_f32(-1755f - -843f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.yz))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, arg_0.a) * arg_0.c.wy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2536f)) * _wgslsmith_f_op_vec2_f32(arg_0.c.wz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))))));
    var var_2 = false;
    var var_3 = all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, any(vec4<bool>(true, false, true, true)), arg_0.b < 2147483647i), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec2<bool>(true, true)), false)));
    var_2 = true;
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_div_vec3_i32(-u_input.b, ~func_3(Struct_1(arg_2.c.x, 1i, vec4<f32>(-101f, -1000f, 600f, -1000f)), vec4<i32>(7737i, 2147483647i, arg_2.b, u_input.b.x))), Struct_1(arg_1.b.c.x, -min(-2147483647i, -36244i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.a, arg_2.a, 413f, 770f))), vec4<f32>(_wgslsmith_f_op_f32(abs(339f)), arg_1.b.c.x, _wgslsmith_f_op_f32(sign(248f)), _wgslsmith_f_op_f32(min(arg_1.b.a, arg_1.b.a))))));
    var var_1 = arg_2;
    let var_2 = var_0.b;
    var var_3 = arg_1;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(973f))))))), var_0.b.b, vec4<f32>(var_2.c.x, arg_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -541f), 385f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c.x, var_3.b.a, var_3.b.a, 289f) * vec4<f32>(454f, 1736f, -1000f, 515f)), _wgslsmith_f_op_vec4_f32(-var_3.b.c)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.c.x, -151f, arg_1.b.a, -497f)) + var_2.c) * arg_2.c)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1282f, arg_0, arg_0, 566f))) - _wgslsmith_f_op_vec4_f32(func_2(false, Struct_2(u_input.b, Struct_1(-326f, 2147483647i, vec4<f32>(806f, 1151f, arg_0, -315f))), Struct_1(arg_0, u_input.b.x, vec4<f32>(arg_0, arg_0, -377f, -1500f)), vec2<bool>(true, true)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1800f, var_0.x, var_0.x, 991f)))))));
    var var_1 = any(!vec4<bool>(true, true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(42726u, 1u), vec2<u32>(u_input.d, 1u)) > ~0u));
    var_1 = ~(u_input.b.x | _wgslsmith_mod_i32(~u_input.b.x, 12528i)) < u_input.b.x;
    var_1 = u_input.b.x <= -254i;
    return Struct_2(u_input.b, Struct_1(var_0.x, u_input.b.x | _wgslsmith_sub_i32(select(u_input.b.x, u_input.b.x, true), _wgslsmith_mult_i32(-45527i, 0i)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1430f, 273f, 554f, 351f) * vec4<f32>(var_0.x, arg_0, var_0.x, 743f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, 955f, 1000f, 699f))), vec4<f32>(arg_0, _wgslsmith_div_f32(-846f, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(min(arg_0, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = func_1(711f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_1.b.c.x) * 1445f) + _wgslsmith_f_op_f32(-var_1.b.a)), var_1.b.c.x)), abs(_wgslsmith_mod_i32(2147483647i, 2147483647i)) ^ (u_input.b.x & u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, 1646f, var_1.b.c.x, -1559f))) - var_1.b.c));
    let var_3 = Struct_2(~select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(var_1.b.b, u_input.b.x, -25931i), var_1.a, vec3<bool>(true, true, true)), -vec3<i32>(-8643i, -3285i, 2147483647i)), ~vec3<i32>(var_2.b, -2147483647i, 2147483647i), false), var_1.b);
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1839f, _wgslsmith_f_op_f32(var_1.b.a * 537f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.c.x)), _wgslsmith_f_op_vec4_f32(func_2(false, Struct_2(var_1.a, Struct_1(var_2.c.x, 1i, var_1.b.c)), var_1.b, vec2<bool>(true, false))).x)), _wgslsmith_f_op_f32(-220f + _wgslsmith_f_op_f32(select(var_2.c.x, var_3.b.c.x, false))))))));
    var var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 5018i, func_3(func_1(598f).b, ~vec4<i32>(var_1.a.x, u_input.b.x, -2147483647i, var_2.b)).x, ~_wgslsmith_add_i32(0i, _wgslsmith_div_i32(var_2.b, 0i))), ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_3.a.x, -5768i, u_input.b.x, var_3.b.b)), -vec4<i32>(var_3.a.x, 5863i, 1i, 13037i)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec2<u32>(u_input.d, ~3223u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-739f)))))));
}

