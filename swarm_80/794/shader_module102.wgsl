struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f + 2078f));
    let var_1 = _wgslsmith_f_op_f32(1186f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -964f))))))));
    let var_2 = Struct_3(true, _wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(1i), -2147483647i & _wgslsmith_clamp_i32(-21867i, 21855i, 32461i), -_wgslsmith_dot_vec2_i32(vec2<i32>(16810i, 1i), vec2<i32>(0i, 1i)), -firstTrailingBit(38856i)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_div_i32(-1i, 2995i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(39804i, 2147483647i, 35617i), vec3<i32>(-2147483647i, -2147483647i, -8678i)), -2147483647i, 1i << (select(4294967295u, u_input.a.x, arg_0) % 32u)), ~select(vec4<i32>(-37381i, -1i, 4954i, -32774i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 13047i, 37566i, -1i), vec4<i32>(25597i, -54525i, 30279i, 62541i)), all(vec3<bool>(arg_0, arg_0, arg_0)))), Struct_2(1i >> (u_input.a.x % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1022f, var_1, 170f, -822f) - vec4<f32>(var_1, 1413f, -985f, var_1))), var_1 >= _wgslsmith_f_op_f32(var_1 + -420f), 35887u, abs(39216u) >> (1u % 32u)), select(false, true & !arg_0, var_1 == _wgslsmith_f_op_f32(-var_1)), arg_1), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, min(2147483647i, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-488i, -21837i), vec2<i32>(2147483647i, -20889i)))), 1i));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_2.c.b.a.xy - vec2<f32>(var_1, 855f));
    return var_1;
}

fn func_2() -> Struct_4 {
    let var_0 = ~abs(u_input.a.x);
    var var_1 = u_input.a;
    var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(var_0, ~u_input.a.x, ~4294967295u), select(~u_input.a, ~_wgslsmith_add_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(u_input.a, u_input.a)), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, var_1.x < 1u, any(vec2<bool>(false, true))), true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-717f, -410f, -803f, 982f))))))), false, 4294967295u, _wgslsmith_add_u32(~var_0, 50342u));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-587f - 1265f) * _wgslsmith_f_op_f32(func_3(var_2.b, var_2.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.xzz - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, 2059f, 555f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, -648f, var_2.a.x))))));
    return Struct_4(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(12001i, -2147483647i, -358i, -1i), vec4<i32>(-21588i, 11326i, 38439i, 40775i)) & vec4<i32>(~0i, reverseBits(-1i), max(-14305i, 2806i), select(-2147483647i, 44250i, true))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(var_2.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(377f, var_2.a.x, -360f, var_2.a.x), var_2.a)))), vec4<f32>(_wgslsmith_f_op_f32(var_3.x - var_2.a.x), _wgslsmith_f_op_f32(func_3(var_2.b, 4294967295u)), var_2.a.x, _wgslsmith_f_op_f32(func_3(false, var_0))))), var_2.b, 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(22897u, u_input.a.x)), var_0)), Struct_3(true, firstLeadingBit(~vec4<i32>(-69053i, -1i, -2147483647i, 5875i)) | -firstTrailingBit(vec4<i32>(-2147483647i, -25094i, 2147483647i, 2147483647i)), Struct_2(2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(var_2.a.x, var_3.x, var_3.x, var_2.a.x)), false, _wgslsmith_clamp_u32(var_2.c, var_2.c, var_0), var_0), true, ~var_2.c | _wgslsmith_mod_u32(1u, 30899u)), _wgslsmith_sub_i32(select(i32(-1i) * -3466i, ~1i, !var_2.b), 55526i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_3.yy - vec2<f32>(var_3.x, 1126f))))));
}

fn func_4(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = Struct_5(vec3<bool>(arg_0.b.b, all(vec4<bool>(true, true, true, true)), arg_0.b.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(arg_0.b.a.xwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c.c.b.a.wxw, arg_0.c.c.b.a.yww) + _wgslsmith_f_op_vec3_f32(arg_0.b.a.yyw * vec3<f32>(arg_0.d.x, arg_0.b.a.x, arg_0.b.a.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-316f, arg_0.c.c.b.a.x, 1038f) + arg_0.b.a.wyz), _wgslsmith_f_op_vec3_f32(min(arg_0.b.a.xzx, vec3<f32>(arg_0.c.c.b.a.x, arg_0.c.c.b.a.x, arg_0.b.a.x)))))), !var_0.a));
    var var_2 = -2147483647i;
    var var_3 = var_0;
    var_2 = (2147483647i | (~(-93903i | arg_0.a.x) ^ ~(~arg_0.a.x))) & arg_0.c.c.a;
    return vec3<i32>(~1i, -_wgslsmith_sub_i32(483i, firstTrailingBit(2147483647i)), i32(-1i) * -2147483647i);
}

fn func_1(arg_0: Struct_5) -> i32 {
    var var_0 = func_4(func_2());
    var_0 = _wgslsmith_add_vec3_i32(select(vec3<i32>(1i, 1i, 1i), -select(vec3<i32>(2147483647i, 3133i, var_0.x), vec3<i32>(54117i, 1i, var_0.x), true), any(arg_0.a) & true) << (_wgslsmith_sub_vec3_u32((vec3<u32>(0u, 21172u, u_input.a.x) >> (vec3<u32>(1u, u_input.a.x, 0u) % vec3<u32>(32u))) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 99285u), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))) % vec3<u32>(32u)), vec3<i32>(reverseBits(var_0.x), var_0.x, ~_wgslsmith_add_i32(var_0.x, var_0.x)) & func_4(Struct_4(vec4<i32>(33018i, -8068i, 16975i, -2147483647i), func_2().c.c.b, func_2().c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1212f, -830f), vec2<f32>(133f, -1327f))))));
    var_0 = -countOneBits((vec3<i32>(-1i) * -vec3<i32>(var_0.x, var_0.x, var_0.x)) ^ _wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.x, 2147483647i, var_0.x), vec3<i32>(-2147483647i, -922i, 15595i)));
    var_0 = abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.x | var_0.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), 22671i), -select(abs(vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<i32>(-2147483647i, var_0.x, var_0.x), arg_0.a)));
    let var_1 = Struct_5(vec3<bool>(arg_0.a.x, true, min(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i), vec3<i32>(27335i, var_0.x, 2147483647i))) <= func_4(func_2()).x));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-vec4<i32>(func_1(Struct_5(vec3<bool>(true, false, true))), firstLeadingBit(~(-2409i)), func_2().a.x, _wgslsmith_add_i32(1i, 37047i)), func_2().b, Struct_3(false, -vec4<i32>(1i, 1i, 1i, 1i), func_2().c.c, -(~0i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, func_2().c.c.b.a.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2019f, _wgslsmith_f_op_f32(var_0.b.a.x * var_0.c.c.b.a.x), _wgslsmith_f_op_f32(var_0.d.x * var_0.b.a.x), _wgslsmith_f_op_f32(var_0.b.a.x * var_0.c.c.b.a.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, var_0.d.x, 205f, -593f) + var_0.b.a), var_0.c.c.b.a))), all(vec2<bool>(true, var_0.b.b)), 4294967295u, ~u_input.a.x);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 10836u), ~_wgslsmith_sub_u32(54101u, var_1.d));
    let var_3 = var_0.a.x == (-1i ^ (min(var_0.c.c.a, _wgslsmith_dot_vec2_i32(var_0.c.b.yw, vec2<i32>(-18347i, var_0.a.x))) << (_wgslsmith_add_u32(u_input.a.x, 43979u) % 32u)));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.c.c.b.a), !var_3, var_1.c, var_0.b.d);
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(reverseBits(41906u), 0u, _wgslsmith_div_u32(0u, 2123u), 43234u)), vec3<u32>(4294967295u, firstLeadingBit(min(1u, 40418u)) & _wgslsmith_div_u32(var_1.d, ~1u), u_input.a.x), ~abs(_wgslsmith_add_u32(var_1.c, _wgslsmith_sub_u32(4294967295u, var_1.c))));
}

