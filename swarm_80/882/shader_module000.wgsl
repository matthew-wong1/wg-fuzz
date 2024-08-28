struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(484f, -400f)))));
    var var_1 = Struct_1(select(~(vec4<i32>(-1i) * -u_input.e), select(u_input.e, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -102288i, u_input.d.x, 16274i), vec4<i32>(0i, 1i, u_input.e.x, u_input.b)), vec4<bool>(true, false, true, false)) >> (vec4<u32>(u_input.a, ~u_input.a, u_input.a, max(u_input.a, u_input.a)) % vec4<u32>(32u)), all(vec2<bool>(true, true))), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, -624f, 1252f), true)))))), u_input.e.xxx);
    var var_2 = Struct_2(Struct_1(vec4<i32>(u_input.d.x ^ max(-1i, var_1.a.x), _wgslsmith_add_i32(u_input.d.x & u_input.b, 1i), 24635i, 1i), _wgslsmith_div_vec3_i32(var_1.a.wwx >> (~vec3<u32>(4294967295u, u_input.a, 5877u) % vec3<u32>(32u)), var_1.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.c))))), firstLeadingBit(_wgslsmith_div_vec3_i32(-u_input.e.xyx, ~vec3<i32>(var_1.b.x, 2147483647i, -1i)))), 38044u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(var_2.a.c.x, -847f)), -1007f);
    var var_4 = Struct_2(Struct_1(~vec4<i32>(var_2.a.b.x ^ -1i, -35917i, -u_input.e.x, _wgslsmith_clamp_i32(2147483647i, u_input.c, u_input.d.x)), var_2.a.a.yzw, var_1.c, u_input.e.yxz), _wgslsmith_div_u32(firstTrailingBit(var_2.b), abs(13182u)));
    return vec3<i32>(-abs(511i), ~_wgslsmith_dot_vec3_i32(max(firstLeadingBit(var_4.a.d), vec3<i32>(20873i, 1i, -9972i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(-12363i, 0i, 42740i), vec3<i32>(var_4.a.d.x, u_input.e.x, -1i))), -_wgslsmith_mod_i32(~(~var_1.d.x), var_2.a.d.x));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(339f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(504f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1392f * 1189f)))));
    var var_1 = 2147483647i;
    var var_2 = ~_wgslsmith_mult_i32(-20208i, u_input.d.x);
    let var_3 = reverseBits(u_input.e);
    let var_4 = Struct_1(_wgslsmith_mult_vec4_i32(~(select(vec4<i32>(var_3.x, 56788i, 82629i, var_3.x), u_input.e, true) >> (~vec4<u32>(12019u, 0u, 31023u, 54218u) % vec4<u32>(32u))), ~(vec4<i32>(-1i) * -var_3)), vec3<i32>(u_input.b, u_input.e.x, ~abs(_wgslsmith_mod_i32(var_3.x, 2147483647i))), vec3<f32>(-1251f, -340f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-650f * -970f)))), func_3());
    return -2322f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(step(arg_0.c.x, arg_0.c.x)), arg_0.c.x, 1144f) * vec4<f32>(_wgslsmith_f_op_f32(func_2()), 1000f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1592f)) * 221f))) + vec4<f32>(_wgslsmith_f_op_f32(998f + _wgslsmith_f_op_f32(-243f + arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-298f, 1f)), _wgslsmith_f_op_f32(step(412f, arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f + arg_0.c.x)), -281f));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(ceil(820f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), -609f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1561f, var_0.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(1355f)), -184f, _wgslsmith_f_op_f32(step(875f, 728f)), 162f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, var_0.x, -1702f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(-277f)), _wgslsmith_div_f32(var_0.x, arg_0.c.x), _wgslsmith_f_op_f32(floor(302f)), _wgslsmith_div_f32(arg_0.c.x, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), var_0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, var_0.x) - _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-763f, 1148f)) + _wgslsmith_div_f32(228f, arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(794f, var_0.x))), _wgslsmith_f_op_f32(max(1112f, _wgslsmith_f_op_f32(1334f - arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, -1661f, 462f), vec4<f32>(var_0.x, -356f, var_0.x, 257f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-251f, var_0.x, -1079f, -983f), vec4<f32>(3569f, var_0.x, arg_0.c.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, arg_0.c.x, var_0.x, arg_0.c.x))))));
    let var_1 = Struct_2(arg_0, _wgslsmith_clamp_u32(~(~countOneBits(1u)), 30530u, 4294967295u));
    var var_2 = var_1.a.a;
    return !vec4<bool>(!(!any(vec3<bool>(false, true, arg_2))), arg_2, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, false, true, any(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, true)) & true);
    let var_1 = u_input.e;
    var var_2 = select(!select(var_0, vec4<bool>(!var_0.x, true, var_1.x > -10426i, var_0.x), select(!var_0, !vec4<bool>(var_0.x, var_0.x, true, var_0.x), func_1(Struct_1(vec4<i32>(u_input.e.x, 0i, 62932i, 1i), var_1.xzw, vec3<f32>(-1165f, 1521f, 877f), vec3<i32>(-41468i, -21500i, u_input.c)), vec4<i32>(var_1.x, 1i, var_1.x, 1i), var_0.x, u_input.a))), var_0, true);
    var var_3 = Struct_2(Struct_1(vec4<i32>(-35446i, abs(var_1.x), -1i, u_input.c), u_input.e.wxw, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1381f, -829f, 1658f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(500f, -969f, -337f)))))), max(select(var_1.zyy, vec3<i32>(var_1.x, u_input.d.x, var_1.x), vec3<bool>(var_2.x, var_0.x, var_2.x)) ^ (u_input.e.yxw & var_1.wxx), var_1.wxz)), 60145u);
    var_2 = !(!select(vec4<bool>(any(var_0.zy), var_2.x, all(var_2.xy), var_0.x), var_0, !vec4<bool>(true, false, true, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2293f, _wgslsmith_f_op_f32(677f - -782f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -261f) * var_3.a.c.x), _wgslsmith_f_op_f32(abs(226f)))), ~((_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.b, 90384u), vec2<u32>(u_input.a, u_input.a)) | abs(vec2<u32>(4294967295u, u_input.a))) ^ vec2<u32>(1u, var_3.b)), (vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.e.zw, vec2<i32>(33743i, var_3.a.d.x)), var_1.x) ^ vec2<i32>(~(-51384i), reverseBits(49329i))) << (_wgslsmith_div_vec2_u32(vec2<u32>(27733u, ~54682u), select(vec2<u32>(var_3.b, 14931u), vec2<u32>(1u, 1u), !var_0.wz)) % vec2<u32>(32u)));
}

