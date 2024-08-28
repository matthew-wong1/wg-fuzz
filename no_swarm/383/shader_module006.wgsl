struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> bool {
    return !any(!(!(!vec4<bool>(true, arg_0, false, false))));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_3(all(!vec2<bool>(func_3(true, Struct_4(true, 40975u, u_input.d.yw, Struct_1(vec2<bool>(true, false)), Struct_3(false, 4363i, -1974f))), true)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(539f, 832f)))));
    let var_1 = ~(~vec4<u32>(1u, ~(~69408u), ~(~43695u), 1u));
    var_0 = Struct_3(var_0.a, _wgslsmith_div_i32(arg_0.x, (max(var_0.b, 0i) & -arg_0.x) ^ ~(-34878i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(abs(362f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1250f, -792f)))));
    var var_2 = vec2<bool>(firstTrailingBit(~arg_0.x) != countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, 2147483647i, var_0.b), u_input.b), vec4<i32>(var_0.b, arg_0.x, -1i, 11544i))), var_0.a && var_0.a);
    let var_3 = Struct_3(!(!(!(var_0.c > 956f))), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), arg_0.zz), -var_0.b), 939f);
    return arg_0.x > -1i;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_3(arg_2.x, 2147483647i, arg_1);
    return 28070u;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(arg_2.a, arg_0, u_input.d.xx, Struct_1(vec2<bool>(true, any(select(vec4<bool>(true, false, arg_2.a, true), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true), false)))), Struct_3(false, ~(-2147483647i), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(sign(arg_2.c)))));
    var_0 = Struct_4(false, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(10123u, 1u, ~var_0.b), arg_0), countOneBits(~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.c, vec2<i32>(-1i, var_0.c.x)), -vec2<i32>(var_0.c.x, var_0.c.x))), Struct_1(!(!(!var_0.d.a))), Struct_3(true, _wgslsmith_add_i32(arg_2.b | firstLeadingBit(var_0.e.b), max(u_input.d.x, var_0.e.b) & u_input.c), -1000f));
    let var_1 = false;
    let var_2 = abs(vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, 38649u), _wgslsmith_mult_u32(~arg_0, _wgslsmith_div_u32(4294967295u, 56302u))), ~(~1u), 86671u, arg_0));
    var_0 = Struct_4(all(select(!var_0.d.a, vec2<bool>(388f >= var_0.e.c, func_2(u_input.b.wxy)), !(!arg_2.a))), arg_0, u_input.b.zw, var_0.d, Struct_3(true, var_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-180f * -868f)))));
    return Struct_2(Struct_1(select(select(vec2<bool>(false, var_0.d.a.x), select(var_0.d.a, var_0.d.a, vec2<bool>(var_0.e.a, var_0.e.a)), !var_0.d.a), select(!vec2<bool>(var_1, true), var_0.d.a, !var_0.d.a), select(vec2<bool>(arg_2.a, true), vec2<bool>(true, false), !var_0.d.a))), Struct_1(var_0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_5(~func_4(func_2(abs(u_input.d.ywx)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1085f, 1386f) + _wgslsmith_f_op_f32(f32(-1f) * -613f)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(703f, 515f, 1636f, 110f) + vec4<f32>(1474f, -920f, -1903f, 200f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-512f, -619f, 1480f, -985f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, 981f, -1052f, 749f)))))), Struct_3(arg_0.a.x, u_input.a & u_input.a, _wgslsmith_f_op_f32(1680f * _wgslsmith_f_op_f32(946f * _wgslsmith_div_f32(441f, -1793f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, var_0.c, var_0.c)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c) * _wgslsmith_div_f32(-1195f, var_0.c)), _wgslsmith_f_op_f32(var_0.c * -1223f))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-1885f * _wgslsmith_f_op_f32(ceil(-1009f))))), _wgslsmith_f_op_f32(trunc(var_0.c)));
    var_0 = func_5(4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_1.x, 665f, var_0.c) - vec4<f32>(var_0.c, 916f, var_0.c, var_1.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1545f, var_1.x, 332f, 903f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 799f, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(997f, var_0.c, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(743f, -184f, -849f, -469f) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_0.c))))), Struct_3(func_5(~31562u & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 36884u), vec3<u32>(0u, 6412u, 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-453f, var_1.x, var_0.c, 1247f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-742f, var_1.x, var_0.c, 1428f)))), Struct_3(var_0.a.a.x, firstTrailingBit(u_input.b.x), var_1.x)).a.a.x, u_input.c, -1956f));
    var_0 = Struct_2(var_0.a, func_5(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 200f, -1074f, var_0.c)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, -515f, var_0.c, var_0.c), vec4<f32>(var_1.x, var_0.c, var_0.c, var_1.x)))), Struct_3(!(727f >= var_0.c), -1i, _wgslsmith_f_op_f32(floor(-1000f)))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f * var_1.x)))));
    return func_5((6475u << (_wgslsmith_div_u32(abs(0u), ~0u) % 32u)) << (1u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1993f, var_0.c, -1079f, var_0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1384f, -255f, -577f, 1190f))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -239f), var_1.x, _wgslsmith_f_op_f32(1547f - var_0.c), 704f))) + vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(135f + 496f)), var_0.c, _wgslsmith_f_op_f32(floor(var_1.x)), -2003f)), Struct_3(arg_0.a.x, _wgslsmith_mult_i32(~_wgslsmith_mod_i32(-37802i, 2147483647i), -min(-8268i, -14662i)), var_1.x));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = u_input.d.zxz;
    let var_1 = abs(_wgslsmith_clamp_i32(var_0.x, abs(u_input.c), arg_3));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, -838f, 328f) * vec3<f32>(arg_1.c, arg_0.x, 1728f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1363f, arg_1.c, 535f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(936f)), _wgslsmith_f_op_f32(floor(arg_1.c))), arg_0.x, arg_1.c)));
    let var_3 = Struct_2(Struct_1(vec2<bool>(arg_1.b.a.x, true)), Struct_1(arg_2.a), arg_0.x);
    let var_4 = _wgslsmith_mod_vec3_u32(~vec3<u32>(54190u, ~_wgslsmith_div_u32(0u, 9610u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 79649u, 3675u)), ~vec3<u32>(0u, 4294967295u, 44241u))), firstTrailingBit(~(~vec3<u32>(1u, 1u, 1u))));
    return func_2(-_wgslsmith_div_vec3_i32(-vec3<i32>(1i, -32870i, var_1), reverseBits(vec3<i32>(51992i, u_input.d.x, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), false), vec3<bool>(true, select(false, all(vec2<bool>(true, false)), select(false, false, true)), true), !select(false, true, true));
    var var_1 = !vec2<bool>(func_6(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1798f, -751f)))), func_1(Struct_1(vec2<bool>(false, true))), Struct_1(vec2<bool>(var_0.x, var_0.x)), 1i), true);
    var var_2 = countOneBits(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 71687u, 71078u), vec3<u32>(1u, 1u, 0u)))) << (vec3<u32>(_wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(15121u, _wgslsmith_div_u32(0u, 4294967295u))), ~4294967295u, _wgslsmith_clamp_u32(~min(48733u, 16530u), func_4(true, -1041f, vec3<bool>(false, false, var_1.x)), ~reverseBits(37482u))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_clamp_i32(~1i, u_input.d.x, select(-31584i, -1i, all(var_0)));
    let var_4 = Struct_4(false, abs(_wgslsmith_div_u32(1u >> (var_2.x % 32u), 40273u)), _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -27827i, -1i ^ u_input.b.x), u_input.b.yx) & u_input.d.wz, Struct_1(!var_0.zz), Struct_3(true, abs(27589i), _wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(-1f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4.e.b), vec3<u32>(var_4.b, (var_4.b >> (1u % 32u)) & var_2.x, var_4.b) & _wgslsmith_mod_vec3_u32(abs(vec3<u32>(8341u, var_4.b, 1795u) | vec3<u32>(var_2.x, var_4.b, 53959u)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 0u, var_4.b), vec3<u32>(var_4.b, var_2.x, 4294967295u), vec3<u32>(var_4.b, var_2.x, 1u)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_4.e.c - var_4.e.c), _wgslsmith_f_op_f32(var_4.e.c + _wgslsmith_f_op_f32(var_4.e.c - var_4.e.c))))));
}

