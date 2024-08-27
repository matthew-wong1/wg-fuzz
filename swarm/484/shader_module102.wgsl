struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = Struct_4(arg_2.b, arg_3);
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = arg_3.a.d;
    var_2 = true;
    var_2 = var_0.a.a.d;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.c, arg_3.c, -1056f, 929f))), vec4<f32>(-1620f, _wgslsmith_f_op_f32(max(var_0.b.c, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1193f), -518f), vec4<bool>(true, arg_3.b.d, false, !arg_0.d))) * vec4<f32>(arg_2.b.c, _wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f - arg_3.c) + _wgslsmith_f_op_f32(-var_0.b.c)), 802f)));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_add_i32(u_input.b.x, -2147483647i), Struct_1(_wgslsmith_mult_i32((u_input.a | u_input.a) | u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, -2147483647i), _wgslsmith_div_i32(u_input.c.x, -5032i))), min(firstLeadingBit(-u_input.c), ~u_input.c), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, 0i), u_input.b.x), u_input.c.x, -2147483647i, ~u_input.a), !(!select(false, false, true))));
    var var_1 = u_input.c.x;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-739f, 222f, 214f, -955f) + vec4<f32>(-326f, 1000f, -749f, -153f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1521f, -692f, -545f, 306f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, -683f, 192f, 648f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, 981f, 573f, -1624f) + vec4<f32>(-542f, 1143f, 392f, -941f)))))), _wgslsmith_f_op_vec4_f32(func_3(var_0.b, countOneBits(abs(vec3<i32>(0i, var_0.b.b.x, u_input.b.x))), Struct_4(Struct_2(Struct_1(u_input.c.x, vec4<i32>(u_input.b.x, 2147483647i, var_0.a, -2147483647i), vec4<i32>(var_0.b.a, 20817i, var_0.a, -2147483647i), var_0.b.d), Struct_1(u_input.c.x, vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.a), u_input.c, var_0.b.d), _wgslsmith_f_op_f32(546f * -730f)), Struct_2(Struct_1(var_0.a, u_input.c, vec4<i32>(-2147483647i, var_0.a, u_input.a, var_0.b.c.x), var_0.b.d), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -630f))), Struct_2(var_0.b, Struct_1(_wgslsmith_clamp_i32(var_0.b.c.x, 1i, 44210i), vec4<i32>(var_0.a, -2147483647i, -2147483647i, var_0.a), -vec4<i32>(u_input.b.x, 1i, u_input.c.x, -2147483647i), true), _wgslsmith_f_op_f32(round(2025f)))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = arg_3.b;
    let var_2 = ~firstLeadingBit(var_1.a.b.x);
    let var_3 = arg_1;
    return 1u;
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = -u_input.c.xw;
    var var_1 = Struct_4(Struct_2(Struct_1(i32(-1i) * -u_input.c.x, vec4<i32>(abs(-64979i), 1i, -1i, ~1i), vec4<i32>(var_0.x, var_0.x, 2147483647i, reverseBits(var_0.x)), _wgslsmith_f_op_f32(floor(-342f)) == 1f), Struct_1(-1i, vec4<i32>(5451i, ~(-2147483647i), u_input.a, u_input.b.x), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 10758i), u_input.b), ~(-2147483647i), _wgslsmith_sub_i32(var_0.x, u_input.a)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(354f, -1559f)) + 1685f) * _wgslsmith_f_op_f32(-1731f + _wgslsmith_f_op_f32(666f - -332f)))), Struct_2(Struct_1(-1i, vec4<i32>(var_0.x, 11585i, u_input.c.x, -53735i) | -vec4<i32>(44102i, var_0.x, u_input.c.x, u_input.b.x), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 29430i, 2147483647i, var_0.x), vec4<i32>(77858i, 1i, 2147483647i, 13733i))), any(vec4<bool>(false, arg_0, arg_0, arg_0)) | !arg_0), Struct_1(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 2147483647i, u_input.a)) >> (~vec4<u32>(11632u, 14847u, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 1i), _wgslsmith_dot_vec2_i32(var_0, var_0), -25409i, countOneBits(var_0.x)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2244f - 508f))))));
    var var_2 = ~abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(~vec4<u32>(0u, 76298u, 39706u, 31505u)), vec4<bool>(var_1.a.b.d, false, true, var_1.b.b.d)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(423f, 1000f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, var_1.b.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, var_1.a.c) + vec2<f32>(var_1.b.c, var_1.a.c)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.c, var_3.x, -1000f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-599f, var_1.a.c, 132f)), vec3<f32>(_wgslsmith_f_op_f32(max(var_3.x, 503f)), var_3.x, 1858f), select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, var_1.a.a.d, arg_0), true), vec3<bool>(true, true, true))))));
    return var_0.x;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(Struct_1(22245i, arg_1.b.c, firstLeadingBit(vec4<i32>(arg_0, arg_0, arg_3.x, 78942i)) ^ vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.c.x), arg_1.b.d), arg_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f * -727f) + _wgslsmith_f_op_f32(sign(1306f)))))), Struct_2(arg_1.b, arg_1.b, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(reverseBits(-1i), arg_1.b.b, -vec4<i32>(38674i, arg_1.a, arg_0, arg_0), true), ~vec3<i32>(arg_0, -1i, u_input.b.x), Struct_4(Struct_2(arg_1.b, arg_1.b, -1509f), Struct_2(Struct_1(20520i, vec4<i32>(1i, 11071i, arg_0, arg_1.b.c.x), vec4<i32>(arg_1.a, 1i, arg_1.b.b.x, arg_3.x), false), Struct_1(arg_0, arg_1.b.b, arg_1.b.c, arg_2), 1275f)), Struct_2(arg_1.b, arg_1.b, _wgslsmith_f_op_f32(min(-1008f, 400f))))).x));
    let var_1 = var_0.a.a.b.yxz;
    var var_2 = select(true, var_0.a.c >= 358f, true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c * 296f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1513f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f + 2097f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-677f, -701f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(round(var_0.a.c)))))));
    var var_4 = firstLeadingBit(vec4<u32>(9817u, func_1(vec2<f32>(var_0.a.c, 1000f), Struct_4(var_0.a, Struct_2(Struct_1(u_input.a, var_0.a.a.b, vec4<i32>(2147483647i, var_1.x, 5241i, arg_1.b.b.x), false), arg_1.b, -113f)), reverseBits(~vec3<i32>(arg_1.b.c.x, 60468i, -8108i)), Struct_4(Struct_2(Struct_1(var_0.b.a.b.x, vec4<i32>(1i, arg_3.x, 1i, 10283i), vec4<i32>(2147483647i, var_0.a.b.b.x, u_input.c.x, -16783i), arg_1.b.d), var_0.a.a, 1697f), var_0.b)), 1u << (1u % 32u), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), ~vec3<u32>(294u, 66072u, 16694u)), ~(~4294967295u))));
    return Struct_1(4738i, vec4<i32>(~1i, abs(-1i), arg_1.b.b.x, _wgslsmith_dot_vec3_i32(arg_1.b.c.yxy, vec3<i32>(~arg_1.a, var_1.x, 1i))), var_0.b.a.b, all(vec3<bool>(arg_2, all(select(vec2<bool>(false, arg_1.b.d), vec2<bool>(false, arg_2), vec2<bool>(false, false))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -32815i;
    let var_1 = Struct_3(_wgslsmith_dot_vec2_i32(firstTrailingBit(-(~u_input.b.xz)), -u_input.c.zz), func_5(func_4(firstLeadingBit(0u) >= func_1(vec2<f32>(-807f, 701f), Struct_4(Struct_2(Struct_1(3669i, vec4<i32>(u_input.a, u_input.b.x, -2147483647i, -1i), u_input.c, true), Struct_1(u_input.c.x, u_input.c, vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i), true), 1021f), Struct_2(Struct_1(u_input.c.x, vec4<i32>(25244i, u_input.a, -69792i, u_input.a), u_input.c, false), Struct_1(1i, vec4<i32>(0i, -15843i, -7684i, 0i), u_input.c, true), -805f)), u_input.b, Struct_4(Struct_2(Struct_1(1i, vec4<i32>(-2147483647i, -64822i, u_input.b.x, u_input.a), vec4<i32>(u_input.a, 47006i, 1i, -1i), true), Struct_1(u_input.b.x, u_input.c, u_input.c, false), -102f), Struct_2(Struct_1(u_input.b.x, vec4<i32>(u_input.c.x, u_input.c.x, -41110i, 11553i), vec4<i32>(u_input.b.x, u_input.c.x, -40448i, u_input.a), true), Struct_1(-2147483647i, vec4<i32>(0i, -6248i, -23590i, -14353i), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), true), -903f)))), Struct_3(_wgslsmith_clamp_i32(u_input.a, u_input.c.x, abs(u_input.c.x)), Struct_1(u_input.b.x, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b.x, -19733i), u_input.c), -vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.a), true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(false, false, false))), select(u_input.b.xx, ~u_input.c.xx, vec2<bool>(true, false)) << (vec2<u32>(firstLeadingBit(26044u), 68326u) % vec2<u32>(32u))));
    var_0 = -(~(i32(-1i) * -_wgslsmith_div_i32(0i, -1738i)));
    let var_2 = vec3<i32>(var_1.b.a, -8843i, u_input.a);
    var var_3 = Struct_2(Struct_1(u_input.a, vec4<i32>(-21756i >> (1u % 32u), _wgslsmith_mult_i32(var_2.x, var_1.a), (var_2.x | var_1.a) & ~(-1i), var_1.b.b.x), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.b.c.zy, func_5(-1i, var_1, var_1.b.d, vec2<i32>(3058i, u_input.b.x)).b.xz), 8720i, ~2147483647i, _wgslsmith_div_i32(var_1.a, 0i)), true), Struct_1(var_1.a, reverseBits(u_input.c), vec4<i32>(_wgslsmith_div_i32(1i, 23979i), 31550i, u_input.b.x & 0i, u_input.c.x) ^ u_input.c, (28634u < firstTrailingBit(19775u)) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(~var_2.x, -u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, u_input.b.x), var_1.b.c), true), -abs(var_1.b.c.wxw), Struct_4(Struct_2(Struct_1(9773i, vec4<i32>(var_1.b.a, var_1.b.b.x, -10007i, u_input.c.x), u_input.c, true), var_1.b, -1197f), Struct_2(var_1.b, Struct_1(var_1.b.a, var_1.b.c, var_1.b.c, true), 1513f)), Struct_2(func_5(-1i, Struct_3(0i, Struct_1(u_input.a, u_input.c, vec4<i32>(-9147i, var_1.b.b.x, var_1.a, 2147483647i), true)), var_1.b.d, var_2.zz), var_1.b, _wgslsmith_f_op_vec4_f32(func_2()).x))).x));
    let var_4 = Struct_1(~(-firstLeadingBit(func_5(var_3.b.b.x, Struct_3(u_input.c.x, var_1.b), true, vec2<i32>(var_1.b.c.x, -1i)).b.x)), -(vec4<i32>(-var_2.x, ~70021i, var_2.x, i32(-1i) * -58161i) << (vec4<u32>(1u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(87876u, 0u, 23056u, 3803u), vec4<u32>(42261u, 1u, 4294967295u, 2574u)), _wgslsmith_add_u32(32317u, 37666u)) % vec4<u32>(32u))), -_wgslsmith_mult_vec4_i32(select(var_1.b.c | vec4<i32>(-1i, -5627i, 0i, -1i), u_input.c & vec4<i32>(-35243i, -2147483647i, var_3.a.a, var_3.a.a), func_5(var_1.a, var_1, true, vec2<i32>(-58363i, var_2.x)).d), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -9419i, var_2.x, 19440i), vec4<i32>(u_input.b.x, var_2.x, var_1.a, var_3.a.a)))), u_input.c.x >= ~1i);
    var_0 = -(var_1.b.c.x ^ var_3.b.a);
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u, 1u)), ~0u, ~countOneBits(firstLeadingBit(vec3<i32>(var_2.x, var_1.a, var_2.x))));
}

