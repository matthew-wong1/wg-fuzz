struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(u_input.d);
    let var_1 = arg_0;
    var var_2 = vec3<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(1u, abs(~u_input.c.x))), ~(_wgslsmith_clamp_u32(u_input.b, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.b, u_input.b, 18945u))) >> (u_input.b % 32u)));
    var var_3 = abs(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mod_u32(1u, ~4323u), 9184u)) & _wgslsmith_add_u32(29056u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 12991u, var_2.x), u_input.c)));
    var var_4 = true;
    return false;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = abs(u_input.b);
    let var_1 = arg_2.a.a.x;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.d.x, _wgslsmith_f_op_f32(-arg_2.d.x), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1821f - arg_2.d.x))));
    var var_4 = max(~var_0, 10790u);
    return _wgslsmith_add_i32(arg_2.a.a.x, 1i);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(vec2<i32>(-func_3(Struct_2(Struct_1(vec2<i32>(arg_1.x, 20205i)), false, false, arg_0, vec2<bool>(true, true)), Struct_1(vec2<i32>(-32899i, 0i)), Struct_2(Struct_1(vec2<i32>(u_input.a, 2147483647i)), true, false, arg_0, vec2<bool>(true, true))), 2147483647i)), _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i ^ u_input.a, ~u_input.d.x), select(max(2147483647i, arg_1.x), firstLeadingBit(0i), false)) << (1u % 32u), Struct_2(Struct_1(vec2<i32>(40373i, u_input.d.x)), all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), true)), arg_0, !select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, true, true))), Struct_1(vec2<i32>(-1i) * -select(vec2<i32>(0i, u_input.d.x), vec2<i32>(-27035i, 25513i), vec2<bool>(true, true))), Struct_1(firstTrailingBit(abs(-vec2<i32>(-1i, arg_1.x)))));
    var var_1 = var_0.c.d;
    let var_2 = vec3<f32>(arg_0.x, 664f, -2214f);
    return !vec2<bool>(!any(vec3<bool>(var_0.c.c, var_0.c.b, false)), any(select(var_0.c.e, vec2<bool>(var_0.c.b, false), select(false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(vec2<bool>(any(vec3<bool>(false, true, true)), true)), !(!func_1(Struct_1(vec2<i32>(0i, u_input.a)), Struct_1(vec2<i32>(u_input.a, -67791i))) || all(func_2(vec2<f32>(171f, 1722f), vec2<i32>(1093i, -1i)))), false);
    var var_1 = abs(u_input.b);
    var var_2 = Struct_4(Struct_3(Struct_1(vec2<i32>(-1i, -67314i) | u_input.d), -u_input.d.x, Struct_2(Struct_1(-u_input.d), var_0.x, any(!vec2<bool>(false, var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(538f, -2086f), vec2<f32>(1000f, 256f)))), vec2<bool>(true, true)), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.d.x), u_input.d), abs(u_input.d))), Struct_1(_wgslsmith_add_vec2_i32(firstTrailingBit(u_input.d), abs(u_input.d)))), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, 0i), max(u_input.d, u_input.d))), u_input.c.x, select(vec2<bool>(true, true), var_0.yy, all(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, false)))), _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.d.x, 1i, ~(-2147483647i), u_input.d.x), ~vec4<i32>(u_input.a, 1i, u_input.d.x, u_input.d.x)) ^ max(~firstTrailingBit(vec4<i32>(u_input.a, 0i, u_input.d.x, u_input.d.x)), -vec4<i32>(20888i, 2147483647i, 0i, u_input.a)));
    let var_3 = var_2.a;
    var var_4 = Struct_1(_wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.d), vec2<i32>(u_input.d.x, 0i)));
    var_2 = Struct_4(var_2.a, var_2.b, min(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.c, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, var_2.c, u_input.c.x), vec4<u32>(var_2.c, u_input.c.x, 1u, var_2.c))), ~32087u), 0u), select(select(select(!var_2.d, vec2<bool>(false, var_0.x), !vec2<bool>(var_2.d.x, var_2.a.c.b)), func_2(var_2.a.c.d, -vec2<i32>(41390i, var_2.a.c.a.a.x)), all(vec2<bool>(var_2.a.c.e.x, var_3.c.c)) == any(vec4<bool>(var_0.x, true, var_0.x, false))), vec2<bool>(var_0.x, var_3.c.b == any(vec2<bool>(var_0.x, false))), false), _wgslsmith_mult_vec4_i32(var_2.e ^ abs(-vec4<i32>(1i, var_3.e.a.x, -1i, var_4.a.x)), (select(var_2.e, vec4<i32>(-19321i, var_4.a.x, 0i, -39121i), vec4<bool>(true, var_3.c.e.x, true, var_0.x)) | select(var_2.e, var_2.e, vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_0.x))) << (select(vec4<u32>(u_input.c.x, var_2.c, u_input.c.x, 1u), select(vec4<u32>(14253u, 23420u, var_2.c, u_input.b), vec4<u32>(28902u, var_2.c, 6584u, 0u), vec4<bool>(var_3.c.e.x, var_2.a.c.e.x, var_3.c.b, var_0.x)), var_2.a.c.c) % vec4<u32>(32u))));
    var var_5 = all(!(!vec3<bool>(true, any(vec3<bool>(var_3.c.e.x, var_3.c.b, false)), var_2.a.c.b)));
    var var_6 = _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, ~1u, ~(u_input.b << (u_input.b % 32u))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(var_4.a.x, u_input.d.x)));
}

