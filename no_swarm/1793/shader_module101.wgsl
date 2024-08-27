struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> u32 {
    var var_0 = -1627f;
    let var_1 = ~(i32(-1i) * -1i);
    var_0 = _wgslsmith_f_op_f32(-581f * _wgslsmith_f_op_f32(f32(-1f) * -859f));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(475f, -600f), vec2<f32>(509f, -501f)), vec2<f32>(1000f, 2048f), vec2<bool>(arg_1.a.b.x, arg_1.a.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1241f, 1191f)))))));
    var var_3 = var_2.x;
    return u_input.d.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, 986f, -992f, _wgslsmith_f_op_f32(floor(-125f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2391f, -1595f, 1226f, -303f) - vec4<f32>(408f, 527f, 1747f, 286f))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_u32(1u, func_3(~vec2<i32>(25040i, u_input.a.x), Struct_3(Struct_1(arg_1.a.a, vec2<bool>(false, arg_1.a.c), arg_0.x, arg_1.a.d)))), arg_0.yy, true, firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, arg_2, 0u), vec4<u32>(arg_2, arg_2, 4294967295u, 25827u)), firstTrailingBit(vec4<u32>(arg_1.a.d.x, 59023u, 1u, arg_2))))), arg_1.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(var_0.xz, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))), var_0.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2001f)) * _wgslsmith_f_op_vec2_f32(round(var_0.xy)))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f - 1000f)))), -189f)));
    var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1113f - -968f))), -2624f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-1623f - var_2.x)))), all(!(!vec4<bool>(true, arg_0.x, var_1.b.c, arg_1.a.c)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(609f - var_2.x), _wgslsmith_f_op_f32(ceil(var_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_0.x))), _wgslsmith_f_op_vec2_f32(sign(var_0.yx))));
    return -8076i;
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = -firstLeadingBit(vec4<i32>(u_input.b, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 22319i, u_input.b), vec3<i32>(u_input.a.x, 0i, 1i))), -_wgslsmith_mod_i32(u_input.a.x, u_input.b), _wgslsmith_clamp_i32(u_input.a.x, func_2(vec3<bool>(false, true, arg_0.b.b.x), Struct_3(Struct_1(arg_0.a.d.x, vec2<bool>(true, arg_0.b.b.x), true, u_input.d)), u_input.c.x), u_input.a.x)));
    let var_1 = var_0.ywx >> (vec3<u32>(_wgslsmith_clamp_u32(48020u, abs(71754u), abs(arg_0.b.d.x)), _wgslsmith_mult_u32(10604u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(arg_0.a.a, 38871u, 4294967295u, u_input.d.x) ^ arg_0.a.d)), 85314u) % vec3<u32>(32u));
    let var_2 = Struct_2(arg_0.b, arg_0.b);
    let var_3 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32((vec4<u32>(0u, var_2.b.d.x, 0u, arg_0.a.a) << (u_input.d % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(42560u, var_2.a.d.x, 38693u, var_2.b.a), vec4<u32>(arg_0.b.a, arg_0.a.d.x, u_input.d.x, 0u)) % vec4<u32>(32u)), countOneBits(arg_0.a.d) & _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 107811u, 1u, 40609u), u_input.d)), !select(vec2<bool>(false, arg_0.a.c), select(vec2<bool>(false, true), vec2<bool>(true, var_2.b.c), arg_0.a.c), all(vec4<bool>(arg_0.b.c, true, arg_0.a.b.x, true))), true, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.a.d.xwx, vec3<u32>(var_2.b.d.x, 4924u, u_input.d.x)), _wgslsmith_div_u32(u_input.c.x, 1u), arg_0.b.d.x >> (arg_0.a.d.x % 32u), _wgslsmith_clamp_u32(arg_0.b.d.x, 1u, 0u)), _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(76716u, arg_0.b.d.x, 25051u, u_input.c.x)) << (~vec4<u32>(var_2.b.a, u_input.d.x, u_input.c.x, var_2.a.a) % vec4<u32>(32u)))));
    var var_4 = -902f;
    return !(!(54914u >= select(u_input.c.x, 0u, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = firstTrailingBit(abs(countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, -55534i, 0i, u_input.a.x), -vec4<i32>(1i, -1i, u_input.a.x, -1i)))));
    var_0 = -countOneBits(~vec4<i32>(max(-2147483647i, -1i), ~1i, 31209i, 1i));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(-2147483647i, -16453i, 2147483647i, -30i)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i), var_0.ww), ~7752i), u_input.a.x, 1i, -1i)), vec4<i32>(((var_0.x ^ u_input.a.x) ^ -9164i) << (countOneBits(4294967295u) % 32u), ~(i32(-1i) * -52659i) | max(_wgslsmith_sub_i32(u_input.b, var_0.x), u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~u_input.b, u_input.a.x), firstLeadingBit(abs(-2147483647i))), 0i), _wgslsmith_sub_vec4_i32(~(-(~vec4<i32>(var_0.x, var_0.x, u_input.b, u_input.a.x))), abs(vec4<i32>(countOneBits(35112i), var_0.x, -1i >> (1u % 32u), 2147483647i))));
    var_0 = _wgslsmith_div_vec4_i32(reverseBits(-(~(-vec4<i32>(23951i, -1i, 2147483647i, var_0.x)))), ~(~firstTrailingBit(vec4<i32>(0i, var_0.x, u_input.b, -2147483647i)) ^ -vec4<i32>(23582i, u_input.a.x, var_0.x, 2147483647i)));
    let var_1 = Struct_4(Struct_2(arg_2.a, arg_2.b));
    return arg_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!vec3<bool>(func_1(Struct_2(Struct_1(1746u, vec2<bool>(false, false), false, vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, 54409u)), Struct_1(15606u, vec2<bool>(false, false), true, vec4<u32>(61645u, 30128u, u_input.d.x, 1u)))), true, true), vec2<f32>(_wgslsmith_f_op_f32(-351f * -915f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(200f, 654f) * _wgslsmith_div_f32(1193f, 568f)))), Struct_2(Struct_1(_wgslsmith_add_u32(u_input.c.x, 21743u) | u_input.c.x, !select(vec2<bool>(false, true), vec2<bool>(false, true), true), true, u_input.d << (~u_input.d % vec4<u32>(32u))), Struct_1(~(~1u), vec2<bool>(true, true), true, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 49621u, 97453u, 4294967295u), _wgslsmith_add_vec4_u32(u_input.d, u_input.d)))));
    var_0 = countOneBits(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.d.x), u_input.d.yyx), ~(~u_input.d.x), ~(0u & u_input.d.x), var_0.x));
    let var_1 = u_input.b;
    var_0 = select(countOneBits(vec4<u32>(~firstTrailingBit(33479u), 1u, ~var_0.x, u_input.d.x)), u_input.d, select(vec4<bool>(all(vec3<bool>(true, true, false)) && func_1(Struct_2(Struct_1(var_0.x, vec2<bool>(false, true), true, vec4<u32>(u_input.d.x, 6537u, 1u, var_0.x)), Struct_1(4294967295u, vec2<bool>(false, true), false, vec4<u32>(4294967295u, 1u, u_input.d.x, u_input.d.x)))), true, func_1(Struct_2(Struct_1(30353u, vec2<bool>(false, true), true, u_input.d), Struct_1(var_0.x, vec2<bool>(true, false), true, u_input.d))), func_1(Struct_2(Struct_1(117368u, vec2<bool>(true, true), false, u_input.d), Struct_1(27246u, vec2<bool>(false, true), true, vec4<u32>(4294967295u, var_0.x, 4294967295u, var_0.x))))), select(vec4<bool>(false, 1i <= u_input.a.x, select(false, false, false), var_1 > u_input.b), vec4<bool>(true, 0i > var_1, u_input.a.x < u_input.a.x, false), any(vec3<bool>(false, false, false)) & (var_0.x <= var_0.x)), select(vec4<bool>(any(vec2<bool>(false, true)), true, true, true), vec4<bool>(true, func_1(Struct_2(Struct_1(u_input.d.x, vec2<bool>(true, true), true, u_input.d), Struct_1(u_input.d.x, vec2<bool>(false, true), false, vec4<u32>(33319u, u_input.c.x, var_0.x, u_input.c.x)))), all(vec2<bool>(false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))))));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1512f, 130f))))), 1271f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1860f - -1374f))));
    var_0 = u_input.d;
    let var_3 = u_input.d.x;
    let var_4 = Struct_3(Struct_1(var_0.x, select(vec2<bool>(true, false), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), vec4<u32>(select(max(65398u, u_input.c.x), ~4294967295u, true), ~var_0.x, 0u, 22073u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(-select(countOneBits(vec2<i32>(1i, var_1)), vec2<i32>(var_1, 0i), any(vec4<bool>(true, var_4.a.c, true, var_4.a.c))), Struct_3(Struct_1(~var_3, var_4.a.b, all(vec3<bool>(true, true, true)), _wgslsmith_add_vec4_u32(u_input.d, u_input.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 1072f, 260f), vec3<f32>(792f, var_2.x, var_2.x), true)), vec3<f32>(var_2.x, -724f, var_2.x)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-var_2.x), 509f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, 727f, -1000f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -553f, var_2.x), vec3<f32>(636f, 458f, -857f))))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -306f))));
}

