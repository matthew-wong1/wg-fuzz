struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(2147483647i, Struct_1(0u, i32(-2147483648), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), Struct_1(15214u, 0i, vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(1u, 36075i, vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))), Struct_3(4334i, Struct_1(1u, -1i, vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), Struct_1(20747u, 1i, vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(25679u, -55261i, vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))), Struct_3(0i, Struct_1(19523u, 23398i, vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), Struct_1(4294967295u, -39507i, vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(0u, 34536i, vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))), Struct_3(0i, Struct_1(4294967295u, i32(-2147483648), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), Struct_1(0u, -1i, vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(4294967295u, 9345i, vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), Struct_3(-1i, Struct_1(1u, -1i, vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), Struct_1(0u, -27287i, vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(13073u, -33867i, vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))), Struct_3(1i, Struct_1(1u, i32(-2147483648), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), Struct_1(0u, -7069i, vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(1u, 25139i, vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)))), Struct_3(-13077i, Struct_1(1u, -1i, vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), Struct_1(4294967295u, -1i, vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(61804u, -39555i, vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)))), Struct_3(36300i, Struct_1(53645u, 1i, vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), Struct_1(1u, i32(-2147483648), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(28779u, 42195i, vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)))), Struct_3(30900i, Struct_1(6382u, 13297i, vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), Struct_1(4294967295u, -27578i, vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(32401u, 10215i, vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))), Struct_3(14788i, Struct_1(6102u, i32(-2147483648), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), Struct_1(8436u, 1i, vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(1u, -1i, vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))), Struct_3(-43230i, Struct_1(4294967295u, 2147483647i, vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), Struct_1(4294967295u, 1i, vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(1u, i32(-2147483648), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), Struct_3(-1i, Struct_1(3155u, -48445i, vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), Struct_1(0u, -18897i, vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(4294967295u, 1i, vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)))), Struct_3(360i, Struct_1(4294967295u, -1i, vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), Struct_1(1u, -18413i, vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(55792u, 1i, vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)))), Struct_3(i32(-2147483648), Struct_1(25157u, 2147483647i, vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), Struct_1(53995u, -12068i, vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(272u, -49102i, vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)))), Struct_3(65975i, Struct_1(1u, -1i, vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), Struct_1(4294967295u, -1i, vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(1u, 1i, vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)))), Struct_3(1i, Struct_1(0u, 1i, vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), Struct_1(1u, 16624i, vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(0u, i32(-2147483648), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)))), Struct_3(-44525i, Struct_1(0u, 1i, vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), Struct_1(4294967295u, -8603i, vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(1u, 0i, vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))), Struct_3(11423i, Struct_1(4294967295u, -1i, vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), Struct_1(51458u, -1i, vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(0u, -1i, vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)))), Struct_3(2147483647i, Struct_1(9691u, 1i, vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), Struct_1(18243u, 38371i, vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(13410u, -1i, vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)))), Struct_3(33948i, Struct_1(1u, -1i, vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), Struct_1(10381u, -1i, vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(4294967295u, 1913i, vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))), Struct_3(59488i, Struct_1(20439u, 1i, vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), Struct_1(0u, 0i, vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(21220u, 5504i, vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), Struct_3(25475i, Struct_1(0u, 30505i, vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), Struct_1(4294967295u, -1i, vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(4294967295u, 0i, vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))), Struct_3(-41289i, Struct_1(32332u, 1i, vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), Struct_1(4294967295u, -1i, vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(0u, -1i, vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)))), Struct_3(-1i, Struct_1(1u, -1i, vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), Struct_1(1u, -1i, vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(0u, i32(-2147483648), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))), Struct_3(-1i, Struct_1(51576u, 2147483647i, vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), Struct_1(0u, i32(-2147483648), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(4294967295u, 58391i, vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)))), Struct_3(-1i, Struct_1(98109u, i32(-2147483648), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), Struct_1(54128u, 1i, vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(38057u, -13198i, vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)))));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    global0 = -1423f;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1395f), _wgslsmith_f_op_f32(1093f - 591f)))) + vec2<f32>(-941f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1641f - 1201f), _wgslsmith_f_op_f32(-1000f - -445f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1515f + 312f)))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = abs(i32(-1i) * -_wgslsmith_mult_i32(~109000i, -1i));
    return ~_wgslsmith_mult_vec4_i32(vec4<i32>(~(-1i), i32(-1i) * -1i, select(-7802i, 11025i, false), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 1i, 7800i), vec4<i32>(2147483647i, -20136i, 2147483647i, 2147483647i))), abs(vec4<i32>(1i, 1i, 1i, 1i))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(~(u_input.c & u_input.c), max(select(37271u, u_input.c, true), 4294967295u >> (u_input.c % 32u)), 1u, abs(u_input.b.x)), vec4<u32>(~(u_input.b.x & 8222u), ~u_input.a.x, 56516u, _wgslsmith_mult_u32(~u_input.a.x, ~53356u)), ~u_input.b) % vec4<u32>(32u));
}

fn func_2() -> i32 {
    let var_0 = ~u_input.a.x;
    var var_1 = func_3();
    var_1 = vec4<i32>(6742i & var_1.x, var_1.x, 0i, var_1.x);
    let var_2 = u_input.b.x | firstLeadingBit(var_0);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1434f)));
    return abs(42742i);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec3<f32> {
    global1 = array<Struct_3, 26>();
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_2(), -1i, -_wgslsmith_mult_i32(-1i, 0i) << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.x, 1u), 4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) % 32u), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))), vec4<i32>(41263i, countOneBits(~abs(0i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, func_3().x), 1i), -(i32(-1i) * -12025i) | (~1i << (arg_0.x % 32u))));
    global1 = array<Struct_3, 26>();
    global1 = array<Struct_3, 26>();
    let var_1 = firstTrailingBit(~_wgslsmith_dot_vec3_u32(~u_input.b.xxx & u_input.b.wxz, _wgslsmith_sub_vec3_u32(vec3<u32>(42061u, 4294967295u, arg_0.x), ~u_input.b.xyw)));
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x), arg_1)) + -356f), arg_2.x, _wgslsmith_f_op_f32(trunc(-886f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1246f * _wgslsmith_f_op_f32(abs(-735f))));
    let var_1 = global1[_wgslsmith_index_u32(3876u, 26u)];
    let var_2 = var_1.d;
    var var_3 = var_2.a.d.x;
    let var_4 = var_1.b.a;
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(~vec2<u32>(var_1.c.a, var_2.a.a), false, vec4<f32>(-1106f, var_0, var_0, var_0), select(var_1.b.d, var_2.a.c, var_2.a.c.x)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(377f, var_0)), var_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-275f, 762f, -228f), vec3<f32>(-622f, var_0, var_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, var_0, 144f) - vec3<f32>(var_0, var_0, var_0)), var_1.d.a.c.wyz)))))));
    var_3 = var_2.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.x, var_5.x) - vec2<f32>(-160f, -265f)), _wgslsmith_f_op_vec2_f32(-var_5.xx))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), var_5.zy, var_1.c.d.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_5.x, var_5.x, 1556f), vec4<f32>(-189f, -1936f, -573f, var_5.x)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))))), vec2<u32>(var_2.a.a, var_2.a.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1527f, -127f))), 1634f, var_5.x))));
}

