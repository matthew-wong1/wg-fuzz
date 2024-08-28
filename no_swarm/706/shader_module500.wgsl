struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> bool {
    var var_0 = -514f;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-610f - 1f), 424f));
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-738f, 802f, -266f, -1541f))))))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), u_input.a ^ countOneBits(u_input.a | -u_input.e.zy));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, -1305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) + -338f)), var_0.b, firstTrailingBit(_wgslsmith_mult_vec2_i32(var_0.c, u_input.b)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) - var_0.a.x), -225f, _wgslsmith_f_op_f32(var_0.a.x - 437f), var_0.a.x), _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(max(var_0.a, vec4<f32>(141f, 433f, 1267f, -373f)))), true)), select(vec3<bool>(var_0.b.x || true, false, var_0.b.x || false), select(select(!vec3<bool>(false, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), func_3(vec3<u32>(u_input.c, 53416u, u_input.c), vec3<i32>(-1i, -1i, u_input.e.x))), vec3<bool>(any(vec3<bool>(var_0.b.x, false, true)), var_0.b.x, false), select(var_0.b, var_0.b, !var_0.b)), true), firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(max(1i, 1i), 0i), _wgslsmith_dot_vec3_i32(~u_input.e, u_input.d.zxw))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.a.x, var_0.a.x, var_0.a.x) - vec4<f32>(var_0.a.x, -221f, -2764f, 347f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 502f, -1786f) * var_0.a)))), !var_0.b, u_input.d.yw >> (_wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, 32408u) << (~vec2<u32>(u_input.c, 76667u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return Struct_2(u_input.d, vec2<u32>(~reverseBits(~35557u), 0u));
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = !(!func_3(vec3<u32>(u_input.c, 0u ^ u_input.c, _wgslsmith_mod_u32(u_input.c, var_0.b.x)), -vec3<i32>(u_input.a.x, 2147483647i, -2147483647i) & var_0.a.wxy));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1338f, _wgslsmith_f_op_f32(sign(-896f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-275f, 659f), -881f, any(vec2<bool>(false, true))))))));
    var var_3 = ~0u;
    var_2 = _wgslsmith_f_op_f32(383f + _wgslsmith_f_op_f32(max(573f, _wgslsmith_f_op_f32(round(-1006f)))));
    return all(select(select(vec2<bool>(true, true), vec2<bool>(true, -2147483647i <= var_0.a.x), var_0.a.x >= _wgslsmith_clamp_i32(var_0.a.x, 2147483647i, 21957i)), vec2<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), false))));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_2(u_input.d & vec4<i32>(u_input.b.x, ~u_input.a.x, u_input.e.x, firstTrailingBit(1i)), firstTrailingBit(arg_0.xy));
    var_0 = Struct_2(vec4<i32>(1i, ~select(-20210i, u_input.e.x, true), _wgslsmith_dot_vec4_i32(var_0.a, firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.d, var_0.a))), _wgslsmith_dot_vec3_i32(-select(u_input.e, vec3<i32>(0i, 17644i, -37403i), true), vec3<i32>(u_input.a.x, var_0.a.x, -u_input.d.x))), countOneBits(arg_0.xz));
    var_0 = Struct_2(_wgslsmith_add_vec4_i32(min(vec4<i32>(-3530i, 1i, -1611i, var_0.a.x), abs(vec4<i32>(-2147483647i, var_0.a.x, u_input.b.x, u_input.e.x))) ^ u_input.d, ~(~vec4<i32>(u_input.b.x, 43026i, var_0.a.x, -19235i)) >> ((vec4<u32>(21321u, 1u, 8660u, u_input.c) & vec4<u32>(arg_0.x, 1306u, u_input.c, arg_1)) % vec4<u32>(32u))), select(var_0.b & abs(~vec2<u32>(78809u, 4294967295u)), firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, arg_0.x), vec2<u32>(4294967295u, arg_0.x)), ~vec2<u32>(arg_0.x, 1u))), false));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(step(-2074f, 945f)), _wgslsmith_f_op_f32(arg_2.x * arg_2.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, arg_2.x, arg_2.x, arg_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, 1000f, 2209f, -1424f)))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(-1049f)), _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1109f), 928f)))), vec3<bool>(false, any(vec2<bool>(true, true)), true), u_input.a);
    let var_2 = Struct_2((_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, var_0.a.x, var_0.a.x, -2147483647i), var_0.a) << (abs(vec4<u32>(arg_0.x, arg_1, u_input.c, var_0.b.x)) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(50180u, ~var_0.b.x, 61404u ^ u_input.c, ~57817u), vec4<u32>(~23102u, 58214u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 58683u, var_0.b.x), vec3<u32>(4294967295u, arg_1, 25345u)))) % vec4<u32>(32u)), ~vec2<u32>(var_0.b.x, select(abs(12280u), arg_0.x, var_1.b.x)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1307f, -848f)))) - -343f) < -610f;
    var var_1 = func_4(abs(~vec3<u32>(~u_input.c, ~u_input.c, 104533u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(u_input.c, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(1495u, 659u), vec2<u32>(4294967295u, u_input.c))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 1u) | vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u)), select(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(63668u, 1u), vec2<u32>(u_input.c, u_input.c), vec2<u32>(32222u, 69419u))), vec2<u32>(u_input.c, 1u), vec2<bool>(var_0, func_1()))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(759f, -785f, -930f), vec3<f32>(-242f, -862f, 1000f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(1281f)), _wgslsmith_f_op_f32(select(-1000f, 253f, true)), _wgslsmith_f_op_f32(-1776f * -368f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(759f, 1984f, -1779f), vec3<f32>(-472f, -169f, 890f), var_0))))))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1474f + 502f), -598f, 1f, 795f), vec4<f32>(_wgslsmith_f_op_f32(floor(2201f)), 1f, 316f, _wgslsmith_f_op_f32(f32(-1f) * -696f))), !(!vec3<bool>(var_0, var_0, false)), vec2<i32>(~(-2147483647i), 1i)), -_wgslsmith_mod_vec4_i32(~select(var_1.a, var_1.a, vec4<bool>(false, false, var_0, false)), vec4<i32>(var_1.a.x >> (var_1.b.x % 32u), abs(0i), var_1.a.x, 1i)), abs(4294967295u), 4294967295u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, 342f, 787f, -547f)) * vec4<f32>(1311f, 913f, 1218f, 171f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(271f, -424f, -169f, 1797f), vec4<f32>(-268f, 278f, -524f, 1714f))))), !(!select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, false))), ~(~(~vec2<i32>(-25188i, 5043i)))));
    var_1 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(0i, var_1.a.x, var_2.b.x, var_2.b.x), u_input.d), select(-u_input.d, -var_2.b, var_0), vec4<i32>(var_2.e.c.x, ~u_input.a.x, -20065i, _wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, 16957i))), select(vec4<i32>(6661i & u_input.d.x, _wgslsmith_mod_i32(u_input.a.x, 1i), _wgslsmith_clamp_i32(-24644i, var_1.a.x, 0i), -34541i), select(reverseBits(vec4<i32>(var_2.b.x, var_2.e.c.x, u_input.b.x, 0i)), func_4(vec3<u32>(70801u, u_input.c, var_2.c), var_2.c, vec3<f32>(var_2.a.a.x, 1644f, 1421f)).a, !var_2.a.b.x), any(vec2<bool>(true, true)))), vec2<u32>(42686u, countOneBits(max(~4294967295u, ~10036u))));
    var var_3 = Struct_2(_wgslsmith_mult_vec4_i32(func_2().a, u_input.d), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(13803i, u_input.a.x, -1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.a.x), var_3.a.zw)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(var_1.a.x, _wgslsmith_dot_vec2_i32(var_3.a.yw, vec2<i32>(54358i, 1i)))), var_2.a.c));
}

