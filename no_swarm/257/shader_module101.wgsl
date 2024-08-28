struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    return !vec4<bool>(all(!(!vec3<bool>(arg_1.x, arg_1.x, false))), (arg_0 >> (firstLeadingBit(u_input.a.x) % 32u)) > reverseBits(_wgslsmith_div_u32(44460u, 37032u)), false, true);
}

fn func_2(arg_0: i32) -> bool {
    global0 = false;
    global0 = true || all(select(func_3(firstLeadingBit(u_input.a.x), vec2<bool>(false, false)), vec4<bool>(true, true, true, false), true));
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - -188f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1020f * 735f)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -2147483647i), vec4<i32>(1i, arg_0, 0i, -2147483647i)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -621f))), _wgslsmith_f_op_f32(f32(-1f) * -1671f)), -1i));
    var var_1 = var_0.a.c;
    global0 = any(vec4<bool>(all(vec2<bool>(false, false)), true, var_0.a.c, true));
    return any(vec2<bool>(true, !any(vec3<bool>(var_0.a.c, var_0.a.c, var_0.a.c))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    global0 = true;
    let var_0 = func_2(arg_0.a.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.d, -347f, 832f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.d, 630f, arg_0.a.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-942f, -2500f, arg_0.a.a), vec3<f32>(arg_0.a.a, -1691f, 1988f), var_0)) * vec3<f32>(-185f, 213f, -1233f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(404f, -601f, arg_0.a.a) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.d, -1660f, arg_0.a.a), vec3<f32>(-1541f, arg_0.a.d, arg_0.a.d), arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(668f, arg_0.a.a, arg_0.a.a)))), select(select(!select(arg_1, arg_1, vec3<bool>(true, true, false)), vec3<bool>(any(vec4<bool>(false, false, true, var_0)), arg_0.a.c, false || arg_0.a.c), all(!vec4<bool>(false, arg_0.a.c, true, arg_1.x))), vec3<bool>(true, false, true), !(!func_2(arg_0.a.b.x)))));
    global0 = !func_3(29377u, !func_3(u_input.a.x, arg_1.yx).zw).x;
    var var_2 = (-12508i << (min(reverseBits(28545u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 23357u), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a.x >> (0u % 32u))) % 32u)) | (countOneBits(_wgslsmith_mult_i32(68700i, _wgslsmith_clamp_i32(1i, -32459i, arg_0.a.e))) | ~_wgslsmith_dot_vec4_i32(min(arg_0.a.b, vec4<i32>(arg_0.a.e, -30665i, arg_0.a.b.x, arg_0.a.e)), vec4<i32>(arg_0.a.e, 36708i, 2147483647i, arg_0.a.b.x)));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.a.b.zyy, vec3<i32>(-1i) * -arg_0.a.b.xzy, vec3<i32>(1i, _wgslsmith_mult_i32(2147483647i, 1i), -17833i)) << (reverseBits(select(~vec3<u32>(u_input.a.x, 0u, 1u), firstLeadingBit(vec3<u32>(43758u, u_input.a.x, u_input.a.x)), vec3<bool>(true, arg_1.x, arg_1.x))) % vec3<u32>(32u)), arg_0.a.b.xzx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<i32>(0i, countOneBits(abs(42105i)), func_1(Struct_4(Struct_1(1213f, vec4<i32>(-2147483647i, -40687i, -9314i, -49873i), true, -233f, -21006i)), vec3<bool>(true, true, false), false) | 0i));
    var var_1 = Struct_4(Struct_1(1337f, vec4<i32>(10729i, var_0.x, var_0.x, func_1(Struct_4(Struct_1(-181f, vec4<i32>(0i, 1i, -9522i, -1i), true, -1635f, var_0.x)), vec3<bool>(false, true, true), false) >> (countOneBits(u_input.a.x) % 32u)), func_2(max(abs(1i), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1725f + -1987f) * -864f), reverseBits(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.e);
}

