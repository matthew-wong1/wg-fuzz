struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-223f - -490f);
    global0 = arg_1.e;
    var var_0 = select(vec4<bool>(((arg_1.b >> (0u % 32u)) > ~(-2147483647i)) == select(arg_1.a.c, false, true), arg_1.a.b, arg_1.a.b, false), select(vec4<bool>(all(select(vec2<bool>(arg_1.c.b, arg_1.c.b), vec2<bool>(true, arg_1.a.b), vec2<bool>(arg_1.a.c, arg_1.c.b))), arg_1.c.b, arg_1.a.c, all(vec3<bool>(true, true, true))), !select(vec4<bool>(false, arg_1.a.b, false, arg_1.a.b), vec4<bool>(arg_1.c.b, true, arg_1.a.c, arg_1.a.c), any(vec3<bool>(false, arg_1.a.c, false))), true), !select(select(select(vec4<bool>(arg_1.a.c, true, false, arg_1.a.b), vec4<bool>(arg_1.c.c, arg_1.c.c, arg_1.c.b, false), vec4<bool>(arg_1.c.b, false, arg_1.a.b, true)), vec4<bool>(arg_1.c.c, true, true, arg_1.a.b), arg_1.a.c), !(!vec4<bool>(arg_1.c.b, true, arg_1.a.c, arg_1.c.c)), select(vec4<bool>(false, arg_1.c.c, false, false), select(vec4<bool>(arg_1.a.c, false, true, true), vec4<bool>(arg_1.c.b, arg_1.c.c, arg_1.c.c, true), vec4<bool>(false, arg_1.c.b, false, arg_1.c.b)), !vec4<bool>(arg_1.c.b, false, arg_1.c.b, true))));
    var var_1 = Struct_3(Struct_2(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(59848u, 30869u), vec2<u32>(u_input.b.x, arg_0.x)), select(arg_1.a.a, u_input.b.xy, arg_1.a.b)), all(var_0.wz), arg_1.e > _wgslsmith_f_op_f32(-arg_1.a.e), vec3<f32>(-530f, arg_1.c.d.x, arg_1.a.e), _wgslsmith_f_op_f32(max(1491f, _wgslsmith_f_op_f32(max(arg_1.e, arg_1.a.d.x))))), abs(firstTrailingBit(-arg_1.b ^ abs(u_input.a.x))), Struct_2(~(~abs(vec2<u32>(0u, u_input.b.x))), arg_1.c.b, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.d + vec3<f32>(arg_1.a.d.x, -563f, -300f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.d * arg_1.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f), arg_1.c.d.x))), ~_wgslsmith_mod_u32(~_wgslsmith_mod_u32(arg_0.x, arg_1.c.a.x), u_input.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e - 344f)))), -610f)));
    global0 = -763f;
    return vec4<bool>(!all(vec3<bool>(true, true, true)), var_1.c.c, select(false, all(select(!vec4<bool>(false, var_1.c.b, arg_1.a.b, false), vec4<bool>(true, false, true, var_1.a.b), !vec4<bool>(arg_1.a.c, false, var_1.a.b, true))), !(false & (var_1.d == 26144u))), firstTrailingBit(u_input.b.x) <= var_1.d);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = 922f;
    var var_0 = Struct_1(func_3(vec4<u32>(_wgslsmith_add_u32(arg_1.a.x, arg_2.a.x & arg_2.a.x), 4294967295u, abs(~32467u), 63053u), Struct_3(Struct_2(select(vec2<u32>(arg_2.a.x, 23455u), vec2<u32>(arg_1.a.x, u_input.b.x), vec2<bool>(true, arg_1.b)), true, false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-313f, 933f, arg_2.e), arg_1.d, arg_1.b)), -883f), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a), u_input.c), Struct_2(abs(u_input.b.zx), true, true, _wgslsmith_f_op_vec3_f32(-arg_2.d), _wgslsmith_f_op_f32(f32(-1f) * -811f)), arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -382f))), arg_1.e, -2147483647i, vec2<bool>(true & arg_2.c, !any(arg_0)), reverseBits(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, u_input.b.x, 57147u, arg_2.a.x), vec4<u32>(arg_2.a.x, u_input.b.x, arg_2.a.x, 0u)))));
    global0 = 1238f;
    var var_1 = _wgslsmith_sub_vec4_i32(-(~(-vec4<i32>(var_0.c, u_input.c.x, 660i, -34412i))), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(var_0.c), ~u_input.a.x, u_input.a.x ^ var_0.c, -var_0.c) | vec4<i32>(-2147483647i, 29200i, countOneBits(16932i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 1i), vec4<i32>(16443i, 0i, var_0.c, 10923i))), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.c, u_input.a.x, -1i) & -vec4<i32>(var_0.c, 19519i, -45125i, 19295i), vec4<i32>(i32(-1i) * -38024i, var_0.c, _wgslsmith_div_i32(var_0.c, 0i), ~var_0.c))));
    var var_2 = Struct_3(arg_1, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-4457i, var_1.x | var_1.x, 0i), abs(select(var_0.c, -2147483647i, var_0.a.x)), _wgslsmith_mult_i32(select(u_input.c.x, var_0.c, arg_0.x), ~u_input.a.x)) | 26969i, Struct_2(arg_2.a, var_0.a.x, false & ((var_0.e.x >> (u_input.b.x % 32u)) == firstTrailingBit(var_0.e.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, -1698f, arg_1.e) + arg_2.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-745f, arg_1.e, arg_2.e))) - vec3<f32>(var_0.b, -241f, arg_2.d.x)), var_0.b), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.e, _wgslsmith_f_op_f32(-arg_2.d.x)))));
    return arg_2.e;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), Struct_2(u_input.b.zz, true, false, vec3<f32>(1112f, -695f, -1752f), 1000f), Struct_2(u_input.b.yz, true, true, vec3<f32>(-799f, -754f, -1009f), -110f)))))))) != _wgslsmith_f_op_f32(1f * -250f);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -143f);
    var var_1 = select(!(!(!vec2<bool>(var_0, true))), select(select(func_3(~vec4<u32>(35978u, u_input.b.x, u_input.b.x, 2836u), Struct_3(Struct_2(u_input.b.zy, true, var_0, vec3<f32>(484f, 1000f, 2004f), -349f), u_input.c.x, Struct_2(u_input.b.xz, false, var_0, vec3<f32>(107f, 987f, -1000f), 1015f), 4294967295u, 504f)).xz, func_3(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(1u, 6707u, 1u, u_input.b.x)), Struct_3(Struct_2(u_input.b.xz, var_0, var_0, vec3<f32>(466f, -1172f, -1240f), -784f), u_input.a.x, Struct_2(vec2<u32>(u_input.b.x, 63611u), var_0, true, vec3<f32>(-214f, 447f, -388f), -912f), u_input.b.x, -839f)).wx, !var_0 & (u_input.b.x <= u_input.b.x)), select(vec2<bool>(all(vec4<bool>(var_0, true, var_0, var_0)), all(vec4<bool>(false, true, true, var_0))), vec2<bool>(true, true), select(vec2<bool>(var_0, true), vec2<bool>(false, true), any(vec3<bool>(false, true, var_0)))), !select(func_3(vec4<u32>(46257u, u_input.b.x, 1u, 0u), Struct_3(Struct_2(u_input.b.zz, true, var_0, vec3<f32>(485f, -112f, -1681f), -464f), -34664i, Struct_2(vec2<u32>(u_input.b.x, u_input.b.x), false, var_0, vec3<f32>(-1741f, -138f, 417f), 213f), 37534u, -1103f)).wy, select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0)), func_3(vec4<u32>(1u, 35585u, 18335u, 0u), Struct_3(Struct_2(vec2<u32>(u_input.b.x, u_input.b.x), var_0, true, vec3<f32>(-825f, -1556f, 705f), -645f), u_input.a.x, Struct_2(u_input.b.yz, var_0, true, vec3<f32>(-1000f, -1279f, 143f), 1136f), u_input.b.x, -1000f)).wx)), !(!vec2<bool>(!var_0, var_0)));
    var var_2 = Struct_2(vec2<u32>(~17882u, u_input.b.x), func_3(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 50957u), 40115u, 0u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 74982u))), Struct_3(Struct_2(~u_input.b.xx, var_0, false & var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, 1091f, -974f) * vec3<f32>(502f, -311f, 853f)), 192f), _wgslsmith_sub_i32(46955i, u_input.a.x), Struct_2(countOneBits(u_input.b.xy), true, var_1.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1138f, -1712f, -831f))), 1000f), u_input.b.x << (abs(1u) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1888f))).x, all(vec2<bool>(true, all(vec2<bool>(false, var_0)))) && any(vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, false, !var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(171f, 224f, -657f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1159f + -1000f));
    return ~13347u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -1015f, 60641u, _wgslsmith_mult_u32(func_1(), ~u_input.b.x));
}

