struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(18828i, u_input.d.x, u_input.d.x) << (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))), abs(~(~vec3<i32>(u_input.d.x, u_input.d.x, 43150i)))) & -(~0i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(944f - 220f), _wgslsmith_f_op_f32(floor(383f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(846f, -2218f))))), select(select(vec2<bool>(true, u_input.b <= u_input.c), vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(false, false, false)))), vec2<bool>(true, true), true), _wgslsmith_sub_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(u_input.d.x, u_input.d.x)) | -_wgslsmith_clamp_vec2_i32(u_input.d.xy, u_input.d.xx, u_input.d.zy), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d.yy, u_input.d.xy), vec2<i32>(46872i, -17721i), ~u_input.d.yy), u_input.d.yy)), vec3<i32>(~(var_0 & 12071i) ^ u_input.d.x, var_0, -1i), true);
}

fn func_2() -> Struct_2 {
    let var_0 = all(vec3<bool>(true, true, true));
    var var_1 = ~vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, countOneBits(1u)), 39547u, u_input.b);
    let var_2 = -u_input.d.x;
    var var_3 = min(u_input.d.yx, vec2<i32>(-(i32(-1i) * -4598i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d.x, var_2), countOneBits(u_input.d.x)))) ^ u_input.d.xz;
    var var_4 = Struct_2(true, func_1(), 806f);
    return Struct_2(true, Struct_1(var_4.b.a, vec2<bool>(true, true), select(select(u_input.d.zx, var_4.b.c, vec2<bool>(false, var_4.a)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.zx, vec2<i32>(var_2, -21354i)), var_4.b.d.yy), select(var_4.b.b, func_1().b, vec2<bool>(false, false))), _wgslsmith_mult_vec3_i32(-firstLeadingBit(vec3<i32>(var_4.b.c.x, 2147483647i, var_3.x)), _wgslsmith_div_vec3_i32(~var_4.b.d, firstTrailingBit(u_input.d))), !var_4.a & var_0), _wgslsmith_f_op_f32(-var_4.b.a.x));
}

fn func_3() -> Struct_1 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)))) * -1073f), 718f));
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_1, var_1))) * vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x), _wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(step(var_1, var_2.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 582f, var_1) + vec3<f32>(621f, 154f, var_2.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, var_1), vec3<f32>(-1065f, 331f, var_2.a.x), false)))))));
    let var_4 = Struct_3(vec4<bool>(var_2.b.x, var_0, true, ~1u > abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 50858u, u_input.c), vec4<u32>(8426u, u_input.a.x, u_input.b, u_input.c)))), Struct_2(func_2().a, Struct_1(var_3.yy, var_2.b, vec2<i32>(func_2().b.c.x, func_2().b.c.x), vec3<i32>(-u_input.d.x, -2147483647i, u_input.d.x), all(var_2.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(667f + var_2.a.x)))))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-951f, var_1) + vec2<f32>(583f, var_3.x)))))), var_2.b, vec2<i32>(-1i) * -(vec2<i32>(u_input.d.x, u_input.d.x) >> (u_input.a.yw % vec2<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -26438i, -4009i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1913i, 2147483647i, var_2.c.x, u_input.d.x), vec4<i32>(-1i, -17772i, -1i, 1i)), ~u_input.d.x, abs(0i)), vec3<i32>(_wgslsmith_mult_i32(var_2.c.x, var_2.d.x), 39971i >> (1u % 32u), ~(-1i))), var_0), var_2, Struct_2(true, func_2().b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-853f, var_3.x)) + -193f)))));
    return func_1();
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = arg_2.a;
    return func_2().b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_4(Struct_3(vec4<bool>(true, false, false, false), Struct_2(false, Struct_1(vec2<f32>(-2232f, 223f), vec2<bool>(false, false), u_input.d.zz, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), false), -547f), func_1(), Struct_1(vec2<f32>(336f, 240f), vec2<bool>(false, false), vec2<i32>(2147483647i, u_input.d.x), vec3<i32>(2147483647i, -94605i, 0i), true), func_2()), vec3<f32>(_wgslsmith_f_op_f32(select(-2301f, -596f, false)), _wgslsmith_f_op_f32(-928f * -461f), _wgslsmith_f_op_f32(min(-1051f, -206f))), Struct_3(vec4<bool>(true, false, true, true), Struct_2(true, Struct_1(vec2<f32>(371f, 946f), vec2<bool>(true, true), vec2<i32>(-37429i, u_input.d.x), vec3<i32>(u_input.d.x, -1i, -78402i), true), 125f), func_3(), func_2().b, Struct_2(false, Struct_1(vec2<f32>(1195f, 909f), vec2<bool>(false, true), u_input.d.yx, vec3<i32>(u_input.d.x, u_input.d.x, -11375i), true), -1087f))), !(!func_1().b), !(all(vec2<bool>(false, true)) & false)), select(vec2<bool>(func_3().e & true, false), !func_3().b, func_1().b), func_1().b);
    let var_1 = true;
    var var_2 = -_wgslsmith_clamp_vec2_i32(u_input.d.xx, vec2<i32>(1i, ~u_input.d.x), -abs(~u_input.d.xz));
    var_2 = vec2<i32>(-(u_input.d.x >> (u_input.c % 32u)), u_input.d.x | -1i);
    let var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.d.x, u_input.d.x, 11304i, var_2.x), min(vec4<i32>(-2147483647i, 0i, 91159i, 1i), vec4<i32>(u_input.d.x, var_2.x, 54932i, -2147483647i))), ~(~vec4<i32>(-2147483647i, var_2.x, var_2.x, u_input.d.x)), all(vec4<bool>(true, var_0.x, var_1, var_1))), -vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), var_2.x, ~var_2.x, max(1i, -45577i))), -1i, abs(1i), func_1().c.x >> (4294967295u % 32u));
    let var_4 = Struct_4(-2391f, false, Struct_3(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), u_input.c <= 909u), Struct_2(false, Struct_1(vec2<f32>(-2209f, 883f), vec2<bool>(true, true), u_input.d.xy << (u_input.a.yx % vec2<u32>(32u)), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) << (vec3<u32>(1u, u_input.c, 54804u) % vec3<u32>(32u)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(882f, 1201f))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1000f - -1280f), -448f), vec2<bool>(true, !var_1), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_3.zx, vec2<i32>(var_2.x, u_input.d.x)), var_3.ww), ~var_3.wwz, true), func_1(), func_2()));
    var var_5 = vec4<bool>(true, var_4.c.a.x, !var_1 || (select(!var_0.x, true, u_input.d.x < var_4.c.e.b.c.x) & func_3().b.x), true);
    let var_6 = _wgslsmith_mult_vec4_i32(firstLeadingBit(var_3), var_3) | ~(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 0i), vec2<i32>(var_4.c.c.c.x, -1i)), func_3().d.x, ~(-2147483647i), -32524i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d, _wgslsmith_sub_vec3_i32(-vec3<i32>(var_3.x, -2147483647i, -27320i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_6.x, -1i), u_input.d))), ~(-(var_4.c.c.d | vec3<i32>(var_4.c.c.d.x, u_input.d.x, -787i)))), _wgslsmith_f_op_f32(f32(-1f) * -1633f));
}

