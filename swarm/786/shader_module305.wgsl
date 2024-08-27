struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec2<bool>(false, false), -375f));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<bool, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    let var_0 = u_input.b;
    let var_1 = global0.a;
    global1 = vec2<bool>(!all(vec2<bool>(true, false)), global1.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(var_1.b + var_1.b))), _wgslsmith_f_op_f32(var_1.b * -758f), global0.a.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b + -446f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b, 432f, global0.a.b, var_1.b)) + vec4<f32>(var_1.b, global0.a.b, 251f, var_1.b))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1035f, var_1.b, -343f, -1014f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1750f, -659f, -701f, var_1.b)))) * vec4<f32>(2790f, 1000f, _wgslsmith_f_op_f32(-global0.a.b), var_1.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, -934f, global0.a.b, -495f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1139f, var_1.b, 1035f, global0.a.b) * vec4<f32>(-474f, global0.a.b, 913f, 1064f)))))));
    return u_input.d.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = max(_wgslsmith_clamp_vec4_i32(u_input.d & firstTrailingBit(vec4<i32>(u_input.c.x, 0i, u_input.d.x, -22292i) ^ vec4<i32>(-6469i, 2147483647i, -34291i, u_input.d.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, -28861i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, -2147483647i)), vec4<i32>(1i, 0i, min(1i, u_input.c.x), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x))), abs(_wgslsmith_mod_vec4_i32(u_input.d, countOneBits(u_input.d)))), u_input.d);
    let var_2 = ~(~u_input.d.wyw);
    global0 = Struct_4(Struct_2(arg_0, -247f));
    let var_3 = ~_wgslsmith_sub_vec4_i32(var_1, vec4<i32>(~0i, var_1.x, u_input.d.x, var_2.x)) & vec4<i32>(var_1.x, func_3(), var_2.x, countOneBits(u_input.d.x));
    return global0.a;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(func_2(global0.a.a, global0.a, vec2<f32>(845f, -213f)));
    var var_1 = true;
    var var_2 = _wgslsmith_mult_i32(0i, u_input.b);
    global1 = func_2(func_2(vec2<bool>(any(vec4<bool>(true, global1.x, true, false)), true), global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-871f, var_0.a.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2159f, -580f), vec2<f32>(var_0.a.b, var_0.a.b), global0.a.a)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -957f), _wgslsmith_div_f32(-1261f, global0.a.b)))).a, func_2(global0.a.a, func_2(global0.a.a, global0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, global0.a.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, var_0.a.b)))), vec2<f32>(_wgslsmith_f_op_f32(global0.a.b - var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2057f, var_0.a.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1520f, global0.a.b) + vec2<f32>(global0.a.b, global0.a.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.b, -239f)))))))).a;
    global2 = array<bool, 22>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(global0.a.b + _wgslsmith_f_op_f32(833f * 1033f)) >= _wgslsmith_f_op_f32(-global0.a.b)), ~min(_wgslsmith_div_vec4_u32(vec4<u32>(61402u, 48585u, 4076u, 32036u), firstTrailingBit(vec4<u32>(8789u, 1u, u_input.a, u_input.a))), ~countOneBits(vec4<u32>(u_input.a, 4694u, u_input.a, 29693u))));
    var var_1 = u_input.d.wzx;
    var var_2 = u_input.d.x;
    global0 = func_1();
    global1 = !global0.a.a;
    let var_3 = !vec2<bool>(all(vec4<bool>(var_0.a, global0.a.a.x || true, true, !global1.x)), all(func_1().a.a));
    var var_4 = Struct_1(false, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(global0.a.b, 1089f), _wgslsmith_f_op_f32(step(-470f, global0.a.b)), _wgslsmith_f_op_f32(max(2269f, global0.a.b)), 2271f)))), ~(-1i));
}

