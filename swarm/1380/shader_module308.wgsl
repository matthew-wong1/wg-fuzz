struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1110i, Struct_1(true, vec2<f32>(-1311f, -468f), 1739f, vec4<i32>(-10831i, i32(-2147483648), -1i, 2147483647i)), Struct_1(true, vec2<f32>(859f, -274f), -889f, vec4<i32>(18881i, i32(-2147483648), -1i, -19362i)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> bool {
    var var_0 = !(!any(select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, global0.c.a), vec4<bool>(arg_0.b.x, false, global0.b.a, global0.b.a), !vec4<bool>(arg_0.b.x, false, global0.b.a, false))));
    let var_1 = -81396i;
    var_0 = all(arg_0.b.yz);
    var_0 = !arg_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(-1000f));
    return !all(vec4<bool>(!arg_0.b.x, (arg_0.c >= arg_0.c) || false, u_input.a.x > (arg_1.x << (1u % 32u)), global0.b.a));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = firstTrailingBit(abs(u_input.c));
    let var_1 = -((vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.d.x, 44272i, 27543i), global0.b.d.xzy), ~global0.b.d.x, -31689i) | _wgslsmith_add_vec3_i32(select(global0.b.d.yyw, global0.b.d.wzx, global0.b.a), global0.c.d.xwz)) >> (var_0 % vec3<u32>(32u)));
    global0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-abs(var_1), _wgslsmith_mod_vec3_i32(vec3<i32>(16658i, global0.b.d.x, -1i), global0.c.d.xxx)), var_1.x), global0.b, Struct_1(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, global0.c.b.x, global0.c.b.x), vec3<f32>(-1000f, 517f, 183f))), select(arg_0, arg_0, global0.c.a), _wgslsmith_f_op_f32(-global0.c.c)), var_0.zz), vec2<f32>(177f, _wgslsmith_f_op_f32(f32(-1f) * -211f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.c.c)))), _wgslsmith_f_op_f32(sign(-118f)))), -vec4<i32>(-var_1.x, _wgslsmith_add_i32(global0.a, -83472i), 0i, ~1i)));
    return Struct_2(~global0.c.d.x << (reverseBits(46057u) % 32u), global0.b, global0.c);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = func_2(!(!arg_0));
    return func_2(select(vec3<bool>(all(vec4<bool>(false, arg_0.x, false, arg_0.x)), func_3(Struct_3(vec3<f32>(692f, 695f, global0.c.b.x), vec3<bool>(arg_0.x, false, arg_0.x), global0.b.c), u_input.c.yz), select(any(vec4<bool>(false, true, global0.c.a, arg_0.x)), !arg_0.x, true)), select(arg_0, !arg_0, true), vec3<bool>(arg_0.x, !global0.c.a && arg_0.x, arg_0.x))).b;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_1.b.a;
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), u_input.c), _wgslsmith_mod_u32(~u_input.b, 0u), ~u_input.a.x), u_input.a.x), u_input.b, u_input.b, 61656u);
    var var_2 = func_1(select(!(!vec3<bool>(arg_2.a, global0.b.a, global0.c.a)), vec3<bool>(any(vec4<bool>(global0.b.a, arg_2.a, true, false)), true, false), arg_1.b.a));
    var var_3 = -1261f;
    global0 = arg_1;
    return select(!select(select(select(vec4<bool>(arg_1.c.a, true, arg_2.a, global0.b.a), vec4<bool>(arg_2.a, false, arg_2.a, arg_1.b.a), vec4<bool>(var_2.a, global0.c.a, arg_1.b.a, true)), !vec4<bool>(arg_1.c.a, var_2.a, global0.b.a, false), true), !select(vec4<bool>(true, false, true, var_2.a), vec4<bool>(arg_2.a, arg_1.c.a, true, var_2.a), false), any(vec3<bool>(true, false, false)) && (var_2.d.x == -21459i)), vec4<bool>(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1108f, 939f)), !vec3<bool>(global0.b.a, true, true), _wgslsmith_f_op_f32(round(1000f))), var_1.yx), !(countOneBits(arg_2.d.x) < ~(-39740i)), global0.c.a, var_1.x >= _wgslsmith_sub_u32(var_1.x, _wgslsmith_add_u32(var_1.x, var_1.x))), vec4<bool>(any(!vec4<bool>(arg_1.b.a, true, arg_1.b.a, true)), false, global0.b.a, arg_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.b.d.x << (_wgslsmith_add_u32(_wgslsmith_sub_u32(max(u_input.b, 41145u), _wgslsmith_add_u32(99851u, u_input.b)), 1u) % 32u), Struct_1(all(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(1i, global0.b, Struct_1(true, global0.b.b, -1626f, global0.c.d)), func_1(vec3<bool>(false, global0.c.a, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-311f, 1404f)), global0.c.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(global0.b.c, -721f))))), countOneBits(abs(countOneBits(global0.c.d)))), global0.b);
    let var_0 = func_4(_wgslsmith_f_op_f32(select(452f, func_1(vec3<bool>(true, global0.c.a | false, false)).b.x, !((global0.c.a && global0.b.a) && (global0.b.a | false)))), func_2(!select(select(vec3<bool>(false, global0.c.a, false), vec3<bool>(true, global0.b.a, true), true), select(vec3<bool>(global0.b.a, global0.b.a, true), vec3<bool>(global0.b.a, false, false), true), true)), global0.b).x;
    global0 = func_2(!vec3<bool>(global0.b.d.x > firstTrailingBit(global0.c.d.x), all(vec3<bool>(true, var_0, var_0)), all(vec4<bool>(false, global0.c.a, global0.b.a, var_0)) == false));
    let var_1 = func_4(global0.c.c, func_2(!select(!vec3<bool>(false, global0.b.a, var_0), vec3<bool>(true, global0.c.a, true), !var_0)), Struct_1(true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(227f, -184f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.b)))), -1421f, vec4<i32>(_wgslsmith_dot_vec4_i32(func_2(vec3<bool>(true, true, global0.c.a)).b.d, abs(vec4<i32>(global0.a, global0.a, global0.b.d.x, 18682i))), -33788i, ~_wgslsmith_sub_i32(-15997i, global0.c.d.x), 0i))).x;
    let var_2 = vec3<bool>(var_0, any(vec2<bool>(~u_input.a.x <= ~13078u, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b.x + global0.c.c)), true)) >= -537f);
    let var_3 = vec3<i32>(-(~global0.a), ~func_1(vec3<bool>(var_0, true, 10369i > global0.b.d.x)).d.x, global0.c.d.x);
    let var_4 = _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(~1u, ~27359u << (u_input.c.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1549f, global0.b.c) - vec2<f32>(1036f, -1060f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.b.x, global0.b.b.x) + _wgslsmith_f_op_vec2_f32(floor(global0.c.b)))))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, 1u, ~(4294967295u ^ var_4), u_input.c.x), ~vec4<u32>(1u, ~u_input.b, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_4, 1u, var_4)), _wgslsmith_mult_u32(u_input.b, u_input.c.x))), ~1u);
}

