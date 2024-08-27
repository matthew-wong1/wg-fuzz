struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec3<bool>(select(!select(false, true, true), true, true), select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), true, all(vec2<bool>(true, true))), !any(vec3<bool>(true, true, true))), any(vec2<bool>(true & (u_input.a.x == 17434u), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, -747f, -672f, -531f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(717f - -147f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(297f * -2385f), -818f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(993f, -400f) * -2442f), _wgslsmith_f_op_f32(floor(-1524f)))), ~26282u, select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, true), true, ~u_input.a.x < _wgslsmith_mult_u32(0u, 65000u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 392f)) - _wgslsmith_f_op_f32(ceil(266f))) >= _wgslsmith_f_op_f32(f32(-1f) * -461f)));
    return 24404u;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec3<bool>(all(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, false, true)), any(vec4<bool>(true, true, true, true)), true), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(871f, -173f, -958f, -276f) + vec4<f32>(-622f, 535f, -452f, -255f)))))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 1u), reverseBits(u_input.a.yw)) | u_input.a.zy, abs(~u_input.a.zw)), vec3<bool>(true, true, select(true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true && all(vec3<bool>(true, false, true)))));
    let var_1 = Struct_2(var_0.d, Struct_1(vec3<bool>(var_0.a.x, var_0.e.x, true), all(select(vec4<bool>(var_0.b, false, false, false), !vec4<bool>(false, var_0.a.x, var_0.b, true), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 1557f, 187f, 183f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(376f, var_0.c.x, var_0.c.x, -1000f)) * vec4<f32>(1372f, 639f, var_0.c.x, var_0.c.x))), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.a.x)), u_input.a.xx), !vec3<bool>(!var_0.b, all(var_0.e.zy), true)), 0u, true, Struct_1(var_0.e, var_0.b | (func_3() <= ~var_0.d), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, 742f, -268f), firstLeadingBit(_wgslsmith_sub_u32(min(var_0.d, u_input.a.x), 1u)), var_0.e));
    var var_2 = _wgslsmith_div_f32(var_1.e.c.x, var_0.c.x);
    let var_3 = var_1.b;
    var_0 = var_3;
    return var_1.b.d;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = min(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, arg_1.c, u_input.a.x), min(u_input.a.wzw, u_input.a.ywx), ~u_input.a.wxz), ~(~u_input.a.zzx)), vec3<u32>(~arg_1.c, 0u, abs(~arg_0)));
    var_0 = vec3<u32>(arg_0, arg_1.e.d << (arg_1.e.d % 32u), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(4396u, u_input.a.x))), 40382u));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(~45445u << (~_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.zz) % 32u), select(13357u, ~_wgslsmith_dot_vec3_u32(u_input.a.zwx, u_input.a.xzw), !arg_1.b.a.x && !arg_1.d)), 14485u, ~(~var_0.x));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(func_2(), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.x << (1u % 32u), 11225u >> (u_input.a.x % 32u), 1u | arg_1.a), ~u_input.a.x), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, 36104u, arg_0), u_input.a), vec4<u32>(arg_0, arg_1.e.d, ~22522u, ~48468u))), reverseBits(u_input.a.yyz));
    var_0 = vec3<u32>(1u, ~(~max(var_0.x, select(4294967295u, 4294967295u, arg_1.b.b))), arg_0);
    return vec2<bool>(arg_1.c <= arg_1.e.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.c.x)))) < arg_1.e.c.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = Struct_2(0u ^ ~_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(66967u, u_input.a.x)), Struct_1(select(select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, var_0, false), vec3<bool>(var_0, true, arg_0.x)), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(false, var_0, true), var_0), vec3<bool>(var_0, arg_0.x, arg_0.x)), vec3<bool>(true, true, true), arg_0.x), (-u_input.b.x >> (~4527u % 32u)) > _wgslsmith_dot_vec4_i32(min(vec4<i32>(13987i, 2147483647i, arg_1.x, 1i), vec4<i32>(-2147483647i, arg_1.x, 2147483647i, u_input.b.x)), -vec4<i32>(u_input.b.x, u_input.b.x, 0i, 20835i)), vec4<f32>(_wgslsmith_f_op_f32(max(-349f, _wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(1496f * _wgslsmith_f_op_f32(-105f - 767f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f), -694f), -893f), ~abs(func_2()), select(vec3<bool>(var_0, true, any(vec3<bool>(arg_0.x, arg_0.x, true))), vec3<bool>(true, all(vec3<bool>(false, true, arg_0.x)), false), true && (arg_1.x >= u_input.b.x))), 4294967295u, arg_0.x, Struct_1(vec3<bool>(var_0, var_0, var_0), 113519u < ~select(u_input.a.x, u_input.a.x, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-719f, 541f, -224f, 660f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, 243f, -596f, 287f))))), u_input.a.x, select(vec3<bool>(any(vec2<bool>(false, true)), func_1(u_input.a.x, Struct_2(0u, Struct_1(vec3<bool>(false, false, true), true, vec4<f32>(1717f, 1510f, 419f, -761f), u_input.a.x, vec3<bool>(arg_0.x, true, false)), 4294967295u, true, Struct_1(vec3<bool>(arg_0.x, var_0, arg_0.x), arg_0.x, vec4<f32>(331f, -1652f, 935f, -969f), 1u, vec3<bool>(arg_0.x, var_0, arg_0.x)))).x, arg_0.x || true), !(!vec3<bool>(true, arg_0.x, true)), select(!vec3<bool>(true, arg_0.x, false), !vec3<bool>(arg_0.x, var_0, true), !vec3<bool>(arg_0.x, false, true)))));
    let var_2 = Struct_1(vec3<bool>(arg_0.x, 2147483647i == u_input.c.x, false), ~arg_1.x >= _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(_wgslsmith_add_i32(-72474i, -15213i), arg_1.x)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.x) * -1121f), 924f), var_1.b.c.x, var_1.e.c.x, _wgslsmith_f_op_f32(-var_1.e.c.x)), u_input.a.x, var_1.b.a);
    var var_3 = var_1.b.c.yw;
    var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(-886f + 753f)), var_2.c.x))));
    return Struct_1(var_1.b.e, arg_0.x, vec4<f32>(1000f, var_2.c.x, -1540f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1828f - var_2.c.x)))), ~select(~var_1.e.d, _wgslsmith_mult_u32(var_2.d, abs(12387u)), true), select(!(!(!vec3<bool>(var_0, true, true))), var_2.e, select(vec3<bool>(func_1(30961u, Struct_2(25765u, Struct_1(var_1.b.e, true, vec4<f32>(-1414f, 624f, 159f, var_1.b.c.x), 0u, var_1.e.e), 51949u, var_2.e.x, var_2)).x, any(var_1.e.a), var_2.b | true), vec3<bool>(all(vec4<bool>(false, false, var_1.e.e.x, true)), func_1(0u, var_1).x, var_1.d != var_1.e.e.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(func_1(u_input.a.x, Struct_2(60814u, Struct_1(vec3<bool>(false, false, true), true, vec4<f32>(-699f, 188f, 1582f, -179f), 0u, vec3<bool>(true, false, true)), 4294967295u, false, Struct_1(vec3<bool>(false, false, false), true, vec4<f32>(-250f, -820f, 1148f, -578f), u_input.a.x, vec3<bool>(false, true, false)))), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))), func_1(u_input.a.x | 0u, Struct_2(47872u, Struct_1(vec3<bool>(false, false, true), false, vec4<f32>(525f, -123f, -1000f, -1295f), 0u, vec3<bool>(true, false, false)), u_input.a.x, false, Struct_1(vec3<bool>(true, true, false), false, vec4<f32>(1700f, -1782f, 2275f, -340f), u_input.a.x, vec3<bool>(false, true, false))))), vec2<bool>(true, true), select(vec2<bool>(false, true), !func_1(4294967295u, Struct_2(u_input.a.x, Struct_1(vec3<bool>(true, true, false), false, vec4<f32>(1092f, 1645f, 546f, 1975f), u_input.a.x, vec3<bool>(true, true, false)), 1u, false, Struct_1(vec3<bool>(true, true, false), true, vec4<f32>(985f, -127f, -746f, -691f), 1u, vec3<bool>(false, false, false)))), true)), -vec3<i32>(9966i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.b.x), vec2<i32>(u_input.b.x, -1i)), u_input.b.x >> (u_input.a.x % 32u)));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(select(!var_0.a, var_0.a, func_4(var_0.a.zx, _wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(4956i, u_input.b.x, 1i), u_input.c, u_input.c))).a), var_0.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))))), 49204u, vec3<bool>(true, var_0.e.x, any(var_0.a)));
    let var_3 = Struct_2(~112305u, func_4(var_2.e.yz, -u_input.c), ~(~u_input.a.x), !any(vec4<bool>(var_2.b, var_2.e.x, var_0.a.x, true)) || true, func_4(!func_4(var_0.a.zz, u_input.c).e.zy, ~u_input.b));
    let var_4 = Struct_1(!select(vec3<bool>(true, func_1(42664u, Struct_2(4294967295u, var_3.e, 86448u, false, var_3.e)).x, false), select(!vec3<bool>(true, var_0.e.x, false), var_0.a, var_2.a), var_3.e.a), true, _wgslsmith_f_op_vec4_f32(select(var_0.c, var_3.b.c, vec4<bool>(var_2.a.x, !(!var_2.b), var_0.a.x, !(var_2.b | true)))), u_input.a.x, vec3<bool>(!any(!var_3.b.a), !any(vec4<bool>(true, var_2.a.x, var_3.b.b, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, countOneBits(vec3<i32>(countOneBits(firstTrailingBit(u_input.b.x)), abs(u_input.b.x), reverseBits(0i))), ~_wgslsmith_div_u32(abs(17856u), _wgslsmith_mod_u32(4294967295u, 4294967295u) << (var_0.d % 32u)), u_input.a.yx);
}

