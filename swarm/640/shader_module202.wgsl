struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_5(-max(select(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(27448i, -978i, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -1676i), vec3<i32>(-2147483647i, u_input.a, -7429i), vec3<i32>(1i, u_input.b, u_input.a)), any(vec3<bool>(arg_1.a.x, true, arg_1.a.x))), ~max(vec3<i32>(u_input.a, -1i, u_input.b), vec3<i32>(-79794i, 26289i, 0i))), max(0i, ~select(u_input.a ^ u_input.b, -1i, false)), u_input.b, -_wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(-58874i, 93995i, 0i, 23223i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -33761i, -2147483647i, -2147483647i) & vec4<i32>(49268i, u_input.b, u_input.a, u_input.a), ~vec4<i32>(54854i, u_input.a, u_input.a, -6807i), vec4<i32>(0i, u_input.a, 0i, u_input.a)), reverseBits(~vec4<i32>(-881i, -5342i, u_input.b, u_input.a))));
    var_0 = Struct_5(select(firstLeadingBit(-vec3<i32>(0i, u_input.b, u_input.b)), ~vec3<i32>(0i, max(u_input.b, 0i), 2147483647i), vec3<bool>(false, any(vec3<bool>(arg_1.a.x, false, false)), any(!vec4<bool>(true, false, arg_1.a.x, arg_1.a.x)))), 1i, 0i, var_0.d);
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1697f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(round(209f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -218f)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(arg_0, arg_0, arg_0), Struct_3(vec2<bool>(arg_1.x, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(sign(-1641f))))), _wgslsmith_div_f32(259f, arg_0)));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_div_vec3_i32(-vec3<i32>(abs(-1i), u_input.a, -(~u_input.a)), firstTrailingBit(vec3<i32>(23906i, _wgslsmith_add_i32(~u_input.b, abs(-20042i)), ~_wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.a))));
    let var_3 = _wgslsmith_mult_vec2_i32(~(-_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-18818i, u_input.b)), var_2.zy | var_2.yy)), _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(29199i, u_input.b), -vec2<i32>(u_input.a, 70876i)), abs(~vec2<i32>(u_input.a, var_2.x)), select(vec2<i32>(var_2.x, reverseBits(var_2.x)), -firstLeadingBit(var_2.xx), _wgslsmith_f_op_f32(-933f * arg_0) > _wgslsmith_f_op_f32(f32(-1f) * -219f))));
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-236f, var_0.x)), 602f, arg_1.x))), 365f, _wgslsmith_f_op_f32(-var_0.x), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), 590f, _wgslsmith_f_op_f32(f32(-1f) * -1645f), 111f))));
    return arg_1.wzy;
}

fn func_1() -> i32 {
    let var_0 = all(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(523f))) >= -107f, true));
    var var_1 = ~21104u;
    var var_2 = vec3<bool>(true, var_0, all(func_2(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1019f + 1938f)), vec4<bool>(var_0 & var_0, true, var_0, true))));
    var_1 = ~u_input.c.x;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1231f, 1156f, -1223f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1190f, -1033f, 968f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-220f, -1000f, -1000f), vec3<f32>(1769f, -1680f, -1786f)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-463f, 357f, 665f, 1120f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1793f, -634f, 677f, -1426f) - vec4<f32>(677f, -1381f, 952f, 1184f)), var_0)))), Struct_1(-1052f, firstLeadingBit(u_input.b), u_input.c.x | select(4294967295u, u_input.c.x, 4294967295u < u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(15823u, 47718u, u_input.c.x, u_input.c.x), vec4<u32>(1u, 84481u, u_input.c.x, 1u) >> (vec4<u32>(u_input.c.x, u_input.c.x, 23019u, u_input.c.x) % vec4<u32>(32u)))), vec2<u32>(1u, 112999u)), !(~(~29533u) != u_input.c.x), vec2<f32>(-1654f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), -986f)));
    return ~_wgslsmith_mod_i32(u_input.a, ~(-var_3.c.b << (~var_3.c.d % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !((u_input.b > func_1()) | (u_input.a < (0i << (u_input.c.x % 32u))));
    var_0 = !(!(true | (any(vec4<bool>(false, false, false, false)) && false)));
    var_0 = !(!all(vec3<bool>(false, select(true, false, false), true)));
    let var_1 = _wgslsmith_sub_u32(4294967295u, ~(34542u & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24075u, 48230u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 25526u, u_input.c.x)), u_input.c.x >> (0u % 32u))));
    var_0 = select(true, all(vec2<bool>(true, false)), true);
    var_0 = any(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), !(any(vec2<bool>(false, true)) & all(vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-23453i, -2147483647i, -37277i, ~_wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, -2147483647i))), u_input.a);
}

