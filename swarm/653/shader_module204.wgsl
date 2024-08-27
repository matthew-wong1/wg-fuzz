struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
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

var<private> global0: i32 = 37230i;

var<private> global1: bool;

var<private> global2: i32 = 1i;

var<private> global3: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    let var_0 = Struct_1(vec3<i32>(arg_1 | -2147483647i, i32(-1i) * -4735i, u_input.d), i32(-1i) * -(~(-u_input.d)), ~u_input.a, firstLeadingBit(52733u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(668f * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1282f)), 179f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(337f + -1031f), _wgslsmith_f_op_f32(823f * -2118f), true)) + _wgslsmith_f_op_f32(f32(-1f) * -720f))));
    var var_1 = Struct_1(arg_0, arg_0.x, 21067u, abs(4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(step(-1000f, var_0.e)))));
    global0 = var_1.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1163f, -508f), vec2<f32>(var_0.e, 1219f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, var_0.e))))));
    let var_3 = var_0;
    return -1i;
}

fn func_3() -> vec4<u32> {
    global1 = (true || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(167f + 1000f) - _wgslsmith_f_op_f32(568f - -2565f)) == _wgslsmith_f_op_f32(sign(1000f)))) & true;
    global0 = -49423i;
    global3 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f * -2057f) - 1f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f * -1118f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f + -121f) + _wgslsmith_f_op_f32(f32(-1f) * -465f)))));
    global1 = any(vec3<bool>(true, true, true)) && any(vec2<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))));
    var var_0 = _wgslsmith_clamp_vec3_u32(~u_input.c.yxx, ~vec3<u32>(1u, 8745u << (u_input.b % 32u), ~u_input.a), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, max(u_input.a, 59234u)), ~u_input.c.wxw), vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8626u, 15154u, 4294967295u), vec4<u32>(4294967295u, 0u, u_input.a, 4294967295u)), u_input.a)));
    return max(u_input.c >> (vec4<u32>(~1u, u_input.c.x, u_input.b, countOneBits(firstTrailingBit(67624u))) % vec4<u32>(32u)), vec4<u32>(~(~18147u >> (1u % 32u)), ~75615u, 44853u, _wgslsmith_dot_vec2_u32(u_input.c.wx, abs(var_0.zx))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a | -(vec3<i32>(arg_2, -25543i, 1i) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, 13445i, arg_2), vec3<i32>(arg_2, -1i, u_input.d))), abs(max(countOneBits(~u_input.d), 1i)), countOneBits(19010u), 1u, arg_1.x);
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -61119i, 1i), vec3<i32>(2147483647i, arg_2, 1i), (_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -21887i, 31991i), arg_0.a) & ~vec3<i32>(1i, -1i, arg_0.b)) ^ select(abs(var_0.a), select(arg_0.a, var_0.a, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), -2147483647i, ~(~(~0u)), select(~(18103u | (0u >> (u_input.b % 32u))), ~firstTrailingBit(0u), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(864f))), _wgslsmith_div_f32(498f, arg_0.e))));
    let var_2 = Struct_1(firstLeadingBit((vec3<i32>(arg_2, var_1.b, 9428i) ^ select(vec3<i32>(0i, var_0.a.x, -2147483647i), vec3<i32>(arg_2, var_1.a.x, -65628i), false)) & var_0.a), var_1.a.x, _wgslsmith_add_u32(~max(var_1.d, reverseBits(arg_0.d)), ~arg_0.d), 910u, var_1.e);
    return var_0;
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_1(reverseBits(vec3<i32>(u_input.d, u_input.d, ~u_input.d)), func_2(vec3<i32>(u_input.d, _wgslsmith_clamp_i32(2053i, -2147483647i, u_input.d), ~1i), countOneBits(~(-2147483647i))), abs(_wgslsmith_dot_vec4_u32(func_3(), u_input.c)), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-238f * 1202f))) - _wgslsmith_f_op_f32(f32(-1f) * -211f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1788f)) - _wgslsmith_f_op_f32(round(1f))), 309f), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(23431i, 3906i, 0i, u_input.d)), vec4<i32>(_wgslsmith_mult_i32(1i, -18313i), func_2(vec3<i32>(-1i, -47288i, u_input.d), u_input.d), -19254i, select(17986i, 0i, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(18056i, _wgslsmith_dot_vec2_i32(vec2<i32>(38117i, u_input.d), vec2<i32>(u_input.d, 767i)), abs(1i), u_input.d), ~(~vec4<i32>(u_input.d, -2147483647i, u_input.d, 1i)))));
    let var_1 = var_0.a.x;
    let var_2 = func_4(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1428f, var_0.e) * vec2<f32>(var_0.e, var_0.e))))))), _wgslsmith_clamp_i32(var_0.b, var_0.a.x, _wgslsmith_dot_vec3_i32(var_0.a & (vec3<i32>(var_0.a.x, -1785i, var_0.b) << (vec3<u32>(39579u, var_0.d, 45796u) % vec3<u32>(32u))), vec3<i32>(func_4(Struct_1(vec3<i32>(u_input.d, var_1, u_input.d), u_input.d, 19688u, 4294967295u, -1157f), vec2<f32>(-310f, var_0.e), 22641i).a.x, -var_0.b, countOneBits(0i)))));
    global2 = var_1;
    var var_3 = 2147483647i;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.zxw, ~(u_input.c.wyx | vec3<u32>(u_input.c.x, 1u, var_0.c))), select(countOneBits(select(u_input.c.yzz, u_input.c.zww, vec3<bool>(false, true, false))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, var_2.d, var_2.c)), vec3<u32>(59802u, var_0.d, var_0.c)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false)))) << (4294967295u % 32u);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> vec3<i32> {
    global2 = func_4(Struct_1(func_4(Struct_1(-arg_2.xww, ~u_input.d, u_input.c.x, 1u, arg_0.x), arg_0.zx, arg_2.x).a, func_4(Struct_1(abs(vec3<i32>(u_input.d, 34053i, u_input.d)), func_2(arg_2.yzy, arg_2.x), u_input.c.x ^ 61579u, func_4(Struct_1(arg_2.yyz, arg_2.x, 0u, 119153u, 1824f), arg_0.yx, -1i).d, _wgslsmith_f_op_f32(min(-182f, arg_0.x))), _wgslsmith_f_op_vec2_f32(-arg_0.zz), -2147483647i).a.x, func_4(Struct_1(vec3<i32>(u_input.d, u_input.d, -1i), arg_2.x, reverseBits(u_input.a), u_input.a, -1000f), vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.x, -142f)), _wgslsmith_f_op_f32(-arg_0.x)), ~(~2147483647i)).c, firstTrailingBit(abs(u_input.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(trunc(-1841f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-911f, arg_0.x))))), arg_0.x), -1i).b;
    var var_0 = arg_2.wy;
    var_0 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(var_0.x, var_0.x)), vec2<i32>(~u_input.d, 1i), arg_2.xz);
    let var_1 = func_4(func_4(Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, 1i, arg_2.x), arg_2.zyx ^ arg_2.xzz), u_input.d, ~firstTrailingBit(48290u), _wgslsmith_mod_u32(4294967295u, u_input.b >> (u_input.a % 32u)), _wgslsmith_f_op_f32(trunc(-1533f))), arg_0.yx, i32(-1i) * -40588i), vec2<f32>(338f, _wgslsmith_f_op_f32(max(-581f, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x))))))), -30984i);
    global1 = all(vec4<bool>(true, !arg_1.x, all(vec4<bool>(true, true, true, true)), true));
    return ~arg_2.ywx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, -640f, -1079f))), vec3<f32>(_wgslsmith_f_op_f32(313f + 262f), _wgslsmith_f_op_f32(-1741f * -796f), _wgslsmith_f_op_f32(f32(-1f) * -788f)))), vec3<bool>(4294967295u >= func_1(), (4294967295u >= u_input.b) && (u_input.d > 1i), any(vec2<bool>(false, true))), ~(-firstLeadingBit(vec4<i32>(1i, u_input.d, -2147483647i, 1i)))), 0i, max(~u_input.c.x, u_input.c.x), ~4294967295u, _wgslsmith_f_op_f32(sign(-1151f)));
    var var_1 = func_4(Struct_1(var_0.a, var_0.b, _wgslsmith_dot_vec3_u32(select(firstTrailingBit(u_input.c.xxw), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a), true), select(~vec3<u32>(4294967295u, 0u, u_input.b), abs(u_input.c.xxz), true)), u_input.a, var_0.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-433f, 341f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.e)), var_0.e)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, var_0.e) + vec2<f32>(var_0.e, 1000f)))))), func_4(func_4(Struct_1(vec3<i32>(-1i, var_0.a.x, u_input.d), 31601i, _wgslsmith_add_u32(43630u, var_0.d), ~var_0.c, -1104f), vec2<f32>(330f, -373f), var_0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, var_0.e) + vec2<f32>(var_0.e, var_0.e))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, var_0.e) * vec2<f32>(var_0.e, var_0.e))))), -8434i).b);
    var var_2 = Struct_1(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(var_0.b, -25838i, 1492i)), _wgslsmith_add_vec3_i32(var_1.a, vec3<i32>(u_input.d, -158i, var_1.b))), ~var_1.a >> (abs(vec3<u32>(var_0.d, u_input.b, var_0.c)) % vec3<u32>(32u))), u_input.d, 1u, _wgslsmith_add_u32(19630u, 26163u), -211f);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(247f - -1000f), -376f));
    var_2 = Struct_1(-vec3<i32>(76373i, select(-14234i | u_input.d, min(var_0.a.x, -28507i), false), -var_0.b), _wgslsmith_sub_i32(var_2.b, _wgslsmith_mod_i32(~0i, var_0.a.x)), _wgslsmith_mult_u32(var_1.d, 1u), 4294967295u, var_0.e);
    let var_4 = Struct_1(var_2.a, _wgslsmith_mod_i32((var_1.b ^ var_2.b) | u_input.d, 2147483647i), 0u, var_2.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.e)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(0i << (u_input.b % 32u), var_4.b, ~var_1.b, -1i) | firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_4.b, u_input.d, -9257i), vec4<i32>(-23845i, -27381i, -1i, -47587i))), vec4<i32>(i32(-1i) * -var_4.b, _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), -32248i), -var_1.b >> (~21304u % 32u), abs(-42968i)), vec4<bool>(!all(vec4<bool>(false, false, true, true)), false, true, select(1429f <= var_3.x, var_2.e >= var_3.x, true))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_4.a, -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -15153i, var_0.a.x), vec3<i32>(-1i, u_input.d, -2147483647i))), 1i));
}

