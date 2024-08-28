struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = countOneBits(u_input.a);
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(~1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, ~1i, 11324i), -firstTrailingBit(35115i)), i32(-1i) * -58657i));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-757f, _wgslsmith_f_op_f32(f32(-1f) * -396f))), _wgslsmith_f_op_f32(f32(-1f) * -1045f))) <= -484f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(780f, 280f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(1141f)), _wgslsmith_f_op_f32(1302f - -1404f)))));
    let var_2 = Struct_2(Struct_1(0i, abs(~vec4<u32>(49421u, 23020u, 0u, 68902u)), firstTrailingBit(vec3<u32>(~4294967295u, ~57815u, countOneBits(4294967295u)))), ~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(26457u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 4294967295u, 25015u)), reverseBits(0u), reverseBits(28718u), firstTrailingBit(0u)) | vec4<u32>(1u, 1u, 1u, 1u)), ~1u, Struct_1(~u_input.a, max(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(48740u, 5797u, 30634u, 58487u)), vec4<u32>(4294967295u, 14987u, 37353u, 38632u)), ~(~vec4<u32>(5038u, 1u, 1u, 1u))), vec3<u32>(abs(1u) << (abs(0u) % 32u), ~firstTrailingBit(0u), 4294967295u)), var_1.b.x);
    var_0 = var_2.a.a;
    return _wgslsmith_add_vec3_u32(vec3<u32>(var_2.c, ~min(var_2.d.b.x, var_2.c), abs(_wgslsmith_dot_vec2_u32(~var_2.b.yy, ~var_2.a.c.yx))), ~_wgslsmith_mult_vec3_u32(var_2.b.wxw, vec3<u32>(var_2.d.b.x, 39011u, var_2.c)));
}

fn func_2() -> Struct_4 {
    let var_0 = 850f;
    var var_1 = _wgslsmith_f_op_f32(step(-503f, -721f));
    let var_2 = true;
    let var_3 = -1000f;
    let var_4 = _wgslsmith_clamp_u32(~58792u, ~firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(4294967295u, 15u, 44628u), ~1u) << (abs(func_3(vec2<bool>(var_2, var_2))) % vec3<u32>(32u)), ~abs(firstTrailingBit(vec3<u32>(4294967295u, 99220u, 25135u)))));
    return Struct_4(var_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -106f) - vec2<f32>(-1618f, var_0)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, 179f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_0) - vec2<f32>(var_0, var_3)))), !var_2 && true)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1517f, var_0) - vec2<f32>(var_3, 1132f)))) - vec2<f32>(_wgslsmith_f_op_f32(var_0 + -1032f), _wgslsmith_f_op_f32(f32(-1f) * -1315f)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(arg_1.b * arg_1.b)) * arg_1.b)));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(28218u, 1u, 30352u), vec3<u32>(4294967295u, 13670u, 1u)), abs(0u), ~0u), ~(~vec3<u32>(0u, 4294967295u, 27062u))), vec3<u32>(_wgslsmith_add_u32(~12991u, firstTrailingBit(13197u)), ~abs(57050u), ~_wgslsmith_add_u32(1u, 0u))), max(~vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(8731u, 4294967295u, 44858u), vec3<u32>(19975u, 27988u, 104703u), vec3<bool>(true, false, true)), vec3<u32>(4084u, 36680u, 1u)), func_3(vec2<bool>(false, false)) << (vec3<u32>(3046u, 1u, 33713u) % vec3<u32>(32u)))));
    let var_2 = vec3<i32>(-reverseBits(25998i), _wgslsmith_dot_vec3_i32(arg_0.yyz, -(firstTrailingBit(arg_0.yxy) | _wgslsmith_add_vec3_i32(arg_0.yyx, arg_0.zxz))), _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(59024i, -arg_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_0.x, arg_0.x, 1652i, -10945i)), abs(vec4<i32>(2147483647i, -30083i, -10771i, 1i))), vec4<i32>(-10541i, -1i & arg_2.x, _wgslsmith_sub_i32(u_input.a, u_input.a), -arg_2.x)), countOneBits(-16634i)));
    let var_3 = Struct_3(-vec4<i32>(abs(arg_0.x), max(-2147483647i, u_input.a), u_input.a, _wgslsmith_add_i32(-48218i, -39547i)) ^ max(arg_0, _wgslsmith_sub_vec4_i32(arg_0 >> (vec4<u32>(28404u, 27438u, 4294967295u, var_1.x) % vec4<u32>(32u)), arg_0)), arg_1.a, _wgslsmith_f_op_f32(-arg_1.b.x), func_2().b.x, arg_1.a || !any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-arg_1.b);
    return Struct_3(vec4<i32>(24536i, arg_0.x, _wgslsmith_mod_i32(~2147483647i, _wgslsmith_sub_i32(-1i, i32(-1i) * -2147483647i)), var_2.x), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + _wgslsmith_f_op_f32(-var_4.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-544f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x)))), ~_wgslsmith_mod_u32(var_1.x, 45724u) != abs(abs(14751u)));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = 883f;
    var_0 = _wgslsmith_f_op_f32(ceil(1f));
    let var_1 = func_4(abs(vec4<i32>(~u_input.a, _wgslsmith_sub_i32(u_input.a, arg_0.x), u_input.a, 40818i)) | _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -26571i, u_input.a, 49127i), vec4<i32>(u_input.a, 3663i, 2147483647i, u_input.a)), vec4<i32>(arg_0.x, 2147483647i, 0i, 0i)), -(vec4<i32>(-6654i, arg_0.x, u_input.a, 26164i) | vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), -(~vec4<i32>(arg_0.x, -1i, 52922i, 1i))), func_2(), _wgslsmith_add_vec3_i32(firstLeadingBit(firstTrailingBit(-vec3<i32>(arg_0.x, u_input.a, arg_0.x))), -countOneBits(~vec3<i32>(2147483647i, 2147483647i, arg_0.x))));
    let var_2 = var_1;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(111f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, -1000f, false)), _wgslsmith_f_op_f32(func_1(vec2<i32>(-53213i, u_input.a))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(652f * 648f), _wgslsmith_f_op_f32(1319f - 464f)))), vec3<f32>(-1122f, _wgslsmith_f_op_f32(abs(-153f)), 1000f))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2().b.x + _wgslsmith_f_op_f32(857f - 764f))));
    var var_2 = -18828i;
    var var_3 = Struct_1(firstTrailingBit(abs(u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(min(0u, 104772u), 0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 56423u, 88308u), vec3<u32>(1u, 1u, 4294967295u)), min(1u, min(4294967295u, 0u)), ~firstLeadingBit(1u)), vec4<u32>(~abs(1u), 1u, 25639u, _wgslsmith_sub_u32(reverseBits(34921u), 1u))), ~vec3<u32>(~(~4294967295u), abs(1u), ~4294967295u));
    var var_4 = select(vec2<bool>(true, !(_wgslsmith_f_op_f32(-642f + 1163f) <= var_1)), !select(vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_5 = func_2();
    let var_6 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a & _wgslsmith_mod_i32(~(-32072i), u_input.a)), -(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_3.a, 1i, u_input.a)), ~(~_wgslsmith_clamp_vec4_u32(~var_3.b, vec4<u32>(var_3.b.x, 38620u, 4294967295u, 60736u), _wgslsmith_div_vec4_u32(vec4<u32>(12982u, var_3.c.x, 4294967295u, var_3.c.x), var_3.b))), vec3<f32>(-499f, -865f, _wgslsmith_f_op_f32(-var_0.x)), var_0.x);
}

