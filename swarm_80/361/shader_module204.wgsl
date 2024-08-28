struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> bool {
    let var_0 = arg_2.x;
    let var_1 = Struct_2(~abs(~countOneBits(0i)), vec4<i32>(-2147483647i, 1i, 1i >> (u_input.a % 32u), ~(-firstTrailingBit(-1i))), Struct_1(abs(0u), 0i), ~(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, -198i), vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(1i, -42839i, -25762i)))), arg_2.x);
    var var_2 = u_input.c.xx;
    let var_3 = !(!vec3<bool>(true, true || (-1i == var_1.b.x), true));
    return true;
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(0u, select(25347i >> (_wgslsmith_sub_u32(arg_0, 4294967295u) % 32u), max(-9410i << (u_input.d % 32u), select(2147483647i, 1i, arg_1.x)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-929f, 292f, 2178f, -100f), vec4<f32>(945f, 1136f, 1000f, -1051f), arg_1.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1303f, -199f, 1075f, 1057f) + vec4<f32>(120f, 1191f, 550f, -1749f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -2554f, -578f, 204f)), !vec4<bool>(arg_2.x, false, arg_1.x, false)))))), min(vec3<i32>(-2147483647i, -39726i, 0i), select(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(0i, 2396i, 11771i)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1100f + _wgslsmith_f_op_f32(-264f - -308f)) - _wgslsmith_f_op_f32(868f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-895f)))))), reverseBits(vec2<u32>(~min(u_input.c.x, arg_0), arg_0)));
    let var_1 = max(-(countOneBits(var_0.c.x) >> (_wgslsmith_sub_u32(~arg_0, 36615u & var_0.a.a) % 32u)), -max(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.c.zx, var_0.c.yy), ~var_0.c.xz), var_0.c.x >> (~4294967295u % 32u)));
    let var_2 = vec3<i32>(firstTrailingBit(~var_0.c.x), _wgslsmith_add_i32(var_1, var_0.c.x), (var_1 | max(0i, 1702i)) | ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1, 14657i, 2147483647i), vec4<i32>(var_0.a.b, 2147483647i, 2147483647i, 0i)));
    let var_3 = var_2;
    let var_4 = Struct_1(2381u, 0i);
    return var_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_4(func_3(~abs(u_input.b.x), vec4<bool>(arg_1.x, false, func_2(_wgslsmith_clamp_u32(4294967295u, arg_0.a, 4294967295u), ~vec4<u32>(arg_0.a, 9802u, 8225u, arg_0.a), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), true), !vec2<bool>(!arg_1.x, arg_0.b != arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-859f, _wgslsmith_f_op_f32(round(502f))), -182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -473f)))), select((vec3<i32>(arg_0.b, 0i, arg_0.b) & _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 27642i, arg_0.b), vec3<i32>(arg_0.b, -2147483647i, arg_0.b))) & (-vec3<i32>(arg_0.b, arg_0.b, arg_0.b) << ((u_input.c & vec3<u32>(11144u, 29126u, 4294967295u)) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, arg_0.b), vec3<i32>(arg_0.b, arg_0.b, arg_0.b))) & vec3<i32>(i32(-1i) * -23654i, _wgslsmith_clamp_i32(arg_0.b, arg_0.b, arg_0.b), ~(-2147483647i)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), vec2<u32>(arg_0.a, u_input.b.x) ^ vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, arg_0.a, 0u), 9797u));
    var_0 = Struct_4(Struct_1(min(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, var_0.a.a), firstLeadingBit(90693u)), arg_0.a), abs(var_0.a.b)), _wgslsmith_f_op_vec4_f32(-var_0.b), ~vec3<i32>(_wgslsmith_sub_i32(~var_0.a.b, 1i), -2147483647i, _wgslsmith_dot_vec3_i32(var_0.c, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, 0i, 38143i), vec3<i32>(-1i, var_0.c.x, arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-259f, var_0.d)), _wgslsmith_add_vec2_u32(var_0.e, vec2<u32>(~select(1u, 11743u, arg_1.x), 0u)));
    var_0 = Struct_4(arg_0, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 1081f, 135f, 166f) * vec4<f32>(var_0.b.x, 867f, -786f, 952f))), _wgslsmith_div_vec4_f32(vec4<f32>(763f, 1716f, var_0.b.x, -1125f), _wgslsmith_f_op_vec4_f32(-var_0.b)))))), var_0.c, -677f, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(max(u_input.c.zy, vec2<u32>(39993u, 1u)), u_input.b.xx) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 1u), countOneBits(vec2<u32>(16989u, u_input.d))), u_input.b.xx));
    var var_1 = ~4294967295u;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -217f));
    return Struct_4(func_3(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.e.x, 4294967295u), var_0.a.a), u_input.d), !select(!vec4<bool>(arg_1.x, false, false, arg_1.x), select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(true, false, true, arg_1.x), arg_1.x), !arg_1.x), !arg_1.zx), vec4<f32>(_wgslsmith_f_op_f32(var_0.d * var_0.d), _wgslsmith_f_op_f32(-var_0.d), var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(min(var_2.a, var_0.b.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, 405f)) + var_2.a))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~var_0.c, ~var_0.c, -vec3<i32>(-39569i, var_0.a.b, -22296i)), -vec3<i32>(2147483647i, arg_0.b, var_0.c.x) | (var_0.c | vec3<i32>(1i, arg_0.b, 20953i))) & var_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1204f)) + _wgslsmith_f_op_f32(-620f * 753f)) + _wgslsmith_f_op_f32(-1f)), var_2.a, true)), firstLeadingBit(~var_0.e));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = vec3<i32>(min(arg_1.a.b, 35856i), func_1(Struct_1(~(0u >> (arg_0.x % 32u)), 0i), vec3<bool>((-582f < arg_1.d) & true, true, arg_1.e.x >= ~arg_1.e.x)).a.b, 0i);
    var var_1 = func_3(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_1.a.a, arg_0.x, 1u), vec4<u32>(20613u, 0u, arg_1.e.x, 0u)) >> (u_input.a % 32u), arg_1.e.x)), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), 2147483647i != var_0.x)), vec2<bool>(true, false)).b;
    var var_2 = vec4<f32>(arg_1.d, _wgslsmith_div_f32(-1202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(702f, arg_1.d, true)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.d))) * 184f), _wgslsmith_f_op_f32(step(1294f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x - 1486f), _wgslsmith_f_op_f32(-arg_1.d))))), 442f);
    let var_3 = !(-1i > firstLeadingBit(arg_1.c.x));
    let var_4 = var_0;
    return vec2<bool>(arg_0.x >= 13249u, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<i32>(_wgslsmith_div_i32(13838i, _wgslsmith_sub_i32(27156i, -11500i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(49584i, 37878i))), max(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), select(vec2<bool>(all(vec4<bool>(true, false, true, true)), true), func_4(vec4<u32>(u_input.d, 4294967295u, 25551u, u_input.d), func_1(Struct_1(u_input.b.x, 18004i), vec3<bool>(false, false, false))), vec2<bool>(true, true))), firstLeadingBit(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -12715i) << (u_input.b.zy % vec2<u32>(32u)))), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(func_4(vec4<u32>(33180u, 106926u, 9523u, 23327u), Struct_4(Struct_1(u_input.a, -31105i), vec4<f32>(-240f, 1000f, 370f, 2409f), vec3<i32>(0i, 11993i, 1i), -548f, u_input.c.xy)), vec2<bool>(true, true), vec2<bool>(false, false)), select(func_4(vec4<u32>(u_input.a, 79949u, u_input.b.x, u_input.b.x), Struct_4(Struct_1(u_input.c.x, 2147483647i), vec4<f32>(735f, 1207f, 307f, 1616f), vec3<i32>(-2147483647i, 43290i, 19232i), 599f, vec2<u32>(60275u, 4294967295u))), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_1 = !vec2<bool>(((2147483647i ^ var_0.x) != var_0.x) && func_2(1u, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.d, 25745u), vec4<u32>(u_input.c.x, 3450u, 1u, 10015u)), vec4<bool>(true, true, true, true)), true);
    var var_2 = Struct_3(true, Struct_1(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 20388i | var_0.x), abs(vec2<i32>(var_0.x, -16205i)) << ((u_input.c.zx << (u_input.b.yx % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2003f, -248f, -476f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, 1000f, -1459f)))))), reverseBits(var_2.b.a), -845f);
}

