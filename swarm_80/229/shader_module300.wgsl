struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = Struct_4(select(4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(~4294967295u, 0u), ~reverseBits(86301u)), true), !(!vec4<bool>(1i != u_input.a.x, all(vec4<bool>(true, true, true, true)), true, true)), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1430f - 476f), _wgslsmith_f_op_f32(select(-1028f, 709f, false)))), vec3<u32>(1u, 1u, 1u), vec2<bool>(false, false), all(vec4<bool>(-24606i >= u_input.a.x, true, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false))))), Struct_2(select(true, true, any(vec3<bool>(true, true, true))), Struct_1(vec3<f32>(1189f, _wgslsmith_f_op_f32(-1509f + -905f), _wgslsmith_f_op_f32(floor(-1240f)))), max(vec2<u32>(1u, 122823u), ~countOneBits(vec2<u32>(105410u, 4294967295u))), vec2<u32>(21624u, ~1u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d.b.a.x)) - _wgslsmith_f_op_f32(var_0.d.b.a.x + var_0.c.a.x))))));
    var_0 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_add_u32(103057u, var_0.c.b.x), 1u), vec4<bool>(!(!(!var_0.d.a)), var_0.b.x, false, true), var_0.c, Struct_2(false, var_0.d.b, _wgslsmith_clamp_vec2_u32(~var_0.c.b.yy | select(var_0.d.d, vec2<u32>(var_0.d.c.x, var_0.a), true), var_0.c.b.xx, var_0.c.b.xz), vec2<u32>(4294967295u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0.d.d.x, var_0.d.d.x)), _wgslsmith_dot_vec2_u32(var_0.c.b.yx, vec2<u32>(8063u, 1u)), var_0.b.x == var_0.b.x))));
    var_0 = Struct_4(var_0.d.c.x, select(vec4<bool>(!var_0.c.c.x, all(vec3<bool>(true, var_0.d.a, false)), false, false), !(!vec4<bool>(false, false, false, var_0.b.x)), vec4<bool>(!(!var_0.b.x), false, var_0.c.d, var_0.b.x)), var_0.c, Struct_2(true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.d.b.a.x, var_0.c.a.x, var_0.b.x)), _wgslsmith_f_op_f32(floor(-826f)), _wgslsmith_f_op_f32(var_0.d.b.a.x - 565f))), vec2<u32>((var_0.d.d.x ^ var_0.a) & (var_0.a >> (49475u % 32u)), var_0.a), vec2<u32>(~firstTrailingBit(var_0.a), 4294967295u)));
    let var_2 = var_0.d.d | vec2<u32>(~1u, 4294967295u);
    return _wgslsmith_f_op_f32(-var_0.c.a.x);
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<u32>(~(~29697u), abs(1u));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(902f, _wgslsmith_f_op_f32(779f * 1974f))), _wgslsmith_f_op_f32(1598f - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f - _wgslsmith_f_op_f32(-745f * 103f)))), vec3<u32>(~firstTrailingBit(~3100u), ~(~(var_0.x >> (0u % 32u))), 53042u), vec2<bool>(true || !(-1i < u_input.a.x), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)) && !all(vec4<bool>(true, false, true, false))), true);
    var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(~(~4294967295u), 1u), select(~vec2<u32>(4294967295u, 0u), countOneBits(var_1.b.zz), vec2<bool>(select(false, true, false), true)) >> (~vec2<u32>(~1u, max(var_0.x, var_0.x)) % vec2<u32>(32u)));
    let var_2 = Struct_4(var_1.b.x, !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, var_1.c.x, false), true), select(vec4<bool>(var_1.d, var_1.d, var_1.d, true), vec4<bool>(false, false, true, true), vec4<bool>(var_1.c.x, true, var_1.d, var_1.d)), vec4<bool>(true, true, true, true)), vec4<bool>(true, 242f < var_1.a.x, false, any(vec3<bool>(true, true, true))), (var_1.a.x <= 1663f) || var_1.c.x), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -951f))), firstTrailingBit(vec3<u32>(54059u, 1u, 6380u)), var_1.c, !all(vec3<bool>(false, false, false))), Struct_2(!(var_1.a.x < var_1.a.x), Struct_1(vec3<f32>(-1736f, -1349f, _wgslsmith_f_op_f32(var_1.a.x - -1209f))), vec2<u32>(var_0.x >> (var_1.b.x % 32u), ~var_0.x ^ ~4294967295u), countOneBits(vec2<u32>(0u, var_1.b.x)) ^ var_1.b.yx));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * -854f);
    return Struct_4(var_0.x, var_2.b, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), 545f), ~var_1.b, !select(select(var_2.c.c, vec2<bool>(var_2.b.x, var_1.d), var_1.d), vec2<bool>(var_2.b.x, var_2.c.d), select(vec2<bool>(var_2.c.d, true), var_2.c.c, vec2<bool>(var_1.d, true))), false), Struct_2(-2709f >= var_2.d.b.a.x, var_2.d.b, vec2<u32>(var_1.b.x, _wgslsmith_mult_u32(var_2.d.d.x, var_1.b.x) >> (1u % 32u)), abs(abs(~vec2<u32>(var_1.b.x, var_2.d.c.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_3 {
    let var_0 = arg_0.d;
    let var_1 = arg_0;
    let var_2 = func_2().c;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f * 281f)))), arg_2, 2390f, _wgslsmith_f_op_f32(-var_0.b.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 406f, 989f, var_2.a.x) + vec4<f32>(var_0.b.a.x, var_0.b.a.x, -534f, arg_0.d.b.a.x))))))));
    var var_4 = (vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 28119i, 1i), -vec3<i32>(-8522i, u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, arg_3), u_input.a.xx), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_3), u_input.a.yz), _wgslsmith_sub_vec2_i32(u_input.a.xy, vec2<i32>(-1i, 0i)))) >> (var_1.c.b % vec3<u32>(32u))) >> (var_2.b % vec3<u32>(32u));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_4) -> bool {
    var var_0 = func_4(func_2(), Struct_1(vec3<f32>(1087f, _wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(min(182f, _wgslsmith_f_op_f32(-arg_0.a.x))))), func_2().c.a.x, -31873i);
    var_0 = arg_3.c;
    let var_1 = var_0.c.x;
    var var_2 = var_0.b.x;
    let var_3 = -(~firstTrailingBit(select(vec2<i32>(11879i, arg_2), ~vec2<i32>(68705i, arg_2), any(vec4<bool>(arg_3.c.d, true, arg_3.b.x, arg_3.d.a)))));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~_wgslsmith_div_vec3_u32(vec3<u32>(~114837u, max(4294967295u, 40714u), _wgslsmith_div_u32(21173u, 1u)), vec3<u32>(~18535u, 1u, ~30239u)));
    let var_1 = all(vec2<bool>(all(vec4<bool>(true, false, func_1(Struct_1(vec3<f32>(-956f, 1100f, 402f)), vec3<f32>(-1000f, 382f, -352f), u_input.a.x, Struct_4(var_0.x, vec4<bool>(false, false, false, false), Struct_3(vec2<f32>(382f, -736f), vec3<u32>(var_0.x, var_0.x, 47985u), vec2<bool>(true, false), true), Struct_2(false, Struct_1(vec3<f32>(615f, -1279f, -544f)), var_0.xz, vec2<u32>(var_0.x, var_0.x)))), true)), !all(vec3<bool>(false, false, true)) | true));
    var var_2 = reverseBits(max(vec4<i32>(i32(-1i) * -48900i, -30302i, u_input.a.x, u_input.a.x), min(~(~vec4<i32>(u_input.a.x, -2414i, u_input.a.x, u_input.a.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -13236i, -2147483647i, -13845i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(28483i, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_3 = func_2().d.b;
    var var_4 = abs(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-2147483647i, var_2.x, -2147483647i)) & u_input.a) ^ max(u_input.a, -vec3<i32>(1i, ~var_2.x, ~1i));
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_3.a.x)), -788f));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(29558u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(44564u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), ~8532u)), 19835u), _wgslsmith_sub_u32(var_0.x, var_0.x) << (var_0.x % 32u), _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(var_0.x | 29014u, ~var_0.x)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.x, 1u, 5752u) >> (vec3<u32>(50876u, 0u, 0u) % vec3<u32>(32u))), ~vec3<u32>(13161u, 4294967295u, var_0.x) & vec3<u32>(var_0.x, 4294967295u, var_0.x))));
    var_2 = vec4<i32>(var_2.x, -max(abs(58075i), u_input.a.x), var_2.x, var_4.x);
    let var_6 = 21076u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(96266u, ~reverseBits(var_0.x), ~(var_0.x >> (var_0.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_5)))) - var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5)), var_3.a.x), vec3<i32>(2147483647i, max(~(~var_4.x), min(-10634i, i32(-1i) * -2147483647i)), _wgslsmith_mod_i32(firstLeadingBit(i32(-1i) * -30699i), -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), var_6, vec4<f32>(524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(547f)) + var_3.a.x)), func_2().d.b.a.x, -281f));
}

