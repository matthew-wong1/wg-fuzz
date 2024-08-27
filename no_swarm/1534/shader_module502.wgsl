struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, arg_1.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_1);
    var var_1 = 4294967295u < _wgslsmith_mod_u32(~arg_2.c, 4294967295u);
    var_1 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, all(vec3<bool>(false, true, false))), (u_input.c > arg_2.d.x) && true));
    var var_2 = Struct_1(vec2<i32>(2147483647i, countOneBits(-1i)), _wgslsmith_add_vec3_i32(vec3<i32>(abs(-u_input.c), arg_0, ~2147483647i), ~reverseBits(u_input.a.yxy)), arg_2.c, vec3<i32>(0i, _wgslsmith_sub_i32(~u_input.a.x << (_wgslsmith_sub_u32(arg_2.c, 15219u) % 32u), ~(-17091i)), arg_2.d.x));
    return ~23210i;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(vec2<i32>(arg_0, arg_0), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(i32(-1i) * -1i, 1i), firstTrailingBit(-55887i)), 1i, _wgslsmith_div_i32(-_wgslsmith_sub_i32(u_input.c, 0i), 47308i)), 4294967295u, vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1918i, 0i), _wgslsmith_add_vec3_i32(u_input.a.xxx, vec3<i32>(arg_0, 2147483647i, 2147483647i))));
    var var_1 = Struct_1(u_input.a.yx, vec3<i32>(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0), u_input.a.zy), -7230i), var_0.c, _wgslsmith_mod_vec3_i32(var_0.d, u_input.a.www >> (u_input.d % vec3<u32>(32u))));
    var_0 = Struct_1(vec2<i32>(arg_0, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-6885i, 1i, var_0.d.x)), vec3<i32>(u_input.a.x, arg_0, var_0.b.x)) ^ -26173i), vec3<i32>(func_3(abs(-1i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(702f, -524f), vec2<f32>(778f, 1000f))), Struct_1(vec2<i32>(-1i, -2147483647i), u_input.a.ywy, var_1.c, vec3<i32>(var_0.d.x, 2147483647i, -10883i))), abs(-2147483647i) | _wgslsmith_add_i32(arg_0, 1i), ~(~u_input.a.x)) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(var_1.b.x, 0i, u_input.c)), countOneBits(vec3<i32>(-1i, 2147483647i, 1i))), ~(~_wgslsmith_div_u32(u_input.d.x, _wgslsmith_add_u32(var_1.c, 79518u))), u_input.a.yzy);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(422f, 1824f, -398f)), vec3<f32>(269f, 1789f, 1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, 1740f, -1000f) * vec3<f32>(884f, -900f, 898f)))))));
    var_0 = Struct_1(~select(var_0.b.yy ^ u_input.a.xy, var_0.b.xx, all(vec4<bool>(false, false, true, false))), var_0.b, ~_wgslsmith_mult_u32(~7071u, var_0.c), reverseBits(firstTrailingBit(vec3<i32>(-1i, 2147483647i, arg_0) << (vec3<u32>(u_input.d.x, 1u, var_1.c) % vec3<u32>(32u)))));
    return true;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-512f, 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)))));
    var var_2 = !func_2(~var_0);
    let var_3 = Struct_1(firstTrailingBit(select(_wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_0.a.x, 1i), vec2<i32>(var_0, u_input.c)), vec2<i32>(u_input.a.x, 11558i)), arg_0.b.yy, _wgslsmith_add_u32(arg_0.c, 47226u) != _wgslsmith_sub_u32(u_input.d.x, arg_0.c))), _wgslsmith_clamp_vec3_i32(countOneBits(-u_input.a.yyy | abs(vec3<i32>(-2147483647i, u_input.c, -82902i))), u_input.a.zwz, ~u_input.a.xyz >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c, u_input.b, arg_0.c), vec3<u32>(u_input.d.x, u_input.e.x, 45865u)) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~4294967295u, _wgslsmith_mult_u32(u_input.d.x, 841u), _wgslsmith_mod_u32(73030u, arg_0.c)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_vec4_u32(~min(vec4<u32>(52819u, 40573u, 1u, u_input.e.x), vec4<u32>(9116u, arg_0.c, 84308u, 20244u)), abs(~vec4<u32>(1u, u_input.e.x, 4294967295u, u_input.d.x)))), ~(arg_0.d ^ arg_0.d));
    let var_4 = Struct_1(arg_0.d.xx, _wgslsmith_div_vec3_i32(~firstLeadingBit(vec3<i32>(39384i, u_input.a.x, var_3.d.x)), vec3<i32>(arg_0.d.x, arg_0.b.x, max(var_3.a.x, u_input.a.x))) & vec3<i32>(-2147483647i, _wgslsmith_mod_i32(arg_0.b.x, 1i), -arg_0.d.x ^ (i32(-1i) * -5199i)), min(arg_0.c, ~0u) ^ _wgslsmith_mod_u32(var_3.c, u_input.e.x), (vec3<i32>(var_0 ^ -2147483647i, _wgslsmith_clamp_i32(-33715i, u_input.c, 984i), -25573i) | firstTrailingBit(~vec3<i32>(6348i, -43517i, -1i))) ^ vec3<i32>(_wgslsmith_mult_i32(abs(var_0), countOneBits(u_input.a.x)), 1i & (arg_0.b.x ^ -58468i), 28600i));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_add_vec3_i32(u_input.a.zxx, -vec3<i32>(1i, -2147483647i, 2367i) << (~vec3<u32>(71131u, 0u, u_input.d.x) % vec3<u32>(32u))));
    var var_1 = Struct_1(u_input.a.wz, -max(u_input.a.wzz << (~vec3<u32>(4294967295u, u_input.b, 0u) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(vec3<i32>(6248i, var_0.x, var_0.x), u_input.a.yzy)), firstLeadingBit(_wgslsmith_sub_u32(min(2142u, u_input.d.x) << (~0u % 32u), func_1(Struct_1(vec2<i32>(u_input.c, 34710i), u_input.a.zwy, 0u, u_input.a.wwz)))), u_input.a.zzw);
    var_1 = Struct_1(~_wgslsmith_sub_vec2_i32(-u_input.a.xw, countOneBits(-var_1.b.zz)), ~var_1.b, var_1.c, var_1.d);
    var_1 = Struct_1(countOneBits(vec2<i32>(u_input.c, min(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(-1i, var_1.d.x, -31245i)), countOneBits(u_input.c)))), _wgslsmith_add_vec3_i32(vec3<i32>(-(var_0.x >> (var_1.c % 32u)), _wgslsmith_mod_i32(-5513i, var_0.x), var_0.x), reverseBits(~vec3<i32>(0i, -40845i, 10738i)) & (-u_input.a.wyy ^ countOneBits(vec3<i32>(u_input.a.x, var_0.x, var_0.x)))), _wgslsmith_sub_u32(u_input.e.x, ~u_input.b), vec3<i32>(52748i, -2147483647i, 29096i) | _wgslsmith_mult_vec3_i32(var_1.d, u_input.a.zxz));
    let var_2 = select(min(u_input.a ^ u_input.a, firstLeadingBit(vec4<i32>(abs(1i), var_0.x, ~u_input.c, -5083i))), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, abs(u_input.a)), u_input.a.x, var_1.a.x, var_1.a.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1009f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-471f)), _wgslsmith_f_op_f32(max(707f, -394f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -815f))) + _wgslsmith_f_op_f32(round(233f))), -740f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(384f, 749f))), 536f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), 4294967295u);
}

