struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    global0 = _wgslsmith_sub_i32(~u_input.e.x, ~1i);
    global0 = -19902i;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(352f + 428f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1579f, arg_1.a.b.b))), -178f);
    global0 = arg_3.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.zz)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(818f, arg_1.a.b.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1578f, 903f) - vec2<f32>(-2340f, 2867f))) + var_0.xx)));
    return _wgslsmith_mult_i32(u_input.c.x, arg_3.x);
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.e.x;
    global0 = u_input.e.x;
    let var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) + -1000f) - 1273f), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-202f - -1244f))), vec2<bool>(true, false)), 315f));
    global0 = func_3(true, Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(!var_1.a.b.a, -218f, var_1.a.b.a), var_1.a.b.b)), !any(vec4<bool>(false, true, true, true)), u_input.e);
    let var_2 = countOneBits(vec4<i32>(reverseBits(-10168i), _wgslsmith_div_i32(abs(u_input.c.x) >> (~u_input.d % 32u), -u_input.c.x), var_0, 1i));
    return var_1.a;
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = min(~u_input.e, vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 27372i, 0i, 0i)) << (u_input.a % vec4<u32>(32u));
    var var_2 = Struct_5(Struct_3(_wgslsmith_div_f32(173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * 1000f)), func_2().b, _wgslsmith_f_op_f32(min(-1217f, _wgslsmith_f_op_f32(-var_0.b.b)))));
    var var_3 = !select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, var_0.b.a.x), vec3<bool>(var_0.b.c.x, true, false))), vec3<bool>(true, var_2.a.b.a.x & (855f == var_0.c), (var_0.b.b < var_0.c) || true), any(!func_2().b.c));
    var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(var_0.b.b + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_f32(f32(-1f) * -919f)))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), select(var_0.b.a, !var_2.a.b.c, var_3.x)), _wgslsmith_f_op_f32(sign(var_0.a))));
    return -var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c.x, func_1()) & u_input.c.xz, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, ~0i), ~u_input.c.zx >> (u_input.b % vec2<u32>(32u)))));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1604f))))), func_2().b, -301f);
    var_0 = func_2();
    var var_1 = ~u_input.a.yw;
    let var_2 = _wgslsmith_f_op_f32(func_2().a + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.b.b, var_0.a)), var_0.c, true)))));
    var_0 = func_2();
    let var_3 = u_input.c.x;
    var var_4 = vec3<bool>(!func_2().b.c.x, false, var_0.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(0i, 1i, -u_input.c, vec2<u32>(_wgslsmith_sub_u32(var_1.x, u_input.d), ~4294967295u));
}

