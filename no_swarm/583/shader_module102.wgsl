struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    global0 = Struct_1(-582f, global0.b, ~vec2<i32>(~global0.c.x, 2147483647i));
    var var_0 = global0.c;
    let var_1 = vec3<u32>(1u, ~(~(81315u ^ ~u_input.a)), ~abs(160502u));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x))), !select(vec3<bool>(global0.c.x <= -21405i, false, all(global0.b.zy)), !global0.b, -global0.c.x <= firstLeadingBit(var_0.x)), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), global0.c.x), global0.c)));
    var_0 = _wgslsmith_div_vec2_i32(global0.c, vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(1i, var_0.x, 2147483647i, -31581i)), vec4<i32>(global0.c.x, 4835i, -1i, var_0.x) & _wgslsmith_mult_vec4_i32(vec4<i32>(-21311i, 0i, 32100i, var_0.x), vec4<i32>(arg_0, -12738i, 1i, arg_0))), abs((-2147483647i ^ var_0.x) << (arg_2 % 32u))));
    return var_1.x;
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(-1224f)), !global0.b, -select(global0.c, global0.c, select(select(global0.b.xz, vec2<bool>(true, false), arg_0.a), select(global0.b.yy, global0.b.yx, false), false)));
    let var_0 = vec3<bool>(true, all(select(select(vec3<bool>(true, false, global0.b.x), vec3<bool>(false, global0.b.x, arg_0.a), arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, global0.b.x), !(global0.c.x < global0.c.x))), arg_0.a);
    let var_1 = Struct_2(false || var_0.x);
    var var_2 = Struct_4(~(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(77272u, 2953u, 5699u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 49886u, 65353u))), Struct_2(any(vec2<bool>(true, select(var_1.a, arg_0.a, false)))), 4294967295u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(1000f - global0.a)), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(ceil(604f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1159f, 301f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a)), vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global0.b.x);
    var var_1 = -reverseBits(max(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, -14380i, global0.c.x, 2147483647i), vec4<i32>(4177i, 2147483647i, -1i, 43630i)), global0.c.x) ^ _wgslsmith_mult_i32(global0.c.x, global0.c.x));
    var_1 = -_wgslsmith_dot_vec2_i32(global0.c, global0.c);
    var var_2 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2((~57807u << (_wgslsmith_dot_vec2_u32(vec2<u32>(11932u, 62440u), vec2<u32>(u_input.a, u_input.a)) % 32u)) <= _wgslsmith_sub_u32(u_input.a, func_3(global0.c.x, vec3<f32>(-117f, -617f, global0.a), u_input.a)))));
    return Struct_1(global0.a, select(global0.b, select(global0.b, global0.b, vec3<bool>(u_input.a == u_input.a, 647f != global0.a, true)), global0.b), ~abs(global0.c));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec2<i32> {
    let var_0 = func_2();
    let var_1 = Struct_4(~abs(~vec4<u32>(4294967295u, 20362u, u_input.a, u_input.a)), Struct_2(global0.b.x), _wgslsmith_div_u32(u_input.a, 4294967295u) ^ u_input.a);
    let var_2 = arg_1.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(742f)), _wgslsmith_f_op_f32(-arg_0))));
    global0 = arg_1;
    return _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(26733i, arg_1.c.x)), var_0.c), vec2<i32>(-global0.c.x, var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-1642f, global0.b, func_1(global0.a, Struct_1(-1005f, !global0.b, -vec2<i32>(1i, global0.c.x)), Struct_2(!(u_input.a != 28069u)), firstTrailingBit(global0.c.x)));
    global0 = func_2();
    let var_0 = Struct_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) + global0.a))));
    global0 = func_2();
    global0 = func_2();
    global0 = Struct_1(global0.a, func_2().b, vec2<i32>(~global0.c.x, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(global0.c.x, 5834i, global0.c.x)), vec3<i32>(abs(-32668i), 13934i, global0.c.x << (u_input.a % 32u)))));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~min(abs(vec4<i32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)), vec4<i32>(-global0.c.x, global0.c.x, global0.c.x | 2147483647i, 1i)));
}

