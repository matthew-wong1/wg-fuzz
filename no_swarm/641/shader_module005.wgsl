struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = countOneBits(vec4<u32>(~44885u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(11146u, 36544u), min(77610u, 6023u), 1u, 18936u), vec4<u32>(countOneBits(55956u), 1u, 8557u, countOneBits(30872u))), ~2527u, ~(~reverseBits(8142u))));
    var var_1 = vec4<bool>(all(arg_0.c), true, (_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, -908f) - _wgslsmith_f_op_f32(floor(-213f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) * arg_1.a.a)) | !arg_1.a.c.x, arg_0.c.x);
    let var_2 = arg_1;
    let var_3 = ~(~var_0.xwy);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)))));
    return var_1.yz;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec2<bool>(!arg_0.c.x, arg_0.c.x);
    let var_1 = Struct_3(all(arg_0.c.zy), arg_0.b, Struct_1(867f, _wgslsmith_mod_i32(u_input.a.x | u_input.a.x, u_input.a.x) > _wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_add_i32(0i, -21644i)), !vec3<bool>(var_0.x, !arg_0.b, true)), 4294967295u);
    let var_2 = select(!func_3(Struct_1(_wgslsmith_f_op_f32(var_1.c.a - arg_0.a), any(var_1.c.c.yx), var_1.c.c), Struct_2(Struct_1(-907f, arg_0.b, var_1.c.c)), vec3<i32>(-10198i, u_input.a.x, -2147483647i)), select(select(arg_0.c.xx, arg_0.c.zx, all(vec4<bool>(var_0.x, false, true, var_1.b))), select(!select(vec2<bool>(var_0.x, arg_0.b), var_1.c.c.xy, false), !vec2<bool>(arg_0.c.x, var_1.b), var_0.x), func_3(arg_0, Struct_2(arg_0), -_wgslsmith_sub_vec3_i32(vec3<i32>(43456i, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, -60850i)))), vec2<bool>(!var_1.b, var_0.x));
    var_0 = var_2;
    var_0 = arg_0.c.zz;
    return vec4<bool>(all(!select(!var_1.c.c.zz, var_2, true)), true, var_2.x, var_2.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = !select(vec4<bool>(true, select(true, arg_3.a.b, true), (false & arg_0.a.c.x) & arg_1.b, arg_3.a.c.x), select(!select(vec4<bool>(true, false, false, arg_3.a.b), vec4<bool>(arg_0.a.b, arg_3.a.c.x, arg_3.a.b, arg_0.a.b), arg_1.b), !select(vec4<bool>(true, false, arg_1.b, arg_3.a.b), vec4<bool>(false, arg_1.c.x, arg_3.a.b, arg_0.a.c.x), true), func_2(Struct_1(-1511f, true, arg_3.a.c))), true);
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1219f), _wgslsmith_f_op_f32(exp2(arg_0.a.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_1.a, arg_3.a.a))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1470f)), _wgslsmith_f_op_f32(arg_2 + -2149f), _wgslsmith_f_op_f32(select(arg_3.a.a, arg_3.a.a, true))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1353f, 325f, 831f))))))));
    let var_3 = Struct_3(arg_0.a.c.x, false, arg_0.a, min(1u, 0u));
    var_1 = -36333i;
    return _wgslsmith_f_op_f32(-arg_0.a.a);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = vec2<i32>(-55074i, 10052i);
    let var_1 = arg_1.b;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(559f)), !(!(var_0.x > reverseBits(var_0.x))), arg_1.c);
    var var_3 = 494f;
    var_0 = _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.x, 12000i), vec3<i32>(var_0.x, 0i, 0i))), ~_wgslsmith_sub_i32(var_0.x, u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 56143i, 1i, var_0.x), vec4<i32>(var_0.x, 2147483647i, -2147483647i, var_0.x) ^ vec4<i32>(var_0.x, var_0.x, u_input.a.x, 1i)), 36240i), _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(1979i, 19075i)) | u_input.a));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(527f - -1643f) - arg_0.x), all(select(!vec4<bool>(false, var_1, true, true), vec4<bool>(!var_1, !var_1, func_3(arg_1, Struct_2(var_2), vec3<i32>(24163i, 31980i, var_0.x)).x, func_2(arg_1).x), select(!vec4<bool>(false, true, var_2.b, arg_1.b), vec4<bool>(var_2.c.x, true, var_1, true), vec4<bool>(arg_2.x, var_2.b, arg_2.x, arg_2.x)))), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -167f;
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, _wgslsmith_f_op_f32(f32(-1f) * -1110f), -1000f, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(616f, false, vec3<bool>(true, false, true))), Struct_1(852f, true, vec3<bool>(true, true, false)), 940f, Struct_2(Struct_1(-1185f, true, vec3<bool>(true, false, true)))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-718f, 1228f, 1019f, -103f), vec4<f32>(-471f, 1153f, -1153f, 654f))))), Struct_1(1f, true, vec3<bool>(true, false, true)), vec2<bool>(true, true), abs(vec2<u32>(1u, 1u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1094f - var_1.a.a));
    var_0 = _wgslsmith_f_op_f32(step(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.a, 1736f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1682f, -748f)) - var_1.a.a)))));
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2339f, var_1.a.a, 573f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_1.a.a, -202f), vec3<f32>(var_1.a.a, -145f, var_1.a.a)))), vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(floor(-4146f)), _wgslsmith_f_op_f32(-var_1.a.a))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, -152f, -1288f) - vec3<f32>(314f, 1276f, var_1.a.a))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1398f, _wgslsmith_f_op_f32(min(var_1.a.a, var_1.a.a)), _wgslsmith_f_op_f32(505f + var_1.a.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.a), vec3<f32>(669f, var_1.a.a, -1483f)))) + vec3<f32>(2296f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-161f * var_1.a.a), _wgslsmith_f_op_f32(-var_1.a.a)), var_1.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, 833f)));
}

