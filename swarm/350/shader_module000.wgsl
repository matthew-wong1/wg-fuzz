struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(1132f, -144f), vec2<f32>(261f, -906f), vec2<f32>(403f, -1679f), vec2<f32>(-272f, -425f), vec2<f32>(1000f, -384f), vec2<f32>(-601f, 443f), vec2<f32>(-560f, -1909f), vec2<f32>(980f, -1000f), vec2<f32>(-974f, -322f), vec2<f32>(1000f, 158f), vec2<f32>(1000f, 925f), vec2<f32>(520f, -801f), vec2<f32>(3018f, 1524f), vec2<f32>(1695f, 688f), vec2<f32>(743f, 572f), vec2<f32>(-1095f, -417f), vec2<f32>(1111f, 719f), vec2<f32>(-200f, 1142f), vec2<f32>(-347f, 389f), vec2<f32>(-1916f, -401f), vec2<f32>(192f, 629f), vec2<f32>(181f, 647f));

var<private> global1: array<vec3<i32>, 31>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, 25624u, vec2<i32>(-51175i, -18934i)), Struct_2(false, 0u, vec2<i32>(-21480i, -38390i)), Struct_2(false, 0u, vec2<i32>(i32(-2147483648), 10165i)), Struct_2(true, 10343u, vec2<i32>(-55141i, i32(-2147483648))), Struct_2(false, 0u, vec2<i32>(2147483647i, 2147483647i)), Struct_2(true, 4294967295u, vec2<i32>(-54619i, i32(-2147483648))), Struct_2(true, 66634u, vec2<i32>(-1i, i32(-2147483648))), Struct_2(true, 0u, vec2<i32>(-1i, 1i)), Struct_2(true, 10875u, vec2<i32>(-35753i, 1i)), Struct_2(true, 1u, vec2<i32>(-78507i, 1i)), Struct_2(false, 1u, vec2<i32>(0i, -17927i)), Struct_2(false, 75856u, vec2<i32>(-3188i, -1i)), Struct_2(false, 0u, vec2<i32>(26270i, 1i)), Struct_2(true, 1u, vec2<i32>(-1i, 2147483647i)), Struct_2(false, 4355u, vec2<i32>(-1i, -26304i)), Struct_2(false, 4294967295u, vec2<i32>(-1i, -6871i)), Struct_2(true, 4294967295u, vec2<i32>(25981i, i32(-2147483648))), Struct_2(false, 1u, vec2<i32>(-11597i, -38454i)), Struct_2(false, 1u, vec2<i32>(-20959i, 4514i)), Struct_2(true, 42825u, vec2<i32>(i32(-2147483648), 0i)), Struct_2(false, 28698u, vec2<i32>(2147483647i, 2484i)), Struct_2(true, 1u, vec2<i32>(-22156i, -1i)), Struct_2(true, 38045u, vec2<i32>(0i, 1i)), Struct_2(false, 20671u, vec2<i32>(-15922i, 32392i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    return _wgslsmith_div_i32(0i, reverseBits(arg_0.x) >> (~u_input.a.x % 32u));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_1(-197f, true, _wgslsmith_sub_vec2_u32(~u_input.a.zz, vec2<u32>(~0u, u_input.a.x)));
    var var_1 = any(!vec2<bool>(var_0.b && var_0.b, var_0.b));
    var_1 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, var_0.c.x), vec4<u32>(0u, u_input.a.x, 4294967295u, var_0.c.x))) != abs(~(~u_input.a.x) | ~0u);
    var var_2 = vec3<i32>(~func_3(-(u_input.b >> (vec3<u32>(30112u, 35492u, 62336u) % vec3<u32>(32u)))), firstLeadingBit(reverseBits(-1i >> (var_0.c.x % 32u))) | u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x));
    var var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 24u)];
    return !(!vec4<bool>(true, true, any(!vec3<bool>(false, var_0.b, true)), true));
}

fn func_1() -> bool {
    global2 = array<Struct_2, 24>();
    var var_0 = (all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true)) & false) && false;
    global0 = array<vec2<f32>, 22>();
    var var_1 = min(((~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<i32>(-61802i, 0i, -1i, 1i)) ^ (~vec4<i32>(1i, u_input.b.x, u_input.b.x, -12842i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(-2147483647i, 51320i, u_input.b.x, -1i)))) | firstTrailingBit(max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, u_input.b.x, u_input.b.x, -26623i))), min(vec4<i32>(-31281i, abs(-45160i) << (0u % 32u), 31019i, u_input.b.x), reverseBits(vec4<i32>(1i, -30002i, -2147483647i, u_input.b.x << (u_input.a.x % 32u)))));
    var var_2 = vec3<i32>(select(_wgslsmith_mult_i32(abs(31812i), -1i), u_input.b.x, true), reverseBits(var_1.x) >> ((0u | ~u_input.a.x) % 32u), _wgslsmith_add_i32(-2147483647i, u_input.b.x));
    return all(func_2(1490f));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-931f, -807f))))), !select(arg_0.x & arg_0.x, false, all(vec2<bool>(arg_0.x, false))), abs(u_input.a.yx)), Struct_1(809f, arg_0.x, ~(~(~u_input.a.xx))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(844f)))) + _wgslsmith_f_op_f32(1256f - -178f)), false, ~vec2<u32>(select(27999u, 22490u, arg_0.x), 1u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1598f, -1783f, -1130f, 1592f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(902f, 251f, 1210f, -541f)), vec4<f32>(-895f, -647f, 691f, -1465f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1762f, -504f, -1000f, 2220f), vec4<f32>(687f, -1468f, -1410f, 569f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, -1176f, 1471f, -2009f))))), !select(arg_0, !arg_0, vec4<bool>(true, arg_0.x, false, false)))), -205f);
    var var_1 = any(arg_0.yww);
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c.a, -906f, _wgslsmith_f_op_f32(546f * _wgslsmith_f_op_f32(-var_0.e))))), var_0.d.yyx, true));
    var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_0.d.wwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(trunc(555f)), -223f)))));
    return Struct_1(1148f, !all(vec3<bool>(var_0.a.b, var_2.x == 790f, any(vec2<bool>(arg_0.x, arg_0.x)))), vec2<u32>(var_0.a.c.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 24>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-617f))), _wgslsmith_f_op_f32(trunc(-472f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1285f))))), u_input.a.x);
    global2 = array<Struct_2, 24>();
    var var_1 = func_4(!vec4<bool>(true, true, func_1(), false), vec2<i32>(-2147483647i, ~min(u_input.b.x, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1258f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) + var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, -395f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_1.a)))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, _wgslsmith_mult_u32(var_0.b, ~var_0.b)), ~firstLeadingBit(vec2<u32>(var_0.b, var_1.c.x))), vec2<i32>(select(-1i, -2147483647i, var_1.b), u_input.b.x), _wgslsmith_f_op_f32(trunc(var_1.a)));
}

