struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = select(vec2<i32>(-(~_wgslsmith_mult_i32(arg_3.a.x, -36550i)), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(arg_0), 2147483647i >> (arg_3.c.x % 32u), ~arg_3.a.x), arg_3.a)), arg_3.a.zx, arg_3.b.x);
    var var_1 = _wgslsmith_f_op_f32(abs(arg_2.x));
    var var_2 = arg_3;
    var_2 = Struct_1(-(_wgslsmith_clamp_vec3_i32(-var_2.a, vec3<i32>(-1i, arg_3.a.x, 1i), vec3<i32>(-19604i, arg_3.a.x, -1i) | arg_3.a) & arg_3.a), !var_2.b, var_2.c, _wgslsmith_f_op_f32(-1172f + _wgslsmith_f_op_f32(106f + arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2194f + 130f)));
    var var_3 = firstLeadingBit(arg_0);
    return 23193u;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(~arg_0, -36347i, arg_0), select(vec4<bool>(false, true, all(!vec2<bool>(false, arg_1)), arg_1), vec4<bool>(false, false, true, false), false), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), ~(4294967295u ^ u_input.a.x), func_3(arg_0, vec4<f32>(1000f, -1477f, 598f, 310f), vec4<f32>(236f, 1452f, -1555f, 146f), Struct_1(vec3<i32>(arg_0, 23395i, -1i), vec4<bool>(false, true, true, true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -1228f, 1014f)) << (26440u % 32u)) ^ abs(_wgslsmith_add_vec4_u32(vec4<u32>(33878u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(20404u, 0u, 37070u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 40585u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(936f + 567f), _wgslsmith_f_op_f32(min(-2504f, 253f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f)))));
    var var_1 = vec4<f32>(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.e)) * 385f), 1356f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f + 303f)), var_0.e);
    let var_2 = var_1.yzy;
    var var_3 = true;
    var var_4 = Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_0, var_0.a.x, 1i) ^ var_0.a, ~(-vec3<i32>(var_0.a.x, arg_0, var_0.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(31641i, var_0.a.x, var_0.a.x), -vec3<i32>(1i, var_0.a.x, 2147483647i))) & ~(~(var_0.a ^ vec3<i32>(arg_0, 1i, arg_0))), !var_0.b, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) * var_1.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, 1362f)))), var_2.x);
    return Struct_1(var_4.a, select(select(var_4.b, select(vec4<bool>(var_0.b.x, true, false, true), select(vec4<bool>(var_0.b.x, var_4.b.x, false, arg_1), vec4<bool>(var_0.b.x, false, false, false), vec4<bool>(var_4.b.x, var_4.b.x, true, arg_1)), all(vec2<bool>(false, var_0.b.x))), select(var_4.b, vec4<bool>(true, true, true, var_4.b.x), true)), var_4.b, (0u | abs(var_4.c.x)) < var_4.c.x), _wgslsmith_mod_vec4_u32(var_4.c, var_4.c), 1000f, -412f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = !(!arg_1.b.x);
    var var_1 = arg_1;
    var_1 = func_2(firstTrailingBit(~23747i), !arg_1.b.x);
    var var_2 = arg_1;
    let var_3 = func_2(var_1.a.x, var_0);
    return Struct_1(vec3<i32>(select(~1i, ~(-6222i), false), 67249i, var_1.a.x), select(select(func_2(i32(-1i) * -25498i, !var_0).b, var_2.b, vec4<bool>(var_3.b.x, var_0, var_0, true)), !(!func_2(var_2.a.x, var_0).b), func_2(var_1.a.x, false).b), countOneBits(_wgslsmith_mod_vec4_u32(var_2.c, arg_1.c)), -1676f, _wgslsmith_f_op_f32(step(arg_0.x, -600f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> StorageBuffer {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(arg_0))))) - _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(abs(arg_0)))))), func_2(17989i, all(vec2<bool>(true, true))), u_input.a & countOneBits(vec2<u32>(1u, ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(arg_0.x - 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.x, 1119f, var_0.b.x)), _wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * arg_0.x) * _wgslsmith_f_op_f32(arg_1 * var_0.d))))));
    var_1 = 1f;
    var var_3 = 965f;
    return StorageBuffer(-849f, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1242f, -946f, -1000f))) + vec3<f32>(-998f, -1110f, 1000f))))), 1646f);
}

