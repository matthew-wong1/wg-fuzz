struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-770f)) * _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-1000f, 1000f))))));
    global0 = arg_1;
    var var_1 = arg_0.x;
    global0 = arg_1;
    let var_2 = Struct_1(-arg_0, _wgslsmith_sub_vec2_i32(select(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.d.x), vec2<i32>(1i, arg_0.x)), arg_0.xw, select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), arg_1)), u_input.d.yz, select(vec2<bool>(arg_1, true), vec2<bool>(false, false), true)), ~arg_0.xx));
    return var_0.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -173f) * _wgslsmith_f_op_f32(f32(-1f) * -1966f)))), -1083f, true));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.d.x, arg_0, arg_0, u_input.d.x), false)))))));
    global0 = any(!select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), vec2<bool>(true, all(vec4<bool>(true, false, true, true)))));
    let var_2 = vec2<bool>(true, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1018f)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a)))), var_0)));
    return Struct_1(~abs(-vec4<i32>(arg_0, 2147483647i, u_input.d.x, u_input.c) & -vec4<i32>(arg_0, u_input.d.x, 0i, u_input.c)), -countOneBits(_wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, u_input.c), vec2<i32>(arg_0, arg_0), u_input.d.yy)));
}

fn func_1() -> Struct_2 {
    global0 = false;
    var var_0 = func_2(-42867i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(822f + 702f)))) + _wgslsmith_f_op_f32(min(-288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f - 412f) - _wgslsmith_f_op_f32(1286f - -1000f))))), -489f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -669f)) + -342f)));
    global0 = true;
    let var_2 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(-select(vec2<i32>(u_input.c, u_input.d.x), var_0.a.zz, vec2<bool>(false, true)), vec2<i32>(1i ^ var_0.a.x, -56130i)), 0i, -22752i);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.x)))) - -584f));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.d.x;
    global0 = !select(!all(vec4<bool>(true, false, true, false)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), true);
    global0 = all(select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), false));
    global0 = 1000f < _wgslsmith_f_op_f32(-arg_0.a);
    global0 = false;
    return func_2(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec4<bool>(1i > _wgslsmith_mult_i32(-23799i, u_input.c), false, u_input.a.x >= ~u_input.e.x, true));
    var var_0 = Struct_1(-_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, u_input.c, 2147483647i), abs(vec4<i32>(16303i, 0i, 0i, 4551i)), select(vec4<i32>(-2147483647i, 47223i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, u_input.d.x, -67634i, 10198i), vec4<bool>(false, false, true, true))), countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, u_input.d.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-33372i, u_input.c, u_input.c, u_input.d.x), vec4<i32>(u_input.c, 11906i, -2147483647i, u_input.d.x))), u_input.d.zy);
    var_0 = func_4(func_1());
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(449f)))));
    let var_2 = func_1();
    let var_3 = 1627f;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(816f + -1163f), _wgslsmith_f_op_f32(-var_2.a))) - var_3)), _wgslsmith_sub_vec2_u32(u_input.e.xx, vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), min(u_input.a.x | u_input.a.x, 0u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, _wgslsmith_f_op_f32(-835f + -1551f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3)) - _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(floor(var_3)))), u_input.e.xz, vec2<u32>(_wgslsmith_sub_u32(reverseBits(0u), _wgslsmith_div_u32(u_input.e.x, ~u_input.e.x)), 1u >> (u_input.b.x % 32u)));
}

