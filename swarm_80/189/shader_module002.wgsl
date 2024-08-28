struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = vec3<bool>(true, all(vec3<bool>(all(vec4<bool>(true, true, false, true)), true, true)), false);
    var_0 = !(!(!(!(!vec3<bool>(false, true, var_0.x)))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1f, 1000f))));
    var var_2 = Struct_2(!select(!(!vec4<bool>(false, var_0.x, true, true)), vec4<bool>(var_0.x, true, var_0.x, true), select(var_0.x && var_0.x, var_0.x, 1u >= u_input.b.x)), Struct_1(vec2<i32>(u_input.c.x, 0i)));
    let var_3 = Struct_2(var_2.a, var_2.b);
    return -1380f;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, -626f)), arg_0.x, 292f)), vec3<f32>(_wgslsmith_f_op_f32(-2177f * _wgslsmith_div_f32(arg_0.x, -229f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_0.x)), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, all(vec2<bool>(true, false)))))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x), _wgslsmith_f_op_f32(1526f - _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_1 = _wgslsmith_mult_i32(-firstLeadingBit(~(0i >> (arg_1.x % 32u))), 0i);
    var_1 = countOneBits(-9000i);
    var var_2 = vec3<u32>(~u_input.a, countOneBits(~_wgslsmith_div_u32(arg_1.x, ~arg_1.x)), ~arg_1.x);
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(3591i, 0i, -12877i, u_input.c.x), select(vec4<i32>(u_input.c.x, ~1i, -1i, _wgslsmith_div_i32(2147483647i, u_input.c.x) & countOneBits(u_input.c.x)), vec4<i32>(-51737i, -(~0i), 2147483647i, -u_input.c.x), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)))));
    return 31377u;
}

fn func_2() -> vec4<f32> {
    var var_0 = ~u_input.b.x << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.b.x), vec3<u32>(10185u, 31038u, u_input.b.x)), _wgslsmith_add_u32(59581u, u_input.a), ~u_input.b.x)), ~vec4<u32>(4294967295u, u_input.a, ~u_input.a, u_input.b.x << (u_input.a % 32u))) % 32u);
    var_0 = 4925u;
    var_0 = ~10217u;
    var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(373f * _wgslsmith_f_op_f32(func_3()))), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2673f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -695f)) - _wgslsmith_f_op_f32(round(251f))), -542f, -1257f)));
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1589f), _wgslsmith_f_op_f32(-555f - 720f), 324f, _wgslsmith_div_f32(-367f, 655f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1543f, 1074f, -922f, 1283f) - vec4<f32>(610f, -206f, 730f, 816f)))) - _wgslsmith_f_op_vec4_f32(func_2())), (arg_0.x || true) && true, Struct_2(select(vec4<bool>(arg_0.x, u_input.c.x < -30302i, true, !arg_0.x), vec4<bool>(true, select(false, false, false), false, any(vec2<bool>(arg_0.x, true))), vec4<bool>(arg_0.x, any(vec3<bool>(arg_0.x, true, false)), false, arg_0.x)), Struct_1(vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, u_input.c.x))));
    let var_1 = var_0;
    var var_2 = u_input.b.x;
    var var_3 = ~u_input.b;
    var var_4 = (0i << ((4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 60112u) << (u_input.b % vec2<u32>(32u)), vec2<u32>(var_3.x, var_3.x)) % 32u)) % 32u)) < u_input.c.x;
    return var_0.c.a.yyx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_1 = 945f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1, -939f), -2363f, _wgslsmith_f_op_f32(-var_1), 1279f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -1572f, var_1, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1)), !vec4<bool>(false, true, var_0.x, true))))));
    let var_3 = ~select(16837i, u_input.c.x ^ u_input.c.x, true);
    var var_4 = Struct_3(var_2, true, Struct_2(!vec4<bool>(true, any(vec4<bool>(false, var_0.x, false, true)), !var_0.x, var_2.x <= var_2.x), Struct_1(select(vec2<i32>(1374i, var_3), select(u_input.c.yx, u_input.c.yx, false), select(var_0.xz, var_0.xy, var_0.xz)))));
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, var_1, var_4.a.x, var_2.x)), _wgslsmith_f_op_vec4_f32(select(var_4.a, _wgslsmith_div_vec4_f32(vec4<f32>(175f, var_2.x, var_4.a.x, var_1), vec4<f32>(1000f, var_2.x, -962f, 412f)), select(vec4<bool>(false, var_4.b, var_4.b, false), vec4<bool>(var_4.b, var_4.b, false, false), var_4.c.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1 + 398f), var_2.x, -276f, _wgslsmith_f_op_f32(sign(-793f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_f_op_vec4_f32(abs(var_4.a)))), var_0.x)), !func_1(!func_1(var_4.c.a.zx).zy).x, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 22639u), min(u_input.a, 30682u)) >> (reverseBits(u_input.a) % 32u), _wgslsmith_div_u32(abs(~4704u), u_input.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, 27114u), 11312u), 0u));
}

