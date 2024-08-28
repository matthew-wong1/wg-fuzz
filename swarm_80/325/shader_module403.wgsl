struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = abs(~_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(select(1u, 4294967295u, false), ~4294967295u)));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(2237i, _wgslsmith_mult_i32(_wgslsmith_div_i32(57873i, u_input.a), u_input.a << (var_0 % 32u)), 0i, _wgslsmith_mult_i32(~(-1582i), 0i));
    var var_2 = vec4<bool>(!any(vec4<bool>(false, false, true, true)) | (all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)) & true), all(select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), !all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), true);
    var var_3 = !vec2<bool>(!(49359u != var_0) | !(!var_2.x), var_2.x & !(var_1.x != -1i));
    let var_4 = Struct_2(vec2<bool>(any(vec3<bool>(!var_3.x, all(vec3<bool>(true, var_3.x, var_2.x)), false && var_3.x)), all(!(!var_2.wx))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.c)), arg_1.b, _wgslsmith_f_op_f32(-arg_1.c)))), _wgslsmith_f_op_f32(870f + -597f), arg_1.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.zz)) + vec2<f32>(-603f, arg_1.c)))), all(select(select(!vec4<bool>(false, var_3.x, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, var_3.x, false, false)), vec4<bool>(false, false, true, !var_2.x), select(!vec4<bool>(var_3.x, true, true, var_2.x), !vec4<bool>(true, true, false, var_3.x), var_3.x))), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-647f - arg_1.a.x), 1615f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(957f, 249f))), _wgslsmith_f_op_f32(f32(-1f) * -1321f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 756f, true))), 1000f, arg_1.d), arg_1.a.x);
    return _wgslsmith_div_f32(var_4.e, 343f);
}

fn func_2() -> bool {
    let var_0 = !(-660f < _wgslsmith_f_op_f32(358f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -787f), Struct_1(vec3<f32>(-215f, -1000f, -1102f), 126f, -1568f, vec2<f32>(-1000f, -1545f))))));
    let var_1 = -u_input.a;
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(-(i32(-1i) * -34749i), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-1i, -23679i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1, var_1, -43903i) >> (vec3<u32>(41950u, 76990u, 20061u) % vec3<u32>(32u)), vec3<i32>(var_1, u_input.a, u_input.a)))), min(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 53091i, var_1), vec4<i32>(0i, 17566i, u_input.a, -33076i)) << (42934u % 32u), var_1));
    var var_3 = 17344i;
    var_3 = 1i;
    return var_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = vec3<bool>(all(vec3<bool>(true, false, _wgslsmith_f_op_f32(arg_2.d.c * -1121f) >= -104f)), arg_0.x, !(!func_2()));
    var var_1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a | 2147483647i, ~abs(u_input.a)), select(_wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.a, u_input.a), ~(-vec2<i32>(1i, u_input.a))), firstTrailingBit(~select(vec2<i32>(-2147483647i, 128i), vec2<i32>(u_input.a, u_input.a), arg_0.x)), func_2()));
    let var_2 = ~4294967295u | arg_1.x;
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1737f - _wgslsmith_f_op_f32(ceil(-153f))) * -1256f), _wgslsmith_f_op_f32(ceil(arg_2.e))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-353f, arg_2.e, !var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2285f * arg_2.d.d.x), 1800f)), true)))));
    let var_4 = reverseBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, 56020u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u))), vec4<u32>(1u, ~arg_1.x, 4294967295u, _wgslsmith_mod_u32(var_2 | 1u, ~4294967295u))));
    return Struct_3(Struct_2(var_0.yz, arg_2.d, select(any(!vec4<bool>(true, false, var_0.x, arg_2.a.x)), !(arg_2.c | arg_0.x), all(select(vec4<bool>(arg_2.c, true, var_0.x, true), vec4<bool>(false, arg_2.a.x, true, var_0.x), vec4<bool>(arg_2.a.x, true, arg_0.x, false)))), Struct_1(arg_2.d.a, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b.c)) * _wgslsmith_div_f32(240f, -127f)), vec2<f32>(_wgslsmith_div_f32(arg_2.e, 1000f), -231f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_3.x, -242f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1065f - -204f), _wgslsmith_f_op_f32(var_3.x - arg_2.e))))), 530f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~select(0u, _wgslsmith_mod_u32(31523u, 1u), true) > 1u, false, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)) & !(_wgslsmith_f_op_f32(931f - 1020f) == _wgslsmith_f_op_f32(ceil(-1764f))));
    var var_1 = Struct_4(func_1(vec3<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), ~min(~vec2<u32>(47701u, 63515u), vec2<u32>(0u, 42532u)), Struct_2(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1794f, -1216f, -1775f), vec3<f32>(-1523f, -1186f, 1101f))), _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(f32(-1f) * -379f), vec2<f32>(-470f, 235f)), true, Struct_1(vec3<f32>(-247f, 761f, -1534f), _wgslsmith_f_op_f32(max(-418f, -746f)), _wgslsmith_f_op_f32(ceil(825f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1738f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f * -1200f) + _wgslsmith_f_op_f32(step(841f, -1517f))))), u_input.a, ~(~abs(u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1049f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1321f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-405f))))), false)));
    let var_2 = !(!(!vec4<bool>(true, any(vec3<bool>(var_1.a.a.c, var_1.a.a.c, var_1.a.a.a.x)), false, !var_1.a.a.a.x)));
    var var_3 = -744f;
    let var_4 = var_1.a.a.b;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 1u, 1u, 1u), -abs(vec3<i32>(0i, 0i, _wgslsmith_div_i32(var_1.c, var_1.c))), ~vec2<u32>(1u, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_4.c + var_1.a.b), 490f, -541f)), vec3<f32>(953f, _wgslsmith_f_op_f32(var_4.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1877f)), var_1.a.a.d.d.x)));
}

