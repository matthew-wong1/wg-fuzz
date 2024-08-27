struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1610f), _wgslsmith_f_op_f32(abs(2854f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, arg_1.x))), _wgslsmith_f_op_f32(trunc(1894f))) * arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_2)), _wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(-1383f, 1024f, 1419f, 345f))))), true));
    return select(true, 16131i <= u_input.b, select(all(vec2<bool>(true, true)), false, true));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_3(u_input.a.x, select(max(abs(4294967295u), firstLeadingBit(u_input.a.x)), 0u, true));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(775f * _wgslsmith_f_op_f32(f32(-1f) * -836f)), _wgslsmith_f_op_f32(ceil(1841f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1093f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -994f), vec2<f32>(121f, -197f))))))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    var var_0 = u_input.c.xz;
    let var_1 = _wgslsmith_add_i32(2147483647i, u_input.c.x);
    let var_2 = arg_1.d.x;
    let var_3 = arg_2.x;
    let var_4 = arg_1;
    return var_4.d.x;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-512f, _wgslsmith_f_op_f32(max(-1497f, -1000f)))))));
    let var_1 = (u_input.a.x <= u_input.a.x) | (reverseBits(4862u) < ~(~u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, -2344f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1650f + var_0.x))))), 1737f));
    let var_3 = select(u_input.c.x, _wgslsmith_mod_i32(2147483647i, 2147483647i), var_1);
    let var_4 = select(select(vec3<bool>(!any(vec3<bool>(var_1, var_1, true)), (var_1 && true) && false, ~0u > abs(u_input.a.x)), vec3<bool>(var_1, !(-1369f >= var_0.x), any(select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), vec2<bool>(var_1, false)))), false), vec3<bool>(any(vec3<bool>(func_2(-33045i, var_0, vec4<f32>(var_2.x, 321f, -2254f, var_2.x)), !var_1, !var_1)), func_4(true, Struct_1(select(vec4<u32>(1737u, u_input.a.x, 1u, 4294967295u), vec4<u32>(75458u, 279u, 0u, 42007u), vec4<bool>(false, true, false, true)), abs(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), 26328u, select(vec4<bool>(var_1, var_1, true, false), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 11086u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 17026u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(func_3())), !any(vec2<bool>(true, var_1))), var_1);
    return ~(~(firstLeadingBit(_wgslsmith_add_u32(0u, 4196u)) << (u_input.a.x % 32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: i32) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_div_u32(~67072u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a.x), arg_0)), Struct_1(max(~vec4<u32>(u_input.a.x, arg_0.x, 24329u, 71391u), ~vec4<u32>(u_input.a.x, 14910u, 7317u, 1u)), ~(~(~vec4<u32>(4294967295u, 20045u, 22894u, 45687u))), _wgslsmith_add_u32(countOneBits(u_input.a.x), _wgslsmith_dot_vec3_u32(~u_input.a, reverseBits(u_input.a))), select(vec4<bool>(true, true, func_2(1i, vec2<f32>(-353f, 375f), vec4<f32>(1306f, -144f, 396f, -1171f)), false), vec4<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(false, false, true, true)), true, true), vec4<bool>(false, true, true, func_4(false, Struct_1(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 34446u), vec4<u32>(u_input.a.x, 0u, 44085u, u_input.a.x), arg_0.x, vec4<bool>(true, false, true, false), 0u), vec2<f32>(650f, -163f)))), ~arg_0.x), Struct_1(reverseBits(reverseBits(select(vec4<u32>(arg_0.x, u_input.a.x, 60583u, 0u), vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, 7940u), true))), countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(68113u, 1u, u_input.a.x, arg_0.x), vec4<u32>(arg_0.x, 14867u, 20491u, arg_0.x))), countOneBits(4294967295u), !vec4<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, false)), true, true), _wgslsmith_dot_vec2_u32(u_input.a.yx, ~select(vec2<u32>(arg_0.x, arg_0.x), arg_0, true))), false, _wgslsmith_sub_vec3_i32(abs(_wgslsmith_mult_vec3_i32(u_input.c << (u_input.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_2, 19033i), vec3<i32>(arg_1.x, arg_2, 6059i)))), -vec3<i32>(reverseBits(u_input.b), _wgslsmith_sub_i32(0i, arg_1.x), _wgslsmith_clamp_i32(1i, arg_1.x, arg_2))));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(abs(~firstTrailingBit(var_0.b.b)), ~min(var_0.c.a ^ vec4<u32>(u_input.a.x, 644u, u_input.a.x, 61277u), max(vec4<u32>(u_input.a.x, var_0.b.a.x, u_input.a.x, 34580u), vec4<u32>(arg_0.x, 0u, var_0.a, 44829u)))), countOneBits(abs(select(reverseBits(var_0.c.a), ~var_0.c.b, vec4<bool>(true, true, var_0.d, true)))), var_0.b.c, vec4<bool>(var_0.c.d.x, all(select(!var_0.c.d.yy, vec2<bool>(var_0.c.d.x, false), false)), true, !(24879i >= ~u_input.b)), ~10254u);
    var var_2 = Struct_4(arg_1.wz, arg_1, any(select(vec4<bool>(true, false, true, !var_1.d.x), select(!var_0.c.d, select(var_0.c.d, var_1.d, var_0.c.d.x), any(var_1.d.zzy)), ~arg_1.x < arg_2)));
    var var_3 = false;
    let var_4 = all(var_0.b.d.ww);
    return Struct_4(var_0.e.xy, -min(~(-var_2.b), arg_1 << ((vec4<u32>(var_1.b.x, 0u, arg_0.x, 16635u) ^ var_0.c.b) % vec4<u32>(32u))), !((var_0.b.a.x & 1u) > reverseBits(53736u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~vec2<u32>(~_wgslsmith_mod_u32(u_input.a.x, 103753u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 58744u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)) << ((u_input.a.x ^ 24635u) % 32u)), vec4<i32>(~7460i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c.x, -13100i, u_input.b), _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), _wgslsmith_mod_i32(15116i, -2147483647i), 0i) << (vec4<u32>(_wgslsmith_mult_u32(81744u, 2613u), func_1(), _wgslsmith_mod_u32(u_input.a.x ^ u_input.a.x, ~1u), ~1u) % vec4<u32>(32u)), reverseBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-43336i, 47594i, -5785i) | u_input.c), _wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 0i, -2147483647i), vec3<i32>(u_input.b, -1i, u_input.c.x))))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) >> ((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, 1u, 1u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(38223u, u_input.a.x, 0u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, 20244u, _wgslsmith_add_u32(35512u, u_input.a.x), ~4294967295u), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u)), vec4<u32>(14594u, u_input.a.x, 16038u, u_input.a.x), ~vec4<u32>(u_input.a.x, 21115u, 0u, u_input.a.x))), u_input.a.x & (u_input.a.x & ~u_input.a.x), u_input.a.x, 14918u >> (1u % 32u)), (_wgslsmith_div_u32(u_input.a.x | u_input.a.x, 19041u) | ~(~15775u)) & ~(~40379u), select(select(select(select(vec4<bool>(var_0.c, var_0.c, var_0.c, true), vec4<bool>(var_0.c, var_0.c, false, false), vec4<bool>(false, true, false, var_0.c)), vec4<bool>(true, var_0.c, var_0.c, true), u_input.a.x == u_input.a.x), vec4<bool>(true, var_0.c && false, true, var_0.c), u_input.a.x >= 1u), select(vec4<bool>(!var_0.c, var_0.c, var_0.c, !var_0.c), vec4<bool>(any(vec2<bool>(var_0.c, var_0.c)), true, var_0.c, true), vec4<bool>(true, true, func_4(true, Struct_1(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 37325u, u_input.a.x, 0u), u_input.a.x, vec4<bool>(true, false, false, var_0.c), u_input.a.x), vec2<f32>(-1070f, -910f)), u_input.a.x <= 86097u)), vec4<bool>(var_0.c, true, var_0.c, func_2(_wgslsmith_dot_vec3_i32(u_input.c, var_0.b.yyz), vec2<f32>(200f, 1097f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1395f, 1376f, 1991f, 1043f), vec4<f32>(1690f, 697f, 159f, 927f), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)))))), _wgslsmith_div_u32(u_input.a.x, 90941u));
    let var_2 = func_5(~abs(select(~var_1.a.yy, _wgslsmith_mod_vec2_u32(var_1.b.xx, var_1.b.zz), select(var_1.d.xw, var_1.d.ww, var_1.d.xy))), -vec4<i32>(~2147483647i, firstLeadingBit(var_0.b.x) | var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 27320i, -78772i, u_input.c.x), var_0.b), _wgslsmith_sub_i32(u_input.c.x, firstLeadingBit(13831i))), firstTrailingBit(46379i));
    var var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(var_2.a), vec2<i32>(firstLeadingBit(-1i), var_0.a.x)), vec2<i32>(-2147483647i, -3921i) << (~abs(~vec2<u32>(13319u, u_input.a.x)) % vec2<u32>(32u)));
    var var_4 = ~var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(1i), abs(var_2.b.x)), ~countOneBits(~var_1.a.wxw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 496f))), -315f, vec2<f32>(-637f, _wgslsmith_f_op_f32(ceil(-1000f))));
}

