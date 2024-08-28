struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> i32 {
    return _wgslsmith_mult_i32(-56783i, ~_wgslsmith_mod_i32(countOneBits(~u_input.a), firstLeadingBit(u_input.a)));
}

fn func_3(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = vec2<u32>(countOneBits(_wgslsmith_div_u32(u_input.b.x, 1u) & abs(u_input.b.x & 9990u)), select(u_input.b.x, firstTrailingBit(1u), true) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, abs(85378u)), u_input.b.ywy) % 32u));
    var_0 = reverseBits(u_input.b.yw ^ vec2<u32>(1u, u_input.b.x));
    return Struct_1(vec2<u32>(0u, var_0.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(~u_input.b.zw, u_input.b.wy) ^ vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u)), vec4<i32>(-33629i, -18580i, _wgslsmith_mod_i32(-20430i, -_wgslsmith_dot_vec2_i32(vec2<i32>(4657i, u_input.a), arg_1.zw)), reverseBits(arg_1.x)), arg_1.ywy);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = var_0.a;
    let var_3 = -var_0.b.xzx;
    let var_4 = ~var_0.a.a;
    return Struct_2(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(164f * var_1) * var_1), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(538f - -467f) - _wgslsmith_f_op_f32(arg_2.x + 1155f))) + vec3<f32>(416f, 895f, var_1)), func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(~(-26042i), func_2(var_4.x, arg_0.x, Struct_2(true, vec3<f32>(-1468f, arg_2.x, 2018f), Struct_1(vec2<u32>(var_2.a.x, 1u)), vec4<f32>(var_1, -320f, var_1, -695f), true))), vec2<i32>(-1i) * -arg_1.zx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -163f, arg_2.x, var_1))))), arg_0.x);
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = func_3(firstLeadingBit(_wgslsmith_add_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-57569i, u_input.a), vec2<i32>(-19285i, 2147483647i)), (vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, u_input.a)) & _wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(8056i, u_input.a)))));
    let var_1 = arg_0.b.xz;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_1, var_1)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(select(979f, arg_0.d.x, false))) * -909f);
    let var_4 = all(select(!vec4<bool>(any(vec2<bool>(arg_0.e, true)), true, arg_0.a || false, !arg_0.a), vec4<bool>(all(!vec4<bool>(arg_0.e, arg_0.e, false, true)), true, !arg_0.e, arg_0.e), any(vec4<bool>(any(vec4<bool>(true, false, false, true)), false, arg_0.e, false | arg_0.e))));
    return select(vec3<bool>(!arg_0.a, all(select(vec3<bool>(var_4, true, false), !vec3<bool>(false, var_4, true), vec3<bool>(true, arg_0.e, arg_0.e))), true), !(!select(vec3<bool>(arg_0.a, arg_0.e, false), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.a, false), vec3<bool>(true, false, false)), !vec3<bool>(var_4, arg_0.e, true))), select(!var_4, false, !(!(-67504i == u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1292f + -1040f)))), _wgslsmith_f_op_f32(1670f * -1049f)));
    var var_1 = Struct_2(any(func_4(func_1(vec3<bool>(true, true, true), min(vec4<i32>(u_input.a, u_input.a, -69789i, u_input.a), vec4<i32>(u_input.a, 7850i, u_input.a, -48407i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(527f, 1468f)))))), vec3<f32>(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(-39127i, 1i, u_input.a, 17294i), vec4<i32>(1i, u_input.a, u_input.a, -6041i) & vec4<i32>(-1i, u_input.a, 24386i, 0i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-523f, -765f), vec2<f32>(1509f, -928f)))))).d.x, -454f, 2226f), func_3(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, 2147483647i) ^ select(vec2<i32>(1i, 1i), vec2<i32>(-20862i, u_input.a), true), _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a, -17931i), vec2<i32>(1i, 40394i), false), -vec2<i32>(u_input.a, 0i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -525f), -1001f, 333f, _wgslsmith_f_op_f32(f32(-1f) * -190f)) * vec4<f32>(-1000f, -1251f, 383f, _wgslsmith_f_op_f32(abs(1901f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1258f)) - _wgslsmith_f_op_f32(-154f - 699f)), 1351f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-818f, -1000f) * 1247f), -746f)), false);
    var_1 = func_1(select(vec3<bool>(func_4(Struct_2(var_1.a, var_1.d.yxz, var_1.c, vec4<f32>(-1009f, var_1.d.x, var_1.d.x, var_1.b.x), var_1.e)).x, any(vec4<bool>(var_1.a, true, true, true)), _wgslsmith_f_op_f32(ceil(var_1.b.x)) == -1000f), func_4(Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(-var_1.b), Struct_1(vec2<u32>(1u, var_1.c.a.x)), var_1.d, true)), false), vec4<i32>(countOneBits(-23339i), 48422i, -9449i, ~(~2341i)), _wgslsmith_f_op_vec2_f32(-var_1.d.ww));
    var var_2 = !select(vec4<bool>(func_1(!vec3<bool>(var_1.e, var_1.e, true), vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i), vec2<f32>(-3286f, var_1.b.x)).e, !(u_input.b.x < var_1.c.a.x), var_1.a, !all(vec4<bool>(var_1.a, var_1.e, true, true))), select(select(!vec4<bool>(false, false, var_1.a, false), !vec4<bool>(true, false, var_1.a, false), vec4<bool>(true, false, var_1.e, var_1.e)), select(select(vec4<bool>(var_1.e, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, var_1.a)), select(vec4<bool>(true, true, var_1.e, var_1.e), vec4<bool>(true, false, true, var_1.a), var_1.e), vec4<bool>(var_1.e, var_1.a, true, false)), false), any(select(vec4<bool>(var_1.a, var_1.e, var_1.a, false), select(vec4<bool>(var_1.e, false, var_1.a, false), vec4<bool>(var_1.e, var_1.a, var_1.a, var_1.a), false), !var_1.a)));
    var var_3 = Struct_1(~var_1.c.a);
    var_3 = var_1.c;
    let var_4 = vec2<i32>(-2147483647i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(select(vec3<u32>(u_input.b.x, var_3.a.x, 68283u), u_input.b.yzx >> (u_input.b.zxy % vec3<u32>(32u)), func_4(Struct_2(false, var_1.d.zyy, var_1.c, var_1.d, false))))), vec2<i32>(u_input.a, -43284i) >> ((u_input.b.yx << (u_input.b.xx % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b & ~(~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(var_3.a.x, var_3.a.x, 79075u, 770u))));
}

