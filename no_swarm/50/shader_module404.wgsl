struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(2126u, select(26948u, u_input.b.x, true)), vec2<u32>(u_input.b.x, 11692u) >> (firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-342f + _wgslsmith_f_op_f32(f32(-1f) * -1493f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1537f))), -1265f, true)), 1041f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, -520f, -707f, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(275f, -540f, -2054f, 251f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-543f, -118f, 1770f, 1521f), vec4<f32>(-743f, 279f, -509f, -1000f))))));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xx, u_input.a.yz), u_input.a.yx), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(22513i, -13294i, arg_0), u_input.a)), _wgslsmith_mult_vec2_i32(~u_input.a.zz, vec2<i32>(arg_0, arg_0)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-(~2147483647i), max(-u_input.a.x, _wgslsmith_div_i32(4576i, u_input.a.x))), ~countOneBits(vec2<i32>(u_input.a.x, 2147483647i)) | vec2<i32>(-1i, 1i)));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2030f, var_1.x, var_1.x, var_1.x), vec4<f32>(219f, -1710f, 1296f, -2385f), vec4<bool>(false, true, false, false))))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1256f + var_1.x) * _wgslsmith_div_f32(var_1.x, 709f)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1683f)), 616f, select(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-385f + var_1.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x) + vec4<f32>(var_1.x, 977f, var_1.x, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-658f, var_1.x, 1000f, 353f), vec4<f32>(517f, 209f, 756f, var_1.x))))))));
    return var_1.wxz;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec4<u32> {
    let var_0 = vec4<bool>(false, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), !all(vec3<bool>(true, false, true)), !((_wgslsmith_mult_i32(-13532i, u_input.a.x) <= u_input.a.x) && true));
    let var_1 = u_input.b.yz;
    var var_2 = Struct_1(~vec4<u32>(1u, ~(~0u), var_1.x, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_1, arg_0))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, 410f, 498f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, arg_1, 583f))), all(select(var_0, var_0, true))))), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b));
    let var_3 = 0i;
    var_2 = Struct_1(vec4<u32>(var_1.x, reverseBits(select(var_1.x, 6581u, false)) | (1u << ((var_1.x | 4294967295u) % 32u)), ~17118u, ~88728u), var_2.b, u_input.b);
    return ~vec4<u32>(var_1.x, _wgslsmith_dot_vec3_u32((u_input.b.yzw << (var_2.c.wyy % vec3<u32>(32u))) & vec3<u32>(var_1.x, 4294967295u, 0u), vec3<u32>(var_2.c.x, u_input.d.x ^ 0u, abs(88928u))), 1u, 28979u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = Struct_4(~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_1.e.b.c.yzx, arg_0.b.c.xxx), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.b.a.x, 102874u), u_input.b.xw)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 67346u, u_input.b.x), select(arg_1.b.b.c, vec4<u32>(u_input.c, u_input.b.x, arg_1.e.b.c.x, u_input.b.x), vec4<bool>(true, arg_1.c.x, true, false))), ~4294967295u), arg_0.b.c.x, arg_0.b);
    var_0 = Struct_4(abs(arg_0.b.a.wzw), firstLeadingBit(var_0.b), Struct_1(var_0.c.a, _wgslsmith_f_op_vec3_f32(func_3(abs(u_input.a.x))), countOneBits(vec4<u32>(arg_1.b.b.a.x, u_input.b.x, var_0.a.x, arg_0.b.c.x) | var_0.c.c) & ~(~vec4<u32>(1u, 55974u, 11364u, 0u))));
    let var_1 = !arg_1.d;
    var var_2 = 1u;
    var var_3 = arg_1.e.b;
    return Struct_4(firstTrailingBit(arg_0.b.c.xyy), arg_0.b.a.x, arg_0.b);
}

fn func_1() -> vec4<i32> {
    let var_0 = u_input.c;
    var var_1 = vec3<bool>(true, 3552i <= u_input.a.x, false);
    let var_2 = func_4(Struct_2(countOneBits(abs(vec4<i32>(-2147483647i, 66067i, 2147483647i, u_input.a.x))) & countOneBits(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i))), Struct_1(func_2(_wgslsmith_div_f32(-381f, -183f), _wgslsmith_f_op_f32(-1484f - 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1225f, 284f, 1000f)), select(u_input.b ^ u_input.b, ~vec4<u32>(4294967295u, 63807u, 4294967295u, 63134u), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), true)))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-382f + -1076f), 112f) - _wgslsmith_f_op_f32(select(104f, _wgslsmith_f_op_f32(max(-638f, -1000f)), var_1.x))), Struct_2(-reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), Struct_1(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-321f, 167f, 822f), vec3<f32>(-990f, 723f, -1443f))), ~u_input.b)), !select(select(vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, false)), vec3<bool>(true, var_1.x, var_1.x), var_1.x), !var_1.x, Struct_2(vec4<i32>(max(u_input.a.x, 2494i), u_input.a.x, -47315i, u_input.a.x), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1187f, 1245f, -549f))), select(vec4<u32>(4294967295u, 36269u, var_0, 63783u), u_input.b, vec4<bool>(true, var_1.x, true, var_1.x))))), u_input.a.yx & u_input.a.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-500f, 207f, 701f), _wgslsmith_div_vec3_f32(vec3<f32>(522f, -810f, 265f), vec3<f32>(-1252f, 985f, 1560f)), vec3<bool>(false, var_1.x, false))) - vec3<f32>(-791f, _wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(f32(-1f) * -1406f)))));
    var var_3 = select(select(vec4<bool>(var_1.x, var_1.x, any(vec2<bool>(var_1.x, var_1.x)), var_1.x), !select(!vec4<bool>(true, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), false), !select(select(vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, true, false, false)), true), vec4<bool>(any(vec2<bool>(false, var_1.x)), var_1.x, true || var_1.x, any(vec3<bool>(false, var_1.x, false))), false), select(select(select(select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, false, var_1.x, false)), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, true), select(false, true, true)), all(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, true, true, true), true))), select(select(select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), true), select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, false, var_1.x, false), var_1.x), vec4<bool>(var_1.x, var_1.x, true, false)), vec4<bool>(var_1.x, !var_1.x, var_1.x, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), true), !select(var_1.x, true, true)));
    let var_4 = !vec4<bool>(!var_3.x, true, var_1.x, true);
    return vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, abs(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), vec3<i32>(-13917i, abs(u_input.a.x), u_input.a.x)) >> (u_input.d.x % 32u), u_input.a.x, _wgslsmith_sub_i32(-countOneBits(~31748i), -_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_mult_i32(-13484i, u_input.a.x))), ~firstTrailingBit(~min(-26633i, -14595i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~(~vec4<u32>(4294967295u, 6437u, u_input.d.x, 15853u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-198f, -183f, -746f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(689f, -722f, 526f) + vec3<f32>(-1445f, 1040f, 454f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, -1794f, -432f))) - vec3<f32>(_wgslsmith_f_op_f32(981f * -1814f), -338f, -294f))), ~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, 27597u, u_input.d.x), vec4<u32>(1u, 4294967295u, 1u, 4294967295u)))));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(1i, u_input.a.x, 1i, -6856i)), vec4<i32>(-28412i, 2147483647i, max(-27509i, 1i), u_input.a.x)), var_0);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -343f), var_1, !select(vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true), vec3<bool>(false, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, false))), vec3<bool>(all(vec2<bool>(true, false)), -30552i < var_1.a.x, all(vec4<bool>(false, false, true, false)))), !any(vec2<bool>(true, true)), Struct_2(var_1.a, Struct_1(var_1.b.c, var_0.b, vec4<u32>(var_1.b.c.x, 0u, var_1.b.a.x, 1u) >> (vec4<u32>(u_input.d.x, var_1.b.a.x, 4294967295u, u_input.c) % vec4<u32>(32u)))));
    let var_3 = Struct_2(func_1(), func_4(Struct_2(-vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i), var_2.e.b), Struct_3(var_2.b.b.b.x, Struct_2(min(vec4<i32>(u_input.a.x, u_input.a.x, var_1.a.x, u_input.a.x), var_1.a), Struct_1(vec4<u32>(9037u, 4294967295u, 0u, var_1.b.a.x), vec3<f32>(1322f, 1415f, 380f), vec4<u32>(u_input.c, 1u, var_1.b.a.x, 4294967295u))), var_2.c, (var_0.c.x & var_1.b.c.x) > (var_1.b.c.x | 15680u), var_1), -firstTrailingBit(vec2<i32>(var_1.a.x, 55098i)) >> (vec2<u32>(23169u, 68049u << (1u % 32u)) % vec2<u32>(32u)), var_2.b.b.b).c);
    var var_4 = vec4<u32>(0u, _wgslsmith_sub_u32(3207u, _wgslsmith_dot_vec4_u32(~u_input.b ^ max(var_3.b.c, u_input.b), var_1.b.a >> (var_0.a % vec4<u32>(32u)))), firstLeadingBit(var_2.b.b.a.x), 8911u | var_2.e.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_1, Struct_3(var_0.b.x, Struct_2(_wgslsmith_div_vec4_i32(var_3.a, vec4<i32>(-35420i, 1i, var_1.a.x, 5094i)), Struct_1(var_3.b.a, var_3.b.b, vec4<u32>(49424u, u_input.b.x, 0u, var_0.a.x))), !var_2.c, var_2.d, var_2.e), countOneBits(-firstTrailingBit(vec2<i32>(71776i, var_3.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_1.b.b * vec3<f32>(var_2.b.b.b.x, var_3.b.b.x, -1446f)))))).c.b.x);
}

