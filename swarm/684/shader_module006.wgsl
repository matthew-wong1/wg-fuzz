struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = !(!vec2<bool>(_wgslsmith_f_op_f32(ceil(-1462f)) <= _wgslsmith_f_op_f32(step(411f, -942f)), false));
    var var_1 = _wgslsmith_mult_u32(~(4294967295u >> ((firstTrailingBit(42626u) & 54790u) % 32u)), ~(firstTrailingBit(87727u) & ~firstLeadingBit(125148u)));
    var var_2 = Struct_2(all(select(select(var_0, !vec2<bool>(false, var_0.x), vec2<bool>(true, false)), select(var_0, select(vec2<bool>(false, true), var_0, var_0), true), !var_0)), -1i, Struct_1(1u, ~vec2<i32>(1i | u_input.e.x, i32(-1i) * -1i), 63024u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 511f), 923f, var_0.x && var_0.x)), _wgslsmith_f_op_f32(-471f - _wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2088f - -285f) * _wgslsmith_f_op_f32(abs(-691f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-2021f)), 148f, _wgslsmith_f_op_f32(-171f + -851f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), -419f, _wgslsmith_f_op_f32(step(-643f, -440f)))))));
    var var_3 = false;
    var var_4 = Struct_2(true, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c, -u_input.d.x, ~u_input.b.x), -(-u_input.e.yzy << (reverseBits(vec3<u32>(var_2.c.c, 40784u, 1526u)) % vec3<u32>(32u)))), Struct_1(~(~firstLeadingBit(var_2.c.c)), vec2<i32>(~(-1i), reverseBits(1i)), ~var_2.c.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(498f + -747f), var_2.d.x, -520f)));
    return var_2.c.c;
}

fn func_4(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_2(u_input.a != select(_wgslsmith_add_i32(~11893i, abs(u_input.e.x)), 47382i, all(vec4<bool>(false, true, true, false))), u_input.a | -(~firstLeadingBit(u_input.c)), Struct_1(arg_0, (-u_input.b.wx & (vec2<i32>(u_input.c, u_input.b.x) >> (vec2<u32>(10266u, 4294967295u) % vec2<u32>(32u)))) << (~(vec2<u32>(0u, arg_0) ^ vec2<u32>(43489u, 0u)) % vec2<u32>(32u)), arg_0), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-355f, -675f, _wgslsmith_f_op_f32(321f + 379f)) + vec3<f32>(680f, _wgslsmith_f_op_f32(select(390f, -1865f, false)), -821f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(888f, 1075f, -1614f))))))));
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.x)) * -389f);
    var_2 = _wgslsmith_f_op_f32(-var_0.d.x);
    var var_3 = var_0.a;
    return select(vec4<bool>(true, true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.a), vec2<bool>(false, false), false), var_0.a)), false), !select(vec4<bool>(var_0.d.x != var_0.d.x, var_0.d.x > 1582f, var_0.a, var_0.a), vec4<bool>(true, var_0.a, select(true, var_0.a, var_0.a), false), var_0.a), var_0.a);
}

fn func_2() -> f32 {
    var var_0 = vec3<bool>(all(vec3<bool>(all(vec4<bool>(false, false, true, true)) | true, true, true)), all(func_4(func_3())), !all(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(!(-13932i == u_input.e.x), -2147483647i, Struct_1(26904u, ~vec2<i32>(u_input.d.x, u_input.b.x), 0u), vec3<f32>(1311f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1303f)), _wgslsmith_div_f32(-1173f, 1229f)), 444f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -151f)))));
    var_0 = !func_4(~_wgslsmith_mod_u32(var_1.c.a, var_1.c.a)).xzx;
    var_1 = Struct_2(var_0.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(select(-2147483647i, var_1.b, var_1.a), ~u_input.d.x), 2147483647i) >> (countOneBits(~_wgslsmith_div_u32(var_1.c.a, 18113u)) % 32u), Struct_1(var_1.c.a, -vec2<i32>(1i, 6997i), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.c.c, 55554u, var_1.c.c), vec3<u32>(var_1.c.c, var_1.c.a, 1u) << (vec3<u32>(var_1.c.a, 0u, 2146u) % vec3<u32>(32u))), countOneBits(vec3<u32>(18312u, var_1.c.c, var_1.c.a)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d - var_1.d) - _wgslsmith_f_op_vec3_f32(ceil(var_1.d)))))));
    var_1 = Struct_2((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.c.b.x, var_1.b, -25877i), ~vec4<i32>(u_input.d.x, 0i, 40560i, u_input.d.x)) >> (~14468u % 32u)) >= ~_wgslsmith_sub_i32(var_1.b, var_1.b | var_1.b), -countOneBits(abs(i32(-1i) * -30562i)), var_1.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-170f, -1559f))) * _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(round(-426f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.d.x, 1000f)), _wgslsmith_f_op_f32(sign(var_1.d.x))))), 1314f));
    return 1893f;
}

fn func_5(arg_0: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-673f, arg_0.x, arg_0.x, -1166f), arg_0))) - _wgslsmith_f_op_vec4_f32(-arg_0)));
    let var_1 = vec3<bool>(true, !select(false, false, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), func_4(1u).x);
    var var_2 = min(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), ~u_input.d), select(1i, 0i, true)), min(firstTrailingBit(_wgslsmith_add_i32(0i, -32468i)), max(~u_input.a, u_input.b.x) << (~(~42178u) % 32u)));
    var_2 = ~(~(u_input.a & u_input.b.x) >> (1u % 32u)) ^ 0i;
    let var_3 = var_1.x;
    return arg_0;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(551f * -1000f), -124f) + vec4<f32>(_wgslsmith_f_op_f32(-842f + 240f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(f32(-1f) * -1610f)))))));
    var var_1 = Struct_1(~firstLeadingBit(_wgslsmith_div_u32(func_3(), ~4294967295u)), vec2<i32>(~_wgslsmith_mult_i32(-21943i, u_input.a), 2147483647i), 1u);
    var_1 = Struct_1(var_1.a, u_input.e.xx, _wgslsmith_add_u32(~(~7623u), ~4294967295u));
    let var_2 = vec3<i32>(-21164i, var_1.b.x, _wgslsmith_add_i32(3727i, ~(-u_input.b.x & 0i)));
    var var_3 = _wgslsmith_div_vec4_i32(-max(u_input.e, ~u_input.b), reverseBits(max(~(~vec4<i32>(1i, var_2.x, u_input.a, var_1.b.x)), select(vec4<i32>(2147483647i, 1i, var_2.x, -13842i), u_input.e, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)))));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2247i;
    let var_1 = select(func_1(), func_4(59499u).wy, !(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-777f))), -1000f, -127f);
    var var_3 = Struct_1(_wgslsmith_sub_u32(37536u, ~_wgslsmith_sub_u32(28307u, select(26729u, 16071u, true))), firstTrailingBit(~(u_input.e.yx & vec2<i32>(-27523i, u_input.b.x)) << (~vec2<u32>(53698u, 12797u) % vec2<u32>(32u))), ~1u);
    var var_4 = Struct_1(~(var_3.c >> (select(var_3.a, var_3.c ^ 0u, any(vec4<bool>(var_1.x, false, true, var_1.x))) % 32u)), countOneBits(abs(max(u_input.d, abs(var_3.b)))), abs(~var_3.a));
    var_3 = Struct_1(max(countOneBits(var_3.c), ~(var_4.a ^ 7512u)), ~var_3.b, var_4.a);
    var_4 = Struct_1(var_4.a, -abs(var_4.b), ~_wgslsmith_mult_u32(0u, 14490u));
    var var_5 = Struct_1(var_3.a, u_input.b.xw, abs(var_3.a));
    let var_6 = ~(var_3.c << (19378u % 32u)) >> (func_3() % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(select(var_3.b, _wgslsmith_div_vec2_i32(var_5.b, var_4.b), vec2<bool>(false, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-160f * 934f), _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(687f))))), var_2.x, _wgslsmith_f_op_f32(-916f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(max(var_2.x, var_2.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), var_1.x)))));
}

