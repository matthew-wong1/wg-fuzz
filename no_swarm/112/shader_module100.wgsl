struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = arg_3.a.x;
    var var_1 = arg_3;
    let var_2 = ~max(~(-var_0), ~var_1.a.x) << (max(u_input.c, _wgslsmith_mod_u32(23219u, u_input.c)) % 32u);
    var_1 = Struct_2(((vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_0, var_1.a.x)) | _wgslsmith_div_vec3_i32(var_1.a << (vec3<u32>(20442u, u_input.c, 122847u) % vec3<u32>(32u)), u_input.e)) ^ -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, var_0, var_0)), ~vec3<i32>(-1i, var_1.a.x, u_input.b)), arg_3.b);
    var_1 = arg_3;
    return select(!select(vec2<bool>(all(vec2<bool>(var_1.b.a, arg_3.b.a)), var_1.b.a), !select(vec2<bool>(var_1.b.a, arg_3.b.a), vec2<bool>(arg_3.b.a, false), vec2<bool>(true, true)), arg_3.a.x < 24987i), vec2<bool>(!any(select(vec3<bool>(var_1.b.a, arg_3.b.a, var_1.b.a), vec3<bool>(false, false, arg_3.b.a), true)), 1u >= abs(~u_input.c)), any(select(select(vec2<bool>(var_1.b.a, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_3.b.a), arg_3.b.a), any(vec4<bool>(var_1.b.a, false, true, false))), vec2<bool>(arg_3.b.a & true, arg_3.b.a), select(true, !var_1.b.a, true))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(u_input.e, Struct_1(all(func_3(vec2<f32>(-779f, -318f), _wgslsmith_f_op_f32(min(-307f, -509f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(272f, 1384f))), Struct_2(u_input.e, Struct_1(false))))));
    var var_1 = _wgslsmith_mult_i32(-u_input.e.x, u_input.a);
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-2147483647i) ^ var_0.a.x, -66254i, _wgslsmith_div_i32(u_input.b, var_0.a.x)), -select(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, u_input.b, -35241i), vec3<i32>(-147i, var_0.a.x, 15715i)), ~vec3<i32>(-2147483647i, -1i, u_input.d)), -vec3<i32>(-22944i, 51653i, u_input.a) >> (vec3<u32>(1u, 4294967295u, 20341u) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.a, var_0.b.a, false), !vec3<bool>(var_0.b.a, true, var_0.b.a))));
    let var_2 = select(!(!vec4<bool>(true, u_input.c < 55194u, false, all(vec2<bool>(true, var_0.b.a)))), !(!select(!vec4<bool>(var_0.b.a, true, false, true), vec4<bool>(var_0.b.a, var_0.b.a, true, var_0.b.a), var_0.b.a)), !(!select(vec4<bool>(false, var_0.b.a, var_0.b.a, var_0.b.a), select(vec4<bool>(var_0.b.a, true, var_0.b.a, var_0.b.a), vec4<bool>(var_0.b.a, var_0.b.a, false, true), true), true)));
    var_1 = max(-min(~firstTrailingBit(var_0.a.x), var_0.a.x), -2147483647i);
    return !var_2.zy;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-627f)), -277f, all(vec2<bool>(arg_3.x, arg_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f + -1270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f + -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -192f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(-777f - -1031f), 684f, 1000f))))));
    var_0 = vec4<f32>(416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, var_0.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1610f, 1000f, arg_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(334f - var_0.x) - _wgslsmith_f_op_f32(-608f + -1000f))))), var_0.x);
    let var_1 = -1i != _wgslsmith_mult_i32(~(-u_input.d), 2147483647i);
    let var_2 = arg_2.x;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f - -781f), var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(1524f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f * var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 337f, var_0.x, -434f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-677f, var_0.x, var_0.x, -135f))))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -427f, -391f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(352f, var_0.x, 724f, var_0.x)))) * vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), -279f, var_0.x, 660f)))));
    return Struct_2(vec3<i32>(-1i) * -u_input.e, Struct_1(!arg_3.x && true));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1922f, _wgslsmith_f_op_f32(-arg_0.x)))))), _wgslsmith_f_op_f32(1394f - 1930f));
    let var_1 = any(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(true, true, true, true))));
    var_0 = arg_0.xx;
    var var_2 = func_4(select(func_2(), select(func_3(arg_0.wy, var_0.x, _wgslsmith_f_op_vec2_f32(-arg_0.zx), Struct_2(vec3<i32>(45549i, 12484i, -1i), Struct_1(var_1))), !vec2<bool>(var_1, var_1), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(580f, -268f), arg_0.wx, vec2<bool>(var_1, var_1))), _wgslsmith_f_op_f32(select(arg_0.x, 689f, false)), arg_0.yy, Struct_2(u_input.e, Struct_1(true)))), func_2()), 0u, min(-min(vec3<i32>(16641i, -4929i, 23764i) & vec3<i32>(u_input.a, 2147483647i, -3674i), -vec3<i32>(u_input.b, 44259i, 2147483647i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, 70743i, 26264i), vec4<i32>(-1553i, u_input.d, 13718i, u_input.d)), _wgslsmith_mod_i32(u_input.a, u_input.d), u_input.b) >> (abs(~vec3<u32>(4294967295u, u_input.c, u_input.c)) % vec3<u32>(32u))), !vec2<bool>(var_1, var_1));
    var var_3 = func_4(vec2<bool>(false, true), u_input.c, select(var_2.a, var_2.a, var_2.b.a), !(!func_2()));
    return 10399u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((~(~u_input.d) > _wgslsmith_clamp_i32(_wgslsmith_add_i32(-3132i, 5430i), -u_input.d, u_input.d)) & true);
    var var_1 = ~vec4<u32>(~func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-836f, -1057f, 2391f, 458f))), 0u, abs(1u), u_input.c);
    var_1 = ~(vec4<u32>(5541u, ~u_input.c, var_1.x, u_input.c) | (~vec4<u32>(u_input.c, u_input.c, u_input.c, 8560u) & abs(vec4<u32>(12362u, 1u, 4294967295u, 83011u)))) << (~(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.c, var_1.x, u_input.c), 46716u >> (u_input.c % 32u), 1u) & ~vec4<u32>(4294967295u, 4294967295u, 12847u, 64865u)) % vec4<u32>(32u));
    var_1 = vec4<u32>(~(~1u), _wgslsmith_clamp_u32(1u, func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-961f, -849f, 1000f, 1806f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -720f, -1000f, 1205f)))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(var_1.xxy), var_1.zww), 4294967295u)), ~func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2194f, 229f, 1648f, 682f)))) << (u_input.c % 32u), 18499u);
    let var_2 = var_0;
    var_1 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, u_input.c, u_input.c), countOneBits(var_1.x)), u_input.c, abs(47175u)), abs(~select(vec4<u32>(92502u, 0u, 57825u, u_input.c), vec4<u32>(15445u, u_input.c, var_1.x, 0u), vec4<bool>(true, false, var_2.a, true)))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 205f)), _wgslsmith_f_op_f32(abs(-843f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-966f, -500f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f + _wgslsmith_f_op_f32(f32(-1f) * -527f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(914f, -481f) * -752f)), _wgslsmith_f_op_f32(trunc(-618f)), any(vec3<bool>(true, false, true))))));
    var var_4 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(u_input.b >> (13039u % 32u), 1647i, u_input.e.x, -30034i) >> (max(~vec4<u32>(4294967295u, 4294967295u, 85544u, 32296u), ~vec4<u32>(4294967295u, u_input.c, var_1.x, 0u)) % vec4<u32>(32u))));
}

