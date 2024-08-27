struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = ~arg_1.x;
    let var_1 = !vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0), vec2<bool>(true, false), arg_0), true)), any(vec4<bool>(arg_0 || false, false, false | arg_0, true)), any(vec3<bool>(arg_0, true, true)), all(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, false), arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true))));
    let var_2 = Struct_1(true, any(select(select(vec3<bool>(arg_0, false, arg_0), select(var_1.wxx, vec3<bool>(arg_0, arg_0, true), var_1.wwy), select(var_1.wzx, var_1.yzy, false)), vec3<bool>(true, true, arg_1.x == arg_1.x), !var_1.wzy)), arg_1.ww, var_1, vec2<i32>(~(2457i ^ arg_1.x) | arg_1.x, min(-(i32(-1i) * -8071i), -2147483647i)));
    var_0 = -(~var_2.e.x);
    let var_3 = _wgslsmith_mult_vec3_i32(arg_1.xyw, firstTrailingBit(reverseBits(select(~vec3<i32>(var_2.c.x, -2147483647i, var_2.c.x), arg_1.www, !var_2.d.xwx))));
    return vec3<bool>(arg_0, arg_0 && var_2.b, all(vec3<bool>(true, !(!var_2.b), var_2.b)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_i32(-firstTrailingBit(1i), -(~(~min(1i, -1i))));
    let var_1 = all(!vec2<bool>(false, select(false, true, false))) & false;
    var var_2 = _wgslsmith_mult_i32(~_wgslsmith_sub_i32(var_0, var_0), 1i);
    var_2 = ~var_0;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f), -324f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-821f)), _wgslsmith_f_op_f32(sign(-1112f))))), Struct_1(false, all(select(vec3<bool>(true, true, true), vec3<bool>(var_1, var_1, false), func_3(true, vec4<i32>(var_0, var_0, 0i, var_0)))), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2739i, var_0), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(1i, 2147483647i)), vec2<i32>(-11271i, var_0) ^ vec2<i32>(var_0, var_0))), !select(vec4<bool>(var_1, true, true, true), select(vec4<bool>(false, var_1, false, false), vec4<bool>(false, var_1, true, var_1), vec4<bool>(var_1, var_1, var_1, var_1)), all(vec4<bool>(var_1, false, true, var_1))), select(~_wgslsmith_add_vec2_i32(vec2<i32>(var_0, 1i), vec2<i32>(0i, -7287i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(-2147483647i, var_0)), vec2<i32>(var_0, -6048i) ^ vec2<i32>(var_0, 0i), countOneBits(vec2<i32>(-24773i, 1i))), select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), func_3(true, vec4<i32>(-34363i, -9931i, var_0, -49522i)).yz))), firstTrailingBit(var_0 << ((u_input.b & _wgslsmith_clamp_u32(u_input.b, 1u, 9985u)) % 32u)));
    return abs(_wgslsmith_mod_i32(61882i, reverseBits(~_wgslsmith_clamp_i32(-1i, 0i, var_0))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(max(~vec4<i32>(-51623i, -2147483647i, 1i, -2574i), firstTrailingBit(vec4<i32>(0i, -10962i, -38963i, 2946i))), vec4<i32>(func_2(), -14107i, _wgslsmith_dot_vec4_i32(vec4<i32>(-16546i, 49598i, 0i, 1i), vec4<i32>(-1i, -88281i, 1i, 0i)), 1i)), countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, -9848i, 23258i), vec4<i32>(2147483647i, 46571i, 2147483647i, 1i)))) | vec4<i32>(1i, reverseBits(abs(1i)), -1i, abs(i32(-1i) * -58003i));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(-1342f, 264f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-1911f, arg_0)) * vec2<f32>(-1576f, -547f)))), Struct_1(true, false, vec2<i32>(var_0.x ^ -1i, _wgslsmith_div_i32(countOneBits(var_0.x), var_0.x)), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, false)), vec2<i32>(1i, countOneBits(-2147483647i) ^ _wgslsmith_add_i32(var_0.x, -20669i))), var_0.x);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = true;
    let var_1 = ~firstTrailingBit(vec2<i32>(arg_0.b.e.x, 40949i) ^ ~arg_0.b.c) & vec2<i32>(abs(arg_0.b.e.x) | arg_0.b.c.x, -10299i);
    var_0 = u_input.b == firstTrailingBit(1u);
    let var_2 = -1i;
    var_0 = true;
    return arg_0.a.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> Struct_3 {
    let var_0 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, -15590i, 1i, -5756i), vec4<i32>(1370i, -1i, 2147483647i, -30483i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, 0i, -2147483647i), vec4<i32>(25003i, 36915i, -10688i, 2147483647i))), vec4<i32>(~(-33907i), -52197i << (u_input.a % 32u), _wgslsmith_div_i32(-40285i, 1i), 73943i)), vec4<i32>(1i, _wgslsmith_add_i32(func_1(arg_2).b.c.x, firstTrailingBit(-2147483647i)), 1i << (abs(0u) % 32u), _wgslsmith_mult_i32(-1i, -68911i) ^ func_1(162f).b.e.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 305f, 1000f) + vec3<f32>(-1435f, 229f, -789f))), !arg_3))))));
    let var_2 = Struct_3(var_1.xx, Struct_1(arg_3, select(u_input.b ^ 9039u, 0u, true) >= firstLeadingBit(u_input.a), ~(vec2<i32>(2147483647i, 2723i) >> (countOneBits(vec2<u32>(u_input.a, 27805u)) % vec2<u32>(32u))), vec4<bool>(arg_3, true, func_3(arg_3, var_0).x & arg_3, func_3(all(vec4<bool>(false, arg_3, false, arg_3)), vec4<i32>(15125i, 90145i, -2147483647i, var_0.x)).x), vec2<i32>(i32(-1i) * -var_0.x, _wgslsmith_sub_i32(firstLeadingBit(-72874i), firstLeadingBit(var_0.x)))), ~(~((i32(-1i) * -17932i) & _wgslsmith_div_i32(21285i, var_0.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -217f) - 284f);
    var var_4 = _wgslsmith_f_op_f32(-arg_1.x);
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1585f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<f32>(815f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-429f)), _wgslsmith_f_op_f32(func_4(func_1(-255f), -901f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -769f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1652f * -904f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)))), 206f, (all(func_1(221f).b.d.ww) && true) & func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(389f)))).b.d.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)) * vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), _wgslsmith_div_f32(646f, -1000f))))), func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 1070f, var_0.a.x) - vec3<f32>(var_0.a.x, 517f, 1285f)), vec3<f32>(-683f, 477f, _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 294f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), var_0.b.d.x).b, max(-18241i, var_0.b.e.x));
    var var_2 = ~(~vec4<u32>(~(~40624u), 0u, _wgslsmith_mult_u32(~u_input.a, 1u), ~69384u));
    var var_3 = u_input.b;
    let var_4 = reverseBits(~(~min(max(var_2.yyx, var_2.yxw), _wgslsmith_sub_vec3_u32(var_2.zxx, var_2.wzx))));
    var var_5 = -19187i;
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) * 757f) + -117f);
    let x = u_input.a;
    s_output = StorageBuffer(-520f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, 190f))), var_1.a, func_1(276f).b.d.zw))))));
}

