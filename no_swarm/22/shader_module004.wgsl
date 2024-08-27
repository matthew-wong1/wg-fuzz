struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> f32 {
    return global0.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_3(vec3<bool>(global0.d.x, false, global0.e.x), global0.d));
    var var_1 = Struct_3(_wgslsmith_mod_u32(max(_wgslsmith_mod_u32(4294967295u, 9288u), _wgslsmith_mult_u32(~arg_0.a, min(arg_0.a, arg_0.a))), 1u));
    global0 = Struct_1(global0.a, vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(global0.c.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b.x, -629f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_0), global0.c) * _wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(var_0, -1921f))))))), select(select(global0.e, select(vec2<bool>(global0.a.x, global0.d.x), select(vec2<bool>(global0.d.x, global0.a.x), vec2<bool>(global0.d.x, global0.e.x), vec2<bool>(global0.e.x, true)), true), any(vec3<bool>(global0.e.x, global0.d.x, global0.d.x)) || (522u >= var_1.a)), select(select(global0.d, select(global0.d, vec2<bool>(global0.a.x, true), vec2<bool>(global0.e.x, true)), all(vec3<bool>(true, global0.d.x, global0.e.x))), select(select(vec2<bool>(global0.a.x, false), vec2<bool>(global0.d.x, false), global0.a.yx), vec2<bool>(true, true), true), true), arg_1 == ~0i), select(global0.d, vec2<bool>(arg_1 == arg_1, all(select(global0.a, global0.a, global0.a.x))), select(select(!global0.d.x, global0.a.x, global0.d.x), global0.d.x, any(!global0.a.wy))));
    var var_2 = arg_0;
    var var_3 = Struct_2(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(global0.b * global0.b), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(535f, var_0)))))), vec2<bool>(global0.a.x, all(vec2<bool>(true, false))), global0.a.zx), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(44683i, arg_1), vec2<i32>(arg_1, 1i), global0.e), -vec2<i32>(-2147483647i, 2147483647i)), ~abs(vec2<i32>(arg_1, 0i))) << (~(~1u) % 32u), 28979u, Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(global0.c.x, -172f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(global0.c.x, global0.c.x)))) + global0.c), vec2<bool>(global0.d.x, !global0.d.x | !global0.e.x), vec2<bool>(global0.a.x, -4007i < arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.b.x - 234f), global0.b.x, global0.b.x) - vec3<f32>(154f, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)), 595f)));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = vec3<i32>(arg_0, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_0, -1i)) >> (firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 72500u), vec2<u32>(1u, 78110u))) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(arg_0, 0i) ^ (vec2<i32>(-45313i, arg_0) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))))), abs(45548i));
    return arg_2;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-946f, -1881f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b.x, global0.c.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(global0.c))))) - global0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(661f, _wgslsmith_f_op_f32(min(-1022f, 1198f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global0.c.x) + global0.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))) * _wgslsmith_f_op_vec2_f32(-global0.c)), !select(!(!global0.a.zz), !global0.e, !vec2<bool>(arg_0, global0.a.x)), select(global0.d, select(select(select(vec2<bool>(false, true), vec2<bool>(false, global0.a.x), false), select(vec2<bool>(false, false), global0.d, vec2<bool>(false, global0.d.x)), select(global0.e, vec2<bool>(global0.e.x, true), global0.d)), select(select(vec2<bool>(false, false), global0.e, false), vec2<bool>(true, global0.d.x), select(vec2<bool>(global0.a.x, false), global0.e, global0.e)), !arg_0), arg_0));
    let var_0 = vec3<i32>(-2773i, ~_wgslsmith_div_i32((i32(-1i) * -1i) << (firstLeadingBit(u_input.a) % 32u), firstTrailingBit(_wgslsmith_mult_i32(1142i, 957i))), firstLeadingBit(-1i << (arg_2.a % 32u)));
    var var_1 = !select(vec4<bool>(true, all(select(global0.a, vec4<bool>(arg_0, global0.d.x, true, arg_0), vec4<bool>(arg_0, true, arg_0, false))), all(vec2<bool>(true, true)), false), !(!global0.a), global0.a);
    global0 = Struct_1(!(!select(global0.a, !global0.a, var_1.x || var_1.x)), _wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 566f)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1), global0.c.x)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), -314f)), global0.c.x), !vec2<bool>(all(vec4<bool>(true, true, true, true)), any(global0.a.wyw)))), global0.d, !select(select(!vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), all(vec2<bool>(arg_0, var_1.x))), !select(global0.a.zz, vec2<bool>(true, false), var_1.x), false));
    var var_2 = Struct_2(Struct_1(!(!vec4<bool>(true, global0.e.x, global0.e.x, var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1245f, arg_1) - global0.c)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), 385f), !vec2<bool>(!arg_0, -876f > global0.c.x), vec2<bool>(var_1.x, arg_1 != _wgslsmith_f_op_f32(-arg_1))), ~1i, abs(reverseBits(_wgslsmith_add_u32(18464u, u_input.a))) >> (~(arg_2.a >> (func_4(var_0.x, arg_2, arg_2.a) % 32u)) % 32u), Struct_1(select(global0.a, !global0.a, select(select(global0.a, vec4<bool>(true, true, true, global0.e.x), vec4<bool>(true, global0.a.x, global0.e.x, arg_0)), !global0.a, !vec4<bool>(true, false, global0.a.x, global0.d.x))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x + 978f))), _wgslsmith_f_op_f32(abs(global0.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, arg_1), _wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(-629f, arg_1))))), vec2<bool>(arg_0, true), vec2<bool>(true & any(global0.a.zxy), arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1523f, -609f, -1576f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1274f, -297f, -253f)))))));
    return func_2(arg_2, _wgslsmith_dot_vec4_i32(countOneBits(~(-vec4<i32>(24054i, 2147483647i, -5896i, var_2.b))), -_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b, var_0.x, var_2.b, 1i), vec4<i32>(-2147483647i, -2147483647i, -47038i, -1i)) >> (vec4<u32>(31316u, var_2.c, u_input.a, ~0u) % vec4<u32>(32u))));
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~arg_2.a;
    let var_1 = func_5(arg_1, _wgslsmith_f_op_f32(-global0.c.x), Struct_3(_wgslsmith_div_u32(~abs(1u), 13748u)));
    global0 = Struct_1(select(vec4<bool>(global0.a.x, global0.d.x, any(global0.a.zz) & true, true), select(select(global0.a, vec4<bool>(false, true, arg_1, false), !vec4<bool>(global0.e.x, false, arg_1, arg_1)), select(vec4<bool>(true, false, false, arg_1), select(global0.a, vec4<bool>(global0.a.x, global0.e.x, true, arg_1), false), false), !(!arg_1)), vec4<bool>(true, global0.d.x, global0.e.x, true || (global0.b.x == -346f))), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), -877f), global0.b, global0.a.wz, vec2<bool>(true, select(arg_1, !any(global0.d), !(global0.e.x | global0.d.x))));
    return Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.x, -1798f)) - _wgslsmith_f_op_f32(-global0.b.x)), 633f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, -879f) * _wgslsmith_f_op_vec2_f32(sign(global0.c))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global0.b, vec2<f32>(global0.c.x, global0.c.x), vec2<bool>(true, global0.e.x))))))), vec2<bool>(arg_1, all(select(!global0.a, vec4<bool>(arg_1, true, arg_1, false), !global0.e.x))), !select(!global0.a.xw, vec2<bool>(true, false), global0.e.x));
}

fn func_1() -> f32 {
    let var_0 = func_6(max(63986u, 51117u), all(!(!global0.a)), func_5(all(global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), Struct_3(func_4(-2147483647i, func_2(Struct_3(65153u), 45752i), ~4294967295u))));
    var var_1 = -min(-vec2<i32>(1i, 1i), select(vec2<i32>(-1i) * -vec2<i32>(-71018i, 0i), vec2<i32>(abs(-15225i), ~(-54856i)), all(!var_0.d)));
    global0 = var_0;
    var var_2 = ~_wgslsmith_sub_i32(var_1.x, -1i);
    var_2 = 1i;
    return _wgslsmith_div_f32(1560f, global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(227f, global0.c.x, -365f, -1834f) + vec4<f32>(1384f, global0.c.x, 926f, -179f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1099f, global0.b.x, -1074f, 650f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1827f, 1124f, 525f, 560f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, -884f, global0.b.x) * vec4<f32>(global0.b.x, global0.c.x, global0.b.x, 538f))))) * vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - global0.b.x), _wgslsmith_f_op_f32(global0.b.x - -379f))), _wgslsmith_f_op_f32(trunc(global0.b.x)), global0.b.x)), -1000f, -5439i, ~abs((vec4<u32>(73261u, 116415u, u_input.a, 4294967295u) | vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) ^ min(vec4<u32>(1u, 55213u, u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, u_input.a, 49433u))));
}

