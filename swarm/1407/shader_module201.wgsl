struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = !(!(!vec3<bool>(true, true, global1.x)));
    var var_1 = !select(vec3<bool>(false, all(select(vec4<bool>(false, global1.x, var_0.x, false), vec4<bool>(global1.x, false, false, global1.x), global1.x)), any(!vec4<bool>(false, var_0.x, true, var_0.x))), vec3<bool>(true, _wgslsmith_sub_u32(u_input.a.x, 4294967295u) > ~u_input.a.x, (u_input.a.x != u_input.a.x) | global1.x), any(var_0.yz));
    global0 = Struct_1(1i, ~global0.b, i32(-1i) * -abs(u_input.b));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1040f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(174f)))));
    global1 = !(!select(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_2, true), global1.x), select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(true, var_2, true), true), true));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-2059f, 857f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(650f, -208f), vec2<f32>(-1290f, _wgslsmith_f_op_f32(select(-476f, -514f, global1.x))), var_2 && false)))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(606f, -1314f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-900f, 258f) - vec2<f32>(-836f, 1114f))) - _wgslsmith_div_vec2_f32(vec2<f32>(1939f, 240f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-768f, 1226f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1198f), -704f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-376f, -559f, global1.x)) * -1000f)), _wgslsmith_f_op_vec2_f32(func_3())));
    var var_1 = Struct_1(-2147483647i, vec2<i32>(-1i) * -(~(~global0.b)), abs(u_input.b));
    var var_2 = 43899u;
    let var_3 = vec2<bool>(4294967295u < select(1u, 15784u, global1.x), false & all(vec4<bool>(false, global1.x != false, u_input.a.x > 4294967295u, global1.x)));
    var var_4 = (_wgslsmith_mult_i32(_wgslsmith_div_i32(global0.c, _wgslsmith_mod_i32(1414i, u_input.b)), _wgslsmith_mult_i32(u_input.b, u_input.b)) & global0.a) << (u_input.a.x % 32u);
    return Struct_2(var_0.x, all(!var_3) || !var_3.x, Struct_1(var_1.a, global0.b, i32(-1i) * -100200i));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global0 = func_2().c;
    global0 = arg_1.c;
    var var_0 = arg_1.c;
    return func_2();
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global1 = !(!vec3<bool>(any(vec3<bool>(true, arg_0.b, true)), !arg_0.b | true, true));
    return arg_0.c;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(max(-327f, 2604f))), _wgslsmith_f_op_f32(f32(-1f) * -364f), global1.x)), false || global1.x)) * 1000f);
    global0 = func_5(func_4(66340u, func_2()));
    global0 = Struct_1(firstTrailingBit(-1i), global0.b, global0.c);
    var var_1 = Struct_1(u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 16395u)) % 32u), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, 25657i), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -54447i, arg_0, -2147483647i), vec4<i32>(37669i, -2147483647i, global0.c, global0.a)), global0.c), (u_input.b & -1i) | max(1i, u_input.b))), ~(~(-2147483647i)));
    var_0 = 2591f;
    return func_5(func_4(4294967295u, func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(5550i & (global0.c ^ global0.b.x), u_input.b);
    var var_0 = func_2();
    global0 = Struct_1(-3163i, var_0.c.b, global0.c);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(20589u), ~32165u), u_input.a.x, ~_wgslsmith_div_u32(7254u, u_input.a.x));
    var var_2 = Struct_2(var_0.a, !func_4(u_input.a.x, Struct_2(var_0.a, true, func_5(Struct_2(var_0.a, var_0.b, var_0.c)))).b, Struct_1(~2147483647i, ~firstLeadingBit(global0.b), global0.a));
    let var_3 = !(!select(global1.zx, !vec2<bool>(false, global1.x), select(global1.xy, !global1.xz, select(global1.zy, global1.zz, global1.x))));
    var_2 = Struct_2(1000f, var_0.b, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1492f, vec3<i32>(global0.c, func_5(func_4(firstTrailingBit(u_input.a.x), Struct_2(-941f, var_0.b, var_0.c))).a, 1i), select(vec4<i32>(global0.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-44795i, 7380i), 0i), ~1i, _wgslsmith_add_i32(11669i, 6348i)), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-12586i, var_0.c.b.x, -2147483647i, var_0.c.c), vec4<i32>(2147483647i, global0.c, -33225i, u_input.b)), abs(7061i) >> (1u % 32u), select(var_0.c.b.x, var_0.c.a, !var_0.b)), vec4<bool>(true, func_2().b, true, false)), reverseBits(var_0.c.b));
}

