struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(394f - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec3_f32(arg_0.a.wxw + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, 882f, arg_0.b.x), arg_0.a.zww) + _wgslsmith_f_op_vec3_f32(arg_0.a.zxw - _wgslsmith_f_op_vec3_f32(-arg_0.a.zwy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(arg_0.a.x, -425f)))), ~countOneBits(u_input.e));
    let var_1 = -vec4<i32>(arg_0.c, _wgslsmith_div_i32(arg_0.c, max(i32(-1i) * -11728i, -20150i)), 71864i, _wgslsmith_add_i32(~_wgslsmith_div_i32(u_input.b.x, arg_0.c), u_input.a));
    let var_2 = arg_0.d.x << (48142u % 32u);
    var_0 = Struct_2(1661f, arg_0.a.wwy, _wgslsmith_f_op_vec2_f32(vec2<f32>(922f, -734f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.c))))), ~43817u);
    var_0 = Struct_2(_wgslsmith_f_op_f32(round(1049f)), var_0.b, _wgslsmith_f_op_vec2_f32(-var_0.b.yz), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~(51837u ^ u_input.c.x), reverseBits(reverseBits(var_0.d))), arg_0.d.x));
    return select(u_input.d, vec3<u32>(_wgslsmith_mod_u32(1u, 108784u), var_0.d, ~4294967295u), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), any(vec3<bool>(false, false, false)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(select(~1u, 1u, true), _wgslsmith_mult_u32(~(~38605u), arg_0.x)), arg_0);
    let var_1 = _wgslsmith_mult_vec3_u32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1516f, 2011f, arg_1.x, 530f), vec4<f32>(940f, -210f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1 * arg_1))), 6534i, u_input.d)), u_input.d);
    let var_2 = Struct_2(arg_1.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, 813f, 1836f)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -1107f), vec3<f32>(-633f, 1514f, 554f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 1721f), vec3<f32>(arg_1.x, 796f, arg_1.x)))), vec3<bool>(!any(vec3<bool>(true, true, true)), 150f > _wgslsmith_f_op_f32(trunc(-2150f)), _wgslsmith_f_op_f32(arg_1.x - -282f) == -932f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), -1233f)), vec2<f32>(1f, 1f), any(vec2<bool>(true, true)))), var_0.x);
    var var_3 = !any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), var_1.x >= 13980u), true));
    var_0 = min(abs(select(var_1.yx, ~vec2<u32>(var_0.x, 4909u), u_input.b.x > u_input.a)) & ~(~(~vec2<u32>(24346u, u_input.c.x))), arg_0);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(arg_1.x, -570f), var_2.c.x, 308f, -833f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.x))))), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-40265i, i32(-1i) * -13657i), 1i), u_input.a), ~min(abs(u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(9458u, 16591u, arg_0.x), ~var_1, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 39425u, arg_0.x), vec3<u32>(1u, var_2.d, 1u)))));
}

fn func_4(arg_0: Struct_4) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.a.b.x, arg_0.d.a.c.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(733f, -298f), arg_0.d.a.b.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-124f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(-545f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_4(func_2(u_input.c, vec2<f32>(-167f, 1144f)), u_input.a, ~vec4<i32>(-2147483647i, -2147483647i, -2147483647i, u_input.a), Struct_3(Struct_2(1000f, vec3<f32>(-334f, -1243f, 1000f), vec2<f32>(var_0.x, var_0.x), u_input.c.x)), 1563f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_1(vec4<f32>(1000f, var_0.x, var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x), u_input.b.x, u_input.d), u_input.a, u_input.b, Struct_3(Struct_2(-587f, vec3<f32>(393f, 384f, 1000f), vec2<f32>(-2145f, 1522f), u_input.c.x)), var_0.x))), 786f)) - -1659f);
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))), var_0.x));
    var var_2 = var_0.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(floor(-532f)), _wgslsmith_f_op_f32(var_0.x - func_2(u_input.d.xx, vec2<f32>(1771f, -820f)).b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-729f + var_1) + var_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(ceil(var_1)))), reverseBits(_wgslsmith_mod_i32(-12026i, 10294i)), ~u_input.d);
    return Struct_2(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_3.a.xzy), vec3<f32>(-939f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-902f - var_3.b.x) - var_1), -363f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), -1912f), _wgslsmith_div_u32(var_3.d.x, var_3.d.x));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    return Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-394f * arg_1.a), 1028f, -278f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1536f, arg_1.b.x, -1200f, arg_2.a.b.x), vec4<f32>(131f, 878f, -1677f, arg_0)))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1019f) - _wgslsmith_div_vec2_f32(arg_2.a.a.xx, vec2<f32>(arg_2.d.a.c.x, arg_0)))), arg_2.a.c, vec3<u32>(3837u, u_input.d.x, 1u >> (arg_2.d.a.d % 32u))), -(~(~max(0i, arg_2.a.c))), reverseBits(min(arg_2.c, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 64933i, u_input.b.x, u_input.a), vec4<i32>(arg_2.a.c, 8580i, u_input.a, arg_2.b)), u_input.b | vec4<i32>(2147483647i, -1i, 27304i, u_input.a)))), Struct_3(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(func_2(vec2<u32>(4294967295u, 2626u), arg_1.b.xy), min(2147483647i, 0i), u_input.b, arg_2.d, arg_1.b.x))) + arg_1.a));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = !((arg_1.a.c >> (arg_2.a.d % 32u)) <= -2147483647i);
    let var_1 = u_input.b.yz;
    let var_2 = u_input.a;
    return func_2(~u_input.d.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(exp2(arg_3.a.c.x))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1231f, -449f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1722f - 234f)))) - -1000f), _wgslsmith_div_f32(_wgslsmith_div_f32(-1195f, -765f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1222f * _wgslsmith_f_op_f32(select(207f, -868f, false))))), 134f, -1401f);
    let var_1 = func_6(Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(-291f)), _wgslsmith_f_op_vec3_f32(var_0.zyy + vec3<f32>(var_0.x, var_0.x, 657f)), _wgslsmith_f_op_vec2_f32(var_0.wy - _wgslsmith_f_op_vec2_f32(var_0.zy + var_0.xw)), ~(72188u >> (u_input.c.x % 32u)))), func_5(-382f, func_1(), Struct_4(func_2(vec2<u32>(u_input.c.x, u_input.e), _wgslsmith_f_op_vec2_f32(max(var_0.wx, vec2<f32>(var_0.x, var_0.x)))), -44805i, select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.b.x, u_input.a), u_input.b), select(u_input.b, vec4<i32>(2147483647i, 2147483647i, -59618i, -1i), false), u_input.a != -2147483647i), Struct_3(Struct_2(var_0.x, var_0.xyy, vec2<f32>(-1803f, 583f), u_input.c.x)), var_0.x)), Struct_3(func_1()), Struct_3(Struct_2(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xwz - var_0.xyy)), _wgslsmith_f_op_vec2_f32(var_0.xz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x))), ~(~35006u))));
    var var_2 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, -141f, true)), _wgslsmith_f_op_f32(1375f * var_1.a.x)), Struct_2(_wgslsmith_f_op_f32(1344f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - -366f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, var_0.x, -838f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-305f, var_1.b.x) * vec2<f32>(var_0.x, var_1.b.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(var_0.x + -1236f)))), 1u), Struct_4(var_1, var_1.c, vec4<i32>(abs(-1i), _wgslsmith_div_i32(-4782i, ~(-2147483647i)), 16089i ^ countOneBits(var_1.c), _wgslsmith_add_i32(-73832i, var_1.c)), func_5(1068f, func_5(_wgslsmith_f_op_f32(round(-1330f)), Struct_2(-541f, var_0.zzx, var_0.xx, 4294967295u), Struct_4(var_1, var_1.c, u_input.b, Struct_3(Struct_2(var_1.a.x, var_1.a.xyy, vec2<f32>(-743f, var_1.a.x), 25389u)), 1000f)).d.a, func_5(var_1.a.x, Struct_2(var_1.a.x, var_1.a.zxy, var_0.wz, var_1.d.x), Struct_4(Struct_1(vec4<f32>(-489f, 347f, 1937f, -1724f), var_0.zw, var_1.c, vec3<u32>(var_1.d.x, u_input.d.x, 18854u)), u_input.b.x, u_input.b, Struct_3(Struct_2(-302f, vec3<f32>(1243f, var_1.a.x, 310f), vec2<f32>(var_1.b.x, var_1.b.x), var_1.d.x)), -622f))).d, var_0.x));
    let var_3 = var_2.d;
    var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, var_3.a.b.x, var_0.x, var_1.b.x))), var_2.a.a.yx, _wgslsmith_clamp_i32(u_input.b.x, ~2147483647i, _wgslsmith_div_i32(13399i, var_1.c)), ~u_input.d), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, 2147483647i, 8159i) | (u_input.b.ywy << (vec3<u32>(54096u, var_3.a.d, 14904u) % vec3<u32>(32u))), -vec3<i32>(var_2.b, var_1.c, -51548i), abs(u_input.b.xwx)), vec3<i32>(-(~39907i), select(~var_1.c, var_1.c & -15538i, any(vec4<bool>(true, false, true, false))), var_2.c.x)), -vec4<i32>(1i, ~var_1.c, func_2(~vec2<u32>(var_1.d.x, 1u), vec2<f32>(-565f, var_1.a.x)).c, firstTrailingBit(~(-10597i))), Struct_3(var_3.a), func_1().a);
    var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_5(-764f, Struct_2(1466f, vec3<f32>(355f, var_0.x, -2036f), vec2<f32>(-611f, var_1.b.x), 1u), func_5(1000f, var_2.d.a, Struct_4(var_2.a, var_1.c, u_input.b, var_2.d, -1000f))).a.a + var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, 1827f), func_6(Struct_3(Struct_2(-1236f, vec3<f32>(-1031f, 942f, var_0.x), vec2<f32>(-388f, -1538f), var_3.a.d)), Struct_4(Struct_1(var_1.a, vec2<f32>(-765f, -2044f), var_2.a.c, vec3<u32>(u_input.c.x, u_input.e, 38923u)), var_1.c, var_2.c, Struct_3(Struct_2(var_1.a.x, var_2.a.a.yyy, var_0.xx, 4294967295u)), var_0.x), Struct_3(var_2.d.a), var_2.d).b.x)), var_1.c, ~(~(~vec3<u32>(var_3.a.d, 14201u, 4294967295u)))), var_1.c >> (max(func_3(Struct_1(var_2.a.a, vec2<f32>(var_1.a.x, 1000f), -34618i, vec3<u32>(var_1.d.x, var_2.a.d.x, 0u))).x, max(18496u, var_2.a.d.x)) % 32u), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1477f)), var_3.a.c.x), func_1(), func_5(var_2.e, var_2.d.a, func_5(-374f, func_1(), func_5(192f, Struct_2(var_3.a.c.x, var_1.a.yxz, var_0.wy, u_input.d.x), Struct_4(var_2.a, -7659i, vec4<i32>(var_1.c, var_1.c, var_1.c, -4016i), var_2.d, var_0.x))))).c, Struct_3(var_3.a), -1019f);
    var_2 = Struct_4(Struct_1(var_0, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1409f, -1000f), vec2<f32>(-1026f, var_3.a.c.x), vec2<bool>(false, true))) * _wgslsmith_f_op_vec2_f32(var_1.b - vec2<f32>(var_3.a.b.x, 956f))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_3.a.b.x)))), 3556i, _wgslsmith_mod_vec3_u32(func_3(var_1), var_2.a.d) | var_2.a.d), -1i, var_2.c, var_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.a.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.d.a.a))) + func_1().c.x)));
    var var_4 = func_6(func_5(_wgslsmith_f_op_f32(var_2.a.a.x * func_2(~vec2<u32>(var_1.d.x, 31558u), _wgslsmith_f_op_vec2_f32(min(var_2.d.a.c, vec2<f32>(var_3.a.b.x, 182f)))).b.x), var_3.a, func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_2.e)), func_1(), Struct_4(func_2(vec2<u32>(var_2.a.d.x, var_2.a.d.x), vec2<f32>(var_0.x, -611f)), -var_2.c.x, abs(vec4<i32>(0i, 38958i, 2147483647i, 2147483647i)), func_5(var_0.x, Struct_2(var_3.a.b.x, var_3.a.b, vec2<f32>(var_1.a.x, -236f), u_input.c.x), Struct_4(Struct_1(var_2.a.a, var_3.a.c, 15177i, vec3<u32>(49833u, 92752u, var_3.a.d)), -1i, vec4<i32>(2623i, var_1.c, 0i, var_2.c.x), var_2.d, -612f)).d, 591f))).d, func_5(_wgslsmith_f_op_f32(-func_2(_wgslsmith_clamp_vec2_u32(u_input.d.zz, var_2.a.d.zy, vec2<u32>(var_2.d.a.d, 0u)), _wgslsmith_f_op_vec2_f32(-var_2.a.b)).a.x), func_1(), Struct_4(func_5(_wgslsmith_f_op_f32(-var_1.b.x), Struct_2(var_3.a.c.x, var_3.a.b, vec2<f32>(var_1.a.x, -442f), 1u), func_5(435f, Struct_2(-1709f, var_2.d.a.b, var_3.a.c, 1u), Struct_4(var_2.a, var_1.c, vec4<i32>(var_1.c, 5271i, -67194i, 12253i), var_2.d, -539f))).a, -1i, firstTrailingBit(vec4<i32>(-17682i, -2147483647i, -27749i, -2147483647i)) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 5252i), var_2.c), Struct_3(func_1()), 269f)), var_2.d, Struct_3(Struct_2(-718f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(sign(303f)), var_3.a.c.x), vec2<f32>(1295f, -469f), 11206u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.a.zw + vec2<f32>(579f, var_1.a.x)) + var_3.a.b.zz)))), _wgslsmith_f_op_vec2_f32(var_1.a.xx - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(369f, -642f) * vec2<f32>(var_2.e, -1240f)))))), var_4.d, select(~vec2<i32>(-2147483647i, -9802i) & u_input.b.zx, -var_2.c.wy ^ -(vec2<i32>(2147483647i, var_2.b) & u_input.b.wy), vec2<bool>(true, true)));
}

