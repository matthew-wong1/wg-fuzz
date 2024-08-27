struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false)), abs(i32(-1i) * -2147483647i), 16960u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))) - _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(1028f - arg_1.x)) * -152f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)) + arg_1));
    let var_1 = Struct_1(select(vec4<bool>(true, all(vec3<bool>(var_0.a.x, true, var_0.a.x)), !(true && var_0.d), any(vec3<bool>(true, false, true))), vec4<bool>(var_0.d, (u_input.c.x >> (20452u % 32u)) != 5932u, false, var_0.d), select(select(var_0.a.x, true, all(vec3<bool>(var_0.a.x, var_0.d, var_0.a.x))), !var_0.a.x, true)), ~arg_0, u_input.a.x, all(!(!(!vec2<bool>(var_0.a.x, var_0.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e - var_0.e) + _wgslsmith_f_op_vec2_f32(arg_1 * var_0.e))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(645f, var_1.e.x, 1871f), vec3<f32>(var_0.e.x, -368f, var_0.e.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(822f, var_1.e.x, -734f))))), vec3<f32>(-212f, var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 967f) - _wgslsmith_f_op_f32(min(arg_1.x, -1000f))))));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e.x))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, var_1.e.x, -1000f) * vec3<f32>(var_0.e.x, 1932f, 245f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.e.x, 2636f, var_3))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -1220f, -802f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(863f, var_1.e.x, var_0.e.x)) - vec3<f32>(var_1.e.x, -1076f, var_0.e.x))), !select(vec3<bool>(var_0.d, true, false), select(vec3<bool>(var_0.a.x, var_1.d, var_1.a.x), var_0.a.yzx, var_0.d), var_1.a.wyx))));
    return vec3<bool>(any(vec3<bool>(true || !var_1.d, true, !(!var_1.a.x))), true, var_1.a.x);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_add_vec2_u32(~max(~min(vec2<u32>(u_input.a.x, 1u), u_input.c.zz), _wgslsmith_add_vec2_u32(u_input.a.yy, vec2<u32>(23378u, 40379u)) ^ (vec2<u32>(u_input.a.x, 26066u) ^ u_input.c.yy)), ~reverseBits(~countOneBits(u_input.a.zz)));
    let var_1 = Struct_1(select(vec4<bool>(true, false, true, true), !vec4<bool>(any(vec4<bool>(false, false, false, false)), true, false, true), any(vec4<bool>(true, true, true, true))), 1i, ~(~_wgslsmith_add_u32(7322u, var_0.x)) << (select(u_input.a.x, ~_wgslsmith_mult_u32(4294967295u, var_0.x), select(false, true, true)) % 32u), any(func_3((u_input.b.x << (u_input.c.x % 32u)) | u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, -648f))))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2547f, -546f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(523f, -629f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, -1527f))), true))));
    var var_2 = var_1;
    var var_3 = 14827i;
    var_2 = Struct_1(var_2.a, -38534i, u_input.c.x, var_2.a.x, vec2<f32>(var_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x - -488f)))));
    return ~1u << (~_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.a.x, var_1.c), ~firstTrailingBit(22123u)) % 32u);
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true), -2147483647i, func_2(), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(505f, 1000f)))))))));
    var var_1 = Struct_1(select(vec4<bool>(var_0.d, all(!var_0.a.wzz), all(!var_0.a.zy), true), !vec4<bool>(-1672f == var_0.e.x, true, var_0.a.x, var_0.a.x), !select(vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(false, false, var_0.d, var_0.a.x), func_3(u_input.b.x, vec2<f32>(var_0.e.x, -355f)).x)), _wgslsmith_sub_i32(~(-2147483647i & (u_input.b.x >> (4294967295u % 32u))), 1i), ~_wgslsmith_mult_u32(~firstLeadingBit(4294967295u), u_input.c.x), all(!var_0.a.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1202f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.x - var_0.e.x), -226f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f * -1074f) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.x + -550f), _wgslsmith_f_op_f32(trunc(2048f)))))));
    var_1 = Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, ~(~var_0.c) == u_input.c.x, false), u_input.b.x, firstTrailingBit(~_wgslsmith_clamp_u32(4294967295u, ~18491u, arg_0.x)), !func_3(27848i, var_1.e).x, vec2<f32>(_wgslsmith_f_op_f32(-var_1.e.x), var_1.e.x));
    var_1 = var_0;
    return StorageBuffer(-min(_wgslsmith_div_i32(var_1.b, -18963i | u_input.b.x), u_input.b.x), ~(31429u | _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.c, var_1.c), var_1.c << (var_0.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-1i);
    let var_1 = ~0u;
    let x = u_input.a;
    s_output = func_1(u_input.a);
}

