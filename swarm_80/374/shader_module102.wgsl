struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(!(1u >= (49652u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(42273u, 59758u), vec2<u32>(0u, 1u)))), select(firstLeadingBit(global0.yy), u_input.a.xy, any(vec2<bool>(true, true))), abs(88100i), Struct_2(firstLeadingBit(min(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(0u, 21442u, 4294967295u)))), vec4<i32>(u_input.a.x, select(-2147483647i, _wgslsmith_mult_i32(0i, -52246i), all(vec4<bool>(false, true, false, false))), -1i, select(_wgslsmith_div_i32(global0.x, -1i), max(-5694i, 1547i), global0.x != -9513i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(697f + -1000f) * _wgslsmith_f_op_f32(abs(734f)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.c, var_0.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(301f, _wgslsmith_div_f32(2254f, var_0.d.c), true)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.d.c, 511f), var_0.d.c, 847f)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.c))), -662f))));
    global0 = -vec3<i32>(2147483647i, firstLeadingBit(-2147483647i), 6070i);
    let var_2 = var_1.zy;
    let var_3 = Struct_3(firstTrailingBit(_wgslsmith_clamp_u32(var_0.d.a.x ^ _wgslsmith_mult_u32(16265u, 22203u), select(~var_0.d.a.x, countOneBits(var_0.d.a.x), var_0.a), abs(~var_0.d.a.x))), vec4<f32>(_wgslsmith_f_op_f32(var_0.d.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c))), -1856f, -1073f, var_1.x));
    return ~u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = !vec3<bool>(true, false, arg_2.x == true);
    let var_1 = Struct_4(arg_2.x, ~u_input.a.xz, -17770i, Struct_2(~(~vec3<u32>(arg_0, 55349u, arg_0)), ~(~(vec4<i32>(0i, -17699i, 1i, 1i) >> (vec4<u32>(arg_0, 89055u, arg_0, 29923u) % vec4<u32>(32u)))), -162f, vec2<bool>(var_0.x, u_input.a.x != u_input.a.x)));
    let var_2 = vec4<i32>(~(i32(-1i) * -1i), _wgslsmith_mod_i32(global0.x, func_3()), countOneBits(-max(u_input.a.x, u_input.a.x)), firstLeadingBit(0i)) >> (vec4<u32>(var_1.d.a.x, 0u, arg_0, firstLeadingBit(min(~8306u, _wgslsmith_add_u32(arg_0, var_1.d.a.x)))) % vec4<u32>(32u));
    var var_3 = select(!vec4<bool>(_wgslsmith_mod_i32(var_2.x, -4052i) != abs(-32173i), false, true, arg_2.x), vec4<bool>(false, !select(!var_1.d.d.x, arg_2.x, arg_2.x), true, _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_f_op_f32(-arg_1)), arg_2.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 117f, -757f, arg_1))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(f32(-1f) * -462f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-305f, 1476f)), _wgslsmith_f_op_f32(1038f + _wgslsmith_f_op_f32(-arg_1)))));
    return arg_2;
}

fn func_4(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = vec3<i32>(i32(-1i) * -_wgslsmith_div_i32(9900i << (0u % 32u), countOneBits(-1i)), global0.x << (abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(18997u, 41468u), vec2<u32>(93052u, 24160u), arg_0.x), vec2<u32>(1u, 26704u))) % 32u), i32(-1i) * -u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(select(289f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1241f)))), arg_0.x)), all(select(vec2<bool>(true, arg_0.x), arg_0.zw, arg_0.x)) | !arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(523f)) - 1278f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(574f, 1000f)) - -908f))));
    var var_2 = !arg_0;
    var var_3 = Struct_3(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(961f + -511f), _wgslsmith_f_op_f32(select(1070f, -276f, false)), 1988f, -1281f))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_f_op_f32(exp2(var_3.b.x)));
    return vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, global0.x, global0.x), ~u_input.a) >> ((~var_3.a & ~var_3.a) % 32u), ~(-67514i)), u_input.a.x, 1i);
}

fn func_1() -> f32 {
    var var_0 = ~(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(8121u, 0u, 79330u), vec3<u32>(1u, 56134u, 34315u)), ~(~30728u), 4294967295u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1526f, -1549f) - vec2<f32>(-1214f, -639f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-678f, 1307f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-304f, 143f), vec2<f32>(-736f, 754f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1468f, 540f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1092f, -1105f)))));
    global0 = func_4(!(!func_2(4294967295u, _wgslsmith_f_op_f32(-var_1.x), vec4<bool>(true, false, true, true))));
    global0 = vec3<i32>(global0.x, (i32(-1i) * -1i) ^ (-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -33721i, 0i, 1i)) ^ (global0.x | countOneBits(2147483647i))), global0.x);
    global0 = vec3<i32>(0i, max(-1i, _wgslsmith_div_i32(~func_3(), 2147483647i)), _wgslsmith_div_i32(max(1i, global0.x), ~global0.x));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true || any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, _wgslsmith_div_f32(1174f, -389f) <= _wgslsmith_f_op_f32(func_1()), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)))));
    global0 = vec3<i32>(select(0i, global0.x, false), ~1i, -27133i);
    var var_1 = Struct_1(min(firstLeadingBit(vec4<i32>(8391i, -global0.x, _wgslsmith_sub_i32(global0.x, 8082i), ~3717i)), ~vec4<i32>(global0.x, global0.x, u_input.a.x, func_3())), -(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 11836i, global0.x, global0.x)) ^ vec4<i32>(~global0.x, ~u_input.a.x, global0.x, u_input.a.x)), select(vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(4294967295u, 38348u)), min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(15963u, 17731u, 1u), vec3<u32>(16498u, 1u, 1u))), ~select(1u, 1596u, var_0.x)), vec3<u32>(0u, firstLeadingBit(25286u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 29786u, 1u), ~36726u)), select(!(!vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_0.x | true, all(var_0.yz), true), !(var_0.x || true))), vec3<i32>(~(u_input.a.x & u_input.a.x), _wgslsmith_mod_i32(abs(-1i), -27575i), ~(-2147483647i)) | u_input.a, vec3<f32>(-471f, _wgslsmith_f_op_f32(trunc(-642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 251f)))));
    var_0 = !vec3<bool>(!(!all(vec4<bool>(var_0.x, var_0.x, true, false))), ~abs(var_1.c.x) < countOneBits(var_1.c.x), var_0.x);
    var var_2 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(func_3(), _wgslsmith_mod_i32(var_1.d.x, var_1.d.x), ~(-40290i)), _wgslsmith_mod_vec3_i32(countOneBits(var_1.b.wyw ^ vec3<i32>(var_1.d.x, -1i, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -18238i, var_1.d.x), firstLeadingBit(var_1.d)))), _wgslsmith_dot_vec2_i32(min(countOneBits(-u_input.a.yx), _wgslsmith_div_vec2_i32(vec2<i32>(-9459i, var_1.b.x) ^ var_1.b.zz, -global0.yy)), var_1.a.wz), !(!(1i <= var_1.a.x)));
    let var_3 = Struct_5(abs(var_1.b.xxw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1187f, var_1.e.x, var_1.e.x, var_1.e.x)))))), var_1.c.xy, Struct_4(true, u_input.a.yz, _wgslsmith_mod_i32(~_wgslsmith_div_i32(-28546i, -82084i), -1i), Struct_2(~_wgslsmith_mult_vec3_u32(var_1.c, vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, global0.x, u_input.a.x, 0i)), _wgslsmith_sub_vec4_i32(var_1.a, var_1.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(253f + var_1.e.x))), func_2(var_1.c.x, _wgslsmith_f_op_f32(1096f + 653f), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, true))).yx)));
    var_2 = reverseBits(min(var_3.a.x, global0.x));
    let var_4 = abs(vec2<i32>(min(var_3.a.x, 0i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(54372u, 1u, 67768u, 44739u), ~vec4<u32>(var_3.c.x, 17928u, 7985u, var_1.c.x), vec4<bool>(true, false, var_0.x, true)) << (vec4<u32>(~1u, 46457u, abs(32518u), 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(81696u, var_1.c.x, 13746u, 4294967295u)), reverseBits(vec4<u32>(var_3.d.d.a.x, var_3.c.x, 1u, 0u))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.d.d.a.x, 52949u, 67206u, 80283u) | vec4<u32>(1u, 0u, var_3.d.d.a.x, 11561u), ~vec4<u32>(0u, 4294967295u, var_1.c.x, 4294967295u)) << ((~vec4<u32>(var_3.d.d.a.x, 4294967295u, var_1.c.x, 1u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.c.x, var_1.c.x, 10653u, 4294967295u), vec4<u32>(1u, 22514u, 44040u, var_3.d.d.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

