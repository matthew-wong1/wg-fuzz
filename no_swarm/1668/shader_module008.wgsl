struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 109089u;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = 55742u;
    var var_0 = Struct_1(vec2<i32>(2147483647i, min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 2147483647i, 37610i) >> (vec4<u32>(15115u, 99184u, arg_0.a, arg_0.a) % vec4<u32>(32u)), max(vec4<i32>(-2147483647i, 2147483647i, -13143i, 34052i), vec4<i32>(1i, 1i, 0i, 0i))))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(31143u, arg_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, arg_0.a), vec4<u32>(u_input.a.x, 48475u, arg_0.a, arg_0.a))) & ~(u_input.a.zx >> (u_input.a.zx % vec2<u32>(32u))), (abs(vec2<u32>(u_input.a.x, 0u)) | (u_input.a.xz ^ u_input.a.zz)) | _wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.a.xy), max(vec2<u32>(9657u, 36897u), vec2<u32>(arg_0.a, 4294967295u)))));
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(firstTrailingBit(var_0.a.x), -var_0.a.x), var_0.a), _wgslsmith_mult_vec2_u32(~(~reverseBits(u_input.a.yy)), firstTrailingBit(select(firstTrailingBit(vec2<u32>(0u, var_0.b.x)), vec2<u32>(21789u, arg_0.a), true))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(861f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-388f, _wgslsmith_f_op_f32(-1191f - _wgslsmith_f_op_f32(abs(572f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-154f)), _wgslsmith_f_op_f32(abs(-2800f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f + 896f)))));
    let var_3 = Struct_2(~(~(~arg_0.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(896f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f), 1381f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-190f + var_2))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = 21826i;
    var var_1 = vec4<bool>(false, !any(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, any(vec4<bool>(false, false, false, false)))), !(~min(-2147483647i, arg_1.b.a.x) < ~min(arg_2.b.a.x, arg_1.b.a.x)), false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_clamp_u32(arg_2.c.a, ~u_input.a.x, ~27044u)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-919f, arg_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(963f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(abs(arg_1.d))))));
    var var_4 = arg_2.d;
    return true;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_4(!func_4(Struct_2(1u), Struct_3(1u, Struct_1(vec2<i32>(16158i, 1i), vec2<u32>(4294967295u, u_input.a.x)), Struct_2(41572u), _wgslsmith_f_op_f32(min(-940f, 284f))), Struct_3(1u, Struct_1(vec2<i32>(1i, 1i), vec2<u32>(75771u, 1u)), Struct_2(45123u), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x))))));
    let var_1 = firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, 1i), select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 25687i, -4530i), false)), firstLeadingBit(firstTrailingBit(vec3<i32>(0i, 1i, 0i)))));
    let var_2 = select(!(!vec2<bool>(any(vec3<bool>(false, false, false)), func_4(Struct_2(9490u), Struct_3(8662u, Struct_1(vec2<i32>(2147483647i, -27102i), vec2<u32>(104393u, u_input.a.x)), Struct_2(u_input.a.x), -1073f), Struct_3(41126u, Struct_1(vec2<i32>(var_1.x, var_1.x), u_input.a.yy), Struct_2(4294967295u), -1440f)))), !vec2<bool>(all(select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(true, false, var_0.a, false), true)), true), select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, var_0.a)), var_0.a), !vec2<bool>(true, var_0.a)), vec2<bool>(any(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a))), var_0.a), var_0.a));
    var var_3 = var_1.x;
    let var_4 = vec3<u32>(u_input.a.x & u_input.a.x, ~(~(~(~35078u))), u_input.a.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(657f, -331f, 547f, 603f)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1344f, -1705f, -836f, 726f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 877f, -637f, 1803f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-541f, -356f, -874f, 1000f), vec4<f32>(-445f, -1519f, 585f, 408f)))), true))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, -716f, -1598f, -1152f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1600f, 1159f, -2122f, 714f))), vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(540f, -871f, _wgslsmith_f_op_f32(min(-733f, 393f)), -127f), vec4<bool>(var_2.x, var_1.x < (i32(-1i) * -1024i), select(true, var_2.x != var_0.a, any(vec3<bool>(var_0.a, var_2.x, false))), var_0.a))));
}

fn func_1() -> f32 {
    global0 = u_input.a.x;
    var var_0 = Struct_4(u_input.a.x == (1u | u_input.a.x));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1628f)) * -431f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-789f, 1279f)))), 1082f, _wgslsmith_div_f32(204f, _wgslsmith_f_op_f32(floor(302f)))), _wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1372f, 121f, -1949f, 892f))))));
    let var_2 = Struct_2(abs(0u));
    let var_3 = -834f;
    return -595f;
}

fn func_5(arg_0: f32) -> vec4<bool> {
    let var_0 = min(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(~vec3<i32>(-22504i, 2147483647i, -3896i)), firstTrailingBit(vec3<i32>(1i, 1i, 1i))), vec3<i32>(countOneBits(1i), 2147483647i, max(0i, max(-70795i, -2147483647i)))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, abs(~1i), abs(-15996i)), vec3<i32>(1i, -31763i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-22336i, 19025i, -1i, 42384i), vec4<i32>(-2147483647i, 53816i, 1i, 12659i)), i32(-1i) * -46507i))));
    var var_1 = ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, 4294967295u) << (~(~4294967295u) % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x ^ 4294967295u), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~1u);
    return !(!(!vec4<bool>(true, true, false, select(false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(min(0u, ~(~22200u) << ((~u_input.a.x | ~742u) % 32u)));
    let var_1 = select(func_5(_wgslsmith_f_op_f32(func_1())), vec4<bool>(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1032f)).x, true, true, true != any(vec3<bool>(true, true, true))), vec4<bool>(false, _wgslsmith_f_op_f32(502f - _wgslsmith_div_f32(-166f, -930f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(272f, -1093f))), true, true == any(func_5(-312f).zy)));
    var var_2 = Struct_4(_wgslsmith_clamp_u32(select(1u, _wgslsmith_mult_u32(53515u, u_input.a.x), var_1.x), ~_wgslsmith_div_u32(0u, 4294967295u), ~_wgslsmith_clamp_u32(82410u, u_input.a.x, 0u)) == u_input.a.x);
    let var_3 = Struct_4(var_2.a);
    var var_4 = Struct_3(u_input.a.x, Struct_1(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_u32(u_input.a.xx, u_input.a.yy)), var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1277f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1262f)) * _wgslsmith_f_op_f32(f32(-1f) * -1319f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<i32>(~firstTrailingBit(var_4.b.a.x), ~(~1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.d, 1889f, -338f), vec3<f32>(873f, 1239f, var_4.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d, 267f, 191f))), func_5(_wgslsmith_f_op_f32(-var_4.d)).yxw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)));
}

