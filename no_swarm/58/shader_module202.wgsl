struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    global1 = u_input.b.x;
    global1 = u_input.c;
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))), -2012f), _wgslsmith_f_op_f32(-global0.x), true, abs(38479i));
    global1 = ~(-33639i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(-global0.x)))), 1000f, var_0.c, select(u_input.a.x, 1i, true) >> (u_input.e % 32u));
    return Struct_2(select(select(!vec2<bool>(false, var_0.c), select(vec2<bool>(true, true), select(vec2<bool>(var_0.c, var_1.c), vec2<bool>(false, false), vec2<bool>(false, true)), !var_0.c), var_1.c), vec2<bool>(all(vec3<bool>(false, var_0.c, var_0.c)), !(0i > var_1.d)), var_0.c), var_0);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_1.a, 1583f, 1000f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -1184f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(693f, global0.x, global0.x, -305f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.b, arg_1.b, arg_1.b) - vec4<f32>(339f, 1000f, 767f, 1000f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1318f, global0.x, global0.x, arg_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(111f, global0.x, global0.x, arg_1.a) + vec4<f32>(352f, arg_1.a, global0.x, -623f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, arg_1.a, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, -920f, -1961f, global0.x), vec4<f32>(-341f, -639f, arg_1.b, 1425f), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c)))))))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1829f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1533f, arg_1.b)), _wgslsmith_f_op_f32(arg_1.b + -1000f)), 1000f) * vec4<f32>(1f, global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-arg_1.b)), 831f)), vec4<f32>(arg_1.a, 401f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1542f + global0.x), global0.x))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * -906f) - 1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -548f))))), global0.x);
    global0 = vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(-756f, arg_1.a)), 964f, true)))), -171f, -317f);
    let var_0 = func_2();
    return func_2().b;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> f32 {
    let var_0 = min(~min(vec4<u32>(reverseBits(1u), ~arg_1, select(1u, arg_1, false), 0u), abs(vec4<u32>(u_input.e, arg_1, 18705u, arg_1))), vec4<u32>(~u_input.e, u_input.e, 1u, ~4294967295u));
    let var_1 = abs(vec2<i32>(-15492i >> (u_input.e % 32u), -(~u_input.b.x)));
    let var_2 = 32417i;
    let var_3 = 19834i;
    let var_4 = _wgslsmith_f_op_f32(-global0.x);
    return _wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(-var_4));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~u_input.b, vec2<i32>(u_input.b.x, u_input.b.x) & u_input.b), u_input.c);
    var var_0 = func_1(u_input.d.x, Struct_1(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-917f, global0.x)))), true == all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false)), u_input.b.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, var_0.c), vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(var_0.c, false, false)), var_0.c), u_input.e))), global0.x, true, min(~1i, 24168i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))), func_1(_wgslsmith_mult_i32(-(u_input.b.x & var_0.d), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, 0i), firstTrailingBit(-14494i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, -24097i, 22465i, u_input.c), vec4<i32>(8250i, u_input.c, var_0.d, -6694i)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-158f))), 1767f, true, -55744i)).a, var_0.c | var_0.c, abs(_wgslsmith_sub_i32(-(u_input.c & -6051i), u_input.b.x)));
    var var_2 = vec4<i32>(_wgslsmith_mod_i32(var_0.d, -_wgslsmith_add_i32(~0i, u_input.a.x & var_1.d)), -2147483647i, _wgslsmith_sub_i32(u_input.c, _wgslsmith_add_i32(43932i, var_0.d)), var_0.d);
    let var_3 = true;
    let var_4 = u_input.e;
    global0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1241f)), -243f, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1416f, var_1.a, -1726f, var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(global0.wxz, global0.xwz), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~4294967295u, firstTrailingBit(u_input.e), ~1u, max(u_input.e, 1u))), vec4<u32>(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, 21759u, 1u, u_input.e) ^ vec4<u32>(80847u, u_input.e, var_4, var_4), max(vec4<u32>(4280u, 0u, var_4, u_input.e), vec4<u32>(u_input.e, var_4, u_input.e, var_4))), 39290u, ~27850u)), _wgslsmith_f_op_f32(f32(-1f) * -687f), reverseBits(var_2.zy ^ var_2.xx));
}

