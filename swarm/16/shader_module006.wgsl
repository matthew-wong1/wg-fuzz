struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = vec3<i32>(~select(1i, _wgslsmith_mult_i32(1i, i32(-1i) * -1i), arg_0 && all(vec2<bool>(false, true))), -max(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-28640i, 1i))) ^ 22134i, -reverseBits(1i));
    let var_1 = Struct_3(Struct_2(-3796i, 2438f, ~_wgslsmith_add_vec4_u32(vec4<u32>(111120u, u_input.a, u_input.a, 1u) >> (vec4<u32>(u_input.a, 11153u, u_input.a, 23356u) % vec4<u32>(32u)), vec4<u32>(40730u, 12883u, u_input.a, 4294967295u) | vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), firstTrailingBit(abs(-1i)) & var_0.x, !(!select(select(vec3<bool>(arg_0, arg_0, arg_1.x), vec3<bool>(arg_1.x, true, true), vec3<bool>(false, true, false)), !vec3<bool>(false, true, arg_0), arg_0)));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, -2055f, 214f, 749f))) + vec4<f32>(_wgslsmith_f_op_f32(min(var_1.a.b, var_1.a.b)), _wgslsmith_f_op_f32(sign(-931f)), _wgslsmith_f_op_f32(ceil(var_1.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -346f))), u_input.a, vec2<u32>(33587u, _wgslsmith_mod_u32(var_1.a.c.x, u_input.a)), select(~0u, ~(~u_input.a), !select(false, false, arg_1.x)), ~var_1.a.c.x));
    let var_3 = ~(~(-var_1.b & _wgslsmith_mod_i32(var_0.x, -30649i))) != var_0.x;
    let var_4 = var_1.b;
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_3 {
    var var_0 = -arg_0 | -1264i;
    return Struct_3(func_2(true, vec2<bool>(true, true)), _wgslsmith_add_i32(arg_0, i32(-1i) * -abs(2147483647i)), vec3<bool>(all(!vec4<bool>(false, arg_1, arg_1, false)) | true, any(vec4<bool>(arg_1, !arg_1, true, arg_1)), !(!(true || arg_1))));
}

fn func_3() -> Struct_3 {
    return func_1(func_1(func_2(!any(vec2<bool>(false, true)), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 1i, 9168i), vec4<i32>(-2147483647i, 24744i, 2147483647i, 0i)), true).c.zz).a, true).a.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(0i, true);
    var_0 = func_1(-64739i, !var_0.c.x && func_1(-var_0.a.a, var_0.a.c.x <= var_0.a.c.x).c.x);
    var_0 = func_3();
    var_0 = Struct_3(Struct_2(-77151i, _wgslsmith_f_op_f32(-var_0.a.b), var_0.a.c), 18408i, !vec3<bool>(any(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false)), true, var_0.c.x));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1265f, -759f, -1148f, var_0.a.b)))))), firstLeadingBit(~(~4294967295u)), var_0.a.c.wz, ~countOneBits(u_input.a & var_0.a.c.x), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x + var_1.a.a.x)))), func_3().b, _wgslsmith_f_op_vec4_f32(var_1.a.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.a + var_1.a.a)))));
}

