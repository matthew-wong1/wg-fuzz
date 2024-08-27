struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1202f)))) == -634f, 1000f);
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(731f, -346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)), true)));
    var_1 = Struct_1(any(vec3<bool>(!(var_0.b != var_0.b), any(select(vec3<bool>(var_1.a, false, arg_1), vec3<bool>(true, true, true), var_0.a)), all(vec3<bool>(true, var_1.a, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + 1000f)));
    let var_2 = firstLeadingBit(select(vec3<u32>(~19696u, ~_wgslsmith_clamp_u32(arg_2, u_input.a.x, arg_2), (79349u >> (arg_0 % 32u)) | 0u), select(u_input.a & vec3<u32>(1u, u_input.a.x, 81061u), ~vec3<u32>(34388u, arg_2, 4294967295u), !vec3<bool>(false, false, var_1.a)) | u_input.a, all(select(select(vec2<bool>(var_1.a, true), vec2<bool>(false, var_1.a), vec2<bool>(true, var_0.a)), vec2<bool>(false, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(true, var_1.a), vec2<bool>(arg_1, arg_1))))));
    var var_3 = ~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(-1i, -24952i, 62867i), -2147483647i, select(-13619i, -1i, arg_1), 39130i)), countOneBits(~vec4<i32>(0i, 1i, -5628i, -1i)));
    return _wgslsmith_f_op_f32(f32(-1f) * -103f);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(min(11674u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(37847u, 36524u, u_input.a.x, 45082u) & vec4<u32>(92104u, 4294967295u, u_input.a.x, 0u), vec4<u32>(142776u, u_input.a.x, u_input.a.x, 9414u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), !any(vec2<bool>(true, true)), max(56166u, ~u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) * -1022f);
    var_0 = -1103f;
    var_0 = _wgslsmith_f_op_f32(ceil(336f));
    var var_2 = Struct_1(false, -1422f);
    return 51020i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(arg_1.b.b.b + _wgslsmith_f_op_f32(f32(-1f) * -2358f))), arg_2.c, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f)), vec3<u32>(min(~var_0.e.x, arg_3), abs(arg_1.b.e.x), 1u >> (arg_3 % 32u))), arg_1.c.b, _wgslsmith_f_op_f32(-arg_1.b.b.b), var_0.c.a, arg_2.b);
    var_1 = Struct_4(var_0, -42483i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f * -1632f)))), -432f, arg_1.b.b.a)), true, Struct_1(true, _wgslsmith_f_op_f32(arg_2.d - arg_2.a.x)));
    let var_2 = _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a.x, 0u, _wgslsmith_mult_u32(4294967295u, var_0.e.x) >> (countOneBits(arg_2.e.x) % 32u), ~(~arg_3))), arg_1.c.a);
    var_1 = Struct_4(arg_2, -(~_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, arg_0.x, arg_1.c.b), vec3<i32>(var_1.b, -4332i, 2147483647i))), 1172f, arg_2.b.a, Struct_1(false, var_1.e.b));
    return vec4<bool>(!arg_1.b.b.a, false, !((41439i ^ _wgslsmith_mult_i32(-62699i, arg_0.x)) < 20800i), _wgslsmith_dot_vec2_i32(vec2<i32>(~arg_1.c.b, -1i), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b, -10842i), vec2<i32>(arg_1.c.b, -37843i)))) > 34964i);
}

fn func_1(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = vec4<bool>(true, false, true, true);
    var_0 = select(select(func_4(vec4<i32>(func_2(), _wgslsmith_mod_i32(-1i, -18889i), i32(-1i) * -2048i, -28406i), Struct_5(121f, Struct_3(vec2<f32>(arg_1, arg_1), Struct_1(false, arg_1), Struct_1(var_0.x, 1181f), arg_1, u_input.a), Struct_2(vec4<u32>(1u, 56355u, 4294967295u, arg_0), -33150i, vec4<u32>(1u, 0u, u_input.a.x, 0u))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)), Struct_1(var_0.x, arg_1), Struct_1(true, 140f), arg_1, u_input.a), ~(4294967295u & arg_0)), vec4<bool>(true && any(vec4<bool>(var_0.x, false, true, false)), true && all(vec2<bool>(true, true)), var_0.x, true), !(!(!vec4<bool>(true, var_0.x, true, var_0.x)))), !vec4<bool>(true, select(false, true, !var_0.x), all(var_0.xwz) || any(vec3<bool>(var_0.x, true, false)), !var_0.x), select(!func_4(vec4<i32>(1i, -45299i, 0i, -2147483647i), Struct_5(arg_1, Struct_3(vec2<f32>(-601f, arg_1), Struct_1(true, -884f), Struct_1(var_0.x, -747f), 1553f, vec3<u32>(2704u, 47964u, 0u)), Struct_2(vec4<u32>(u_input.a.x, 1u, arg_0, arg_0), -13363i, vec4<u32>(0u, 1u, 33314u, 1u))), Struct_3(vec2<f32>(arg_1, 1113f), Struct_1(var_0.x, arg_1), Struct_1(var_0.x, -1026f), arg_1, vec3<u32>(55355u, arg_0, 10782u)), 0u), vec4<bool>(arg_0 > 4294967295u, var_0.x, !any(var_0.yxy), true), !(!var_0.x)));
    let var_1 = min(reverseBits(~(~arg_0)), reverseBits(countOneBits(~_wgslsmith_mult_u32(56553u, 21605u))));
    var_0 = vec4<bool>(false, false, false, all(vec3<bool>(false, true, all(var_0.wx))));
    var var_2 = _wgslsmith_div_vec3_i32(-reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(24952i, 0i, 0i), vec3<i32>(-49167i, -26449i, 28807i)), -7523i, -18252i)), vec3<i32>(1i, 1i, 1i));
    return ~_wgslsmith_clamp_i32(var_2.x, var_2.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_1(10781u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, 899f)), _wgslsmith_f_op_f32(f32(-1f) * -3343f)))))), _wgslsmith_mult_i32(select(_wgslsmith_sub_i32(abs(2147483647i), _wgslsmith_div_i32(-18741i, -29213i)), 1i, all(vec3<bool>(true, true, false))), 16721i), -(~(i32(-1i) * -35653i)) ^ func_2());
    var var_1 = ~((_wgslsmith_clamp_i32(var_0.x | var_0.x, 8174i, firstLeadingBit(-1i)) ^ 12067i) & 13279i);
    var_1 = var_0.x;
    var_0 = reverseBits(-vec3<i32>(var_0.x, ~var_0.x, var_0.x)) >> (~_wgslsmith_add_vec3_u32(~u_input.a ^ ~u_input.a, ~u_input.a) % vec3<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 51553u), vec4<u32>(u_input.a.x, u_input.a.x, 16911u, 1u)), abs(vec4<u32>(1u, u_input.a.x, u_input.a.x, 22764u)) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 29149u, 8648u), vec4<u32>(1u, 21112u, u_input.a.x, 40081u))), vec4<u32>(4294967295u, u_input.a.x, firstTrailingBit(select(u_input.a.x, u_input.a.x, true)), ~4294967295u)), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, 1i) | vec4<i32>(var_0.x, 41480i, var_0.x, -1i), firstTrailingBit(vec4<i32>(var_0.x, 2727i, 35960i, -32502i))), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, var_0.x, -1i, 50784i), vec4<i32>(1i, -19047i, 2147483647i, -2147483647i)))), ~vec4<u32>(69464u, _wgslsmith_div_u32(4294967295u >> (u_input.a.x % 32u), ~u_input.a.x), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.zx)));
    let var_3 = vec3<bool>(all(vec2<bool>(true, true)), true, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~var_0.x), vec2<i32>(var_0.x, 1i) & vec2<i32>(var_2.b, 4067i)) >= -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(41607i, _wgslsmith_dot_vec3_i32(vec3<i32>(~var_2.b, -var_0.x, ~var_0.x), vec3<i32>(-var_2.b, -21933i, var_2.b)), var_0.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(67964i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, -2147483647i, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_clamp_vec2_i32(var_0.xx, var_0.yz, var_0.zz)), -1i, -var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494f - 407f) + -399f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1074f + -1200f) - -741f)) + 175f), 302u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, var_3.x, var_2.a.x)), _wgslsmith_f_op_f32(-507f - -540f)) + _wgslsmith_f_op_f32(f32(-1f) * -2245f))));
}

