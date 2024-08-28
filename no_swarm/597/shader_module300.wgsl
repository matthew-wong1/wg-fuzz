struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-899f, -1082f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = ~136469u;
    global0 = vec2<f32>(global0.x, global0.x);
    var var_1 = Struct_1(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true), !vec3<bool>(any(vec3<bool>(true, true, false)), false, var_0 == var_0), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))));
    var var_2 = Struct_2(48882u, u_input.b >> (vec4<u32>(48480u, ~var_0, _wgslsmith_div_u32(0u, var_0), var_0) % vec4<u32>(32u)), Struct_1(vec4<bool>(1i == u_input.b.x, var_1.a.x, (u_input.b.x <= u_input.a) == true, true), !var_1.a.xxz));
    var_2 = Struct_2(~1u, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, -u_input.b | _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(56024i, var_2.b.x, var_2.b.x, -30115i))), vec4<i32>(var_2.b.x, -7998i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-12518i, 31326i), max(u_input.b.x, u_input.b.x)), select(~u_input.a, 0i, all(vec2<bool>(true, true))))), var_2.c);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.x))));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(vec4<bool>(true, true, u_input.a < ~u_input.b.x, !all(vec2<bool>(true, false))), !vec3<bool>(true, any(vec2<bool>(false, false)), any(vec3<bool>(true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(975f, -1132f)), _wgslsmith_f_op_f32(global0.x + -576f))))));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1398f, _wgslsmith_f_op_f32(1043f * -860f), _wgslsmith_f_op_f32(588f * -445f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), 123f, -1105f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-711f, 167f, -427f)))))))));
    var_0 = Struct_3(Struct_1(var_0.a.a, vec3<bool>(true, true, true)), var_0.b);
    var var_1 = !select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(var_0.a.b.x, true, false), var_0.a.a.xxw, false), vec3<bool>(var_0.a.b.x, true, var_0.a.a.x), !var_0.a.b.x), !select(vec3<bool>(var_0.a.a.x, var_0.a.a.x, false), vec3<bool>(false, var_0.a.b.x, true), var_0.a.a.zyy), true), vec3<bool>(var_0.a.a.x, true, !var_0.a.b.x));
    var var_2 = vec3<i32>(~u_input.b.x, 1i, ~_wgslsmith_add_i32(reverseBits(u_input.a), 6633i));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, 1262f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(step(888f, 192f))), 871f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.b.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.x)))), global0.x), arg_1.c.b.zy)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1021f, 799f)));
    let var_0 = arg_1;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(375f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + 984f)))))));
    var var_1 = arg_1.c.a.x;
    var var_2 = Struct_3(Struct_1(vec4<bool>((4294967295u >= var_0.a) | !arg_1.c.a.x, -54130i < var_0.b.x, arg_1.c.b.x, !arg_1.c.a.x), vec3<bool>(arg_3 == var_0.b.x, true, -687f == _wgslsmith_f_op_f32(global0.x * 696f))), vec3<f32>(546f, _wgslsmith_f_op_vec2_f32(func_2()).x, -600f));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-559f, 1000f)), var_2.b.x)) + var_2.b.x)));
}

fn func_4(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(418f, -249f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-536f, arg_0)), select(vec2<bool>(false, false), vec2<bool>(false, false), false))) * vec2<f32>(-1091f, _wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))))));
    var var_1 = Struct_2(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 5592u, 0u)), 18891u, select(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), true, !all(vec2<bool>(false, false)))), u_input.b, Struct_1(vec4<bool>(false, true, true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, false)), true), vec3<bool>(any(vec2<bool>(false, true)), true, 2312i != u_input.b.x))));
    let var_2 = any(!select(vec3<bool>(all(var_1.c.b.zy), true, true), vec3<bool>(all(var_1.c.a.zyx), all(vec3<bool>(var_1.c.a.x, false, var_1.c.a.x)), false), false));
    var var_3 = true;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1366f, 617f), vec2<f32>(arg_0, -1000f)), vec2<f32>(-718f, -772f), select(var_1.c.b.yz, var_1.c.b.xx, vec2<bool>(true, var_2))))))));
    return Struct_2(var_1.a, vec4<i32>(~(u_input.a | ~(-2147483647i)), 40053i, 0i, var_1.b.x), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 824f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(420f + -2042f), global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, -2028f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-897f, 145f))))));
    var var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(func_1(u_input.b, Struct_2(76195u, vec4<i32>(8380i, -2147483647i, u_input.a, u_input.b.x), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, false, false))), vec4<i32>(u_input.b.x, -15482i, u_input.a, -31311i), u_input.b.x)))))))));
    var_0 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = vec3<u32>(~(var_0.a << (min(var_0.a & 67065u, 0u) % 32u)), var_0.a | 0u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, var_0.a), ~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_0.a), vec2<u32>(6014u, 9892u))));
    var_1 = vec3<u32>(var_1.x, 74197u, _wgslsmith_mod_u32(var_1.x, ~(~var_0.a)));
    var var_2 = 86804u;
    global0 = vec2<f32>(-1102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~1u), 35494u, var_0.a), ~((vec3<u32>(4294967295u, var_1.x, var_1.x) | vec3<u32>(51470u, var_1.x, 38721u)) & _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, var_1.x, 4294967295u), vec3<u32>(var_0.a, var_0.a, 1u)))));
}

