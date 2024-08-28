struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_1(select(!vec2<bool>(all(vec4<bool>(false, false, true, true)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, true), true)), 92176u, vec2<i32>(u_input.a.x, -62493i));
    var var_1 = Struct_1(select(var_0.a, vec2<bool>(var_0.a.x, false), select(vec2<bool>(true, true), var_0.a, !(var_0.a.x != false))), ~33153u, vec2<i32>(26211i, -1i));
    let var_2 = vec2<u32>(4294967295u, var_0.b);
    var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_mod_u32(var_2.x, ~min(9542u, 4294967295u)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-28101i, var_0.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.c.x, 1i), vec2<i32>(-1i, var_1.c.x))) << (firstLeadingBit(_wgslsmith_mod_u32(47253u, var_1.b)) % 32u), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(18315i, var_1.c.x, 68045i, -20742i), vec4<i32>(2147483647i, var_1.c.x, var_0.c.x, var_0.c.x)) | (9605i ^ u_input.a.x))));
    let var_3 = ~vec4<u32>(2561u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.b), var_2) & select(~var_0.b, firstLeadingBit(var_0.b), var_1.c.x == -21843i), 96861u, _wgslsmith_mod_u32(3180u, _wgslsmith_sub_u32(~31734u, u_input.b)));
    return abs(vec4<i32>(1i, i32(-1i) * -var_0.c.x, ~var_0.c.x, -2147483647i) ^ (vec4<i32>(max(var_1.c.x, var_0.c.x), max(-2147483647i, var_1.c.x), ~53168i, _wgslsmith_mod_i32(40822i, u_input.a.x)) | ~u_input.a));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_5) -> u32 {
    let var_0 = 130099u;
    var var_1 = Struct_4(Struct_3(abs(_wgslsmith_clamp_u32(~arg_3.d.b, 0u, ~u_input.c))), 33389u, Struct_2(Struct_1(vec2<bool>(true, true), select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(53751u, 5794u)), 1u, true), vec2<i32>(19306i >> (u_input.b % 32u), arg_0.c.x)), arg_3.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1835f, -994f, 225f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, 1167f, 689f, 681f))), Struct_1(select(!arg_1, vec2<bool>(true, true), !arg_1), ~(~arg_0.d.b), arg_0.c.wz)), Struct_2(Struct_1(arg_3.b.xx, 0u, ~countOneBits(vec2<i32>(-4989i, -2147483647i))), Struct_1(!(!vec2<bool>(arg_0.d.a.x, true)), ~(~1u), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a.x, -2147483647i), u_input.a.wz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1023f, -225f, 565f, 948f), vec4<f32>(-179f, -660f, -1384f, 1557f)))), Struct_1(arg_0.b.xx, abs(max(0u, u_input.b)), arg_2.wy)));
    var var_2 = !(!(!select(arg_0.b.x, false, var_1.d.a.a.x) & false));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1603f + _wgslsmith_f_op_f32(f32(-1f) * -384f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))))));
    let var_4 = firstTrailingBit(vec4<i32>(~2147483647i, 27364i, var_1.c.a.c.x << (var_1.c.a.b % 32u), -arg_3.d.c.x)) << ((~(~abs(vec4<u32>(var_1.b, var_1.b, 11118u, 0u))) ^ ~_wgslsmith_mod_vec4_u32(min(vec4<u32>(9411u, var_1.c.b.b, 70420u, u_input.c), vec4<u32>(15681u, 40100u, 1u, 38656u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.d.b, u_input.c, arg_0.d.b, 11559u), vec4<u32>(u_input.c, var_1.c.b.b, 1u, 4294967295u)))) % vec4<u32>(32u));
    return u_input.b;
}

fn func_2() -> vec4<f32> {
    var var_0 = vec2<u32>(u_input.b, 1u);
    var var_1 = Struct_5(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(50608u, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, var_0.x, var_0.x)), vec4<u32>(var_0.x, var_0.x, var_0.x, 24694u)), 28801u)), vec3<bool>(false, all(vec2<bool>(all(vec2<bool>(true, false)), true)), all(vec2<bool>(true, true))), u_input.a, Struct_1(vec2<bool>(true, false), func_4(Struct_5(~vec2<u32>(63240u, var_0.x), vec3<bool>(true, true, true), func_3(var_0.x, -1398f, vec2<f32>(444f, -597f), 981f), Struct_1(vec2<bool>(true, true), 29298u, u_input.a.ww)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(21489i, u_input.a.x, u_input.a.x, -20048i), vec4<i32>(-1i, -2147483647i, u_input.a.x, u_input.a.x))), Struct_5(~vec2<u32>(48935u, 0u), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(12489i, -52230i, -2147483647i, -74305i), vec4<i32>(u_input.a.x, 9428i, -1i, -6601i)), Struct_1(vec2<bool>(false, false), 33078u, u_input.a.zy))), ~(vec2<i32>(2147483647i, 26045i) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 41710u), vec2<u32>(u_input.b, var_0.x)) % vec2<u32>(32u)))));
    let var_2 = Struct_2(var_1.d, Struct_1(!vec2<bool>(true, var_1.d.a.x), u_input.c, ~countOneBits(vec2<i32>(25767i, var_1.c.x)) >> (var_1.a % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, 1382f, -442f, 1476f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(863f, -1049f, -1000f, -1120f)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-484f, 228f)), -303f), _wgslsmith_f_op_f32(min(115f, 919f)), -921f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f * 1168f)))), Struct_1(select(vec2<bool>(false, var_1.d.a.x | var_1.b.x), vec2<bool>(var_1.b.x, all(var_1.b)), select(select(var_1.b.xz, vec2<bool>(true, true), var_1.d.a), var_1.b.zx, select(var_1.d.a, vec2<bool>(true, var_1.b.x), var_1.d.a))), var_1.a.x << (min(var_0.x, _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(u_input.b, 43051u))) % 32u), max(-(~vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_add_vec2_i32(u_input.a.xw, vec2<i32>(-17709i, u_input.a.x)))));
    var_1 = Struct_5(var_1.a, var_1.b, u_input.a, var_1.d);
    var_1 = Struct_5(var_1.a, var_1.b, vec4<i32>(var_1.d.c.x, select(firstLeadingBit(func_3(1u, 1497f, vec2<f32>(var_2.c.x, -1525f), 1000f).x), select(~(-8672i), -30597i, true), var_1.d.a.x), -_wgslsmith_dot_vec2_i32(select(u_input.a.yy, vec2<i32>(var_2.b.c.x, -14189i), false), -vec2<i32>(-1i, 1i)), 1i), var_2.d);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.c.x, var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), var_2.c.x), vec4<f32>(1f, var_2.c.x, 161f, -438f))));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1615f, -522f, -716f, 2098f), vec4<f32>(493f, -1004f, -1988f, 318f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(764f, 1511f, 200f, 811f), vec4<f32>(-402f, -482f, -735f, 881f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 453f, 631f, -1627f) - vec4<f32>(822f, 1355f, 1062f, 410f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))));
    let var_1 = _wgslsmith_mod_vec4_i32(select(u_input.a >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.c, u_input.b), ~vec4<u32>(u_input.c, u_input.b, 1u, u_input.c)) % vec4<u32>(32u)), ~vec4<i32>(~23480i, u_input.a.x, _wgslsmith_mod_i32(1i, -36778i), -u_input.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) >= _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(1109f + 125f))), ~(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x & 0i)));
    let var_2 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_div_u32(u_input.b, 32852u) == func_4(Struct_5(vec2<u32>(64655u, 4294967295u), vec3<bool>(true, true, true), vec4<i32>(-45401i, 20832i, u_input.a.x, u_input.a.x), Struct_1(vec2<bool>(true, false), 67269u, vec2<i32>(u_input.a.x, var_1.x))), vec2<bool>(true, false), u_input.a, Struct_5(vec2<u32>(u_input.b, u_input.c), vec3<bool>(false, true, true), vec4<i32>(var_1.x, var_1.x, 7853i, u_input.a.x), Struct_1(vec2<bool>(true, true), u_input.b, u_input.a.xx))), any(vec4<bool>(true, true, true, true))), u_input.b, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x), vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, var_1)))), Struct_1(!vec2<bool>(true, u_input.b > u_input.b), u_input.b | u_input.c, select(vec2<i32>(firstLeadingBit(-40043i), 2147483647i), firstTrailingBit(reverseBits(u_input.a.xx)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false))), vec4<f32>(1294f, _wgslsmith_f_op_f32(ceil(-408f)), var_0.x, var_0.x), Struct_1(vec2<bool>(false, any(vec2<bool>(false, false)) | true), 40869u << (u_input.b % 32u), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(var_1.yz, vec2<i32>(70220i, u_input.a.x))));
    let var_3 = vec4<bool>(~var_2.b.b > ~(var_2.d.b >> (u_input.b % 32u)), any(select(vec4<bool>(true || var_2.d.a.x, var_2.b.a.x, true, u_input.a.x == var_2.a.c.x), !(!vec4<bool>(var_2.a.a.x, var_2.a.a.x, false, true)), !vec4<bool>(var_2.d.a.x, var_2.d.a.x, false, false))), var_2.d.a.x | !select(false, true, true), var_2.d.a.x);
    var var_4 = var_2.c;
    return StorageBuffer(u_input.b, abs(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.b, 28915u, 22849u), vec3<u32>(var_2.b.b, var_2.d.b, 51643u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(-45633i, u_input.a.x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(~1i, ~u_input.a.x)));
    let x = u_input.a;
    s_output = func_1();
}

