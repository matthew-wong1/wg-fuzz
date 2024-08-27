struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec4<u32>(13340u, 24413u, _wgslsmith_mult_u32(u_input.a.x & u_input.a.x, u_input.a.x) ^ _wgslsmith_div_u32(~8400u, min(1u, u_input.a.x)), u_input.a.x), (u_input.c & _wgslsmith_add_i32(u_input.b.x ^ u_input.b.x, -u_input.c)) < -2147483647i);
    let var_1 = true;
    let var_2 = Struct_1(min(_wgslsmith_sub_vec4_u32(var_0.a, ~var_0.a | (var_0.a & var_0.a)), vec4<u32>(var_0.a.x, ~(var_0.a.x ^ 0u), 4294967295u, reverseBits(~46295u))), all(!select(!vec4<bool>(false, var_0.b, false, var_0.b), select(vec4<bool>(true, var_0.b, var_1, var_0.b), vec4<bool>(true, false, var_0.b, var_1), false), vec4<bool>(false, false, true, true))));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(226f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(705f, _wgslsmith_f_op_f32(min(-1601f, 1184f)), all(vec3<bool>(true, false, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1113f - -541f))) + 1955f);
    var_0 = Struct_1(vec4<u32>(~(u_input.a.x | (19519u >> (var_2.a.x % 32u))), 16553u | var_0.a.x, select(u_input.a.x, ~65596u, true) >> (u_input.a.x % 32u), 4294967295u), !var_0.b);
    return var_2.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(reverseBits(countOneBits(~select(vec4<u32>(u_input.a.x, u_input.a.x, 58841u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 10406u, 4294967295u), true))), true);
    let var_1 = u_input.b.x | u_input.b.x;
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(var_0.a >> (var_0.a % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(reverseBits(var_0.a), select(var_0.a, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<bool>(var_0.b, true, var_0.b, var_0.b)))) ^ ~firstLeadingBit(select(var_0.a, var_0.a, false)), !(!func_3()));
    var var_2 = Struct_1(vec4<u32>(firstLeadingBit(4294967295u), 4294967295u, ~firstLeadingBit(firstTrailingBit(72713u)), _wgslsmith_sub_u32(u_input.a.x, 16288u) | _wgslsmith_dot_vec4_u32(countOneBits(var_0.a), _wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(1u, u_input.a.x, var_0.a.x, var_0.a.x)))), false);
    return Struct_1(vec4<u32>(~var_2.a.x & ~67916u, 0u, _wgslsmith_mod_u32(~var_0.a.x, var_2.a.x), ~var_2.a.x) ^ (abs(_wgslsmith_add_vec4_u32(vec4<u32>(670u, var_0.a.x, 0u, var_2.a.x), var_2.a)) & ~vec4<u32>(4302u, 33165u, u_input.a.x, 0u)), var_2.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = -1i;
    var_0 = 48118i;
    var_0 = arg_2;
    var_0 = u_input.b.x;
    return arg_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    var_0 = firstLeadingBit(-21080i | u_input.b.x);
    var_0 = _wgslsmith_add_i32(-firstLeadingBit(_wgslsmith_mult_i32(u_input.c, ~2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.b.yx, vec2<i32>(2147483647i, u_input.b.x)), vec2<i32>(~(-6508i), -1i >> (arg_0.a.x % 32u))) >> (57157u % 32u));
    let var_1 = 18401i;
    return firstLeadingBit(4294967295u);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_u32(~(~u_input.a.x), _wgslsmith_mod_u32(~57409u, 1u));
    var var_1 = _wgslsmith_f_op_f32(1f * 1813f);
    var_0 = func_5(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 37302u, u_input.a.x), select(~vec4<u32>(u_input.a.x, u_input.a.x, 12661u, 1u), vec4<u32>(4294967295u, u_input.a.x, 83036u, u_input.a.x) & vec4<u32>(21147u, 4294967295u, u_input.a.x, u_input.a.x), arg_1.x >= -1i)), !func_4(u_input.a.x, func_2(), firstLeadingBit(-581i), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 24717u), true))), 1u, false);
    var_1 = 1318f;
    var_0 = reverseBits(func_2().a.x);
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = vec3<bool>(arg_0.b, true, false);
    return _wgslsmith_f_op_f32(round(1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_add_i32(1i, -28218i) ^ u_input.c, ~u_input.b.x << (u_input.a.x % 32u)), max(u_input.b.x, u_input.b.x)) == -_wgslsmith_sub_i32(max(1i, u_input.c | u_input.c), -22439i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1281f, _wgslsmith_f_op_f32(f32(-1f) * -221f), -767f)) - vec3<f32>(_wgslsmith_f_op_f32(func_6(func_1(u_input.b.x, vec4<i32>(10840i, u_input.c, 0i, 12415i)), u_input.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-454f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f) + 398f))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1410f, -1408f)), _wgslsmith_f_op_f32(-409f - -934f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1965f - -1185f) + _wgslsmith_f_op_f32(-1000f * 227f)), _wgslsmith_f_op_f32(func_6(Struct_1(vec4<u32>(0u, 40945u, 65795u, 4587u), true), -u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(842f, -211f, 468f) - vec3<f32>(2536f, -1019f, -1596f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1201f, -1245f, -1656f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(620f, -1432f, -2287f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, 189f)))), vec3<f32>(_wgslsmith_f_op_f32(-608f * var_1.x), -388f, var_1.x))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1000f, -767f), vec3<f32>(1000f, -418f, 1721f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(791f, var_1.x, 670f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1333f, -1170f), var_1.x), 1345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1022f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 2378f, -1000f), vec3<f32>(var_1.x, 1366f, -807f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(937f, var_1.x, var_1.x))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(u_input.a ^ u_input.a, u_input.a)), 1057f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1141f, 196f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_2.x, var_2.x))))))), var_2);
}

