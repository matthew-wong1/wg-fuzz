struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-35302i, 22457i, -31160i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -15736i, -56336i), vec4<i32>(1i, -9505i, 1i, 0i), vec4<i32>(-61848i, 19219i, 23759i, -20470i), vec4<i32>(2490i, i32(-2147483648), 2147483647i, -12511i), vec4<i32>(2147483647i, i32(-2147483648), -45103i, 7566i), vec4<i32>(-120011i, -1i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, -16260i, 0i), vec4<i32>(1i, -18186i, 2147483647i, 59849i), vec4<i32>(2147483647i, -20075i, -1i, 0i), vec4<i32>(-12659i, 33084i, -1i, -2693i), vec4<i32>(60499i, 14251i, i32(-2147483648), 0i), vec4<i32>(-1i, -21001i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 28697i, i32(-2147483648), 2147483647i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, arg_3.a)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1245f, arg_2.a))))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.a + arg_1.a), _wgslsmith_f_op_f32(arg_2.a * 1000f))), _wgslsmith_f_op_f32(abs(-181f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1055f, arg_1.a)), vec2<f32>(_wgslsmith_f_op_f32(arg_2.a * -466f), 745f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 1887f)), vec2<f32>(var_0.a, var_0.a), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))))))));
    global0 = array<vec4<i32>, 14>();
    let var_2 = -2147483647i;
    var var_3 = ~select(~(~u_input.c.xxw), vec3<u32>(arg_1.b, u_input.a.x, arg_3.b), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) | (firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.c.x, 41090u, 0u))) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(u_input.c.yxz), u_input.c.wxw), u_input.a.ywz) % vec3<u32>(32u)));
    return abs(0i);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-614f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.a)))), _wgslsmith_f_op_f32(abs(arg_3.a)), _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(round(241f))), _wgslsmith_f_op_f32(-arg_3.a), arg_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.a, arg_3.a)), _wgslsmith_div_f32(arg_1.a, arg_1.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(arg_3.a - arg_1.a)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), -1141f, _wgslsmith_f_op_f32(sign(-1092f)), _wgslsmith_f_op_f32(-var_0.x)) + vec4<f32>(-1180f, _wgslsmith_f_op_f32(arg_3.a - -786f), -1328f, 658f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_3.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(941f, -1270f, arg_3.a, 1108f) * vec4<f32>(-303f, arg_1.a, 411f, -522f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1000f, arg_1.a), _wgslsmith_div_f32(-392f, 1000f), -1000f, _wgslsmith_f_op_f32(ceil(303f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, var_0.x, arg_1.a, arg_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, -1067f, -404f, 102f))))))));
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.c, -56132i) | -vec2<i32>(-21623i, 3697i), ~(-vec2<i32>(-2147483647i, 12360i))), ~vec2<i32>(0i, ~u_input.b.x << (select(1u, arg_3.b, arg_0.x) % 32u)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.b.zz, abs(u_input.b.yy)), ~vec2<i32>(8873i, 0i)), u_input.b.xx));
    let var_2 = vec2<i32>(u_input.b.x, ~(~(-abs(0i))));
    var var_3 = _wgslsmith_add_vec4_i32(select(global0[_wgslsmith_index_u32(~4294967295u, 14u)], vec4<i32>(_wgslsmith_dot_vec2_i32(var_2, reverseBits(vec2<i32>(var_1.x, var_1.x))), -var_2.x >> ((u_input.a.x & 4294967295u) % 32u), ~2828i, 2147483647i), (arg_0.x & arg_0.x) || false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.c.zzz), firstTrailingBit(u_input.c.wyz)), 14u)]);
    return ~arg_2.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f - 1397f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-979f)) - _wgslsmith_f_op_f32(sign(-1699f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1073f)) + _wgslsmith_div_f32(352f, -1173f)))), func_4(vec3<bool>(!arg_0, arg_0, !arg_0 == (u_input.b.x >= u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f + -2031f)), 13794u, firstTrailingBit(-u_input.b.x)), select(~u_input.a, ~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x) & vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u)), !vec4<bool>(false, arg_0, false, arg_0)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(609f, -734f))), (u_input.c.x >> (u_input.a.x % 32u)) | 28601u, func_3(635f, Struct_1(-1395f, u_input.c.x, -40107i), Struct_1(1112f, u_input.c.x, -15144i), Struct_1(930f, u_input.a.x, -15787i)))), -8360i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) - var_0.a)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1263f)) + -1543f), 1000f, any(vec4<bool>(arg_0, arg_0, arg_0, true))))), _wgslsmith_div_f32(671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(131f, var_0.a)) - 406f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + 649f))));
    global0 = array<vec4<i32>, 14>();
    var var_2 = vec3<i32>(var_0.c, -1i, countOneBits(var_0.c));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(var_0.a - var_1.x))))), 20763u, var_2.x);
    return Struct_1(_wgslsmith_f_op_f32(sign(-1014f)), _wgslsmith_dot_vec3_u32(u_input.a.xwz, vec3<u32>(abs(44265u), var_0.b, u_input.c.x)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1434f, -1252f) * _wgslsmith_f_op_f32(f32(-1f) * -1037f))), Struct_1(991f, _wgslsmith_dot_vec2_u32(vec2<u32>(44569u, 1u), ~vec2<u32>(u_input.c.x, 26091u)), ~var_2.x), Struct_1(var_0.a, ~max(48311u, 26858u), -38730i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -50136i), vec2<i32>(var_2.x, 2147483647i))), Struct_1(_wgslsmith_f_op_f32(step(468f, var_0.a)), _wgslsmith_div_u32(~4294967295u, var_0.b), -var_0.c)));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    var var_0 = func_2(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, -10719i), vec3<i32>(-1i, -6055i, u_input.b.x))) != -33278i);
    var var_1 = func_2(any(select(vec2<bool>(false, 1096f >= var_0.a), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, true)), select(false, true, false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(-var_0.a), 1145f) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_0.a) - vec3<f32>(1263f, var_0.a, var_0.a)), vec3<f32>(521f, 1249f, var_0.a)))))));
    var var_3 = Struct_1(var_2.x, ~_wgslsmith_mod_u32(func_4(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), func_2(false), u_input.a, func_2(false)), reverseBits(52622u)), abs(~_wgslsmith_sub_i32(var_1.c, 0i)) ^ 39456i);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, -634f))))))), 1u, abs(2359i));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, 1i, 1i), _wgslsmith_sub_i32(~u_input.b.x, _wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), func_1(u_input.a.wxw)))), (i32(-1i) * -1i) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.c.xyx, ~u_input.a.xzw), firstLeadingBit(~vec3<u32>(0u, 0u, 4294967295u))) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(305f, 1216f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(322f, 134f) + vec2<f32>(458f, 1226f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-659f, -2204f), vec2<f32>(203f, 606f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(67684u, -1i, 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, _wgslsmith_f_op_f32(max(1747f, var_1.x)), 406f))), vec3<u32>(34228u, abs(~min(u_input.c.x, 27249u)), 1u));
}

