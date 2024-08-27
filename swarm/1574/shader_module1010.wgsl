struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-287f)) * 242f)), _wgslsmith_dot_vec2_u32(~vec2<u32>(reverseBits(1u), 1u), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy) << (u_input.a.zz % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(597f, 271f, 944f) - vec3<f32>(846f, 1327f, -172f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-442f, -626f, -534f))))), Struct_1(-202f, vec2<bool>(true, false), max(~_wgslsmith_add_u32(31992u, u_input.a.x), u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, true))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, all(vec2<bool>(false, false))), true)), Struct_1(_wgslsmith_f_op_f32(max(555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2129f + 673f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), false), any(vec2<bool>(true, true))), u_input.b, !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_4(-firstTrailingBit(vec3<i32>(countOneBits(2147483647i), -2147483647i, 1i)), _wgslsmith_f_op_f32(max(var_0.d.a, -3329f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.a, var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-224f, 1000f)), vec2<bool>(!var_0.e.e.x, !var_0.d.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.c.zx))))), _wgslsmith_mult_u32(var_0.b, 1u), min(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_clamp_i32(-22699i, 16394i, 2009i), ~(-24140i))), _wgslsmith_dot_vec4_i32(vec4<i32>(18627i, -19866i, 0i, -27792i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e.c, 1u, 4294967295u, var_0.e.c), vec4<u32>(var_0.b, var_0.e.c, 49628u, var_0.e.c)) % vec4<u32>(32u)), vec4<i32>(2147483647i, -9213i, abs(23801i), select(2147483647i, 34979i, var_0.d.d.x)))));
    let var_2 = var_0.e.d.yxw;
    var var_3 = ~u_input.a;
    let var_4 = var_2.x;
    return max(vec4<u32>(u_input.b, 23839u, 80979u, u_input.b), vec4<u32>(~0u, var_1.d, var_3.x, reverseBits(var_1.d)));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = ~(~u_input.b | 0u) != ~reverseBits(~(~34646u));
    var var_1 = vec2<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(abs(arg_0.zy), _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0.wz), _wgslsmith_add_vec2_i32(vec2<i32>(-28387i, 55665i), arg_0.xy) >> (_wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u)))));
    let var_2 = u_input.b;
    let var_3 = ~_wgslsmith_mult_vec4_u32(func_3(), ~vec4<u32>(~1u, firstLeadingBit(0u), 1u, 19117u));
    return any(vec2<bool>(true, !(!all(vec4<bool>(false, false, false, true)))));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    return Struct_2(arg_0.c.x, arg_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -519f, arg_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-479f, -618f, -343f) + vec3<f32>(arg_0.b, 603f, 2944f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(298f, 1387f, 1371f))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.c.x))))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), ~u_input.b, !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, func_2(firstLeadingBit(vec4<i32>(arg_0.e, arg_0.e, arg_0.e, arg_0.a.x))), select(any(vec4<bool>(true, true, false, true)), false, false), false)), Struct_1(1167f, vec2<bool>(true, true), ~func_3().x ^ 539u, vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), false)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = !(!arg_0.d.d);
    let var_1 = _wgslsmith_clamp_u32(~arg_0.e.c, _wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(arg_0.b, u_input.a.x, 59468u, u_input.b)), ~vec4<u32>(1u, arg_0.b, select(62514u, 17241u, var_0.x), abs(46112u))), ~(10464u | abs(_wgslsmith_mod_u32(u_input.b, arg_0.e.c))));
    let var_2 = arg_0.e;
    let var_3 = ~(vec2<u32>(4294967295u, 16369u) ^ select(vec2<u32>(var_1, ~arg_0.d.c), vec2<u32>(~24893u, firstTrailingBit(u_input.a.x)), all(!arg_0.d.e.wy)));
    var var_4 = arg_0.b;
    return arg_0.d;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.b;
    let var_1 = func_1(arg_2);
    var_0 = ~arg_2.d;
    let var_2 = func_4(Struct_2(-316f, ~_wgslsmith_dot_vec4_u32(func_3(), vec4<u32>(arg_1.a, u_input.a.x, 66417u, arg_1.a) & vec4<u32>(u_input.b, u_input.b, 0u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-934f, _wgslsmith_f_op_f32(arg_3.x + 105f), _wgslsmith_f_op_f32(abs(arg_0.c.a))), var_1.c)), func_4(Struct_2(1572f, 4294967295u, _wgslsmith_f_op_vec3_f32(-arg_0.b.c), func_4(Struct_2(arg_1.b.d.a, arg_1.a, arg_1.b.c, arg_0.c.d, Struct_1(1752f, var_1.d.d.xz, 0u, arg_1.b.d.d, arg_1.c.d.d))), Struct_1(var_1.d.a, arg_0.c.d.b, arg_0.c.d.c, vec4<bool>(true, var_1.e.d.x, false, arg_0.b.d.b.x), vec4<bool>(arg_0.b.d.b.x, arg_0.b.e.b.x, var_1.e.b.x, true)))), var_1.d)).b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(-825f, arg_0.c.e.a, var_2)), arg_2.b, _wgslsmith_div_f32(arg_1.b.c.x, -1136f), -167f)));
    return func_1(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_5(Struct_3(~(~_wgslsmith_mod_u32(u_input.b, u_input.b)), Struct_2(1278f, firstLeadingBit(abs(4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-2165f + -140f), _wgslsmith_f_op_f32(1000f + -871f), _wgslsmith_f_op_f32(f32(-1f) * -1368f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -862f), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), ~u_input.a.x, select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), func_4(func_1(Struct_4(vec3<i32>(-29009i, 1i, -1i), 315f, vec2<f32>(897f, 412f), 4294967295u, 2147483647i)))), func_1(Struct_4(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(2382f + -388f), func_1(Struct_4(vec3<i32>(2024i, -36159i, -2147483647i), 263f, vec2<f32>(652f, 644f), 18568u, -13522i)).c.xz, var_0, firstTrailingBit(-1i)))), Struct_3(u_input.a.x, func_1(Struct_4(min(vec3<i32>(0i, 0i, 5183i), vec3<i32>(-1i, 2147483647i, -2147483647i)), 1000f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, 989f) + vec2<f32>(-199f, 940f)), ~u_input.a.x, _wgslsmith_sub_i32(25613i, -50112i))), func_1(Struct_4(reverseBits(vec3<i32>(0i, 1i, 55306i)), _wgslsmith_f_op_f32(step(1000f, 189f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -140f))), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(21429i, -2147483647i, -14621i, 2147483647i), vec4<i32>(-56354i, -1i, -2616i, -2147483647i))))), Struct_4(vec3<i32>(1i, _wgslsmith_clamp_i32(13251i, -4281i, ~2147483647i), firstTrailingBit(-1i)), _wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_div_f32(310f, -1511f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-381f, -987f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(610f, -683f)))))), 1u, -max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -111i, 1i), vec3<i32>(27912i, -15270i, 9536i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1341f, -359f, 1f, 163f)));
    let var_2 = _wgslsmith_div_vec4_i32(~(-max(-vec4<i32>(6387i, 3322i, -40192i, -35996i), vec4<i32>(0i, -52919i, 1i, -1i))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(6002i, 12580i, -1i, -51617i) ^ firstTrailingBit(vec4<i32>(-9654i, 13641i, -2147483647i, 15914i))), -select(select(vec4<i32>(1i, -2147483647i, 2147483647i, -2147483647i), vec4<i32>(-34230i, -2147483647i, 58219i, 2147483647i), true), abs(vec4<i32>(-1i, -34468i, 73805i, -34020i)), var_1.d.e)));
    var var_3 = countOneBits(_wgslsmith_sub_i32(2147483647i, select(max(var_2.x, var_2.x), _wgslsmith_sub_i32(reverseBits(2147483647i), select(-1i, var_2.x, var_1.e.e.x)), var_1.d.d.x && !var_1.e.b.x)));
    var var_4 = func_4(func_1(Struct_4(~(~var_2.yyx), var_1.e.a, _wgslsmith_f_op_vec2_f32(-var_1.c.xy), var_0, max(2147483647i, -44253i)))).d;
    let var_5 = _wgslsmith_clamp_vec3_u32(~u_input.a, ~(~select(vec3<u32>(var_0, 4294967295u, u_input.a.x), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(var_0, var_1.d.c, u_input.b)), var_4.yzz)), vec3<u32>(~1u, reverseBits(54213u), ~(~var_1.b ^ ~10239u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

