struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    let var_0 = 1427f;
    var var_1 = 36325i;
    let var_2 = vec3<i32>(u_input.b.x, u_input.b.x, ~_wgslsmith_clamp_i32(min(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, u_input.a.x)), -u_input.b.x), 1i, ~(~0i)));
    var_1 = var_2.x;
    let var_3 = select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, true))), select(vec2<bool>(!select(false, false, false), true), vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), false)), !vec2<bool>(all(vec2<bool>(true, false)), (var_2.x ^ -74056i) < (u_input.a.x << (0u % 32u))));
    return var_0;
}

fn func_2() -> vec3<f32> {
    let var_0 = ~(i32(-1i) * -15668i);
    let var_1 = Struct_3(Struct_1(u_input.a.wz, ~(-u_input.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(min(1f, -1920f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(507f, -269f) + -1615f)), ~(~min(u_input.c.x, 31u))), vec2<bool>(true, all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(f32(-1f) * -1716f)), _wgslsmith_f_op_f32(f32(-1f) * -283f)), Struct_2(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), true), false), Struct_1(abs(vec2<i32>(u_input.b.x, var_0)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, 0i, -1i, -2147483647i))), vec3<f32>(-161f, _wgslsmith_f_op_f32(max(1000f, 996f)), _wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~u_input.c)), Struct_1(u_input.a.ww, -max(vec4<i32>(1i, 0i, var_0, u_input.a.x), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2148f, 1228f, 483f)))), u_input.c.x), vec3<f32>(-619f, _wgslsmith_f_op_f32(659f * _wgslsmith_f_op_f32(f32(-1f) * -2258f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(809f - 1000f), -1879f)))), vec2<i32>(abs(0i), -var_0));
    var var_2 = Struct_1(vec2<i32>(-1i) * -(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.b.x, -2147483647i), vec2<i32>(0i, u_input.b.x))), var_1.d.b.b << (vec4<u32>(53682u, 0u, _wgslsmith_div_u32(1u, abs(4294967295u)), min(_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.c.x), select(9575u, u_input.c.x, var_1.d.a.x))) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c.x, var_1.c.x) * _wgslsmith_f_op_f32(-var_1.c.x)) + _wgslsmith_f_op_f32(377f * -849f)), _wgslsmith_f_op_f32(f32(-1f) * -718f), var_1.d.c.c.x), var_1.d.b.d);
    var var_3 = Struct_2(vec4<bool>(!all(!vec3<bool>(var_1.d.a.x, var_1.b.x, var_1.b.x)), var_1.b.x, false, all(vec2<bool>(!var_1.b.x, select(var_1.d.a.x, true, var_1.d.a.x)))), Struct_1(vec2<i32>(-(~u_input.b.x), -1i), ~var_1.a.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, var_1.d.c.c.x, var_1.c.x) * var_2.c) + vec3<f32>(1032f, 673f, var_1.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_2.c.x, -116f) + var_1.a.c) + vec3<f32>(577f, -1000f, var_1.a.c.x)))), u_input.c.x), var_1.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)))), var_2.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.c.x))))));
    var_3 = var_1.d;
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - var_1.d.c.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))))), -1054f, _wgslsmith_f_op_f32(-var_3.b.c.x));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_2(vec4<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), !any(vec2<bool>(true, true)), ~(~u_input.c.x) >= ~u_input.c.x, all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true))), Struct_1(u_input.a.yz, vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) << (1u % 32u), -57358i & -u_input.a.x, _wgslsmith_div_i32(2147483647i, 1i << (u_input.c.x % 32u)), 34223i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(457f, 394f, -529f), vec3<f32>(-581f, -1853f, -883f)) - vec3<f32>(-1391f, -904f, 762f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(vec3<f32>(367f, -1227f, -1268f) - vec3<f32>(-520f, 672f, 146f)))), u_input.c.x), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -105i), _wgslsmith_mod_vec2_i32(abs(u_input.b), u_input.b)), _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x)), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(f32(-1f) * -1045f), -441f)), 1u), vec3<f32>(825f, _wgslsmith_f_op_f32(func_3()), -1076f));
    var var_1 = select(vec4<bool>(true, var_0.a.x & true, var_0.a.x, any(var_0.a.zyz) & !any(var_0.a.zy)), var_0.a, !select(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(var_0.a.x, var_0.a.x, true, true)), var_0.a, select(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), !vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a)));
    var_0 = Struct_2(vec4<bool>(var_0.a.x, !select(u_input.a.x > -2147483647i, var_1.x, all(vec2<bool>(var_1.x, var_0.a.x))), any(vec3<bool>(!var_1.x, true, true | var_0.a.x)), !var_1.x), Struct_1(vec2<i32>(var_0.b.a.x, ~2147483647i) << (abs(vec2<u32>(var_0.c.d, 2077u)) % vec2<u32>(32u)), var_0.b.b, _wgslsmith_f_op_vec3_f32(-var_0.b.c), _wgslsmith_sub_u32(~u_input.c.x, ~_wgslsmith_mult_u32(4294967295u, var_0.b.d))), Struct_1(var_0.b.b.xw, vec4<i32>(81791i, var_0.c.a.x, -3294i, var_0.c.a.x) | var_0.b.b, var_0.d, u_input.c.x), _wgslsmith_f_op_vec3_f32(round(var_0.b.c)));
    let var_2 = !any(var_0.a.xxw) || !(!(!all(var_0.a)));
    var_0 = Struct_2(!(!(!var_0.a)), var_0.b, Struct_1(-vec2<i32>(_wgslsmith_mult_i32(-2147483647i, var_0.b.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(var_0.c.a.x, u_input.a.x))), ~_wgslsmith_mult_vec4_i32(-u_input.a, vec4<i32>(2147483647i, u_input.b.x, u_input.a.x, var_0.c.a.x)), vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f))), abs(_wgslsmith_clamp_u32(~u_input.c.x, var_0.b.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.d, u_input.c.x, var_0.c.d), vec3<u32>(var_0.b.d, 79899u, 25889u))))), var_0.b.c);
    return abs(~_wgslsmith_mod_vec4_u32(reverseBits(max(vec4<u32>(54280u, var_0.b.d, 4154u, 30432u), vec4<u32>(u_input.c.x, u_input.c.x, 13189u, u_input.c.x))), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u) | vec4<u32>(72468u, var_0.b.d, 1u, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(220f * -1468f);
    var_0 = _wgslsmith_f_op_f32(sign(-1641f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-176f)))), 1207f);
    let var_1 = func_1();
    var var_2 = Struct_2(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)))), Struct_1(~select(vec2<i32>(2147483647i, u_input.a.x), u_input.a.yw, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-8753i, u_input.a.x), -u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b), -2147483647i), vec4<i32>(-u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x), firstTrailingBit(u_input.a.x), 1i)), vec3<f32>(360f, -544f, -271f), _wgslsmith_mult_u32(0u, 0u)), Struct_1(-vec2<i32>(-u_input.a.x, _wgslsmith_sub_i32(0i, -48998i)), reverseBits(_wgslsmith_sub_vec4_i32(reverseBits(u_input.a), vec4<i32>(u_input.b.x, 83487i, u_input.b.x, 55596i) >> (var_1 % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1381f, -1722f, -244f), vec3<f32>(-1260f, 662f, -312f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 408f)))), select(4190u, 1u, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1273f, -451f, -1454f) + vec3<f32>(1562f, 1000f, 684f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-252f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1295f - 1062f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -722f))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~u_input.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(637f, -1000f), var_2.d.x)), 0u, firstLeadingBit(-u_input.a.wxz));
}

